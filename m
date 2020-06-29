Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-io1-xd31.google.com ([2607:f8b0:4864:20::d31])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jpieo-0000Mi-4G
 for barebox@lists.infradead.org; Mon, 29 Jun 2020 01:32:26 +0000
Received: by mail-io1-xd31.google.com with SMTP id a12so15469015ion.13
 for <barebox@lists.infradead.org>; Sun, 28 Jun 2020 18:32:24 -0700 (PDT)
MIME-Version: 1.0
From: Chris Healy <cphealy@gmail.com>
Date: Sun, 28 Jun 2020 18:32:11 -0700
Message-ID: <CAFXsbZpSaZ8t1z20zq=TQyuUsJ_7KYDxjseKKJgRfQQq2pZYQA@mail.gmail.com>
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
Subject: ARM: dts: vf610-zii-dev-rev-c: Expose fiber EEPROM modules
To: Barebox List <barebox@lists.infradead.org>
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

EEPROM on fiber optic modules present on Rev C ZII VF610 Dev board
can be exposed as AT24 compatible devices. Add corresponding DT nodes
needed for that.

Signed-off-by: Chris Healy <cphealy@gmail.com>
---
diff --git a/arch/arm/dts/vf610-zii-dev-rev-c.dts
b/arch/arm/dts/vf610-zii-dev-rev-c.dts
index 62c70c890..2b2ac6064 100644
--- a/arch/arm/dts/vf610-zii-dev-rev-c.dts
+++ b/arch/arm/dts/vf610-zii-dev-rev-c.dts
@@ -17,6 +17,8 @@
                 */
                switch0-eeprom = &switch0;
                switch1-eeprom = &switch1;
+               fiber-eeprom0 = &fiber_eeprom0;
+               fiber-eeprom1 = &fiber_eeprom1;
        };
 };

@@ -31,3 +33,19 @@
                };
        };
 };
+
+&sff2_i2c {
+       fiber_eeprom0: eeprom@50 {
+               compatible = "atmel,24c04";
+               reg = <0x50>;
+               label = "fiber0";
+       };
+};
+
+&sff3_i2c {
+       fiber_eeprom1: eeprom@50 {
+               compatible = "atmel,24c04";
+               reg = <0x50>;
+               label = "fiber1";
+       };
+};

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
