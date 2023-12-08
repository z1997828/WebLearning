package tw.Andy.classes;

import java.io.Serializable;

public class Andy_bike extends Object implements Serializable{
	// 屬性 = 全小寫
	// 方法 = 介係詞小寫，後面首字大寫
	
	protected double speed;
	// public 大家都可以用
	// protected 繼承的子類別可以使用
	// 如果沒有這些存取修飾詞則範圍只有他的Package
	// private的存取範圍僅限本類別
	public void upSpeed() {
		speed = speed < 1 ? 1 : speed * 1.4;
	}
	public void downSpeed() {
		speed = speed < 1 ? 0 : speed * 0.5;
	}
	public double getSpeed() {
		return speed;
	}
}
