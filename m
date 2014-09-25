Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XXCPD-00031S-PP
 for barebox@lists.infradead.org; Thu, 25 Sep 2014 17:00:37 +0000
From: Lucas Stach <dev@lynxeye.de>
Date: Thu, 25 Sep 2014 19:05:09 +0200
Message-Id: <1411664709-13699-16-git-send-email-dev@lynxeye.de>
In-Reply-To: <1411664709-13699-1-git-send-email-dev@lynxeye.de>
References: <1411664709-13699-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 15/15] ARM: tegra: advertise PCI support
To: barebox@lists.infradead.org

From: Lucas Stach <l.stach@pengutronix.de>

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/Kconfig                    | 1 +
 arch/arm/configs/tegra_v7_defconfig | 1 +
 2 files changed, 2 insertions(+)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 13f0bd4..fbe852b 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -197,6 +197,7 @@ config ARCH_TEGRA
 	bool "NVIDIA Tegra"
 	select CPU_V7
 	select HAS_DEBUG_LL
+	select HW_HAS_PCI
 	select COMMON_CLK
 	select COMMON_CLK_OF_PROVIDER
 	select CLKDEV_LOOKUP
diff --git a/arch/arm/configs/tegra_v7_defconfig b/arch/arm/configs/tegra_v7_defconfig
index 22f5765..8f01b54 100644
--- a/arch/arm/configs/tegra_v7_defconfig
+++ b/arch/arm/configs/tegra_v7_defconfig
@@ -37,6 +37,7 @@ CONFIG_DRIVER_SERIAL_NS16550=y
 CONFIG_MCI=y
 CONFIG_MCI_MMC_BOOT_PARTITIONS=y
 CONFIG_MCI_TEGRA=y
+CONFIG_PCI_TEGRA=y
 CONFIG_FS_EXT4=y
 CONFIG_FS_FAT=y
 CONFIG_FS_FAT_LFN=y
-- 
1.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
