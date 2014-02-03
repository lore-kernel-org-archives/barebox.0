Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from blu0-omc2-s32.blu0.hotmail.com ([65.55.111.107])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WAS3z-0004ji-Cl
 for barebox@lists.infradead.org; Mon, 03 Feb 2014 22:32:23 +0000
Message-ID: <BLU0-SMTP2184BEF91E5E070ED395738F7AB0@phx.gbl>
From: Cristiano De Alti <cristiano_dealti@hotmail.com>
Date: Mon, 3 Feb 2014 23:31:55 +0100
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
Subject: [PATCH] i.MX21 ADS defconfig: set CONFIG_NAND_IMX since this board
 has a 64MBi NAND flash
To: barebox@lists.infradead.org
Cc: Cristiano De Alti <cristiano_dealti@hotmail.com>

Signed-off-by: Cristiano De Alti <cristiano_dealti@hotmail.com>
---
 arch/arm/configs/mx21ads_defconfig |   12 +++++-------
 1 file changed, 5 insertions(+), 7 deletions(-)

diff --git a/arch/arm/configs/mx21ads_defconfig b/arch/arm/configs/mx21ads_defconfig
index 13c005b..4ffea76 100644
--- a/arch/arm/configs/mx21ads_defconfig
+++ b/arch/arm/configs/mx21ads_defconfig
@@ -1,7 +1,5 @@
 CONFIG_ARCH_IMX=y
-CONFIG_ARCH_IMX21=y
 CONFIG_MACH_IMX21ADS=y
-CONFIG_IMX_CLKO=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_TEXT_BASE=0xc3000000
 CONFIG_MALLOC_SIZE=0x2000000
@@ -13,14 +11,12 @@ CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/imx21ads/env"
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_SLEEP=y
 CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_LOADENV=y
 CONFIG_CMD_EXPORT=y
 CONFIG_CMD_PRINTENV=y
 CONFIG_CMD_READLINE=y
+CONFIG_CMD_TFTP=y
 CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_CRC=y
-CONFIG_CMD_MTEST=y
-CONFIG_CMD_MTEST_ALTERNATIVE=y
 CONFIG_CMD_FLASH=y
 CONFIG_CMD_BOOTM_SHOW_TYPE=y
 CONFIG_CMD_RESET=y
@@ -32,11 +28,13 @@ CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
 CONFIG_NET_PING=y
-CONFIG_CMD_TFTP=y
-CONFIG_FS_TFTP=y
 CONFIG_DRIVER_NET_CS8900=y
 # CONFIG_SPI is not set
 CONFIG_MTD=y
 CONFIG_DRIVER_CFI=y
 # CONFIG_DRIVER_CFI_INTEL is not set
 CONFIG_CFI_BUFFER_WRITE=y
+CONFIG_NAND=y
+CONFIG_NAND_IMX=y
+CONFIG_NAND_IMX_BBM=y
+CONFIG_FS_TFTP=y
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
