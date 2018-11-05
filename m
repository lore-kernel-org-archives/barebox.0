Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x532.google.com ([2607:f8b0:4864:20::532])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gJjgU-0006Bk-AB
 for barebox@lists.infradead.org; Mon, 05 Nov 2018 18:33:11 +0000
Received: by mail-pg1-x532.google.com with SMTP id w7so4587756pgp.13
 for <barebox@lists.infradead.org>; Mon, 05 Nov 2018 10:33:00 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon,  5 Nov 2018 10:32:21 -0800
Message-Id: <20181105183222.25637-4-andrew.smirnov@gmail.com>
In-Reply-To: <20181105183222.25637-1-andrew.smirnov@gmail.com>
References: <20181105183222.25637-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 3/4] ARM: rdu1: Add an alias for Microwire EEPROM
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Add an alias for Microwire EEPROM to give it a better name in /dev.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/dts/imx51-zii-rdu1.dts | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm/dts/imx51-zii-rdu1.dts b/arch/arm/dts/imx51-zii-rdu1.dts
index c649db45c..b5744dac1 100644
--- a/arch/arm/dts/imx51-zii-rdu1.dts
+++ b/arch/arm/dts/imx51-zii-rdu1.dts
@@ -32,6 +32,7 @@
                  * fact to create a desirable naming
 		 */
 		switch-eeprom = &switch;
+		microwire-eeprom = &microwire_eeprom;
 	};
 };
 
@@ -64,6 +65,10 @@
 	switch: switch@0 {};
 };
 
+&spi_gpio {
+	microwire_eeprom: eeprom@0 {};
+};
+
 &uart3 {
 	rave-sp {
 		watchdog {
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
