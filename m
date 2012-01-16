Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Rmje9-0004bR-Su
 for barebox@lists.infradead.org; Mon, 16 Jan 2012 10:18:38 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 16 Jan 2012 11:18:12 +0100
Message-Id: <1326709100-24106-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1326709100-24106-1-git-send-email-s.hauer@pengutronix.de>
References: <1326709100-24106-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 02/10] ARM omap3 beagle xload: Move stack to SRAM
To: barebox@lists.infradead.org

Setting up the clocks does not work when the stack is in SDRAM.
Moving the stack to SRAM allows us to do the lowlevel clock setup
later.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/configs/omap3530_beagle_xload_defconfig |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/configs/omap3530_beagle_xload_defconfig b/arch/arm/configs/omap3530_beagle_xload_defconfig
index 1069670..d951b1c 100644
--- a/arch/arm/configs/omap3530_beagle_xload_defconfig
+++ b/arch/arm/configs/omap3530_beagle_xload_defconfig
@@ -1,5 +1,4 @@
 CONFIG_ARCH_OMAP=y
-# CONFIG_OMAP3_COPY_CLOCK_SRAM is not set
 CONFIG_OMAP_BUILD_IFT=y
 CONFIG_MACH_BEAGLE=y
 CONFIG_AEABI=y
@@ -7,7 +6,8 @@ CONFIG_AEABI=y
 # CONFIG_ARM_EXCEPTIONS is not set
 CONFIG_TEXT_BASE=0x40200000
 CONFIG_MEMORY_LAYOUT_FIXED=y
-CONFIG_STACK_BASE=0x87BF7F10
+CONFIG_STACK_BASE=0x4020F000
+CONFIG_STACK_SIZE=0xc00
 CONFIG_MALLOC_BASE=0x87BFFF10
 CONFIG_MALLOC_DUMMY=y
 CONFIG_PROMPT="X-load Beagle>"
-- 
1.7.8.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
