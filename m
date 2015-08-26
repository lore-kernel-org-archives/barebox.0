Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZUWUS-0007uo-J0
 for barebox@lists.infradead.org; Wed, 26 Aug 2015 08:55:29 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 26 Aug 2015 10:55:04 +0200
Message-Id: <1440579305-7794-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] ARM: socfpga: Configure console from device tree
To: Barebox List <barebox@lists.infradead.org>

Add the missing stdout-path properties for the socfpga boards and
enable CONFIG_CONSOLE_ACTIVATE_NONE.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/configs/socfpga_defconfig         | 1 +
 arch/arm/dts/socfpga_cyclone5_sockit.dts   | 1 +
 arch/arm/dts/socfpga_cyclone5_socrates.dts | 1 +
 3 files changed, 3 insertions(+)

diff --git a/arch/arm/configs/socfpga_defconfig b/arch/arm/configs/socfpga_defconfig
index ec369ae..414aa23 100644
--- a/arch/arm/configs/socfpga_defconfig
+++ b/arch/arm/configs/socfpga_defconfig
@@ -14,6 +14,7 @@ CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_MENU=y
 # CONFIG_TIMESTAMP is not set
+CONFIG_CONSOLE_ACTIVATE_NONE=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
 CONFIG_LONGHELP=y
 CONFIG_CMD_IOMEM=y
diff --git a/arch/arm/dts/socfpga_cyclone5_sockit.dts b/arch/arm/dts/socfpga_cyclone5_sockit.dts
index 1c3fb4d..d763117 100644
--- a/arch/arm/dts/socfpga_cyclone5_sockit.dts
+++ b/arch/arm/dts/socfpga_cyclone5_sockit.dts
@@ -22,6 +22,7 @@
 	compatible = "terasic,sockit", "altr,socfpga";
 
 	chosen {
+		stdout-path = &uart0;
 	};
 
 	memory {
diff --git a/arch/arm/dts/socfpga_cyclone5_socrates.dts b/arch/arm/dts/socfpga_cyclone5_socrates.dts
index 125ad1b..a1a7c63 100644
--- a/arch/arm/dts/socfpga_cyclone5_socrates.dts
+++ b/arch/arm/dts/socfpga_cyclone5_socrates.dts
@@ -22,6 +22,7 @@
 	compatible = "ebv,socrates", "altr,socfpga";
 
 	chosen {
+		stdout-path = &uart0;
 	};
 
 	memory {
-- 
2.4.6


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
