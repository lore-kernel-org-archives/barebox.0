Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.x-arc.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.89 #1 (Red Hat Linux))
 id 1eSIJP-0003FQ-NT
 for barebox@lists.infradead.org; Fri, 22 Dec 2017 08:04:13 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id BEC65A002FD
 for <barebox@lists.infradead.org>; Fri, 22 Dec 2017 09:06:13 +0100 (CET)
From: Daniel Schultz <d.schultz@phytec.de>
Date: Fri, 22 Dec 2017 09:03:54 +0100
Message-Id: <1513929834-38500-1-git-send-email-d.schultz@phytec.de>
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
Subject: [PATCH] ARM: boards: phytec-som-am335x: Revert unified MLO for 1GB
To: barebox@lists.infradead.org

There is a problem in the data path between 1GB RAM devices and the
core, which leads to wrong read operations after DDR initialization
in soft resets. This needs more investigation, but until we didn't
found the problem, we will return to the origin MLO for 1GB RAM devices
with static RAM timings and without memory access.

Signed-off-by: Daniel Schultz <d.schultz@phytec.de>
---
 arch/arm/boards/phytec-som-am335x/lowlevel.c | 1 +
 images/Makefile.am33xx                       | 6 ++++++
 2 files changed, 7 insertions(+)

diff --git a/arch/arm/boards/phytec-som-am335x/lowlevel.c b/arch/arm/boards/phytec-som-am335x/lowlevel.c
index bdd7b30..4b74789 100644
--- a/arch/arm/boards/phytec-som-am335x/lowlevel.c
+++ b/arch/arm/boards/phytec-som-am335x/lowlevel.c
@@ -245,6 +245,7 @@ PHYTEC_ENTRY_MLO(start_am33xx_phytec_phycore_sram_128mb, am335x_phytec_phycore_s
 PHYTEC_ENTRY_MLO(start_am33xx_phytec_phycore_sram_256mb, am335x_phytec_phycore_som_mlo, PHYCORE_MT41J128M16125IT_256MB);
 PHYTEC_ENTRY_MLO(start_am33xx_phytec_phycore_sram_512mb, am335x_phytec_phycore_som_mlo, PHYCORE_MT41J256M16HA15EIT_512MB);
 PHYTEC_ENTRY_MLO(start_am33xx_phytec_phycore_sram_2x512mb, am335x_phytec_phycore_som_mlo, PHYCORE_MT41J512M8125IT_2x512MB);
+PHYTEC_ENTRY_MLO(start_am33xx_phytec_phycore_r2_sram_1024mb, am335x_phytec_phycore_som_mlo, PHYCORE_R2_MT41K512M16HA125IT_1024MB);
 PHYTEC_ENTRY_UNIFIED_MLO(start_am33xx_phytec_phycore_r2_sram, am335x_phytec_phycore_som_mlo, PHYCORE_R2);
 PHYTEC_ENTRY(start_am33xx_phytec_phycore_nand_sdram, am335x_phytec_phycore_som_nand);
 PHYTEC_ENTRY(start_am33xx_phytec_phycore_emmc_sdram, am335x_phytec_phycore_som_emmc);
diff --git a/images/Makefile.am33xx b/images/Makefile.am33xx
index 3f29143..50fa019 100644
--- a/images/Makefile.am33xx
+++ b/images/Makefile.am33xx
@@ -51,6 +51,12 @@ FILE_barebox-am33xx-phytec-phycore-r2-mlo.spi.img = start_am33xx_phytec_phycore_
 am33xx-mlo-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += barebox-am33xx-phytec-phycore-r2-mlo.img
 am33xx-mlospi-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += barebox-am33xx-phytec-phycore-r2-mlo.spi.img
 
+pblx-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += start_am33xx_phytec_phycore_r2_sram_1024mb
+FILE_barebox-am33xx-phytec-phycore-r2-mlo-1024mb.img = start_am33xx_phytec_phycore_r2_sram_1024mb.pblx.mlo
+FILE_barebox-am33xx-phytec-phycore-r2-mlo-1024mb.spi.img = start_am33xx_phytec_phycore_r2_sram_1024mb.pblx.mlospi
+am33xx-mlo-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += barebox-am33xx-phytec-phycore-r2-mlo-1024mb.img
+am33xx-mlospi-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += barebox-am33xx-phytec-phycore-r2-mlo-1024mb.spi.img
+
 pblx-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += start_am33xx_phytec_phycore_sram_256mb
 FILE_barebox-am33xx-phytec-phycore-mlo-256mb.img = start_am33xx_phytec_phycore_sram_256mb.pblx.mlo
 FILE_barebox-am33xx-phytec-phycore-mlo-256mb.spi.img = start_am33xx_phytec_phycore_sram_256mb.pblx.mlospi
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
