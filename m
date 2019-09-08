Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6kio-0008IY-HW
 for barebox@lists.infradead.org; Sun, 08 Sep 2019 00:06:27 +0000
Received: by mail-pf1-x442.google.com with SMTP id q5so6841303pfg.13
 for <barebox@lists.infradead.org>; Sat, 07 Sep 2019 17:06:26 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sat,  7 Sep 2019 17:06:13 -0700
Message-Id: <20190908000615.28868-5-andrew.smirnov@gmail.com>
In-Reply-To: <20190908000615.28868-1-andrew.smirnov@gmail.com>
References: <20190908000615.28868-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 5/7] ARM: dts: vf610-zii-scu4-aib: Expose fiber EEPROM modules
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

EEPROM on a fiber optic modules present on SCU4 can be exposed as a
AT24 compatible device. Add corresponding DT node needed for that.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/dts/vf610-zii-scu4-aib.dts | 90 +++++++++++++++++++++++++++++
 1 file changed, 90 insertions(+)

diff --git a/arch/arm/dts/vf610-zii-scu4-aib.dts b/arch/arm/dts/vf610-zii-scu4-aib.dts
index abe9e14fd7..43a13e243d 100644
--- a/arch/arm/dts/vf610-zii-scu4-aib.dts
+++ b/arch/arm/dts/vf610-zii-scu4-aib.dts
@@ -17,5 +17,95 @@
 		switch1-eeprom = &switch1;
 		switch2-eeprom = &switch2;
 		switch3-eeprom = &switch3;
+		fiber-eeprom0 = &fiber_eeprom0;
+		fiber-eeprom1 = &fiber_eeprom1;
+		fiber-eeprom2 = &fiber_eeprom2;
+		fiber-eeprom3 = &fiber_eeprom3;
+		fiber-eeprom4 = &fiber_eeprom4;
+		fiber-eeprom5 = &fiber_eeprom5;
+		fiber-eeprom6 = &fiber_eeprom6;
+		fiber-eeprom7 = &fiber_eeprom7;
+		fiber-eeprom8 = &fiber_eeprom8;
+		fiber-eeprom9 = &fiber_eeprom9;
+	};
+};
+
+&sff0_i2c {
+	fiber_eeprom0: eeprom@50 {
+		compatible = "atmel,24c04";
+		reg = <0x50>;
+		label = "fiber0";
+	};
+};
+
+&sff1_i2c {
+	fiber_eeprom1: eeprom@50 {
+		compatible = "atmel,24c04";
+		reg = <0x50>;
+		label = "fiber1";
+	};
+};
+
+&sff2_i2c {
+	fiber_eeprom2: eeprom@50 {
+		compatible = "atmel,24c04";
+		reg = <0x50>;
+		label = "fiber2";
+	};
+};
+
+&sff3_i2c {
+	fiber_eeprom3: eeprom@50 {
+		compatible = "atmel,24c04";
+		reg = <0x50>;
+		label = "fiber3";
+	};
+};
+
+&sff4_i2c {
+	fiber_eeprom4: eeprom@50 {
+		compatible = "atmel,24c04";
+		reg = <0x50>;
+		label = "fiber4";
+	};
+};
+
+&sff5_i2c {
+	fiber_eeprom5: eeprom@50 {
+		compatible = "atmel,24c04";
+		reg = <0x50>;
+		label = "fiber5";
+	};
+};
+
+&sff6_i2c {
+	fiber_eeprom6: eeprom@50 {
+		compatible = "atmel,24c04";
+		reg = <0x50>;
+		label = "fiber6";
+	};
+};
+
+&sff7_i2c {
+	fiber_eeprom7: eeprom@50 {
+		compatible = "atmel,24c04";
+		reg = <0x50>;
+		label = "fiber7";
+	};
+};
+
+&sff8_i2c {
+	fiber_eeprom8: eeprom@50 {
+		compatible = "atmel,24c04";
+		reg = <0x50>;
+		label = "fiber8";
+	};
+};
+
+&sff9_i2c {
+	fiber_eeprom9: eeprom@50 {
+		compatible = "atmel,24c04";
+		reg = <0x50>;
+		label = "fiber9";
 	};
 };
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
