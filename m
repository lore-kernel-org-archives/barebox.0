Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RiNH7-0001XA-8T
 for barebox@lists.infradead.org; Wed, 04 Jan 2012 09:36:50 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1RiNGq-00071P-5J
 for barebox@lists.infradead.org; Wed, 04 Jan 2012 10:36:32 +0100
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.77)
 (envelope-from <jbe@pengutronix.de>) id 1RiNGq-0004zU-3z
 for barebox@lists.infradead.org; Wed, 04 Jan 2012 10:36:32 +0100
From: Juergen Beisert <jbe@pengutronix.de>
Date: Wed,  4 Jan 2012 10:36:29 +0100
Message-Id: <1325669790-18433-2-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1325669790-18433-1-git-send-email-jbe@pengutronix.de>
References: <1325669790-18433-1-git-send-email-jbe@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/2] Mini2440: enable more working devices for a more broad
 compile time test
To: barebox@lists.infradead.org

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 arch/arm/configs/mini2440_defconfig |    5 ++++-
 1 files changed, 4 insertions(+), 1 deletions(-)

diff --git a/arch/arm/configs/mini2440_defconfig b/arch/arm/configs/mini2440_defconfig
index 869df6a..9b35dd5 100644
--- a/arch/arm/configs/mini2440_defconfig
+++ b/arch/arm/configs/mini2440_defconfig
@@ -1,5 +1,6 @@
 CONFIG_ARCH_S3C24xx=y
 CONFIG_MACH_MINI2440=y
+CONFIG_MINI2440_VIDEO_N35=y
 CONFIG_S3C24XX_NAND_BOOT=y
 CONFIG_AEABI=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
@@ -10,7 +11,6 @@ CONFIG_LONGHELP=y
 CONFIG_GLOB=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
-CONFIG_PARTITION=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
 CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/mini2440/env"
 CONFIG_DEBUG_INFO=y
@@ -35,5 +35,8 @@ CONFIG_NET_PING=y
 CONFIG_NET_TFTP=y
 CONFIG_DRIVER_NET_DM9K=y
 # CONFIG_SPI is not set
+CONFIG_USB=y
+CONFIG_USB_OHCI=y
+CONFIG_DRIVER_VIDEO_S3C24XX=y
 CONFIG_MCI=y
 CONFIG_MCI_S3C=y
-- 
1.7.7.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
