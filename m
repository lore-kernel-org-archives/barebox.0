Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOITm-0005jx-Kl
 for barebox@lists.infradead.org; Wed, 08 May 2019 09:03:13 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  8 May 2019 11:03:03 +0200
Message-Id: <20190508090307.17729-7-s.hauer@pengutronix.de>
In-Reply-To: <20190508090307.17729-1-s.hauer@pengutronix.de>
References: <20190508090307.17729-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 06/10] ARM: Layerscape: TQMLS1046a: Unify SD and eMMC images
To: Barebox List <barebox@lists.infradead.org>

TQ has unified SD and eMMC images in their U-Boot. Do the same in
barebox aswell.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 .../tqmls1046a_rcw_emmc_3333_5559.cfg         | 84 -------------------
 .../tqmls1046a_rcw_sd_3333_5559.cfg           | 14 ++--
 images/Makefile.layerscape                    |  7 +-
 3 files changed, 8 insertions(+), 97 deletions(-)
 delete mode 100644 arch/arm/boards/tqmls1046a/tqmls1046a_rcw_emmc_3333_5559.cfg

diff --git a/arch/arm/boards/tqmls1046a/tqmls1046a_rcw_emmc_3333_5559.cfg b/arch/arm/boards/tqmls1046a/tqmls1046a_rcw_emmc_3333_5559.cfg
deleted file mode 100644
index 6c72d001c3..0000000000
--- a/arch/arm/boards/tqmls1046a/tqmls1046a_rcw_emmc_3333_5559.cfg
+++ /dev/null
@@ -1,84 +0,0 @@
-# RCW values
-#   0:  1 - SYS_PLL_CFG              :       0 [0x0 / 0b00]
-#   2:  6 - SYS_PLL_RAT              :       6 [0x6 / 0b00110]
-#   8:  9 - MEM_PLL_CFG              :       0 [0x0 / 0b00]
-#  10: 15 - MEM_PLL_RAT              :      20 [0x14 / 0b010100]
-#  24: 25 - CGA_PLL1_CFG             :       0 [0x0 / 0b00]
-#  26: 31 - CGA_PLL1_RAT             :      16 [0x10 / 0b010000]
-#  32: 33 - CGA_PLL2_CFG             :       0 [0x0 / 0b00]
-#  34: 39 - CGA_PLL2_RAT             :      14 [0xe / 0b001110]
-#  96: 99 - C1_PLL_SEL               :       0 [0x0 / 0b0000]
-# 128:143 - SRDS_PRTCL_S1            :   13107 [0x3333 / 0b0011001100110011]
-# 144:159 - SRDS_PRTCL_S2            :   21849 [0x5559 / 0b0101010101011001]
-# 160:161 - SRDS_PLL_REF_CLK_SEL_S1  :       3 [0x3 / 0b11]
-# 162:163 - SRDS_PLL_REF_CLK_SEL_S2  :       3 [0x3 / 0b11]
-# 168:169 - SRDS_PLL_PD_S1           :       0 [0x0 / 0b00]
-# 170:171 - SRDS_PLL_PD_S2           :       0 [0x0 / 0b00]
-# 176:177 - SRDS_DIV_PEX_S1          :       1 [0x1 / 0b01]
-# 178:179 - SRDS_DIV_PEX_S2          :       1 [0x1 / 0b01]
-# 186:187 - DDR_REFCLK_SEL           :       0 [0x0 / 0b00]
-# 188:188 - SRDS_REFCLK_SEL_S1       :       0 [0x0 / 0b0]
-# 189:189 - SRDS_REFCLK_SEL_S2       :       0 [0x0 / 0b0]
-# 190:191 - DDR_FDBK_MULT            :       2 [0x2 / 0b10]
-# 192:195 - PBI_SRC                  :       6 [0x6 / 0b0110]
-# 201:201 - BOOT_HO                  :       0 [0x0 / 0b0]
-# 202:202 - SB_EN                    :       0 [0x0 / 0b0]
-# 203:211 - IFC_MODE                 :      64 [0x40 / 0b001000000]
-# 224:226 - HWA_CGA_M1_CLK_SEL       :       6 [0x6 / 0b110]
-# 230:231 - DRAM_LAT                 :       1 [0x1 / 0b01]
-# 232:232 - DDR_RATE                 :       0 [0x0 / 0b0]
-# 234:234 - DDR_RSV0                 :       0 [0x0 / 0b0]
-# 242:242 - SYS_PLL_SPD              :       0 [0x0 / 0b0]
-# 243:243 - MEM_PLL_SPD              :       0 [0x0 / 0b0]
-# 244:244 - CGA_PLL1_SPD             :       0 [0x0 / 0b0]
-# 245:245 - CGA_PLL2_SPD             :       0 [0x0 / 0b0]
-# 264:266 - HOST_AGT_PEX             :       0 [0x0 / 0b000]
-# 288:295 - GP_INFO1                 :       0 [0x00 / 0b00000000]
-# 299:319 - GP_INFO2                 :       0 [0x00000 / 0b000000000000000000000]
-# 354:356 - UART_EXT                 :       0 [0x0 / 0b000]
-# 357:359 - IRQ_EXT                  :       0 [0x0 / 0b000]
-# 360:362 - SPI_EXT                  :       0 [0x0 / 0b000]
-# 363:365 - SDHC_EXT                 :       0 [0x0 / 0b000]
-# 366:368 - UART_BASE                :       5 [0x5 / 0b101]
-# 369:369 - ASLEEP                   :       0 [0x0 / 0b0]
-# 370:370 - RTC                      :       0 [0x0 / 0b0]
-# 371:371 - SDHC_BASE                :       0 [0x0 / 0b0]
-# 372:372 - IRQ_OUT                  :       1 [0x1 / 0b1]
-# 373:381 - IRQ_BASE                 :       0 [0x00 / 0b000000000]
-# 382:383 - SPI_BASE                 :       0 [0x0 / 0b00]
-# 384:386 - IFC_GRP_A_EXT            :       1 [0x1 / 0b001]
-# 393:395 - IFC_GRP_D_EXT            :       0 [0x0 / 0b000]
-# 396:398 - IFC_GRP_E1_EXT           :       0 [0x0 / 0b000]
-# 399:401 - IFC_GRP_F_EXT            :       1 [0x1 / 0b001]
-# 405:405 - IFC_GRP_E1_BASE          :       0 [0x0 / 0b0]
-# 407:407 - IFC_GRP_D_BASE           :       0 [0x0 / 0b0]
-# 412:413 - IFC_GRP_A_BASE           :       0 [0x0 / 0b00]
-# 415:415 - IFC_A_22_24              :       0 [0x0 / 0b0]
-# 416:418 - EC1                      :       0 [0x0 / 0b000]
-# 419:421 - EC2                      :       0 [0x0 / 0b000]
-# 422:423 - LVDD_VSEL                :       1 [0x1 / 0b01]
-# 424:424 - I2C_IPGCLK_SEL           :       0 [0x0 / 0b0]
-# 425:425 - EM1                      :       0 [0x0 / 0b0]
-# 426:426 - EM2                      :       0 [0x0 / 0b0]
-# 427:427 - EMI2_DMODE               :       1 [0x1 / 0b1]
-# 428:428 - EMI2_CMODE               :       0 [0x0 / 0b0]
-# 429:429 - USB_DRVVBUS              :       0 [0x0 / 0b0]
-# 430:430 - USB_PWRFAULT             :       0 [0x0 / 0b0]
-# 433:434 - TVDD_VSEL                :       1 [0x1 / 0b01]
-# 435:436 - DVDD_VSEL                :       2 [0x2 / 0b10]
-# 438:438 - EMI1_DMODE               :       1 [0x1 / 0b1]
-# 439:440 - EVDD_VSEL                :       0 [0x0 / 0b00]
-# 441:443 - IIC2_BASE                :       0 [0x0 / 0b000]
-# 444:444 - EMI1_CMODE               :       0 [0x0 / 0b0]
-# 445:447 - IIC2_EXT                 :       2 [0x2 / 0b010]
-# 472:481 - SYSCLK_FREQ              :     600 [0x258 / 0b1001011000]
-# 509:511 - HWA_CGA_M2_CLK_SEL       :       1 [0x1 / 0b001]
-
-
-#PBL preamble and RCW header
-aa55aa55 01ee0100
-# RCW
-0c140010 0e000000 00000000 00000000
-33335559 f0005002 60040000 c1000000
-00000000 00000000 00000000 00028800
-20004000 01103202 00000096 00000001
diff --git a/arch/arm/boards/tqmls1046a/tqmls1046a_rcw_sd_3333_5559.cfg b/arch/arm/boards/tqmls1046a/tqmls1046a_rcw_sd_3333_5559.cfg
index 4ef6d576ed..72ab1cd7d7 100644
--- a/arch/arm/boards/tqmls1046a/tqmls1046a_rcw_sd_3333_5559.cfg
+++ b/arch/arm/boards/tqmls1046a/tqmls1046a_rcw_sd_3333_5559.cfg
@@ -8,7 +8,7 @@
 #  32: 33 - CGA_PLL2_CFG             :       0 [0x0 / 0b00]
 #  34: 39 - CGA_PLL2_RAT             :      14 [0xe / 0b001110]
 #  96: 99 - C1_PLL_SEL               :       0 [0x0 / 0b0000]
