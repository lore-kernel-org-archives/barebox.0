Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gGDSF-0000ff-3G
 for barebox@lists.infradead.org; Sat, 27 Oct 2018 01:32:04 +0000
Received: by mail-pf1-x441.google.com with SMTP id b11-v6so1344255pfi.5
 for <barebox@lists.infradead.org>; Fri, 26 Oct 2018 18:31:48 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Fri, 26 Oct 2018 18:31:27 -0700
Message-Id: <20181027013127.22163-8-andrew.smirnov@gmail.com>
In-Reply-To: <20181027013127.22163-1-andrew.smirnov@gmail.com>
References: <20181027013127.22163-1-andrew.smirnov@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 6/6] ARM: imx7d-zii-rpu2: Add switch EEPROM alias
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/dts/imx7d-zii-rpu2.dts | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm/dts/imx7d-zii-rpu2.dts b/arch/arm/dts/imx7d-zii-rpu2.dts
index 6fba73f43..24a6d40f7 100644
--- a/arch/arm/dts/imx7d-zii-rpu2.dts
+++ b/arch/arm/dts/imx7d-zii-rpu2.dts
@@ -19,6 +19,15 @@
 		stdout-path = &uart2;
 	};
 
+	aliases {
+		/*
+		 * NVMEM device corresponding to EEPROM attached to
+                 * the switch shared DT node with it, so we use that
+                 * fact to create a desirable naming
+		 */
+		switch-eeprom = &switch0;
+	};
+
 	gpio-leds {
 		compatible = "gpio-leds";
 		pinctrl-0 = <&pinctrl_leds_debug>;
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
