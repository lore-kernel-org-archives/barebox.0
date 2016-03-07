Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x232.google.com ([2a00:1450:4010:c04::232])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1acvFf-0004zz-PT
 for barebox@lists.infradead.org; Mon, 07 Mar 2016 13:31:14 +0000
Received: by mail-lb0-x232.google.com with SMTP id bc4so129875233lbc.2
 for <barebox@lists.infradead.org>; Mon, 07 Mar 2016 05:30:52 -0800 (PST)
Received: from localhost.localdomain ([31.173.84.173])
 by smtp.gmail.com with ESMTPSA id vq10sm2751728lbb.14.2016.03.07.05.30.50
 for <barebox@lists.infradead.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 07 Mar 2016 05:30:50 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon,  7 Mar 2016 16:30:24 +0300
Message-Id: <1457357426-9868-14-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1457357426-9868-1-git-send-email-antonynpavlov@gmail.com>
References: <1457357426-9868-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 13/15] MIPS: black-swift: enable GPIO key
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/dts/black-swift.dts | 11 +++++++++++
 arch/mips/mach-ath79/Kconfig  |  1 +
 2 files changed, 12 insertions(+)

diff --git a/arch/mips/dts/black-swift.dts b/arch/mips/dts/black-swift.dts
index b0fa3b0..d19c381 100644
--- a/arch/mips/dts/black-swift.dts
+++ b/arch/mips/dts/black-swift.dts
@@ -2,6 +2,7 @@
 
 #include "ar9331.dtsi"
 #include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
 
 / {
 	model = "Black Swift";
@@ -15,6 +16,16 @@
 		spiflash = &spiflash;
 	};
 
+	buttons {
+		compatible = "gpio-keys";
+
+		s1 {
+			label = "S1";
+			gpios = <&gpio 11 GPIO_ACTIVE_LOW>;
+			linux,code = <KEY_RESTART>;
+		};
+	};
+
 	leds {
 		compatible = "gpio-leds";
 
diff --git a/arch/mips/mach-ath79/Kconfig b/arch/mips/mach-ath79/Kconfig
index 9b8e394..374d722 100644
--- a/arch/mips/mach-ath79/Kconfig
+++ b/arch/mips/mach-ath79/Kconfig
@@ -18,6 +18,7 @@ config BOARD_BLACK_SWIFT
 	select HAVE_PBL_IMAGE
 	select HAVE_IMAGE_COMPRESSION
 	select HAS_NMON
+	select INPUT
 
 endchoice
 
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
