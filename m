Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.rapiddevelopmentkit.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1as3Bh-0001XV-FS
 for barebox@lists.infradead.org; Mon, 18 Apr 2016 07:01:38 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id C79ADA0014F
 for <barebox@lists.infradead.org>; Mon, 18 Apr 2016 09:01:51 +0200 (CEST)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Mon, 18 Apr 2016 08:56:51 +0200
Message-Id: <1460962611-14084-1-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH] ARM: board: phytec-som-am335x: RAM timings for phycore-r2 1GB
To: barebox@lists.infradead.org

Add new RAM Timings for phyCORE R2 with MT41K512M16HA-125IT
1024MB mounted.

Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 arch/arm/boards/phytec-som-am335x/lowlevel.c    |  1 +
 arch/arm/boards/phytec-som-am335x/ram-timings.h | 20 ++++++++++++++++++++
 images/Makefile.am33xx                          |  6 ++++++
 3 files changed, 27 insertions(+)

diff --git a/arch/arm/boards/phytec-som-am335x/lowlevel.c b/arch/arm/boards/phytec-som-am335x/lowlevel.c
index 73e75eb..33e83c5 100644
--- a/arch/arm/boards/phytec-som-am335x/lowlevel.c
+++ b/arch/arm/boards/phytec-som-am335x/lowlevel.c
@@ -125,6 +125,7 @@ PHYTEC_ENTRY_MLO(start_am33xx_phytec_phycore_sram_2x512mb, am335x_phytec_phycore
 PHYTEC_ENTRY_MLO(start_am33xx_phytec_phycore_sram_1024mb, am335x_phytec_phycore_som_mlo, PHYCORE_IM8G16D3FBBG15EI_1024MB);
 PHYTEC_ENTRY_MLO(start_am33xx_phytec_phycore_r2_sram_512mb, am335x_phytec_phycore_som_mlo, PHYCORE_R2_MT41K256M16TW107IT_512MB);
 PHYTEC_ENTRY_MLO(start_am33xx_phytec_phycore_r2_sram_256mb, am335x_phytec_phycore_som_mlo, PHYCORE_R2_MT41K128M16JT_256MB);
+PHYTEC_ENTRY_MLO(start_am33xx_phytec_phycore_r2_sram_1024mb,  am335x_phytec_phycore_som_mlo, PHYCORE_R2_MT41K512M16HA125IT_1024MB);
 PHYTEC_ENTRY(start_am33xx_phytec_phycore_sdram, am335x_phytec_phycore_som);
 PHYTEC_ENTRY(start_am33xx_phytec_phycore_no_spi_sdram, am335x_phytec_phycore_som_no_spi);
 PHYTEC_ENTRY(start_am33xx_phytec_phycore_no_eeprom_sdram, am335x_phytec_phycore_som_no_eeprom);
diff --git a/arch/arm/boards/phytec-som-am335x/ram-timings.h b/arch/arm/boards/phytec-som-am335x/ram-timings.h
index 884874c..9576d26 100644
--- a/arch/arm/boards/phytec-som-am335x/ram-timings.h
+++ b/arch/arm/boards/phytec-som-am335x/ram-timings.h
@@ -32,6 +32,7 @@ enum {
 	PHYCORE_IM8G16D3FBBG15EI_1024MB,
 	PHYCORE_R2_MT41K256M16TW107IT_512MB,
 	PHYCORE_R2_MT41K128M16JT_256MB,
+	PHYCORE_R2_MT41K512M16HA125IT_1024MB,
 
 	PHYCARD_NT5CB128M16BP_256MB,
 };
@@ -232,6 +233,25 @@ struct am335x_sdram_timings physom_timings[] = {
 			.wr_slave_ratio0	= 0x73,
 		},
 	},
+
+	/* 1024MB R2 */
+	[PHYCORE_R2_MT41K512M16HA125IT_1024MB] = {
+		.regs = {
+			.emif_read_latency	= 0x7,
+			.emif_tim1		= 0x0AAAD4DB,
+			.emif_tim2		= 0x268F7FDA,
+			.emif_tim3		= 0x501F88BF,
+			.sdram_config		= 0x61C053B2,
+			.zq_config		= 0x50074BE4,
+			.sdram_ref_ctrl		= 0x00000C30,
+		},
+		.data = {
+			.rd_slave_ratio0	= 0x38,
+			.wr_dqs_slave_ratio0	= 0x4d,
+			.fifo_we_slave_ratio0	= 0x9d,
+			.wr_slave_ratio0	= 0x82,
+		},
+	},
 };
 
 #endif
diff --git a/images/Makefile.am33xx b/images/Makefile.am33xx
index 6c7e81a..8be78ef 100644
--- a/images/Makefile.am33xx
+++ b/images/Makefile.am33xx
@@ -83,6 +83,12 @@ FILE_barebox-am33xx-phytec-phycore-mlo-1024mb.spi.img = start_am33xx_phytec_phyc
 am33xx-mlo-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += barebox-am33xx-phytec-phycore-mlo-1024mb.img
 am33xx-mlospi-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += barebox-am33xx-phytec-phycore-mlo-1024mb.spi.img
 
+pblx-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += start_am33xx_phytec_phycore_r2_sram_1024mb
+FILE_barebox-am33xx-phytec-phycore-r2-mlo-1024mb.img = start_am33xx_phytec_phycore_r2_sram_1024mb.pblx.mlo
+FILE_barebox-am33xx-phytec-phycore-r2-mlo-1024mb.spi.img = start_am33xx_phytec_phycore_r2_sram_1024mb.pblx.mlospi
+am33xx-mlo-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += barebox-am33xx-phytec-phycore-r2-mlo-1024mb.img
+am33xx-mlospi-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += barebox-am33xx-phytec-phycore-r2-mlo-1024mb.spi.img
+
 pblx-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += start_am33xx_phytec_phyflex_sdram
 FILE_barebox-am33xx-phytec-phyflex.img = start_am33xx_phytec_phyflex_sdram.pblx
 am33xx-barebox-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += barebox-am33xx-phytec-phyflex.img
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
