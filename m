Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WZKTd-0001Rj-OC
 for barebox@lists.infradead.org; Sun, 13 Apr 2014 13:29:42 +0000
Received: from antimon.intern.lynxeye.de.intern.lynxeye.de
 (p578FE321.dip0.t-ipconnect.de [87.143.227.33])
 by lynxeye.de (Postfix) with ESMTPA id A6A4E18B4279
 for <barebox@lists.infradead.org>; Sun, 13 Apr 2014 15:28:03 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Sun, 13 Apr 2014 15:27:48 +0200
Message-Id: <1397395668-9325-19-git-send-email-dev@lynxeye.de>
In-Reply-To: <1397395668-9325-1-git-send-email-dev@lynxeye.de>
References: <1397395668-9325-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 18/18] defconfig: tegra: add some useful options
To: barebox@lists.infradead.org

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/configs/tegra_v7_defconfig | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm/configs/tegra_v7_defconfig b/arch/arm/configs/tegra_v7_defconfig
index 680e3bb50631..83d2851d8076 100644
--- a/arch/arm/configs/tegra_v7_defconfig
+++ b/arch/arm/configs/tegra_v7_defconfig
@@ -9,22 +9,30 @@ CONFIG_ARM_UNWIND=y
 CONFIG_MMU=y
 CONFIG_STACK_SIZE=0x10000
 CONFIG_MALLOC_SIZE=0x4000000
+CONFIG_KALLSYMS=y
 CONFIG_LONGHELP=y
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_MENU=y
+CONFIG_BLSPEC=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
 CONFIG_CMD_EDIT=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_LOADENV=y
 CONFIG_CMD_EXPORT=y
 CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_IOMEM=y
+CONFIG_CMD_BOOTM_INITRD=y
+CONFIG_CMD_BOOTM_OFTREE=y
 CONFIG_CMD_BOOTZ=y
 CONFIG_CMD_RESET=y
 CONFIG_CMD_OFTREE=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_GPIO=y
 CONFIG_CMD_CLK=y
+CONFIG_CMD_DETECT=y
 CONFIG_DRIVER_SERIAL_NS16550=y
 CONFIG_MCI=y
+CONFIG_MCI_MMC_BOOT_PARTITIONS=y
 CONFIG_MCI_TEGRA=y
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
