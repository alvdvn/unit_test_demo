package com.example.unit_test_demo
import com.example.unit_test_demo.MyClass
import org.junit.Assert.assertEquals
import org.junit.Test

class MyClassTest {

    @Test
    fun testAdd() {
        val myClass = MyClass()
        val result = myClass.add(2, 3)
        assertEquals(5, result)
    }
}