-# 128:143 - SRDS_PRTCL_S1            :   13107 [0x3333 / 0b0011001100110011]
+# 128:143 - SRDS_PRTCL_S1            :    4403 [0x1133 / 0b0001000100110011]
 # 144:159 - SRDS_PRTCL_S2            :   21849 [0x5559 / 0b0101010101011001]
 # 160:161 - SRDS_PLL_REF_CLK_SEL_S1  :       3 [0x3 / 0b11]
 # 162:163 - SRDS_PLL_REF_CLK_SEL_S2  :       3 [0x3 / 0b11]
@@ -39,7 +39,7 @@
 # 357:359 - IRQ_EXT                  :       0 [0x0 / 0b000]
 # 360:362 - SPI_EXT                  :       0 [0x0 / 0b000]
 # 363:365 - SDHC_EXT                 :       0 [0x0 / 0b000]
-# 366:368 - UART_BASE                :       5 [0x5 / 0b101]
+# 366:368 - UART_BASE                :       6 [0x6 / 0b110]
 # 369:369 - ASLEEP                   :       0 [0x0 / 0b0]
 # 370:370 - RTC                      :       0 [0x0 / 0b0]
 # 371:371 - SDHC_BASE                :       0 [0x0 / 0b0]
@@ -67,10 +67,10 @@
 # 433:434 - TVDD_VSEL                :       1 [0x1 / 0b01]
 # 435:436 - DVDD_VSEL                :       2 [0x2 / 0b10]
 # 438:438 - EMI1_DMODE               :       1 [0x1 / 0b1]
