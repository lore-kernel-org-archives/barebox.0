Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1VDqj8-0003D6-W7
 for barebox@lists.infradead.org; Mon, 26 Aug 2013 06:56:42 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 26 Aug 2013 08:56:02 +0200
Message-Id: <1377500163-28962-22-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1377500163-28962-1-git-send-email-s.hauer@pengutronix.de>
References: <1377500163-28962-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 21/22] ARM: beaglebone: update mlo_small defconfig
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/configs/am335x_beaglebone_mlo_small_defconfig | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/arch/arm/configs/am335x_beaglebone_mlo_small_defconfig b/arch/arm/configs/am335x_beaglebone_mlo_small_defconfig
index 886dad9..ea29c24 100644
--- a/arch/arm/configs/am335x_beaglebone_mlo_small_defconfig
+++ b/arch/arm/configs/am335x_beaglebone_mlo_small_defconfig
@@ -9,11 +9,9 @@ CONFIG_THUMB2_BAREBOX=y
 CONFIG_ENVIRONMENT_VARIABLES=y
 CONFIG_MMU=y
 CONFIG_TEXT_BASE=0x402F0400
-CONFIG_MEMORY_LAYOUT_FIXED=y
-CONFIG_STACK_BASE=0x4030B800
 CONFIG_STACK_SIZE=0x1600
-CONFIG_MALLOC_BASE=0x8F000000
 CONFIG_MALLOC_SIZE=0x1000000
+CONFIG_MALLOC_TLSF=y
 CONFIG_PROMPT="MLO>"
 CONFIG_SHELL_NONE=y
 # CONFIG_ERRNO_MESSAGES is not set
@@ -23,7 +21,7 @@ CONFIG_DRIVER_SERIAL_NS16550=y
 CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS=y
 # CONFIG_SPI is not set
 CONFIG_MCI=y
-CONFIG_MCI_STARTUP=y
+# CONFIG_MCI_WRITE is not set
 CONFIG_MCI_OMAP_HSMMC=y
 # CONFIG_FS_RAMFS is not set
 # CONFIG_FS_DEVFS is not set
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
