Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phycore.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aVdAN-0006cK-0b
 for barebox@lists.infradead.org; Tue, 16 Feb 2016 10:47:41 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 746F8A0043F
 for <barebox@lists.infradead.org>; Tue, 16 Feb 2016 11:47:09 +0100 (CET)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Tue, 16 Feb 2016 11:45:00 +0100
Message-Id: <1455619502-19908-6-git-send-email-t.remmet@phytec.de>
In-Reply-To: <1455619502-19908-1-git-send-email-t.remmet@phytec.de>
References: <1455619502-19908-1-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH 5/7] ARM: boards: phytec-som-am335x: New RAM Timings for
 phyCORE-AM335x-R2
To: barebox@lists.infradead.org

Add RAM timings for phyCORE-AM335x-R2 256MB RAM.

Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 arch/arm/boards/phytec-som-am335x/lowlevel.c    |  1 +
 arch/arm/boards/phytec-som-am335x/ram-timings.h | 20 ++++++++++++++++++++
 images/Makefile.am33xx                          |  6 ++++++
 3 files changed, 27 insertions(+)

diff --git a/arch/arm/boards/phytec-som-am335x/lowlevel.c b/arch/arm/boards/phytec-som-am335x/lowlevel.c
index 8af450e..4240f40 100644
--- a/arch/arm/boards/phytec-som-am335x/lowlevel.c
+++ b/arch/arm/boards/phytec-som-am335x/lowlevel.c
@@ -124,6 +124,7 @@ PHYTEC_ENTRY_MLO(start_am33xx_phytec_phycore_sram_512mb, am335x_phytec_phycore_s
 PHYTEC_ENTRY_MLO(start_am33xx_phytec_phycore_sram_2x512mb, am335x_phytec_phycore_som_mlo, PHYCORE_MT41J512M8125IT_2x512MB);
 PHYTEC_ENTRY_MLO(start_am33xx_phytec_phycore_sram_1024mb, am335x_phytec_phycore_som_mlo, PHYCORE_IM8G16D3FBBG15EI_1024MB);
 PHYTEC_ENTRY_MLO(start_am33xx_phytec_phycore_r2_sram_512mb, am335x_phytec_phycore_som_mlo, PHYCORE_R2_MT41K256M16TW107IT_512MB);
+PHYTEC_ENTRY_MLO(start_am33xx_phytec_phycore_r2_sram_256mb, am335x_phytec_phycore_som_mlo, PHYCORE_R2_MT41K128M16JT_256MB);
 PHYTEC_ENTRY(start_am33xx_phytec_phycore_sdram, am335x_phytec_phycore_som);
 PHYTEC_ENTRY(start_am33xx_phytec_phycore_no_spi_sdram, am335x_phytec_phycore_som_no_spi);
 PHYTEC_ENTRY(start_am33xx_phytec_phycore_no_eeprom_sdram, am335x_phytec_phycore_som_no_eeprom);
diff --git a/arch/arm/boards/phytec-som-am335x/ram-timings.h b/arch/arm/boards/phytec-som-am335x/ram-timings.h
index b89d561..884874c 100644
--- a/arch/arm/boards/phytec-som-am335x/ram-timings.h
+++ b/arch/arm/boards/phytec-som-am335x/ram-timings.h
@@ -31,6 +31,7 @@ enum {
 	PHYCORE_MT41J512M8125IT_2x512MB,
 	PHYCORE_IM8G16D3FBBG15EI_1024MB,
 	PHYCORE_R2_MT41K256M16TW107IT_512MB,
+	PHYCORE_R2_MT41K128M16JT_256MB,
 
 	PHYCARD_NT5CB128M16BP_256MB,
 };
@@ -212,6 +213,25 @@ struct am335x_sdram_timings physom_timings[] = {
 			.wr_slave_ratio0	= 0x72,
 		},
 	},
+
+	/* 256MB R2 */
+	[PHYCORE_R2_MT41K128M16JT_256MB] = {
+		.regs = {
+			.emif_read_latency	= 0x7,
+			.emif_tim1		= 0x0AAAD4DB,
+			.emif_tim2		= 0x26437FDA,
+			.emif_tim3		= 0x501F83FF,
+			.sdram_config		= 0x61C052B2,
+			.zq_config		= 0x50074BE4,
+			.sdram_ref_ctrl		= 0x00000C30,
+		},
+		.data = {
+			.rd_slave_ratio0	= 0x36,
+			.wr_dqs_slave_ratio0	= 0x38,
+			.fifo_we_slave_ratio0	= 0x99,
+			.wr_slave_ratio0	= 0x73,
+		},
+	},
 };
 
 #endif
diff --git a/images/Makefile.am33xx b/images/Makefile.am33xx
index eec6fc5..6c7e81a 100644
--- a/images/Makefile.am33xx
+++ b/images/Makefile.am33xx
@@ -47,6 +47,12 @@ FILE_barebox-am33xx-phytec-phycore-mlo-256mb.spi.img = start_am33xx_phytec_phyco
 am33xx-mlo-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += barebox-am33xx-phytec-phycore-mlo-256mb.img
 am33xx-mlospi-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += barebox-am33xx-phytec-phycore-mlo-256mb.spi.img
 
+pblx-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += start_am33xx_phytec_phycore_r2_sram_256mb
+FILE_barebox-am33xx-phytec-phycore-r2-mlo-256mb.img = start_am33xx_phytec_phycore_r2_sram_256mb.pblx.mlo
+FILE_barebox-am33xx-phytec-phycore-r2-mlo-256mb.spi.img = start_am33xx_phytec_phycore_r2_sram_256mb.pblx.mlospi
+am33xx-mlo-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += barebox-am33xx-phytec-phycore-r2-mlo-256mb.img
+am33xx-mlospi-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += barebox-am33xx-phytec-phycore-r2-mlo-256mb.spi.img
+
 pblx-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += start_am33xx_phytec_phycore_sram_128mb
 FILE_barebox-am33xx-phytec-phycore-mlo-128mb.img = start_am33xx_phytec_phycore_sram_128mb.pblx.mlo
 FILE_barebox-am33xx-phytec-phycore-mlo-128mb.spi.img = start_am33xx_phytec_phycore_sram_128mb.pblx.mlospi
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
