Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6kio-0008Hh-0G
 for barebox@lists.infradead.org; Sun, 08 Sep 2019 00:06:27 +0000
Received: by mail-pg1-x541.google.com with SMTP id x15so5589045pgg.8
 for <barebox@lists.infradead.org>; Sat, 07 Sep 2019 17:06:25 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sat,  7 Sep 2019 17:06:12 -0700
Message-Id: <20190908000615.28868-4-andrew.smirnov@gmail.com>
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
Subject: [PATCH 4/7] ARM: dts: vf610-zii-cfu1: Expose fiber optic module EEPROM
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

EEPROM on a fiber optic module present on CFU1 can be exposed as a
AT24 compatible device. Add corresponding DT node needed for that.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/dts/vf610-zii-cfu1.dts | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm/dts/vf610-zii-cfu1.dts b/arch/arm/dts/vf610-zii-cfu1.dts
index aace448e76..70cd9d1ba9 100644
--- a/arch/arm/dts/vf610-zii-cfu1.dts
+++ b/arch/arm/dts/vf610-zii-cfu1.dts
@@ -16,6 +16,7 @@
 		 * fact to create a desirable naming
 		 */
 		switch-eeprom = &switch0;
+		fiber-eeprom0 = &fiber_eeprom0;
 	};
 
 	gpio-leds {
@@ -24,3 +25,11 @@
 		};
 	};
 };
+
+&i2c0 {
+	fiber_eeprom0: eeprom@50 {
+		compatible = "atmel,24c04";
+		reg = <0x50>;
+		label = "fiber0";
+	};
+};
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
