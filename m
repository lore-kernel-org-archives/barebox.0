Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.co.uk ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aVdA0-0006SB-Ga
 for barebox@lists.infradead.org; Tue, 16 Feb 2016 10:47:17 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 608F2A0043A
 for <barebox@lists.infradead.org>; Tue, 16 Feb 2016 11:47:09 +0100 (CET)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Tue, 16 Feb 2016 11:44:59 +0100
Message-Id: <1455619502-19908-5-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH 4/7] ARM: board: phytec-som-am335x: RAM timings for
 phyCORE-AM335x-R2
To: barebox@lists.infradead.org

From: Arnd Beuscher <a.beuscher@phytec.de>

Add RAM Timings for new phyCORE-AM335x-R2 SoM with
512MB (MT41K256M16TW107IT).

Signed-off-by: Arnd Beuscher <a.beuscher@phytec.de>
Sigend-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 arch/arm/boards/phytec-som-am335x/lowlevel.c    |  1 +
 arch/arm/boards/phytec-som-am335x/ram-timings.h | 20 ++++++++++++++++++++
 images/Makefile.am33xx                          |  6 ++++++
 3 files changed, 27 insertions(+)

diff --git a/arch/arm/boards/phytec-som-am335x/lowlevel.c b/arch/arm/boards/phytec-som-am335x/lowlevel.c
index d7afbb6..8af450e 100644
--- a/arch/arm/boards/phytec-som-am335x/lowlevel.c
+++ b/arch/arm/boards/phytec-som-am335x/lowlevel.c
@@ -123,6 +123,7 @@ PHYTEC_ENTRY_MLO(start_am33xx_phytec_phycore_sram_256mb, am335x_phytec_phycore_s
 PHYTEC_ENTRY_MLO(start_am33xx_phytec_phycore_sram_512mb, am335x_phytec_phycore_som_mlo, PHYCORE_MT41J256M16HA15EIT_512MB);
 PHYTEC_ENTRY_MLO(start_am33xx_phytec_phycore_sram_2x512mb, am335x_phytec_phycore_som_mlo, PHYCORE_MT41J512M8125IT_2x512MB);
 PHYTEC_ENTRY_MLO(start_am33xx_phytec_phycore_sram_1024mb, am335x_phytec_phycore_som_mlo, PHYCORE_IM8G16D3FBBG15EI_1024MB);
+PHYTEC_ENTRY_MLO(start_am33xx_phytec_phycore_r2_sram_512mb, am335x_phytec_phycore_som_mlo, PHYCORE_R2_MT41K256M16TW107IT_512MB);
 PHYTEC_ENTRY(start_am33xx_phytec_phycore_sdram, am335x_phytec_phycore_som);
 PHYTEC_ENTRY(start_am33xx_phytec_phycore_no_spi_sdram, am335x_phytec_phycore_som_no_spi);
 PHYTEC_ENTRY(start_am33xx_phytec_phycore_no_eeprom_sdram, am335x_phytec_phycore_som_no_eeprom);
diff --git a/arch/arm/boards/phytec-som-am335x/ram-timings.h b/arch/arm/boards/phytec-som-am335x/ram-timings.h
index 698b073..b89d561 100644
--- a/arch/arm/boards/phytec-som-am335x/ram-timings.h
+++ b/arch/arm/boards/phytec-som-am335x/ram-timings.h
@@ -30,6 +30,7 @@ enum {
 	PHYCORE_MT41J256M16HA15EIT_512MB,
 	PHYCORE_MT41J512M8125IT_2x512MB,
 	PHYCORE_IM8G16D3FBBG15EI_1024MB,
+	PHYCORE_R2_MT41K256M16TW107IT_512MB,
 
 	PHYCARD_NT5CB128M16BP_256MB,
 };
@@ -192,6 +193,25 @@ struct am335x_sdram_timings physom_timings[] = {
 			.dll_lock_diff0         = 0x0,
 		},
 	},
+
+	/* 512MB R2 */
+	[PHYCORE_R2_MT41K256M16TW107IT_512MB] = {
+		.regs = {
+			.emif_read_latency	= 0x7,
+			.emif_tim1		= 0x0AAAD4DB,
+			.emif_tim2		= 0x266B7FDA,
+			.emif_tim3		= 0x501F867F,
+			.sdram_config		= 0x61C05332,
+			.zq_config		= 0x50074BE4,
+			.sdram_ref_ctrl		= 0x00000C30,
+		},
+		.data = {
+			.rd_slave_ratio0	= 0x37,
+			.wr_dqs_slave_ratio0	= 0x38,
+			.fifo_we_slave_ratio0	= 0x92,
+			.wr_slave_ratio0	= 0x72,
+		},
+	},
 };
 
 #endif
diff --git a/images/Makefile.am33xx b/images/Makefile.am33xx
index 375ff90..eec6fc5 100644
--- a/images/Makefile.am33xx
+++ b/images/Makefile.am33xx
@@ -59,6 +59,12 @@ FILE_barebox-am33xx-phytec-phycore-mlo-512mb.spi.img = start_am33xx_phytec_phyco
 am33xx-mlo-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += barebox-am33xx-phytec-phycore-mlo-512mb.img
 am33xx-mlospi-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += barebox-am33xx-phytec-phycore-mlo-512mb.spi.img
 
+pblx-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += start_am33xx_phytec_phycore_r2_sram_512mb
+FILE_barebox-am33xx-phytec-phycore-r2-mlo-512mb.img = start_am33xx_phytec_phycore_r2_sram_512mb.pblx.mlo
+FILE_barebox-am33xx-phytec-phycore-r2-mlo-512mb.spi.img = start_am33xx_phytec_phycore_r2_sram_512mb.pblx.mlospi
+am33xx-mlo-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += barebox-am33xx-phytec-phycore-r2-mlo-512mb.img
+am33xx-mlospi-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += barebox-am33xx-phytec-phycore-r2-mlo-512mb.spi.img
+
 pblx-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += start_am33xx_phytec_phycore_sram_2x512mb
 FILE_barebox-am33xx-phytec-phycore-mlo-2x512mb.img = start_am33xx_phytec_phycore_sram_2x512mb.pblx.mlo
 FILE_barebox-am33xx-phytec-phycore-mlo-2x512mb.spi.img = start_am33xx_phytec_phycore_sram_2x512mb.pblx.mlospi
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
