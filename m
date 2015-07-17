Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phycore.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZG3bO-00053E-T0
 for barebox@lists.infradead.org; Fri, 17 Jul 2015 11:14:52 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 8C9E2A00459
 for <barebox@lists.infradead.org>; Fri, 17 Jul 2015 13:16:11 +0200 (CEST)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Fri, 17 Jul 2015 13:13:51 +0200
Message-Id: <1437131633-9590-5-git-send-email-t.remmet@phytec.de>
In-Reply-To: <1437131633-9590-1-git-send-email-t.remmet@phytec.de>
References: <1437131633-9590-1-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH 5/7] ARM: phytec-som-am335x: Add support for 1024MiB RAM on
 one chip
To: barebox@lists.infradead.org

Added support for IM8G16D3FBBG15EI 1024MiB RAM on one chip.

Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 arch/arm/boards/phytec-som-am335x/lowlevel.c    |  1 +
 arch/arm/boards/phytec-som-am335x/ram-timings.h | 22 +++++++++++++++++++++-
 images/Makefile.am33xx                          |  6 ++++++
 3 files changed, 28 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boards/phytec-som-am335x/lowlevel.c b/arch/arm/boards/phytec-som-am335x/lowlevel.c
index 948bfa5..0ff62a3 100644
--- a/arch/arm/boards/phytec-som-am335x/lowlevel.c
+++ b/arch/arm/boards/phytec-som-am335x/lowlevel.c
@@ -124,6 +124,7 @@ PHYTEC_ENTRY_MLO(start_am33xx_phytec_phycore_sram_128mb, am335x_phytec_phycore_s
 PHYTEC_ENTRY_MLO(start_am33xx_phytec_phycore_sram_256mb, am335x_phytec_phycore_som_mlo, PHYCORE_MT41J128M16125IT_256MB);
 PHYTEC_ENTRY_MLO(start_am33xx_phytec_phycore_sram_512mb, am335x_phytec_phycore_som_mlo, PHYCORE_MT41J256M16HA15EIT_512MB);
 PHYTEC_ENTRY_MLO(start_am33xx_phytec_phycore_sram_2x512mb, am335x_phytec_phycore_som_mlo, PHYCORE_MT41J512M8125IT_2x512MB);
+PHYTEC_ENTRY_MLO(start_am33xx_phytec_phycore_sram_1024mb, am335x_phytec_phycore_som_mlo, PHYCORE_IM8G16D3FBBG15EI_1024MB);
 PHYTEC_ENTRY(start_am33xx_phytec_phycore_sdram, am335x_phytec_phycore_som);
 PHYTEC_ENTRY(start_am33xx_phytec_phycore_no_spi_sdram, am335x_phytec_phycore_som_no_spi);
 
diff --git a/arch/arm/boards/phytec-som-am335x/ram-timings.h b/arch/arm/boards/phytec-som-am335x/ram-timings.h
index 3dcee20..698b073 100644
--- a/arch/arm/boards/phytec-som-am335x/ram-timings.h
+++ b/arch/arm/boards/phytec-som-am335x/ram-timings.h
@@ -29,6 +29,7 @@ enum {
 	PHYCORE_MT41J64M1615IT_128MB,
 	PHYCORE_MT41J256M16HA15EIT_512MB,
 	PHYCORE_MT41J512M8125IT_2x512MB,
+	PHYCORE_IM8G16D3FBBG15EI_1024MB,
 
 	PHYCARD_NT5CB128M16BP_256MB,
 };
@@ -133,7 +134,7 @@ struct am335x_sdram_timings physom_timings[] = {
 		},
 	},
 
-	/* 1024MB */
+	/* 2x512MB */
 	[PHYCORE_MT41J512M8125IT_2x512MB] = {
 		.regs = {
 			.emif_read_latency	= 0x7,
@@ -152,6 +153,25 @@ struct am335x_sdram_timings physom_timings[] = {
 		},
 	},
 
+	/* 1024MB */
+	[PHYCORE_IM8G16D3FBBG15EI_1024MB] = {
+		.regs = {
+			.emif_read_latency	= 0x7,
+			.emif_tim1		= 0x0AAAE4DB,
+			.emif_tim2		= 0x268F7FDA,
+			.emif_tim3		= 0x501F88BF,
+			.sdram_config		= 0x61C053B2,
+			.zq_config		= 0x50074BE4,
+			.sdram_ref_ctrl		= 0x00000C30
+		},
+		.data = {
+			.rd_slave_ratio0	= 0x33,
+			.wr_dqs_slave_ratio0	= 0x4a,
+			.fifo_we_slave_ratio0	= 0xa4,
+			.wr_slave_ratio0	= 0x85,
+		},
+	},
+
 	/* 256MB */
 	[PHYCARD_NT5CB128M16BP_256MB] = {
 		.regs = {
diff --git a/images/Makefile.am33xx b/images/Makefile.am33xx
index 657aeb0..df77f19 100644
--- a/images/Makefile.am33xx
+++ b/images/Makefile.am33xx
@@ -57,6 +57,12 @@ FILE_barebox-am33xx-phytec-phycore-mlo-2x512mb.spi.img = start_am33xx_phytec_phy
 am33xx-mlo-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += barebox-am33xx-phytec-phycore-mlo-2x512mb.img
 am33xx-mlospi-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += barebox-am33xx-phytec-phycore-mlo-2x512mb.spi.img
 
+pblx-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += start_am33xx_phytec_phycore_sram_1024mb
+FILE_barebox-am33xx-phytec-phycore-mlo-1024mb.img = start_am33xx_phytec_phycore_sram_1024mb.pblx.mlo
+FILE_barebox-am33xx-phytec-phycore-mlo-1024mb.spi.img = start_am33xx_phytec_phycore_sram_1024mb.pblx.mlospi
+am33xx-mlo-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += barebox-am33xx-phytec-phycore-mlo-1024mb.img
+am33xx-mlospi-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += barebox-am33xx-phytec-phycore-mlo-1024mb.spi.img
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
