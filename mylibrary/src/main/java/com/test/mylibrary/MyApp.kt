package com.test.mylibrary

import android.os.Bundle
import androidx.appcompat.app.AppCompatActivity

class MyApp : AppCompatActivity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        setContentView(
            resources.getIdentifier(
                "activity_wlcheckout",
                "layout", packageName
            )
        )
    }

    fun add(a: Int, b: Int): Int {
        return a + b
    }

}