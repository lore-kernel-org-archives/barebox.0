Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gGDSC-0000fH-7K
 for barebox@lists.infradead.org; Sat, 27 Oct 2018 01:31:55 +0000
Received: by mail-pg1-x541.google.com with SMTP id n10-v6so1281656pgv.10
 for <barebox@lists.infradead.org>; Fri, 26 Oct 2018 18:31:43 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Fri, 26 Oct 2018 18:31:23 -0700
Message-Id: <20181027013127.22163-4-andrew.smirnov@gmail.com>
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
Subject: [PATCH 2/6] ARM: rdu1: Add switch EEPROM alias
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/dts/imx51-zii-rdu1.dts | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/arch/arm/dts/imx51-zii-rdu1.dts b/arch/arm/dts/imx51-zii-rdu1.dts
index 93bb344f5..c649db45c 100644
--- a/arch/arm/dts/imx51-zii-rdu1.dts
+++ b/arch/arm/dts/imx51-zii-rdu1.dts
@@ -24,6 +24,15 @@
 			device-path = &spinor, "partname:barebox-environment";
 		};
 	};
+
+	aliases {
+		/*
+		 * NVMEM device corresponding to EEPROM attached to
+                 * the switch shared DT node with it, so we use that
+                 * fact to create a desirable naming
+		 */
+		switch-eeprom = &switch;
+	};
 };
 
 &ecspi1 {
@@ -51,6 +60,10 @@
 	};
 };
 
+&mdio_gpio {
+	switch: switch@0 {};
+};
+
 &uart3 {
 	rave-sp {
 		watchdog {
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
