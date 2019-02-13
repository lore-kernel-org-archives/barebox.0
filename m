Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gtq01-0001lB-HS
 for barebox@lists.infradead.org; Wed, 13 Feb 2019 08:34:35 +0000
From: Teresa Remmet <t.remmet@phytec.de>
Date: Wed, 13 Feb 2019 09:34:24 +0100
Message-Id: <1550046868-19264-3-git-send-email-t.remmet@phytec.de>
In-Reply-To: <1550046868-19264-1-git-send-email-t.remmet@phytec.de>
References: <1550046868-19264-1-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH v2 3/7] arm: configs: am33xx_mlo_defconfig: Enable ti-sysc bus
 driver
To: barebox@lists.infradead.org

Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 arch/arm/configs/am335x_mlo_defconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/configs/am335x_mlo_defconfig b/arch/arm/configs/am335x_mlo_defconfig
index 58034b6cea15..b58b71a85937 100644
--- a/arch/arm/configs/am335x_mlo_defconfig
+++ b/arch/arm/configs/am335x_mlo_defconfig
@@ -8,7 +8,6 @@ CONFIG_MACH_PHYTEC_SOM_AM335X=y
 CONFIG_THUMB2_BAREBOX=y
 # CONFIG_MEMINFO is not set
 CONFIG_MMU=y
-CONFIG_TEXT_BASE=0x0
 CONFIG_BAREBOX_MAX_PBLX_SIZE=0x1b400
 CONFIG_MALLOC_SIZE=0x0
 CONFIG_MALLOC_TLSF=y
@@ -38,6 +37,7 @@ CONFIG_MCI=y
 CONFIG_MCI_OMAP_HSMMC=y
 CONFIG_PINCTRL_SINGLE=y
 CONFIG_BUS_OMAP_GPMC=y
+CONFIG_TI_SYSC=y
 # CONFIG_FS_DEVFS is not set
 CONFIG_FS_FAT=y
 CONFIG_FS_FAT_LFN=y
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
