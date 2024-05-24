package com.appelis.kmp_demo.leaflet_data

import com.appelis.kmp_demo.core.network.ApiUrlProvider
import com.appelis.kmp_demo.leaflet.data.client.LeafletSuspendDS
import com.squareup.wire.GrpcClient
import metro.leaflet.v1.GetLeafletsRequest
import metro.leaflet.v1.GetLeafletsResponse
import metro.leaflet.v1.PublicClient
import okhttp3.OkHttpClient
import java.util.concurrent.TimeUnit

class LeafletSuspendDSImpl(private val apiUrlProvider: ApiUrlProvider) : LeafletSuspendDS {
    override suspend fun getLeaflets(request: GetLeafletsRequest): GetLeafletsResponse {
        val okHttpClient = OkHttpClient.Builder()
            .readTimeout(10, TimeUnit.SECONDS)
            .writeTimeout(10, TimeUnit.SECONDS)
            .build()

        val grpcClient = GrpcClient.Builder()
            .client(okHttpClient)
            .baseUrl("${apiUrlProvider.leafletConnection.hostUrl}:${apiUrlProvider.leafletConnection.port}")
            // our grpc doesn't support gzip compression, this will disable it in our calls
            .minMessageToCompress(Long.MAX_VALUE)
            .build()

        val client = grpcClient.create(PublicClient::class)
        return client
            .GetLeaflets()
            .execute(request)
    }
}