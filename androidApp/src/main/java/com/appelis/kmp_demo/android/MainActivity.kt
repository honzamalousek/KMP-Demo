package com.appelis.kmp_demo.android

import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.material3.*
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.ui.Modifier
import androidx.compose.ui.tooling.preview.Preview
import com.appelis.kmp_demo.Greeting
import org.koin.android.ext.android.inject

class MainActivity : ComponentActivity() {
    private val greeting: Greeting by inject()

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

//        DI.initDI(nativeModule)

        setContent {
            MyApplicationTheme {
                Surface(
                    modifier = Modifier.fillMaxSize(),
                    color = MaterialTheme.colorScheme.background
                ) {
                    LaunchedEffect(key1 = true) {
//                        val leafletClient = LeafletSuspendClientImpl()
//                        val repository = LeafletRepositoryImpl(leafletClient)
//
//                        withContext(Dispatchers.IO) {
//                            val response = repository.getLeaflets()
//                            println("Response from android view: ${response}")
//                        }
                    }

                    GreetingView(greeting.greet())
                }
            }
        }
    }
}

@Composable
fun GreetingView(text: String) {
    Text(text = text)
}

@Preview
@Composable
fun DefaultPreview() {
    MyApplicationTheme {
        GreetingView("Hello, Android!")
    }
}
