Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WrvQJ-0005Nt-PM
 for barebox@lists.infradead.org; Tue, 03 Jun 2014 20:35:08 +0000
Received: from tellur.localdomain (p57B5FCD3.dip0.t-ipconnect.de
 [87.181.252.211]) by lynxeye.de (Postfix) with ESMTPA id 75D1918B425C
 for <barebox@lists.infradead.org>; Tue,  3 Jun 2014 22:31:35 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Tue,  3 Jun 2014 22:35:17 +0200
Message-Id: <1401827717-6420-31-git-send-email-dev@lynxeye.de>
In-Reply-To: <1401827717-6420-1-git-send-email-dev@lynxeye.de>
References: <1401827717-6420-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 30/30] tegra: refresh defconfig
To: barebox@lists.infradead.org

Mainly for Jetson TK1 support, but -next moved
some stuff around. Also enable some filesystems.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/configs/tegra_v7_defconfig | 22 +++++++++++++---------
 1 file changed, 13 insertions(+), 9 deletions(-)

diff --git a/arch/arm/configs/tegra_v7_defconfig b/arch/arm/configs/tegra_v7_defconfig
index 83d2851..22f5765 100644
--- a/arch/arm/configs/tegra_v7_defconfig
+++ b/arch/arm/configs/tegra_v7_defconfig
@@ -2,37 +2,41 @@ CONFIG_ARCH_TEGRA=y
 CONFIG_MACH_TORADEX_COLIBRI_T20=y
 CONFIG_MACH_TOSHIBA_AC100=y
 CONFIG_MACH_NVIDIA_BEAVER=y
+CONFIG_MACH_NVIDIA_JETSON=y
 CONFIG_AEABI=y
-CONFIG_CMD_ARM_MMUINFO=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_ARM_UNWIND=y
 CONFIG_MMU=y
 CONFIG_STACK_SIZE=0x10000
 CONFIG_MALLOC_SIZE=0x4000000
 CONFIG_KALLSYMS=y
-CONFIG_LONGHELP=y
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_MENU=y
 CONFIG_BLSPEC=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_LOADENV=y
-CONFIG_CMD_EXPORT=y
-CONFIG_CMD_MEMINFO=y
+CONFIG_LONGHELP=y
 CONFIG_CMD_IOMEM=y
+CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_ARM_MMUINFO=y
 CONFIG_CMD_BOOTM_INITRD=y
 CONFIG_CMD_BOOTM_OFTREE=y
 CONFIG_CMD_BOOTZ=y
 CONFIG_CMD_RESET=y
-CONFIG_CMD_OFTREE=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_LOADENV=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_EDIT=y
 CONFIG_CMD_TIMEOUT=y
-CONFIG_CMD_GPIO=y
 CONFIG_CMD_CLK=y
 CONFIG_CMD_DETECT=y
+CONFIG_CMD_GPIO=y
+CONFIG_CMD_OFTREE=y
 CONFIG_DRIVER_SERIAL_NS16550=y
 CONFIG_MCI=y
 CONFIG_MCI_MMC_BOOT_PARTITIONS=y
 CONFIG_MCI_TEGRA=y
+CONFIG_FS_EXT4=y
+CONFIG_FS_FAT=y
+CONFIG_FS_FAT_LFN=y
-- 
1.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
