Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U06sX-0006eK-3u
 for barebox@lists.infradead.org; Tue, 29 Jan 2013 08:49:18 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 29 Jan 2013 09:49:05 +0100
Message-Id: <1359449345-14612-7-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1359449345-14612-1-git-send-email-s.hauer@pengutronix.de>
References: <1359449345-14612-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 6/6] ARM omap3 beagle: Compile xload defconfig in Thumb2 mode
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/configs/omap3530_beagle_xload_defconfig |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/configs/omap3530_beagle_xload_defconfig b/arch/arm/configs/omap3530_beagle_xload_defconfig
index d951b1c..383ea28 100644
--- a/arch/arm/configs/omap3530_beagle_xload_defconfig
+++ b/arch/arm/configs/omap3530_beagle_xload_defconfig
@@ -1,7 +1,7 @@
 CONFIG_ARCH_OMAP=y
 CONFIG_OMAP_BUILD_IFT=y
 CONFIG_MACH_BEAGLE=y
-CONFIG_AEABI=y
+CONFIG_THUMB2_BAREBOX=y
 # CONFIG_CMD_ARM_CPUINFO is not set
 # CONFIG_ARM_EXCEPTIONS is not set
 CONFIG_TEXT_BASE=0x40200000
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
