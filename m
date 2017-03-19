Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.87 #1 (Red Hat Linux))
 id 1cpfLy-00024j-2Q
 for barebox@lists.infradead.org; Sun, 19 Mar 2017 18:14:55 +0000
Received: from tellur.intern.lynxeye.de.fritz.box (a89-183-7-62.net-htp.de
 [89.183.7.62]) by lynxeye.de (Postfix) with ESMTPA id 5F7D7E743CE
 for <barebox@lists.infradead.org>; Sun, 19 Mar 2017 19:13:57 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Sun, 19 Mar 2017 19:13:53 +0100
Message-Id: <20170319181353.2930-2-dev@lynxeye.de>
In-Reply-To: <20170319181353.2930-1-dev@lynxeye.de>
References: <20170319181353.2930-1-dev@lynxeye.de>
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
Subject: [PATCH 2/2] ARM: tegra: enable Tegra124 memory controller driver in
 defconfig
To: barebox@lists.infradead.org

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/configs/tegra_v7_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/configs/tegra_v7_defconfig b/arch/arm/configs/tegra_v7_defconfig
index 66534a7..65b9807 100644
--- a/arch/arm/configs/tegra_v7_defconfig
+++ b/arch/arm/configs/tegra_v7_defconfig
@@ -46,6 +46,7 @@ CONFIG_MCI=y
 CONFIG_MCI_MMC_BOOT_PARTITIONS=y
 CONFIG_MCI_TEGRA=y
 CONFIG_PCI_TEGRA=y
+CONFIG_MC_TEGRA124=y
 CONFIG_FS_EXT4=y
 CONFIG_FS_TFTP=y
 CONFIG_FS_NFS=y
-- 
2.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