-# 439:440 - EVDD_VSEL                :       2 [0x2 / 0b10]
+# 439:440 - EVDD_VSEL                :       0 [0x0 / 0b00]
 # 441:443 - IIC2_BASE                :       0 [0x0 / 0b000]
 # 444:444 - EMI1_CMODE               :       0 [0x0 / 0b0]
-# 445:447 - IIC2_EXT                 :       1 [0x1 / 0b001]
+# 445:447 - IIC2_EXT                 :       2 [0x2 / 0b010]
 # 472:481 - SYSCLK_FREQ              :     600 [0x258 / 0b1001011000]
 # 509:511 - HWA_CGA_M2_CLK_SEL       :       1 [0x1 / 0b001]
 
@@ -79,6 +79,6 @@
 aa55aa55 01ee0100
 # RCW
 0c140010 0e000000 00000000 00000000
-33335559 f0005002 60040000 c1000000
-00000000 00000000 00000000 00028800
-20004000 01103301 00000096 00000001
+11335559 f0005002 60040000 c1000000
+00000000 00000000 00000000 00030800
+20004000 01103202 00000096 00000001
diff --git a/images/Makefile.layerscape b/images/Makefile.layerscape
index 47df3777f0..59f672791b 100644
--- a/images/Makefile.layerscape
+++ b/images/Makefile.layerscape
@@ -45,15 +45,10 @@ $(obj)/barebox-tqmls1046a-sd.image: $(obj)/start_tqmls1046a.pblb \
 		$(board)/tqmls1046a/tqmls1046a_pbi_sd.cfg
 	$(call if_changed,lspbl_image)
 
-$(obj)/barebox-tqmls1046a-emmc.image: $(obj)/start_tqmls1046a.pblb \
-		$(board)/tqmls1046a/tqmls1046a_rcw_emmc_3333_5559.cfg \
-		$(board)/tqmls1046a/tqmls1046a_pbi_sd.cfg
-	$(call if_changed,lspbl_image)
-
 $(obj)/barebox-tqmls1046a-qspi.image: $(obj)/start_tqmls1046a.pblb \
 		$(board)/tqmls1046a/tqmls1046a_rcw_qspi_3333_5559.cfg \
 		$(board)/tqmls1046a/tqmls1046a_pbi_qspi.cfg
 	$(call if_changed,lspbl_image)
 
-image-$(CONFIG_MACH_TQMLS1046A) += barebox-tqmls1046a-sd.image barebox-tqmls1046a-emmc.image \
+image-$(CONFIG_MACH_TQMLS1046A) += barebox-tqmls1046a-sd.image \
 	barebox-tqmls1046a-qspi.image barebox-tqmls1046a-2nd.image
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
