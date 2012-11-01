Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TTpd3-0007HE-Bi
 for barebox@lists.infradead.org; Thu, 01 Nov 2012 07:55:55 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  1 Nov 2012 08:55:45 +0100
Message-Id: <1351756548-24640-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1351756548-24640-1-git-send-email-s.hauer@pengutronix.de>
References: <1351756548-24640-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/6] ARM OMAP4 panda xload: Enable MMU and Thumb2 support
To: barebox@lists.infradead.org

MMU for the speed and Thumb2 for the size.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/configs/panda_xload_defconfig |    5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/arch/arm/configs/panda_xload_defconfig b/arch/arm/configs/panda_xload_defconfig
index f8f0ae9..fec09ce 100644
--- a/arch/arm/configs/panda_xload_defconfig
+++ b/arch/arm/configs/panda_xload_defconfig
@@ -2,8 +2,9 @@ CONFIG_ARCH_OMAP=y
 CONFIG_ARCH_OMAP4=y
 # CONFIG_OMAP_GPMC is not set
 CONFIG_OMAP_BUILD_IFT=y
-CONFIG_AEABI=y
+CONFIG_THUMB2_BAREBOX=y
 # CONFIG_CMD_ARM_CPUINFO is not set
+CONFIG_MMU=y
 CONFIG_TEXT_BASE=0x40300000
 CONFIG_MEMORY_LAYOUT_FIXED=y
 CONFIG_STACK_BASE=0x8f000000
@@ -14,9 +15,7 @@ CONFIG_SHELL_NONE=y
 # CONFIG_ERRNO_MESSAGES is not set
 # CONFIG_TIMESTAMP is not set
 # CONFIG_CONSOLE_FULL is not set
-CONFIG_PARTITION=y
 # CONFIG_DEFAULT_ENVIRONMENT is not set
-# CONFIG_COMMAND_SUPPORT is not set
 CONFIG_DRIVER_SERIAL_NS16550=y
 CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS=y
 # CONFIG_SPI is not set
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
