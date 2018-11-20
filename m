Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gP1d1-0005RD-04
 for barebox@lists.infradead.org; Tue, 20 Nov 2018 08:43:29 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 20 Nov 2018 09:41:00 +0100
Message-Id: <20181120084100.8737-4-s.hauer@pengutronix.de>
In-Reply-To: <20181120084100.8737-1-s.hauer@pengutronix.de>
References: <20181120084100.8737-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/3] ARM: images: use piggydata
To: Barebox List <barebox@lists.infradead.org>

The way we assemble the multi images on ARM is rather complicated and
error prone. We currently cat the compressed barebox image behind the
PBL executable and need some magic to obtain the size of the payload and
also have to do tricks to reliably get a pointer to the compressed
image.

This patch switches over to compile the compressed payload into the PBL
image itself which has proven to work for the single PBL case and for
the ARM Linux Kernel aswell.

The goal is to unify the single PBL and the multi PBL cases together in
the future to get an easier startup path for ARM.

This patch has been tested on the i.MX53 QSB, i.MX53 Vincell, Beaglebone
black (both MLO and 2nd stage) and a Phytec phyFLEX i.MX6 board.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/sections.c          |   1 -
 arch/arm/cpu/uncompress.c        |  18 +-
 arch/arm/include/asm/sections.h  |   1 -
 arch/arm/lib/pbl.lds.S           |   6 +-
 arch/arm/mach-imx/xload-common.c |  21 +-
 images/.gitignore                |   2 -
 images/Makefile                  |  41 +-
 images/Makefile.am33xx           | 120 +++---
 images/Makefile.at91             |   8 +-
 images/Makefile.bcm283x          |   8 +-
 images/Makefile.imx              | 617 +++++++++++++++----------------
 images/Makefile.mvebu            |  88 ++---
 images/Makefile.mxs              |  20 +-
 images/Makefile.omap3            |   6 +-
 images/Makefile.rockchip         |   8 +-
 images/Makefile.socfpga          |  38 +-
 images/Makefile.tegra            |  68 ++--
 images/Makefile.vexpress         |   8 +-
 images/piggy.S                   |   6 +
 19 files changed, 522 insertions(+), 563 deletions(-)
 create mode 100644 images/piggy.S

diff --git a/arch/arm/cpu/sections.c b/arch/arm/cpu/sections.c
index ab08ebf42e..a53236d900 100644
--- a/arch/arm/cpu/sections.c
+++ b/arch/arm/cpu/sections.c
@@ -10,4 +10,3 @@ char __bss_start[0] __attribute__((section(".__bss_start")));
 char __bss_stop[0] __attribute__((section(".__bss_stop")));
 char __image_start[0] __attribute__((section(".__image_start")));
 char __image_end[0] __attribute__((section(".__image_end")));
-uint32_t __image_end_marker[1] __attribute__((section(".__image_end_marker"))) = { 0xdeadbeef };
diff --git a/arch/arm/cpu/uncompress.c b/arch/arm/cpu/uncompress.c
index 21d72c58b2..e52716557b 100644
--- a/arch/arm/cpu/uncompress.c
+++ b/arch/arm/cpu/uncompress.c
@@ -39,6 +39,9 @@
 unsigned long free_mem_ptr;
 unsigned long free_mem_end_ptr;
 
+extern unsigned char input_data[];
+extern unsigned char input_data_end[];
+
 void __noreturn barebox_multi_pbl_start(unsigned long membase,
 		unsigned long memsize, void *boarddata)
 {
@@ -46,11 +49,11 @@ void __noreturn barebox_multi_pbl_start(unsigned long membase,
 	void __noreturn (*barebox)(unsigned long, unsigned long, void *);
 	unsigned long endmem = membase + memsize;
 	unsigned long barebox_base;
-	uint32_t *image_end;
-	void *pg_start;
+	void *pg_start, *pg_end;
 	unsigned long pc = get_pc();
 
-	image_end = (void *)__image_end_marker + global_variable_offset();
+	pg_start = input_data + global_variable_offset();
+	pg_end = input_data_end + global_variable_offset();
 
 	if (IS_ENABLED(CONFIG_PBL_RELOCATABLE)) {
 		/*
@@ -64,14 +67,7 @@ void __noreturn barebox_multi_pbl_start(unsigned long membase,
 			relocate_to_adr(membase);
 	}
 
-	/*
-	 * image_end is the image_end_marker defined above. It is the last location
-	 * in the executable. Right after the executable the build process adds
-	 * the size of the appended compressed binary followed by the compressed
-	 * binary itself.
-	 */
-	pg_start = image_end + 2;
-	pg_len = *(image_end + 1);
+	pg_len = pg_end - pg_start;
 	uncompressed_len = get_unaligned((const u32 *)(pg_start + pg_len - 4));
 
 	if (IS_ENABLED(CONFIG_RELOCATABLE))
diff --git a/arch/arm/include/asm/sections.h b/arch/arm/include/asm/sections.h
index b4659256cc..8ab01f2b71 100644
--- a/arch/arm/include/asm/sections.h
+++ b/arch/arm/include/asm/sections.h
@@ -11,7 +11,6 @@ extern char __dynsym_start[];
 extern char __dynsym_end[];
 extern char __exceptions_start[];
 extern char __exceptions_stop[];
-extern uint32_t __image_end_marker[];
 
 #endif
 
diff --git a/arch/arm/lib/pbl.lds.S b/arch/arm/lib/pbl.lds.S
index ddc65bbf45..53c9ce0fe6 100644
--- a/arch/arm/lib/pbl.lds.S
+++ b/arch/arm/lib/pbl.lds.S
@@ -36,6 +36,8 @@ SECTIONS
 {
 	. = BASE;
 
+	.image_start : { *(.__image_start) }
+
 	PRE_IMAGE
 
 	. = ALIGN(4);
@@ -91,9 +93,7 @@ SECTIONS
 	}
 	__piggydata_end = .;
 
-	. = ALIGN(4);
-	.image_end : { *(.__image_end_marker) }
-	__image_end = .;
+	.image_end : { *(.__image_end) }
 
 	_barebox_image_size = __image_end - BASE;
 	_barebox_pbl_size = __bss_start - BASE;
diff --git a/arch/arm/mach-imx/xload-common.c b/arch/arm/mach-imx/xload-common.c
index 13cd612d3c..c5727eba38 100644
--- a/arch/arm/mach-imx/xload-common.c
+++ b/arch/arm/mach-imx/xload-common.c
@@ -5,25 +5,6 @@
 
 int imx_image_size(void)
 {
-	uint32_t *image_end = (void *)__image_end;
-	uint32_t payload_len, pbl_len, imx_header_len, sizep;
-	void *pg_start;
-
-	pg_start = image_end + 1;
-
 	/* i.MX header is 4k */
-	imx_header_len = SZ_4K;
-
-	/* The length of the PBL image */
-	pbl_len = __image_end - _text;
-
-	sizep = 4;
-
-	/* The length of the payload is appended directly behind the PBL */
-	payload_len = *(image_end);
-
-	pr_debug("%s: payload_len: 0x%08x pbl_len: 0x%08x\n",
-			__func__, payload_len, pbl_len);
-
-	return imx_header_len + pbl_len + sizep + payload_len;
+	return barebox_image_size + SZ_4K;
 }
diff --git a/images/.gitignore b/images/.gitignore
index d6e85fa853..7a74937814 100644
--- a/images/.gitignore
+++ b/images/.gitignore
@@ -1,6 +1,4 @@
 *.pbl
-*.pblx.*
-*.pblx
 *.pblb
 *.img
 *.imximg
diff --git a/images/Makefile b/images/Makefile
index 5c4d99ac5a..7fdafb1239 100644
--- a/images/Makefile
+++ b/images/Makefile
@@ -13,7 +13,6 @@
 #
 # start_imx27_pcm038.pbl - The ELF file, linked with the entrypoint start_imx27_pcm038
 # start_imx27_pcm038.pblb - The raw binary of the above.
-# start_imx27_pcm038.pblx - The pblb appended with barebox.x
 # start_imx27_pcm038.pbl.map - The linker map file
 # start_imx27_pcm038.pbl.s - the disassembled ELF, generated with:
 #                            make images/start_imx27_pcm038.pbl.s
@@ -25,21 +24,21 @@
 #
 # For CONFIG_MACH_FREESCALE_MX51_PDK build barebox-imx51-babbage.img
 #
-## FILE_barebox-imx51-babbage.img = start_imx51_babbage.pblx.imximg
+## FILE_barebox-imx51-babbage.img = start_imx51_babbage.pblb.imximg
 #
 # barebox-imx51-babbage.img should be generated (copied) from
-# start_imx51_babbage.pblx.imximg. This copy process is only done so that we
+# start_imx51_babbage.pblb.imximg. This copy process is only done so that we
 # can generate images with a sane name. So what we really need for this
 # board is a i.MX specific image, a .imximg
 #
-## CFG_start_imx51_babbage.pblx.imximg = $(board)/freescale-mx51-pdk/flash-header.imxcfg
+## CFG_start_imx51_babbage.pblb.imximg = $(board)/freescale-mx51-pdk/flash-header.imxcfg
 #
-# The .imximg can be generated from a .pblx using a rule specified in Makefile.imx.
+# The .imximg can be generated from a .pblb using a rule specified in Makefile.imx.
 # The configfile needed for this image is specified with CFG_<filename> = <configfile>
 #
-## pblx-$(CONFIG_MACH_FREESCALE_MX51_PDK) += start_imx51_babbage
+## pblb-$(CONFIG_MACH_FREESCALE_MX51_PDK) += start_imx51_babbage
 #
-# For this image we need a pblx (self extracting barebox binary) with
+# For this image we need a pblb (self extracting barebox binary) with
 # start_imx51_babbage as entrypoint. start_imx51_babbage will be used
 # both as entrypoint and as filename
 #
@@ -57,27 +56,18 @@ quiet_cmd_elf__ ?= LD      $@
       cmd_elf__ ?= $(LD) $(LDFLAGS_barebox) --gc-sections -pie			\
 		-e $(2) -Map $@.map $(LDFLAGS_$(@F)) -o $@		\
 		-T $(pbl-lds)						\
-		--start-group $(barebox-pbl-common) --end-group
+		--start-group $(barebox-pbl-common) $(obj)/piggy.o --end-group
 
 PBL_CPPFLAGS	+= -fdata-sections -ffunction-sections
 
-$(obj)/%.pbl: $(pbl-lds) $(barebox-pbl-common) FORCE
+piggy_o := piggy.$(suffix_y).o
+
+$(obj)/%.pbl: $(pbl-lds) $(barebox-pbl-common) $(obj)/piggy.o FORCE
 	$(call if_changed,elf__,$(*F))
 
 $(obj)/%.pblb: $(obj)/%.pbl FORCE
 	$(call if_changed,objcopy_bin,$(*F))
 
-quiet_cmd_pblx ?= PBLX    $@
-      cmd_pblx ?= cat $(obj)/$(patsubst %.pblx,%.pblb,$(2)) > $@; \
-		  $(call size_append, $(obj)/barebox.z) >> $@; \
-		  cat $(obj)/barebox.z >> $@; \
-		  $(objtree)/scripts/fix_size -f $@
-
-$(obj)/%.pblx: $(obj)/%.pblb $(obj)/barebox.z FORCE
-	$(call if_changed,pblx,$(@F))
-	$(call cmd,check_file_size,$@,$(CONFIG_BAREBOX_MAX_PBLX_SIZE))
-
-
 $(obj)/%.s: $(obj)/% FORCE
 	$(call if_changed,disasm)
 
@@ -87,6 +77,8 @@ suffix_$(CONFIG_IMAGE_COMPRESSION_LZ4)	= lz4
 suffix_$(CONFIG_IMAGE_COMPRESSION_XZKERN) = xzkern
 suffix_$(CONFIG_IMAGE_COMPRESSION_NONE) = comp_copy
 
+$(obj)/piggy.o: $(obj)/barebox.z FORCE
+
 # barebox.z - compressed barebox binary
 # ----------------------------------------------------------------
 $(obj)/barebox.z: $(obj)/../barebox.bin FORCE
@@ -115,10 +107,9 @@ include $(srctree)/images/Makefile.vexpress
 include $(srctree)/images/Makefile.at91
 
 targets += $(image-y) pbl.lds barebox.x barebox.z
-targets += $(patsubst %,%.pblx,$(pblx-y))
-targets += $(patsubst %,%.pblb,$(pblx-y))
-targets += $(patsubst %,%.pbl,$(pblx-y))
-targets += $(patsubst %,%.s,$(pblx-y))
+targets += $(patsubst %,%.pblb,$(pblb-y))
+targets += $(patsubst %,%.pbl,$(pblb-y))
+targets += $(patsubst %,%.s,$(pblb-y))
 targets += $(foreach m, $(image-y), $(FILE_$(m)))
 
 SECONDARY: $(addprefix $(obj)/,$(targets))
@@ -143,7 +134,7 @@ $(flash-link): $(link-dest) FORCE
 $(flash-list): $(image-y-path)
 	@for i in $^; do echo $$i; done > $@
 
-clean-files := *.pbl *.pblb *.pblx *.map start_*.imximg *.img barebox.z start_*.kwbimg \
+clean-files := *.pbl *.pblb *.map start_*.imximg *.img barebox.z start_*.kwbimg \
 	start_*.kwbuartimg *.socfpgaimg *.mlo *.t20img *.t20img.cfg *.t30img \
 	*.t30img.cfg *.t124img *.t124img.cfg *.mlospi *.mlo *.mxsbs *.mxssd \
 	start_*.simximg start_*.usimximg *.imx-sram-img
diff --git a/images/Makefile.am33xx b/images/Makefile.am33xx
index 50fa0196cc..1de2474df5 100644
--- a/images/Makefile.am33xx
+++ b/images/Makefile.am33xx
@@ -15,124 +15,124 @@ quiet_cmd_mlo_spi_image = SPI-IMG $@
 $(obj)/%.mlospi: $(obj)/% $(obj)/%.mlo FORCE
 	$(call if_changed,mlo_spi_image)
 
-pblx-$(CONFIG_MACH_AFI_GF) += start_am33xx_afi_gf_sdram
-FILE_barebox-am33xx-afi-gf.img = start_am33xx_afi_gf_sdram.pblx
+pblb-$(CONFIG_MACH_AFI_GF) += start_am33xx_afi_gf_sdram
+FILE_barebox-am33xx-afi-gf.img = start_am33xx_afi_gf_sdram.pblb
 am33xx-barebox-$(CONFIG_MACH_AFI_GF) += barebox-am33xx-afi-gf.img
 
-pblx-$(CONFIG_MACH_AFI_GF) += start_am33xx_afi_gf_sram
-FILE_barebox-am33xx-afi-gf-mlo.img = start_am33xx_afi_gf_sram.pblx.mlo
-FILE_barebox-am33xx-afi-gf-mlo.spi.img = start_am33xx_afi_gf_sram.pblx.mlospi
+pblb-$(CONFIG_MACH_AFI_GF) += start_am33xx_afi_gf_sram
+FILE_barebox-am33xx-afi-gf-mlo.img = start_am33xx_afi_gf_sram.pblb.mlo
+FILE_barebox-am33xx-afi-gf-mlo.spi.img = start_am33xx_afi_gf_sram.pblb.mlospi
 am33xx-mlo-$(CONFIG_MACH_AFI_GF) += barebox-am33xx-afi-gf-mlo.img
 am33xx-mlospi-$(CONFIG_MACH_AFI_GF) += barebox-am33xx-afi-gf-mlo.spi.img
 
-pblx-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += start_am33xx_phytec_phycore_nand_sdram
-FILE_barebox-am33xx-phytec-phycore.img = start_am33xx_phytec_phycore_nand_sdram.pblx
+pblb-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += start_am33xx_phytec_phycore_nand_sdram
+FILE_barebox-am33xx-phytec-phycore.img = start_am33xx_phytec_phycore_nand_sdram.pblb
 am33xx-barebox-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += barebox-am33xx-phytec-phycore.img
 
-pblx-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += start_am33xx_phytec_phycore_emmc_sdram
-FILE_barebox-am33xx-phytec-phycore-emmc.img = start_am33xx_phytec_phycore_emmc_sdram.pblx
+pblb-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += start_am33xx_phytec_phycore_emmc_sdram
+FILE_barebox-am33xx-phytec-phycore-emmc.img = start_am33xx_phytec_phycore_emmc_sdram.pblb
 am33xx-barebox-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += barebox-am33xx-phytec-phycore-emmc.img
 
-pblx-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += start_am33xx_phytec_phycore_nand_no_spi_sdram
-FILE_barebox-am33xx-phytec-phycore-no-spi.img = start_am33xx_phytec_phycore_nand_no_spi_sdram.pblx
+pblb-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += start_am33xx_phytec_phycore_nand_no_spi_sdram
+FILE_barebox-am33xx-phytec-phycore-no-spi.img = start_am33xx_phytec_phycore_nand_no_spi_sdram.pblb
 am33xx-barebox-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += barebox-am33xx-phytec-phycore-no-spi.img
 
-pblx-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += start_am33xx_phytec_phycore_nand_no_eeprom_sdram
-FILE_barebox-am33xx-phytec-phycore-no-eeprom.img = start_am33xx_phytec_phycore_nand_no_eeprom_sdram.pblx
+pblb-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += start_am33xx_phytec_phycore_nand_no_eeprom_sdram
+FILE_barebox-am33xx-phytec-phycore-no-eeprom.img = start_am33xx_phytec_phycore_nand_no_eeprom_sdram.pblb
 am33xx-barebox-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += barebox-am33xx-phytec-phycore-no-eeprom.img
 
-pblx-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += start_am33xx_phytec_phycore_nand_no_spi_no_eeprom_sdram
-FILE_barebox-am33xx-phytec-phycore-no-spi-no-eeprom.img = start_am33xx_phytec_phycore_nand_no_spi_no_eeprom_sdram.pblx
+pblb-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += start_am33xx_phytec_phycore_nand_no_spi_no_eeprom_sdram
+FILE_barebox-am33xx-phytec-phycore-no-spi-no-eeprom.img = start_am33xx_phytec_phycore_nand_no_spi_no_eeprom_sdram.pblb
 am33xx-barebox-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += barebox-am33xx-phytec-phycore-no-spi-no-eeprom.img
 
-pblx-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += start_am33xx_phytec_phycore_r2_sram
-FILE_barebox-am33xx-phytec-phycore-r2-mlo.img = start_am33xx_phytec_phycore_r2_sram.pblx.mlo
-FILE_barebox-am33xx-phytec-phycore-r2-mlo.spi.img = start_am33xx_phytec_phycore_r2_sram.pblx.mlospi
+pblb-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += start_am33xx_phytec_phycore_r2_sram
+FILE_barebox-am33xx-phytec-phycore-r2-mlo.img = start_am33xx_phytec_phycore_r2_sram.pblb.mlo
+FILE_barebox-am33xx-phytec-phycore-r2-mlo.spi.img = start_am33xx_phytec_phycore_r2_sram.pblb.mlospi
 am33xx-mlo-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += barebox-am33xx-phytec-phycore-r2-mlo.img
 am33xx-mlospi-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += barebox-am33xx-phytec-phycore-r2-mlo.spi.img
 
-pblx-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += start_am33xx_phytec_phycore_r2_sram_1024mb
-FILE_barebox-am33xx-phytec-phycore-r2-mlo-1024mb.img = start_am33xx_phytec_phycore_r2_sram_1024mb.pblx.mlo
-FILE_barebox-am33xx-phytec-phycore-r2-mlo-1024mb.spi.img = start_am33xx_phytec_phycore_r2_sram_1024mb.pblx.mlospi
+pblb-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += start_am33xx_phytec_phycore_r2_sram_1024mb
+FILE_barebox-am33xx-phytec-phycore-r2-mlo-1024mb.img = start_am33xx_phytec_phycore_r2_sram_1024mb.pblb.mlo
+FILE_barebox-am33xx-phytec-phycore-r2-mlo-1024mb.spi.img = start_am33xx_phytec_phycore_r2_sram_1024mb.pblb.mlospi
 am33xx-mlo-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += barebox-am33xx-phytec-phycore-r2-mlo-1024mb.img
 am33xx-mlospi-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += barebox-am33xx-phytec-phycore-r2-mlo-1024mb.spi.img
 
-pblx-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += start_am33xx_phytec_phycore_sram_256mb
-FILE_barebox-am33xx-phytec-phycore-mlo-256mb.img = start_am33xx_phytec_phycore_sram_256mb.pblx.mlo
-FILE_barebox-am33xx-phytec-phycore-mlo-256mb.spi.img = start_am33xx_phytec_phycore_sram_256mb.pblx.mlospi
+pblb-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += start_am33xx_phytec_phycore_sram_256mb
+FILE_barebox-am33xx-phytec-phycore-mlo-256mb.img = start_am33xx_phytec_phycore_sram_256mb.pblb.mlo
+FILE_barebox-am33xx-phytec-phycore-mlo-256mb.spi.img = start_am33xx_phytec_phycore_sram_256mb.pblb.mlospi
 am33xx-mlo-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += barebox-am33xx-phytec-phycore-mlo-256mb.img
 am33xx-mlospi-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += barebox-am33xx-phytec-phycore-mlo-256mb.spi.img
 
-pblx-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += start_am33xx_phytec_phycore_sram_128mb
-FILE_barebox-am33xx-phytec-phycore-mlo-128mb.img = start_am33xx_phytec_phycore_sram_128mb.pblx.mlo
-FILE_barebox-am33xx-phytec-phycore-mlo-128mb.spi.img = start_am33xx_phytec_phycore_sram_128mb.pblx.mlospi
+pblb-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += start_am33xx_phytec_phycore_sram_128mb
+FILE_barebox-am33xx-phytec-phycore-mlo-128mb.img = start_am33xx_phytec_phycore_sram_128mb.pblb.mlo
+FILE_barebox-am33xx-phytec-phycore-mlo-128mb.spi.img = start_am33xx_phytec_phycore_sram_128mb.pblb.mlospi
 am33xx-mlo-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += barebox-am33xx-phytec-phycore-mlo-128mb.img
 am33xx-mlospi-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += barebox-am33xx-phytec-phycore-mlo-128mb.spi.img
 
-pblx-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += start_am33xx_phytec_phycore_sram_512mb
-FILE_barebox-am33xx-phytec-phycore-mlo-512mb.img = start_am33xx_phytec_phycore_sram_512mb.pblx.mlo
-FILE_barebox-am33xx-phytec-phycore-mlo-512mb.spi.img = start_am33xx_phytec_phycore_sram_512mb.pblx.mlospi
+pblb-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += start_am33xx_phytec_phycore_sram_512mb
+FILE_barebox-am33xx-phytec-phycore-mlo-512mb.img = start_am33xx_phytec_phycore_sram_512mb.pblb.mlo
+FILE_barebox-am33xx-phytec-phycore-mlo-512mb.spi.img = start_am33xx_phytec_phycore_sram_512mb.pblb.mlospi
 am33xx-mlo-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += barebox-am33xx-phytec-phycore-mlo-512mb.img
 am33xx-mlospi-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += barebox-am33xx-phytec-phycore-mlo-512mb.spi.img
 
-pblx-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += start_am33xx_phytec_phycore_sram_2x512mb
-FILE_barebox-am33xx-phytec-phycore-mlo-2x512mb.img = start_am33xx_phytec_phycore_sram_2x512mb.pblx.mlo
-FILE_barebox-am33xx-phytec-phycore-mlo-2x512mb.spi.img = start_am33xx_phytec_phycore_sram_2x512mb.pblx.mlospi
+pblb-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += start_am33xx_phytec_phycore_sram_2x512mb
+FILE_barebox-am33xx-phytec-phycore-mlo-2x512mb.img = start_am33xx_phytec_phycore_sram_2x512mb.pblb.mlo
+FILE_barebox-am33xx-phytec-phycore-mlo-2x512mb.spi.img = start_am33xx_phytec_phycore_sram_2x512mb.pblb.mlospi
 am33xx-mlo-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += barebox-am33xx-phytec-phycore-mlo-2x512mb.img
 am33xx-mlospi-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += barebox-am33xx-phytec-phycore-mlo-2x512mb.spi.img
 
-pblx-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += start_am33xx_phytec_phyflex_sdram
-FILE_barebox-am33xx-phytec-phyflex.img = start_am33xx_phytec_phyflex_sdram.pblx
+pblb-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += start_am33xx_phytec_phyflex_sdram
+FILE_barebox-am33xx-phytec-phyflex.img = start_am33xx_phytec_phyflex_sdram.pblb
 am33xx-barebox-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += barebox-am33xx-phytec-phyflex.img
 
-pblx-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += start_am33xx_phytec_phyflex_no_spi_sdram
-FILE_barebox-am33xx-phytec-phyflex-no-spi.img = start_am33xx_phytec_phyflex_no_spi_sdram.pblx
+pblb-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += start_am33xx_phytec_phyflex_no_spi_sdram
+FILE_barebox-am33xx-phytec-phyflex-no-spi.img = start_am33xx_phytec_phyflex_no_spi_sdram.pblb
 am33xx-barebox-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += barebox-am33xx-phytec-phyflex-no-spi.img
 
-pblx-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += start_am33xx_phytec_phyflex_no_eeprom_sdram
-FILE_barebox-am33xx-phytec-phyflex-no-eeprom.img = start_am33xx_phytec_phyflex_no_eeprom_sdram.pblx
+pblb-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += start_am33xx_phytec_phyflex_no_eeprom_sdram
+FILE_barebox-am33xx-phytec-phyflex-no-eeprom.img = start_am33xx_phytec_phyflex_no_eeprom_sdram.pblb
 am33xx-barebox-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += barebox-am33xx-phytec-phyflex-no-eeprom.img
 
-pblx-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += start_am33xx_phytec_phyflex_no_spi_no_eeprom_sdram
-FILE_barebox-am33xx-phytec-phyflex-no-spi-no-eeprom.img = start_am33xx_phytec_phyflex_no_spi_no_eeprom_sdram.pblx
+pblb-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += start_am33xx_phytec_phyflex_no_spi_no_eeprom_sdram
+FILE_barebox-am33xx-phytec-phyflex-no-spi-no-eeprom.img = start_am33xx_phytec_phyflex_no_spi_no_eeprom_sdram.pblb
 am33xx-barebox-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += barebox-am33xx-phytec-phyflex-no-spi-no-eeprom.img
 
-pblx-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += start_am33xx_phytec_phyflex_sram_256mb
-FILE_barebox-am33xx-phytec-phyflex-mlo-256mb.img = start_am33xx_phytec_phyflex_sram_256mb.pblx.mlo
-FILE_barebox-am33xx-phytec-phyflex-mlo-256mb.spi.img = start_am33xx_phytec_phyflex_sram_256mb.pblx.mlospi
+pblb-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += start_am33xx_phytec_phyflex_sram_256mb
+FILE_barebox-am33xx-phytec-phyflex-mlo-256mb.img = start_am33xx_phytec_phyflex_sram_256mb.pblb.mlo
+FILE_barebox-am33xx-phytec-phyflex-mlo-256mb.spi.img = start_am33xx_phytec_phyflex_sram_256mb.pblb.mlospi
 am33xx-mlo-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += barebox-am33xx-phytec-phyflex-mlo-256mb.img
 am33xx-mlospi-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += barebox-am33xx-phytec-phyflex-mlo-256mb.spi.img
 
-pblx-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += start_am33xx_phytec_phyflex_sram_512mb
-FILE_barebox-am33xx-phytec-phyflex-mlo-512mb.img = start_am33xx_phytec_phyflex_sram_512mb.pblx.mlo
-FILE_barebox-am33xx-phytec-phyflex-mlo-512mb.spi.img = start_am33xx_phytec_phyflex_sram_512mb.pblx.mlospi
+pblb-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += start_am33xx_phytec_phyflex_sram_512mb
+FILE_barebox-am33xx-phytec-phyflex-mlo-512mb.img = start_am33xx_phytec_phyflex_sram_512mb.pblb.mlo
+FILE_barebox-am33xx-phytec-phyflex-mlo-512mb.spi.img = start_am33xx_phytec_phyflex_sram_512mb.pblb.mlospi
 am33xx-mlo-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += barebox-am33xx-phytec-phyflex-mlo-512mb.img
 am33xx-mlospi-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += barebox-am33xx-phytec-phyflex-mlo-512mb.spi.img
 
-pblx-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += start_am33xx_phytec_phycard_sdram
-FILE_barebox-am33xx-phytec-phycard.img = start_am33xx_phytec_phycard_sdram.pblx
+pblb-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += start_am33xx_phytec_phycard_sdram
+FILE_barebox-am33xx-phytec-phycard.img = start_am33xx_phytec_phycard_sdram.pblb
 am33xx-barebox-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += barebox-am33xx-phytec-phycard.img
 
-pblx-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += start_am33xx_phytec_phycard_sram_256mb
-FILE_barebox-am33xx-phytec-phycard-mlo-256mb.img = start_am33xx_phytec_phycard_sram_256mb.pblx.mlo
-FILE_barebox-am33xx-phytec-phycard-mlo-256mb.spi.img = start_am33xx_phytec_phycard_sram_256mb.pblx.mlospi
+pblb-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += start_am33xx_phytec_phycard_sram_256mb
+FILE_barebox-am33xx-phytec-phycard-mlo-256mb.img = start_am33xx_phytec_phycard_sram_256mb.pblb.mlo
+FILE_barebox-am33xx-phytec-phycard-mlo-256mb.spi.img = start_am33xx_phytec_phycard_sram_256mb.pblb.mlospi
 am33xx-mlo-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += barebox-am33xx-phytec-phycard-mlo-256mb.img
 am33xx-mlospi-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += barebox-am33xx-phytec-phycard-mlo-256mb.spi.img
 
-pblx-$(CONFIG_MACH_BEAGLEBONE) += start_am33xx_beaglebone_sdram
-FILE_barebox-am33xx-beaglebone.img = start_am33xx_beaglebone_sdram.pblx
+pblb-$(CONFIG_MACH_BEAGLEBONE) += start_am33xx_beaglebone_sdram
+FILE_barebox-am33xx-beaglebone.img = start_am33xx_beaglebone_sdram.pblb
 am33xx-barebox-$(CONFIG_MACH_BEAGLEBONE) += barebox-am33xx-beaglebone.img
 
-pblx-$(CONFIG_MACH_BEAGLEBONE) += start_am33xx_beaglebone_sram
-FILE_barebox-am33xx-beaglebone-mlo.img = start_am33xx_beaglebone_sram.pblx.mlo
+pblb-$(CONFIG_MACH_BEAGLEBONE) += start_am33xx_beaglebone_sram
+FILE_barebox-am33xx-beaglebone-mlo.img = start_am33xx_beaglebone_sram.pblb.mlo
 am33xx-mlo-$(CONFIG_MACH_BEAGLEBONE) += barebox-am33xx-beaglebone-mlo.img
 
-pblx-$(CONFIG_MACH_VSCOM_BALTOS) += start_am33xx_baltos_sdram
-FILE_barebox-am33xx-baltos.img = start_am33xx_baltos_sdram.pblx
+pblb-$(CONFIG_MACH_VSCOM_BALTOS) += start_am33xx_baltos_sdram
+FILE_barebox-am33xx-baltos.img = start_am33xx_baltos_sdram.pblb
 am33xx-barebox-$(CONFIG_MACH_VSCOM_BALTOS) += barebox-am33xx-baltos.img
 
-pblx-$(CONFIG_MACH_VSCOM_BALTOS) += start_am33xx_baltos_sram
-FILE_barebox-am33xx-baltos-mlo.img = start_am33xx_baltos_sram.pblx.mlo
+pblb-$(CONFIG_MACH_VSCOM_BALTOS) += start_am33xx_baltos_sram
+FILE_barebox-am33xx-baltos-mlo.img = start_am33xx_baltos_sram.pblb.mlo
 am33xx-mlo-$(CONFIG_MACH_VSCOM_BALTOS) += barebox-am33xx-baltos-mlo.img
 
 ifdef CONFIG_OMAP_BUILD_IFT
diff --git a/images/Makefile.at91 b/images/Makefile.at91
index 90860fcc15..02fe3c64a5 100644
--- a/images/Makefile.at91
+++ b/images/Makefile.at91
@@ -2,12 +2,12 @@
 # barebox image generation Makefile for AT91 images
 #
 
-pblx-$(CONFIG_MACH_AT91SAM9X5EK) += start_at91sam9x5ek
-FILE_barebox-at91sam9x5ek.img = start_at91sam9x5ek.pblx
+pblb-$(CONFIG_MACH_AT91SAM9X5EK) += start_at91sam9x5ek
+FILE_barebox-at91sam9x5ek.img = start_at91sam9x5ek.pblb
 image-$(CONFIG_MACH_AT91SAM9X5EK) += barebox-at91sam9x5ek.img
 
-pblx-$(CONFIG_MACH_AT91SAM9263EK) += start_at91sam9263ek
-FILE_barebox-at91sam9263ek.img = start_at91sam9263ek.pblx
+pblb-$(CONFIG_MACH_AT91SAM9263EK) += start_at91sam9263ek
+FILE_barebox-at91sam9263ek.img = start_at91sam9263ek.pblb
 image-$(CONFIG_MACH_AT91SAM9263EK) += barebox-at91sam9263ek.img
 
 pblx-$(CONFIG_MACH_MICROCHIP_KSZ9477_EVB) += start_sama5d3_xplained_ung8071
diff --git a/images/Makefile.bcm283x b/images/Makefile.bcm283x
index d14e648926..b7bbec8b25 100644
--- a/images/Makefile.bcm283x
+++ b/images/Makefile.bcm283x
@@ -2,12 +2,12 @@
 # barebox image generation Makefile for BCM283x images
 #
 
-pblx-$(CONFIG_MACH_RPI) += start_raspberry_pi1
-FILE_barebox-raspberry-pi-1.img = start_raspberry_pi1.pblx
+pblb-$(CONFIG_MACH_RPI) += start_raspberry_pi1
+FILE_barebox-raspberry-pi-1.img = start_raspberry_pi1.pblb
 image-$(CONFIG_MACH_RPI) += barebox-raspberry-pi-1.img
 
-pblx-$(CONFIG_MACH_RPI2) += start_raspberry_pi2
-FILE_barebox-raspberry-pi-2.img = start_raspberry_pi2.pblx
+pblb-$(CONFIG_MACH_RPI2) += start_raspberry_pi2
+FILE_barebox-raspberry-pi-2.img = start_raspberry_pi2.pblb
 image-$(CONFIG_MACH_RPI2) += barebox-raspberry-pi-2.img
 
 pblx-$(CONFIG_MACH_RPI3) += start_raspberry_pi3
diff --git a/images/Makefile.imx b/images/Makefile.imx
index d654b3860a..aca1c58764 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -22,527 +22,516 @@ $(obj)/%.img.dek: $(obj)/$$(FILE_$$(@F))
 	$(Q)if [ -z $(FILE_$(@F)) ]; then echo "FILE_$(@F) empty!"; false; fi
 	$(call if_changed,shipped)
 
-quiet_cmd_imx_sram_img ?= IMX-SRAM-IMG    $@
-      cmd_imx_sram_img ?= cat $(obj)/$(patsubst %.imx-sram-img,%.pblb,$(2)) > $@; \
-		  $(call size_append, $(obj)/barebox.z) >> $@; \
-		  $(CPP) $(imxcfg_cpp_flags) -o $(imximg-tmp) $(CFG_$(@F)) ; \
-		  $(objtree)/scripts/imx/imx-image -o $@ -b -c $(imximg-tmp) -f $@; \
-		  cat $(obj)/barebox.z >> $@; \
-		  $(objtree)/scripts/fix_size -f $@
-
-$(obj)/%.imx-sram-img: $(obj)/%.pblb $(obj)/barebox.z FORCE
-	$(call if_changed,imx_sram_img,$(@F))
-
 # ----------------------- i.MX25 based boards ---------------------------
-pblx-$(CONFIG_MACH_TX25) += start_imx25_karo_tx25
-FILE_barebox-karo-tx25.img = start_imx25_karo_tx25.pblx
+pblb-$(CONFIG_MACH_TX25) += start_imx25_karo_tx25
+FILE_barebox-karo-tx25.img = start_imx25_karo_tx25.pblb
 image-$(CONFIG_MACH_TX25) += barebox-karo-tx25.img
 
-pblx-$(CONFIG_MACH_TX25) += start_imx25_karo_tx25
-CFG_start_imx25_karo_tx25.pblx.imximg = $(board)/karo-tx25/flash-header-tx25.imxcfg
-FILE_barebox-karo-tx25-internal.img = start_imx25_karo_tx25.pblx.imximg
+pblb-$(CONFIG_MACH_TX25) += start_imx25_karo_tx25
+CFG_start_imx25_karo_tx25.pblb.imximg = $(board)/karo-tx25/flash-header-tx25.imxcfg
+FILE_barebox-karo-tx25-internal.img = start_imx25_karo_tx25.pblb.imximg
 image-$(CONFIG_MACH_TX25) += barebox-karo-tx25-internal.img
 
-pblx-$(CONFIG_MACH_PCA100) += start_phytec_phycard_imx27
-FILE_barebox-phytec-phycard-imx27.img = start_phytec_phycard_imx27.pblx
+pblb-$(CONFIG_MACH_PCA100) += start_phytec_phycard_imx27
+FILE_barebox-phytec-phycard-imx27.img = start_phytec_phycard_imx27.pblb
 image-$(CONFIG_MACH_PCA100) += barebox-phytec-phycard-imx27.img
 
-pblx-$(CONFIG_MACH_PCM038) += start_phytec_phycore_imx27
-FILE_barebox-phytec-phycore-imx27.img = start_phytec_phycore_imx27.pblx
+pblb-$(CONFIG_MACH_PCM038) += start_phytec_phycore_imx27
+FILE_barebox-phytec-phycore-imx27.img = start_phytec_phycore_imx27.pblb
 image-$(CONFIG_MACH_PCM038) += barebox-phytec-phycore-imx27.img
 
 # ----------------------- i.MX50 based boards ---------------------------
-pblx-$(CONFIG_MACH_KINDLE_MX50) += start_imx50_kindle_d01100
-CFG_start_imx50_kindle_d01100.pblx.imximg = $(board)/kindle-mx50/flash-header-kindle-lpddr1.imxcfg
-FILE_barebox-kindle-d01100.img = start_imx50_kindle_d01100.pblx.imximg
+pblb-$(CONFIG_MACH_KINDLE_MX50) += start_imx50_kindle_d01100
+CFG_start_imx50_kindle_d01100.pblb.imximg = $(board)/kindle-mx50/flash-header-kindle-lpddr1.imxcfg
+FILE_barebox-kindle-d01100.img = start_imx50_kindle_d01100.pblb.imximg
 image-$(CONFIG_MACH_KINDLE_MX50) += barebox-kindle-d01100.img
 
-pblx-$(CONFIG_MACH_KINDLE_MX50) += start_imx50_kindle_d01200
-CFG_start_imx50_kindle_d01200.pblx.imximg = $(board)/kindle-mx50/flash-header-kindle-lpddr1.imxcfg
-FILE_barebox-kindle-d01200.img = start_imx50_kindle_d01200.pblx.imximg
+pblb-$(CONFIG_MACH_KINDLE_MX50) += start_imx50_kindle_d01200
+CFG_start_imx50_kindle_d01200.pblb.imximg = $(board)/kindle-mx50/flash-header-kindle-lpddr1.imxcfg
+FILE_barebox-kindle-d01200.img = start_imx50_kindle_d01200.pblb.imximg
 image-$(CONFIG_MACH_KINDLE_MX50) += barebox-kindle-d01200.img
 
-pblx-$(CONFIG_MACH_KINDLE_MX50) += start_imx50_kindle_ey21
-CFG_start_imx50_kindle_ey21.pblx.imximg = $(board)/kindle-mx50/flash-header-kindle-lpddr2.imxcfg
-FILE_barebox-kindle-ey21.img = start_imx50_kindle_ey21.pblx.imximg
+pblb-$(CONFIG_MACH_KINDLE_MX50) += start_imx50_kindle_ey21
+CFG_start_imx50_kindle_ey21.pblb.imximg = $(board)/kindle-mx50/flash-header-kindle-lpddr2.imxcfg
+FILE_barebox-kindle-ey21.img = start_imx50_kindle_ey21.pblb.imximg
 image-$(CONFIG_MACH_KINDLE_MX50) += barebox-kindle-ey21.img
 
 # ----------------------- i.MX51 based boards ---------------------------
-pblx-$(CONFIG_MACH_FREESCALE_MX51_PDK) += start_imx51_babbage
-CFG_start_imx51_babbage.pblx.imximg = $(board)/freescale-mx51-babbage/flash-header-imx51-babbage.imxcfg
-FILE_barebox-freescale-imx51-babbage.img = start_imx51_babbage.pblx.imximg
+pblb-$(CONFIG_MACH_FREESCALE_MX51_PDK) += start_imx51_babbage
+CFG_start_imx51_babbage.pblb.imximg = $(board)/freescale-mx51-babbage/flash-header-imx51-babbage.imxcfg
+FILE_barebox-freescale-imx51-babbage.img = start_imx51_babbage.pblb.imximg
 image-$(CONFIG_MACH_FREESCALE_MX51_PDK) += barebox-freescale-imx51-babbage.img
 
-pblx-$(CONFIG_MACH_ZII_RDU1) += start_imx51_zii_rdu1
-CFG_start_imx51_zii_rdu1.pblx.imximg = $(board)/zii-imx51-rdu1/flash-header-imx51-zii-rdu1.imxcfg
-FILE_barebox-zii-imx51-rdu1.img = start_imx51_zii_rdu1.pblx.imximg
+pblb-$(CONFIG_MACH_ZII_RDU1) += start_imx51_zii_rdu1
+CFG_start_imx51_zii_rdu1.pblb.imximg = $(board)/zii-imx51-rdu1/flash-header-imx51-zii-rdu1.imxcfg
+FILE_barebox-zii-imx51-rdu1.img = start_imx51_zii_rdu1.pblb.imximg
 image-$(CONFIG_MACH_ZII_RDU1) += barebox-zii-imx51-rdu1.img
 
-pblx-$(CONFIG_MACH_EFIKA_MX_SMARTBOOK) += start_imx51_genesi_efikasb
-CFG_start_imx51_genesi_efikasb.pblx.imximg = $(board)/efika-mx-smartbook/flash-header-imx51-genesi-efikasb.imxcfg
-FILE_barebox-genesi-efikasb.img = start_imx51_genesi_efikasb.pblx.imximg
+pblb-$(CONFIG_MACH_EFIKA_MX_SMARTBOOK) += start_imx51_genesi_efikasb
+CFG_start_imx51_genesi_efikasb.pblb.imximg = $(board)/efika-mx-smartbook/flash-header-imx51-genesi-efikasb.imxcfg
+FILE_barebox-genesi-efikasb.img = start_imx51_genesi_efikasb.pblb.imximg
 image-$(CONFIG_MACH_EFIKA_MX_SMARTBOOK) += barebox-genesi-efikasb.img
 
 # ----------------------- i.MX53 based boards ---------------------------
-pblx-$(CONFIG_MACH_FREESCALE_MX53_LOCO) += start_imx53_loco
-CFG_start_imx53_loco.pblx.imximg = $(board)/freescale-mx53-qsb/flash-header-imx53-loco.imxcfg
-FILE_barebox-freescale-imx53-loco.img = start_imx53_loco.pblx.imximg
+pblb-$(CONFIG_MACH_FREESCALE_MX53_LOCO) += start_imx53_loco
+CFG_start_imx53_loco.pblb.imximg = $(board)/freescale-mx53-qsb/flash-header-imx53-loco.imxcfg
+FILE_barebox-freescale-imx53-loco.img = start_imx53_loco.pblb.imximg
 image-$(CONFIG_MACH_FREESCALE_MX53_LOCO) += barebox-freescale-imx53-loco.img
 
-pblx-$(CONFIG_MACH_FREESCALE_MX53_LOCO) += start_imx53_loco_r
-CFG_start_imx53_loco_r.pblx.imximg = $(board)/freescale-mx53-qsb/flash-header-imx53-loco.imxcfg
-FILE_barebox-freescale-imx53-loco-r.img = start_imx53_loco_r.pblx.imximg
+pblb-$(CONFIG_MACH_FREESCALE_MX53_LOCO) += start_imx53_loco_r
+CFG_start_imx53_loco_r.pblb.imximg = $(board)/freescale-mx53-qsb/flash-header-imx53-loco.imxcfg
+FILE_barebox-freescale-imx53-loco-r.img = start_imx53_loco_r.pblb.imximg
 image-$(CONFIG_MACH_FREESCALE_MX53_LOCO) += barebox-freescale-imx53-loco-r.img
 
-pblx-$(CONFIG_MACH_CCMX53) += start_ccxmx53_512mb
-CFG_start_ccxmx53_512mb.pblx.imximg = $(board)/ccxmx53/flash-header-imx53-ccxmx53_512mb.imxcfg
-FILE_barebox-imx53-ccxmx53_512mb.img = start_ccxmx53_512mb.pblx.imximg
+pblb-$(CONFIG_MACH_CCMX53) += start_ccxmx53_512mb
+CFG_start_ccxmx53_512mb.pblb.imximg = $(board)/ccxmx53/flash-header-imx53-ccxmx53_512mb.imxcfg
+FILE_barebox-imx53-ccxmx53_512mb.img = start_ccxmx53_512mb.pblb.imximg
 image-$(CONFIG_MACH_CCMX53) += barebox-imx53-ccxmx53_512mb.img
 
-pblx-$(CONFIG_MACH_CCMX53) += start_ccxmx53_1gib
-CFG_start_ccxmx53_1gib.pblx.imximg = $(board)/ccxmx53/flash-header-imx53-ccxmx53_1gib.imxcfg
-FILE_barebox-imx53-ccxmx53_1gib.img = start_ccxmx53_1gib.pblx.imximg
+pblb-$(CONFIG_MACH_CCMX53) += start_ccxmx53_1gib
+CFG_start_ccxmx53_1gib.pblb.imximg = $(board)/ccxmx53/flash-header-imx53-ccxmx53_1gib.imxcfg
+FILE_barebox-imx53-ccxmx53_1gib.img = start_ccxmx53_1gib.pblb.imximg
 image-$(CONFIG_MACH_CCMX53) += barebox-imx53-ccxmx53_1gib.img
 
-pblx-$(CONFIG_MACH_FREESCALE_MX53_VMX53) += start_imx53_vmx53
-CFG_start_imx53_vmx53.pblx.imximg = $(board)/freescale-mx53-vmx53/flash-header-imx53-vmx53.imxcfg
-FILE_barebox-freescale-imx53-vmx53.img = start_imx53_vmx53.pblx.imximg
+pblb-$(CONFIG_MACH_FREESCALE_MX53_VMX53) += start_imx53_vmx53
+CFG_start_imx53_vmx53.pblb.imximg = $(board)/freescale-mx53-vmx53/flash-header-imx53-vmx53.imxcfg
+FILE_barebox-freescale-imx53-vmx53.img = start_imx53_vmx53.pblb.imximg
 image-$(CONFIG_MACH_FREESCALE_MX53_VMX53) += barebox-freescale-imx53-vmx53.img
 
-pblx-$(CONFIG_MACH_GUF_VINCELL) += start_imx53_guf_vincell
-CFG_start_imx53_guf_vincell.pblx.imximg = $(board)/guf-vincell/flash-header.imxcfg
-FILE_barebox-guf-vincell.img = start_imx53_guf_vincell.pblx.imximg
+pblb-$(CONFIG_MACH_GUF_VINCELL) += start_imx53_guf_vincell
+CFG_start_imx53_guf_vincell.pblb.imximg = $(board)/guf-vincell/flash-header.imxcfg
+FILE_barebox-guf-vincell.img = start_imx53_guf_vincell.pblb.imximg
 image-$(CONFIG_MACH_GUF_VINCELL) += barebox-guf-vincell.img
 
-pblx-$(CONFIG_MACH_GUF_VINCELL) += start_imx53_guf_vincell_lt
-CFG_start_imx53_guf_vincell_lt.pblx.imximg = $(board)/guf-vincell/flash-header.imxcfg
-FILE_barebox-guf-vincell-lt.img = start_imx53_guf_vincell_lt.pblx.imximg
+pblb-$(CONFIG_MACH_GUF_VINCELL) += start_imx53_guf_vincell_lt
+CFG_start_imx53_guf_vincell_lt.pblb.imximg = $(board)/guf-vincell/flash-header.imxcfg
+FILE_barebox-guf-vincell-lt.img = start_imx53_guf_vincell_lt.pblb.imximg
 image-$(CONFIG_MACH_GUF_VINCELL) += barebox-guf-vincell-lt.img
 
-pblx-$(CONFIG_MACH_TQMA53) += start_imx53_mba53_512mib
-CFG_start_imx53_mba53_512mib.pblx.imximg = $(board)/tqma53/flash-header-tq-tqma53-512mib.imxcfg
-FILE_barebox-tq-mba53-512mib.img = start_imx53_mba53_512mib.pblx.imximg
+pblb-$(CONFIG_MACH_TQMA53) += start_imx53_mba53_512mib
+CFG_start_imx53_mba53_512mib.pblb.imximg = $(board)/tqma53/flash-header-tq-tqma53-512mib.imxcfg
+FILE_barebox-tq-mba53-512mib.img = start_imx53_mba53_512mib.pblb.imximg
 image-$(CONFIG_MACH_TQMA53) += barebox-tq-mba53-512mib.img
 
-pblx-$(CONFIG_MACH_TQMA53) += start_imx53_mba53_1gib
-CFG_start_imx53_mba53_1gib.pblx.imximg = $(board)/tqma53/flash-header-tq-tqma53-1gib.imxcfg
-FILE_barebox-tq-mba53-1gib.img = start_imx53_mba53_1gib.pblx.imximg
+pblb-$(CONFIG_MACH_TQMA53) += start_imx53_mba53_1gib
+CFG_start_imx53_mba53_1gib.pblb.imximg = $(board)/tqma53/flash-header-tq-tqma53-1gib.imxcfg
+FILE_barebox-tq-mba53-1gib.img = start_imx53_mba53_1gib.pblb.imximg
 image-$(CONFIG_MACH_TQMA53) += barebox-tq-mba53-1gib.img
 
-pblx-$(CONFIG_MACH_TX53) += start_imx53_tx53_xx30_samsung
-CFG_start_imx53_tx53_xx30_samsung.pblx.imximg = $(board)/karo-tx53/flash-header-tx53-revxx30-samsung.imxcfg
-FILE_barebox-tx53-xx30-samsung.img = start_imx53_tx53_xx30_samsung.pblx.imximg
+pblb-$(CONFIG_MACH_TX53) += start_imx53_tx53_xx30_samsung
+CFG_start_imx53_tx53_xx30_samsung.pblb.imximg = $(board)/karo-tx53/flash-header-tx53-revxx30-samsung.imxcfg
+FILE_barebox-tx53-xx30-samsung.img = start_imx53_tx53_xx30_samsung.pblb.imximg
 image-$(CONFIG_MACH_TX53) += barebox-tx53-xx30-samsung.img
 
-pblx-$(CONFIG_MACH_TX53) += start_imx53_tx53_xx30
-CFG_start_imx53_tx53_xx30.pblx.imximg = $(board)/karo-tx53/flash-header-tx53-revxx30.imxcfg
-FILE_barebox-tx53-xx30.img = start_imx53_tx53_xx30.pblx.imximg
+pblb-$(CONFIG_MACH_TX53) += start_imx53_tx53_xx30
+CFG_start_imx53_tx53_xx30.pblb.imximg = $(board)/karo-tx53/flash-header-tx53-revxx30.imxcfg
+FILE_barebox-tx53-xx30.img = start_imx53_tx53_xx30.pblb.imximg
 image-$(CONFIG_MACH_TX53) += barebox-tx53-xx30.img
 
-pblx-$(CONFIG_MACH_TX53) += start_imx53_tx53_1011
-CFG_start_imx53_tx53_1011.pblx.imximg = $(board)/karo-tx53/flash-header-tx53-rev1011.imxcfg
-FILE_barebox-tx53-1011.img = start_imx53_tx53_1011.pblx.imximg
+pblb-$(CONFIG_MACH_TX53) += start_imx53_tx53_1011
+CFG_start_imx53_tx53_1011.pblb.imximg = $(board)/karo-tx53/flash-header-tx53-rev1011.imxcfg
+FILE_barebox-tx53-1011.img = start_imx53_tx53_1011.pblb.imximg
 image-$(CONFIG_MACH_TX53) += barebox-tx53-1011.img
 
 # ----------------------- i.MX6 based boards ---------------------------
-pblx-$(CONFIG_MACH_REALQ7) += start_imx6_realq7
-CFG_start_imx6_realq7.pblx.imximg = $(board)/datamodul-edm-qmx6/flash-header.imxcfg
-FILE_barebox-datamodul-edm-qmx6.img = start_imx6_realq7.pblx.imximg
+pblb-$(CONFIG_MACH_REALQ7) += start_imx6_realq7
+CFG_start_imx6_realq7.pblb.imximg = $(board)/datamodul-edm-qmx6/flash-header.imxcfg
+FILE_barebox-datamodul-edm-qmx6.img = start_imx6_realq7.pblb.imximg
 image-$(CONFIG_MACH_REALQ7) += barebox-datamodul-edm-qmx6.img
 
-pblx-$(CONFIG_MACH_GUF_SANTARO) += start_imx6q_guf_santaro
-CFG_start_imx6q_guf_santaro.pblx.imximg = $(board)/guf-santaro/flash-header.imxcfg
-FILE_barebox-guf-santaro.img = start_imx6q_guf_santaro.pblx.imximg
+pblb-$(CONFIG_MACH_GUF_SANTARO) += start_imx6q_guf_santaro
+CFG_start_imx6q_guf_santaro.pblb.imximg = $(board)/guf-santaro/flash-header.imxcfg
+FILE_barebox-guf-santaro.img = start_imx6q_guf_santaro.pblb.imximg
 image-$(CONFIG_MACH_GUF_SANTARO) += barebox-guf-santaro.img
 
-pblx-$(CONFIG_MACH_GK802) += start_imx6_gk802
-CFG_start_imx6_gk802.pblx.imximg = $(board)/gk802/flash-header.imxcfg
-FILE_barebox-gk802.img = start_imx6_gk802.pblx.imximg
+pblb-$(CONFIG_MACH_GK802) += start_imx6_gk802
+CFG_start_imx6_gk802.pblb.imximg = $(board)/gk802/flash-header.imxcfg
+FILE_barebox-gk802.img = start_imx6_gk802.pblb.imximg
 image-$(CONFIG_MACH_GK802) += barebox-gk802.img
 
-pblx-$(CONFIG_MACH_TQMA6X) += start_imx6dl_mba6x
-CFG_start_imx6dl_mba6x.pblx.imximg = $(board)/tqma6x/flash-header-tqma6dl.imxcfg
-FILE_barebox-tq-tqma6s-mba6x.img = start_imx6dl_mba6x.pblx.imximg
+pblb-$(CONFIG_MACH_TQMA6X) += start_imx6dl_mba6x
+CFG_start_imx6dl_mba6x.pblb.imximg = $(board)/tqma6x/flash-header-tqma6dl.imxcfg
+FILE_barebox-tq-tqma6s-mba6x.img = start_imx6dl_mba6x.pblb.imximg
 image-$(CONFIG_MACH_TQMA6X) += barebox-tq-tqma6s-mba6x.img
 
-pblx-$(CONFIG_MACH_TQMA6X) += start_imx6q_mba6x
-CFG_start_imx6q_mba6x.pblx.imximg = $(board)/tqma6x/flash-header-tqma6q.imxcfg
-FILE_barebox-tq-tqma6q-mba6x.img = start_imx6q_mba6x.pblx.imximg
+pblb-$(CONFIG_MACH_TQMA6X) += start_imx6q_mba6x
+CFG_start_imx6q_mba6x.pblb.imximg = $(board)/tqma6x/flash-header-tqma6q.imxcfg
+FILE_barebox-tq-tqma6q-mba6x.img = start_imx6q_mba6x.pblb.imximg
 image-$(CONFIG_MACH_TQMA6X) += barebox-tq-tqma6q-mba6x.img
 
-pblx-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_pbab01_4gib
-CFG_start_phytec_pbab01_4gib.pblx.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pfla02-4gib.imxcfg
-FILE_barebox-phytec-pbab01-4gib.img = start_phytec_pbab01_4gib.pblx.imximg
+pblb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_pbab01_4gib
+CFG_start_phytec_pbab01_4gib.pblb.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pfla02-4gib.imxcfg
+FILE_barebox-phytec-pbab01-4gib.img = start_phytec_pbab01_4gib.pblb.imximg
 image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-pbab01-4gib.img
 
-pblx-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_pbab01_2gib
-CFG_start_phytec_pbab01_2gib.pblx.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pfla02-2gib.imxcfg
-FILE_barebox-phytec-pbab01-2gib.img = start_phytec_pbab01_2gib.pblx.imximg
+pblb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_pbab01_2gib
+CFG_start_phytec_pbab01_2gib.pblb.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pfla02-2gib.imxcfg
+FILE_barebox-phytec-pbab01-2gib.img = start_phytec_pbab01_2gib.pblb.imximg
 image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-pbab01-2gib.img
 
-pblx-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_pbab01_1gib
-CFG_start_phytec_pbab01_1gib.pblx.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pfla02-1gib.imxcfg
-FILE_barebox-phytec-pbab01-1gib.img = start_phytec_pbab01_1gib.pblx.imximg
+pblb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_pbab01_1gib
+CFG_start_phytec_pbab01_1gib.pblb.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pfla02-1gib.imxcfg
+FILE_barebox-phytec-pbab01-1gib.img = start_phytec_pbab01_1gib.pblb.imximg
 image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-pbab01-1gib.img
 
-pblx-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_pbab01_1gib_1bank
-CFG_start_phytec_pbab01_1gib_1bank.pblx.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pfla02-1gib-1bank.imxcfg
-FILE_barebox-phytec-pbab01-1gib-1bank.img = start_phytec_pbab01_1gib_1bank.pblx.imximg
+pblb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_pbab01_1gib_1bank
+CFG_start_phytec_pbab01_1gib_1bank.pblb.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pfla02-1gib-1bank.imxcfg
+FILE_barebox-phytec-pbab01-1gib-1bank.img = start_phytec_pbab01_1gib_1bank.pblb.imximg
 image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-pbab01-1gib-1bank.img
 
-pblx-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_pbab01_512mb_1bank
-CFG_start_phytec_pbab01_512mb_1bank.pblx.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pfla02-512mb-1bank.imxcfg
-FILE_barebox-phytec-pbab01-512mb-1bank.img = start_phytec_pbab01_512mb_1bank.pblx.imximg
+pblb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_pbab01_512mb_1bank
+CFG_start_phytec_pbab01_512mb_1bank.pblb.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pfla02-512mb-1bank.imxcfg
+FILE_barebox-phytec-pbab01-512mb-1bank.img = start_phytec_pbab01_512mb_1bank.pblb.imximg
 image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-pbab01-512mb-1bank.img
 
-pblx-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_pbab01dl_1gib
-CFG_start_phytec_pbab01dl_1gib.pblx.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pfla02dl-1gib.imxcfg
-FILE_barebox-phytec-pbab01dl-1gib.img = start_phytec_pbab01dl_1gib.pblx.imximg
+pblb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_pbab01dl_1gib
+CFG_start_phytec_pbab01dl_1gib.pblb.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pfla02dl-1gib.imxcfg
+FILE_barebox-phytec-pbab01dl-1gib.img = start_phytec_pbab01dl_1gib.pblb.imximg
 image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-pbab01dl-1gib.img
 
-pblx-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_pbab01dl_1gib_1bank
-CFG_start_phytec_pbab01dl_1gib_1bank.pblx.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pfla02dl-1gib-1bank.imxcfg
-FILE_barebox-phytec-pbab01dl-1gib-1bank.img = start_phytec_pbab01dl_1gib_1bank.pblx.imximg
+pblb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_pbab01dl_1gib_1bank
+CFG_start_phytec_pbab01dl_1gib_1bank.pblb.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pfla02dl-1gib-1bank.imxcfg
+FILE_barebox-phytec-pbab01dl-1gib-1bank.img = start_phytec_pbab01dl_1gib_1bank.pblb.imximg
 image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-pbab01dl-1gib-1bank.img
 
-pblx-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_pbab01s_512mb_1bank
-CFG_start_phytec_pbab01s_512mb_1bank.pblx.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pfla02s-512mb-1bank.imxcfg
-FILE_barebox-phytec-pbab01s-512mb-1bank.img = start_phytec_pbab01s_512mb_1bank.pblx.imximg
+pblb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_pbab01s_512mb_1bank
+CFG_start_phytec_pbab01s_512mb_1bank.pblb.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pfla02s-512mb-1bank.imxcfg
+FILE_barebox-phytec-pbab01s-512mb-1bank.img = start_phytec_pbab01s_512mb_1bank.pblb.imximg
 image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-pbab01s-512mb-1bank.img
 
-pblx-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_pbab01s_256mb_1bank
-CFG_start_phytec_pbab01s_256mb_1bank.pblx.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pfla02s-256mb-1bank.imxcfg
-FILE_barebox-phytec-pbab01s-256mb-1bank.img = start_phytec_pbab01s_256mb_1bank.pblx.imximg
+pblb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_pbab01s_256mb_1bank
+CFG_start_phytec_pbab01s_256mb_1bank.pblb.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pfla02s-256mb-1bank.imxcfg
+FILE_barebox-phytec-pbab01s-256mb-1bank.img = start_phytec_pbab01s_256mb_1bank.pblb.imximg
 image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-pbab01s-256mb-1bank.img
 
-pblx-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_pbab01s_128mb_1bank
-CFG_start_phytec_pbab01s_128mb_1bank.pblx.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pfla02s-128mb-1bank.imxcfg
-FILE_barebox-phytec-pbab01s-128mb-1bank.img = start_phytec_pbab01s_128mb_1bank.pblx.imximg
+pblb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_pbab01s_128mb_1bank
+CFG_start_phytec_pbab01s_128mb_1bank.pblb.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pfla02s-128mb-1bank.imxcfg
+FILE_barebox-phytec-pbab01s-128mb-1bank.img = start_phytec_pbab01s_128mb_1bank.pblb.imximg
 image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-pbab01s-128mb-1bank.img
 
-pblx-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_phyboard_alcor_1gib
-CFG_start_phytec_phyboard_alcor_1gib.pblx.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pfla02-1gib.imxcfg
-FILE_barebox-phytec-phyboard-alcor-1gib.img = start_phytec_phyboard_alcor_1gib.pblx.imximg
+pblb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_phyboard_alcor_1gib
+CFG_start_phytec_phyboard_alcor_1gib.pblb.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pfla02-1gib.imxcfg
+FILE_barebox-phytec-phyboard-alcor-1gib.img = start_phytec_phyboard_alcor_1gib.pblb.imximg
 image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-phyboard-alcor-1gib.img
 
-pblx-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_phyboard_subra_512mb_1bank
-CFG_start_phytec_phyboard_subra_512mb_1bank.pblx.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pfla02s-512mb-1bank.imxcfg
-FILE_barebox-phytec-phyboard-subra-512mb-1bank.img = start_phytec_phyboard_subra_512mb_1bank.pblx.imximg
+pblb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_phyboard_subra_512mb_1bank
+CFG_start_phytec_phyboard_subra_512mb_1bank.pblb.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pfla02s-512mb-1bank.imxcfg
+FILE_barebox-phytec-phyboard-subra-512mb-1bank.img = start_phytec_phyboard_subra_512mb_1bank.pblb.imximg
 image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-phyboard-subra-512mb-1bank.img
 
-pblx-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_phyboard_subra_1gib_1bank
-CFG_start_phytec_phyboard_subra_1gib_1bank.pblx.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pfla02-1gib-1bank.imxcfg
-FILE_barebox-phytec-phyboard-subra-1gib-1bank.img = start_phytec_phyboard_subra_1gib_1bank.pblx.imximg
+pblb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_phyboard_subra_1gib_1bank
+CFG_start_phytec_phyboard_subra_1gib_1bank.pblb.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pfla02-1gib-1bank.imxcfg
+FILE_barebox-phytec-phyboard-subra-1gib-1bank.img = start_phytec_phyboard_subra_1gib_1bank.pblb.imximg
 image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-phyboard-subra-1gib-1bank.img
 
-pblx-$(CONFIG_MACH_DFI_FS700_M60) += start_imx6dl_dfi_fs700_m60_6s
-CFG_start_imx6dl_dfi_fs700_m60_6s.pblx.imximg = $(board)/dfi-fs700-m60/flash-header-fs700-m60-6s.imxcfg
-FILE_barebox-dfi-fs700-m60-6s.img = start_imx6dl_dfi_fs700_m60_6s.pblx.imximg
+pblb-$(CONFIG_MACH_DFI_FS700_M60) += start_imx6dl_dfi_fs700_m60_6s
+CFG_start_imx6dl_dfi_fs700_m60_6s.pblb.imximg = $(board)/dfi-fs700-m60/flash-header-fs700-m60-6s.imxcfg
+FILE_barebox-dfi-fs700-m60-6s.img = start_imx6dl_dfi_fs700_m60_6s.pblb.imximg
 image-$(CONFIG_MACH_DFI_FS700_M60) += barebox-dfi-fs700-m60-6s.img
 
-pblx-$(CONFIG_MACH_DFI_FS700_M60) += start_imx6q_dfi_fs700_m60_6q_micron
-CFG_start_imx6q_dfi_fs700_m60_6q_micron.pblx.imximg = $(board)/dfi-fs700-m60/flash-header-fs700-m60-6q-micron.imxcfg
-FILE_barebox-dfi-fs700-m60-6q-micron.img = start_imx6q_dfi_fs700_m60_6q_micron.pblx.imximg
+pblb-$(CONFIG_MACH_DFI_FS700_M60) += start_imx6q_dfi_fs700_m60_6q_micron
+CFG_start_imx6q_dfi_fs700_m60_6q_micron.pblb.imximg = $(board)/dfi-fs700-m60/flash-header-fs700-m60-6q-micron.imxcfg
+FILE_barebox-dfi-fs700-m60-6q-micron.img = start_imx6q_dfi_fs700_m60_6q_micron.pblb.imximg
 image-$(CONFIG_MACH_DFI_FS700_M60) += barebox-dfi-fs700-m60-6q-micron.img
 
-pblx-$(CONFIG_MACH_DFI_FS700_M60) += start_imx6q_dfi_fs700_m60_6q_nanya
-CFG_start_imx6q_dfi_fs700_m60_6q_nanya.pblx.imximg = $(board)/dfi-fs700-m60/flash-header-fs700-m60-6q-nanya.imxcfg
-FILE_barebox-dfi-fs700-m60-6q-nanya.img = start_imx6q_dfi_fs700_m60_6q_nanya.pblx.imximg
+pblb-$(CONFIG_MACH_DFI_FS700_M60) += start_imx6q_dfi_fs700_m60_6q_nanya
+CFG_start_imx6q_dfi_fs700_m60_6q_nanya.pblb.imximg = $(board)/dfi-fs700-m60/flash-header-fs700-m60-6q-nanya.imxcfg
+FILE_barebox-dfi-fs700-m60-6q-nanya.img = start_imx6q_dfi_fs700_m60_6q_nanya.pblb.imximg
 image-$(CONFIG_MACH_DFI_FS700_M60) += barebox-dfi-fs700-m60-6q-nanya.img
 
-pblx-$(CONFIG_MACH_SABRELITE) += start_imx6q_sabrelite
-CFG_start_imx6q_sabrelite.pblx.imximg = $(board)/freescale-mx6-sabrelite/flash-header-mx6-sabrelite.imxcfg
-FILE_barebox-freescale-imx6q-sabrelite.img = start_imx6q_sabrelite.pblx.imximg
+pblb-$(CONFIG_MACH_SABRELITE) += start_imx6q_sabrelite
+CFG_start_imx6q_sabrelite.pblb.imximg = $(board)/freescale-mx6-sabrelite/flash-header-mx6-sabrelite.imxcfg
+FILE_barebox-freescale-imx6q-sabrelite.img = start_imx6q_sabrelite.pblb.imximg
 image-$(CONFIG_MACH_SABRELITE) += barebox-freescale-imx6q-sabrelite.img
 
-pblx-$(CONFIG_MACH_SABRELITE) += start_imx6dl_sabrelite
-CFG_start_imx6dl_sabrelite.pblx.imximg = $(board)/freescale-mx6-sabrelite/flash-header-mx6-sabrelite.imxcfg
-FILE_barebox-freescale-imx6dl-sabrelite.img = start_imx6dl_sabrelite.pblx.imximg
+pblb-$(CONFIG_MACH_SABRELITE) += start_imx6dl_sabrelite
+CFG_start_imx6dl_sabrelite.pblb.imximg = $(board)/freescale-mx6-sabrelite/flash-header-mx6-sabrelite.imxcfg
+FILE_barebox-freescale-imx6dl-sabrelite.img = start_imx6dl_sabrelite.pblb.imximg
 image-$(CONFIG_MACH_SABRELITE) += barebox-freescale-imx6dl-sabrelite.img
 
-pblx-$(CONFIG_MACH_SABRESD) += start_imx6q_sabresd
-CFG_start_imx6q_sabresd.pblx.imximg = $(board)/freescale-mx6-sabresd/flash-header-mx6-sabresd.imxcfg
-FILE_barebox-freescale-imx6q-sabresd.img = start_imx6q_sabresd.pblx.imximg
+pblb-$(CONFIG_MACH_SABRESD) += start_imx6q_sabresd
+CFG_start_imx6q_sabresd.pblb.imximg = $(board)/freescale-mx6-sabresd/flash-header-mx6-sabresd.imxcfg
+FILE_barebox-freescale-imx6q-sabresd.img = start_imx6q_sabresd.pblb.imximg
 image-$(CONFIG_MACH_SABRESD) += barebox-freescale-imx6q-sabresd.img
 
-pblx-$(CONFIG_MACH_FREESCALE_IMX6SX_SABRESDB) += start_imx6sx_sabresdb
-CFG_start_imx6sx_sabresdb.pblx.imximg = $(board)/freescale-mx6sx-sabresdb/flash-header-mx6sx-sabresdb.imxcfg
-FILE_barebox-freescale-imx6sx-sabresdb.img = start_imx6sx_sabresdb.pblx.imximg
+pblb-$(CONFIG_MACH_FREESCALE_IMX6SX_SABRESDB) += start_imx6sx_sabresdb
+CFG_start_imx6sx_sabresdb.pblb.imximg = $(board)/freescale-mx6sx-sabresdb/flash-header-mx6sx-sabresdb.imxcfg
+FILE_barebox-freescale-imx6sx-sabresdb.img = start_imx6sx_sabresdb.pblb.imximg
 image-$(CONFIG_MACH_FREESCALE_IMX6SX_SABRESDB) += barebox-freescale-imx6sx-sabresdb.img
 
-pblx-$(CONFIG_MACH_TECHNEXION_WANDBOARD) += start_imx6_wandboard
-CFG_start_imx6_wandboard.imx-sram-img = $(board)/technexion-wandboard/flash-header-technexion-wandboard.imxcfg
-FILE_barebox-imx6-wandboard.img = start_imx6_wandboard.imx-sram-img
+pblb-$(CONFIG_MACH_TECHNEXION_WANDBOARD) += start_imx6_wandboard
+CFG_start_imx6_wandboard.pblb.imximg = $(board)/technexion-wandboard/flash-header-technexion-wandboard.imxcfg
+FILE_barebox-imx6-wandboard.img = start_imx6_wandboard.pblb.imximg
 image-$(CONFIG_MACH_TECHNEXION_WANDBOARD) += barebox-imx6-wandboard.img
 
-pblx-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += start_hummingboard_microsom_i1
-CFG_start_hummingboard_microsom_i1.pblx.imximg = $(board)/solidrun-microsom/flash-header-microsom-i1.imxcfg
-FILE_barebox-solidrun-hummingboard-microsom-i1.img = start_hummingboard_microsom_i1.pblx.imximg
+pblb-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += start_hummingboard_microsom_i1
+CFG_start_hummingboard_microsom_i1.pblb.imximg = $(board)/solidrun-microsom/flash-header-microsom-i1.imxcfg
+FILE_barebox-solidrun-hummingboard-microsom-i1.img = start_hummingboard_microsom_i1.pblb.imximg
 image-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += barebox-solidrun-hummingboard-microsom-i1.img
 
-pblx-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += start_hummingboard_microsom_i2
-CFG_start_hummingboard_microsom_i2.pblx.imximg = $(board)/solidrun-microsom/flash-header-microsom-i2.imxcfg
-FILE_barebox-solidrun-hummingboard-microsom-i2.img = start_hummingboard_microsom_i2.pblx.imximg
+pblb-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += start_hummingboard_microsom_i2
+CFG_start_hummingboard_microsom_i2.pblb.imximg = $(board)/solidrun-microsom/flash-header-microsom-i2.imxcfg
+FILE_barebox-solidrun-hummingboard-microsom-i2.img = start_hummingboard_microsom_i2.pblb.imximg
 image-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += barebox-solidrun-hummingboard-microsom-i2.img
 
-pblx-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += start_hummingboard_microsom_i2ex
-CFG_start_hummingboard_microsom_i2ex.pblx.imximg = $(board)/solidrun-microsom/flash-header-microsom-i2eX.imxcfg
-FILE_barebox-solidrun-hummingboard-microsom-i2eX.img = start_hummingboard_microsom_i2ex.pblx.imximg
+pblb-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += start_hummingboard_microsom_i2ex
+CFG_start_hummingboard_microsom_i2ex.pblb.imximg = $(board)/solidrun-microsom/flash-header-microsom-i2eX.imxcfg
+FILE_barebox-solidrun-hummingboard-microsom-i2eX.img = start_hummingboard_microsom_i2ex.pblb.imximg
 image-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += barebox-solidrun-hummingboard-microsom-i2eX.img
 
-pblx-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += start_hummingboard_microsom_i4
-CFG_start_hummingboard_microsom_i4.pblx.imximg = $(board)/solidrun-microsom/flash-header-microsom-i4.imxcfg
-FILE_barebox-solidrun-hummingboard-microsom-i4.img = start_hummingboard_microsom_i4.pblx.imximg
+pblb-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += start_hummingboard_microsom_i4
+CFG_start_hummingboard_microsom_i4.pblb.imximg = $(board)/solidrun-microsom/flash-header-microsom-i4.imxcfg
+FILE_barebox-solidrun-hummingboard-microsom-i4.img = start_hummingboard_microsom_i4.pblb.imximg
 image-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += barebox-solidrun-hummingboard-microsom-i4.img
 
-pblx-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += start_hummingboard2_microsom_i1
-CFG_start_hummingboard2_microsom_i1.pblx.imximg = $(board)/solidrun-microsom/flash-header-microsom-i1.imxcfg
-FILE_barebox-solidrun-hummingboard2-microsom-i1.img = start_hummingboard2_microsom_i1.pblx.imximg
+pblb-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += start_hummingboard2_microsom_i1
+CFG_start_hummingboard2_microsom_i1.pblb.imximg = $(board)/solidrun-microsom/flash-header-microsom-i1.imxcfg
+FILE_barebox-solidrun-hummingboard2-microsom-i1.img = start_hummingboard2_microsom_i1.pblb.imximg
 image-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += barebox-solidrun-hummingboard2-microsom-i1.img
 
-pblx-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += start_hummingboard2_microsom_i2
-CFG_start_hummingboard2_microsom_i2.pblx.imximg = $(board)/solidrun-microsom/flash-header-microsom-i2.imxcfg
-FILE_barebox-solidrun-hummingboard2-microsom-i2.img = start_hummingboard2_microsom_i2.pblx.imximg
+pblb-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += start_hummingboard2_microsom_i2
+CFG_start_hummingboard2_microsom_i2.pblb.imximg = $(board)/solidrun-microsom/flash-header-microsom-i2.imxcfg
+FILE_barebox-solidrun-hummingboard2-microsom-i2.img = start_hummingboard2_microsom_i2.pblb.imximg
 image-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += barebox-solidrun-hummingboard2-microsom-i2.img
 
-pblx-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += start_hummingboard2_microsom_i2ex
-CFG_start_hummingboard2_microsom_i2ex.pblx.imximg = $(board)/solidrun-microsom/flash-header-microsom-i2eX.imxcfg
-FILE_barebox-solidrun-hummingboard2-microsom-i2eX.img = start_hummingboard2_microsom_i2ex.pblx.imximg
+pblb-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += start_hummingboard2_microsom_i2ex
+CFG_start_hummingboard2_microsom_i2ex.pblb.imximg = $(board)/solidrun-microsom/flash-header-microsom-i2eX.imxcfg
+FILE_barebox-solidrun-hummingboard2-microsom-i2eX.img = start_hummingboard2_microsom_i2ex.pblb.imximg
 image-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += barebox-solidrun-hummingboard2-microsom-i2eX.img
 
-pblx-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += start_hummingboard2_microsom_i4
-CFG_start_hummingboard2_microsom_i4.pblx.imximg = $(board)/solidrun-microsom/flash-header-microsom-i4.imxcfg
-FILE_barebox-solidrun-hummingboard2-microsom-i4.img = start_hummingboard2_microsom_i4.pblx.imximg
+pblb-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += start_hummingboard2_microsom_i4
+CFG_start_hummingboard2_microsom_i4.pblb.imximg = $(board)/solidrun-microsom/flash-header-microsom-i4.imxcfg
+FILE_barebox-solidrun-hummingboard2-microsom-i4.img = start_hummingboard2_microsom_i4.pblb.imximg
 image-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += barebox-solidrun-hummingboard2-microsom-i4.img
 
-pblx-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += start_h100_microsom_i2ex
-CFG_start_h100_microsom_i2ex.pblx.imximg = $(board)/solidrun-microsom/flash-header-microsom-i2eX.imxcfg
-FILE_barebox-auvidea-h100-microsom-i2eX.img = start_h100_microsom_i2ex.pblx.imximg
+pblb-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += start_h100_microsom_i2ex
+CFG_start_h100_microsom_i2ex.pblb.imximg = $(board)/solidrun-microsom/flash-header-microsom-i2eX.imxcfg
+FILE_barebox-auvidea-h100-microsom-i2eX.img = start_h100_microsom_i2ex.pblb.imximg
 image-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += barebox-auvidea-h100-microsom-i2eX.img
 
-pblx-$(CONFIG_MACH_TECHNEXION_PICO_HOBBIT) += start_imx6ul_pico_hobbit_256mb
-CFG_start_imx6ul_pico_hobbit_256mb.pblx.imximg = $(board)/technexion-pico-hobbit/flash-header-imx6ul-pico-hobbit-256.imxcfg
-FILE_barebox-imx6ul-pico-hobbit-256mb.img = start_imx6ul_pico_hobbit_256mb.pblx.imximg
+pblb-$(CONFIG_MACH_TECHNEXION_PICO_HOBBIT) += start_imx6ul_pico_hobbit_256mb
+CFG_start_imx6ul_pico_hobbit_256mb.pblb.imximg = $(board)/technexion-pico-hobbit/flash-header-imx6ul-pico-hobbit-256.imxcfg
+FILE_barebox-imx6ul-pico-hobbit-256mb.img = start_imx6ul_pico_hobbit_256mb.pblb.imximg
 image-$(CONFIG_MACH_TECHNEXION_PICO_HOBBIT) += barebox-imx6ul-pico-hobbit-256mb.img
 
-pblx-$(CONFIG_MACH_TECHNEXION_PICO_HOBBIT) += start_imx6ul_pico_hobbit_512mb
-CFG_start_imx6ul_pico_hobbit_512mb.pblx.imximg = $(board)/technexion-pico-hobbit/flash-header-imx6ul-pico-hobbit-512.imxcfg
-FILE_barebox-imx6ul-pico-hobbit-512mb.img = start_imx6ul_pico_hobbit_512mb.pblx.imximg
+pblb-$(CONFIG_MACH_TECHNEXION_PICO_HOBBIT) += start_imx6ul_pico_hobbit_512mb
+CFG_start_imx6ul_pico_hobbit_512mb.pblb.imximg = $(board)/technexion-pico-hobbit/flash-header-imx6ul-pico-hobbit-512.imxcfg
+FILE_barebox-imx6ul-pico-hobbit-512mb.img = start_imx6ul_pico_hobbit_512mb.pblb.imximg
 image-$(CONFIG_MACH_TECHNEXION_PICO_HOBBIT) += barebox-imx6ul-pico-hobbit-512mb.img
 
-pblx-$(CONFIG_MACH_NXP_IMX6ULL_EVK) += start_nxp_imx6ull_evk
-CFG_start_nxp_imx6ull_evk.pblx.imximg = $(board)/nxp-imx6ull-evk/flash-header-nxp-imx6ull-evk.imxcfg
-FILE_barebox-nxp-imx6ull-evk.img = start_nxp_imx6ull_evk.pblx.imximg
+pblb-$(CONFIG_MACH_NXP_IMX6ULL_EVK) += start_nxp_imx6ull_evk
+CFG_start_nxp_imx6ull_evk.pblb.imximg = $(board)/nxp-imx6ull-evk/flash-header-nxp-imx6ull-evk.imxcfg
+FILE_barebox-nxp-imx6ull-evk.img = start_nxp_imx6ull_evk.pblb.imximg
 image-$(CONFIG_MACH_NXP_IMX6ULL_EVK) += barebox-nxp-imx6ull-evk.img
 
-pblx-$(CONFIG_MACH_NITROGEN6) += start_imx6q_nitrogen6x_1g
-CFG_start_imx6q_nitrogen6x_1g.pblx.imximg = $(board)/boundarydevices-nitrogen6/flash-header-nitrogen6q-1g.imxcfg
-FILE_barebox-boundarydevices-imx6q-nitrogen6x-1g.img = start_imx6q_nitrogen6x_1g.pblx.imximg
+pblb-$(CONFIG_MACH_NITROGEN6) += start_imx6q_nitrogen6x_1g
+CFG_start_imx6q_nitrogen6x_1g.pblb.imximg = $(board)/boundarydevices-nitrogen6/flash-header-nitrogen6q-1g.imxcfg
+FILE_barebox-boundarydevices-imx6q-nitrogen6x-1g.img = start_imx6q_nitrogen6x_1g.pblb.imximg
 image-$(CONFIG_MACH_NITROGEN6) += barebox-boundarydevices-imx6q-nitrogen6x-1g.img
 
-pblx-$(CONFIG_MACH_NITROGEN6) += start_imx6q_nitrogen6x_2g
-CFG_start_imx6q_nitrogen6x_2g.pblx.imximg = $(board)/boundarydevices-nitrogen6/flash-header-nitrogen6q-2g.imxcfg
-FILE_barebox-boundarydevices-imx6q-nitrogen6x-2g.img = start_imx6q_nitrogen6x_2g.pblx.imximg
+pblb-$(CONFIG_MACH_NITROGEN6) += start_imx6q_nitrogen6x_2g
+CFG_start_imx6q_nitrogen6x_2g.pblb.imximg = $(board)/boundarydevices-nitrogen6/flash-header-nitrogen6q-2g.imxcfg
+FILE_barebox-boundarydevices-imx6q-nitrogen6x-2g.img = start_imx6q_nitrogen6x_2g.pblb.imximg
 image-$(CONFIG_MACH_NITROGEN6) += barebox-boundarydevices-imx6q-nitrogen6x-2g.img
 
-pblx-$(CONFIG_MACH_NITROGEN6) += start_imx6dl_nitrogen6x_1g
-CFG_start_imx6dl_nitrogen6x_1g.pblx.imximg = $(board)/boundarydevices-nitrogen6/flash-header-nitrogen6dl-1g.imxcfg
-FILE_barebox-boundarydevices-imx6dl-nitrogen6x-1g.img = start_imx6dl_nitrogen6x_1g.pblx.imximg
+pblb-$(CONFIG_MACH_NITROGEN6) += start_imx6dl_nitrogen6x_1g
+CFG_start_imx6dl_nitrogen6x_1g.pblb.imximg = $(board)/boundarydevices-nitrogen6/flash-header-nitrogen6dl-1g.imxcfg
+FILE_barebox-boundarydevices-imx6dl-nitrogen6x-1g.img = start_imx6dl_nitrogen6x_1g.pblb.imximg
 image-$(CONFIG_MACH_NITROGEN6) += barebox-boundarydevices-imx6dl-nitrogen6x-1g.img
 
-pblx-$(CONFIG_MACH_NITROGEN6) += start_imx6dl_nitrogen6x_2g
-CFG_start_imx6dl_nitrogen6x_2g.pblx.imximg = $(board)/boundarydevices-nitrogen6/flash-header-nitrogen6dl-2g.imxcfg
-FILE_barebox-boundarydevices-imx6dl-nitrogen6x-2g.img = start_imx6dl_nitrogen6x_2g.pblx.imximg
+pblb-$(CONFIG_MACH_NITROGEN6) += start_imx6dl_nitrogen6x_2g
+CFG_start_imx6dl_nitrogen6x_2g.pblb.imximg = $(board)/boundarydevices-nitrogen6/flash-header-nitrogen6dl-2g.imxcfg
+FILE_barebox-boundarydevices-imx6dl-nitrogen6x-2g.img = start_imx6dl_nitrogen6x_2g.pblb.imximg
 image-$(CONFIG_MACH_NITROGEN6) += barebox-boundarydevices-imx6dl-nitrogen6x-2g.img
 
-pblx-$(CONFIG_MACH_NITROGEN6) += start_imx6qp_nitrogen6_max
-CFG_start_imx6qp_nitrogen6_max.pblx.imximg = $(board)/boundarydevices-nitrogen6/flash-header-nitrogen6qp-max.imxcfg
-FILE_barebox-boundarydevices-imx6qp-nitrogen6_max.img = start_imx6qp_nitrogen6_max.pblx.imximg
+pblb-$(CONFIG_MACH_NITROGEN6) += start_imx6qp_nitrogen6_max
+CFG_start_imx6qp_nitrogen6_max.pblb.imximg = $(board)/boundarydevices-nitrogen6/flash-header-nitrogen6qp-max.imxcfg
+FILE_barebox-boundarydevices-imx6qp-nitrogen6_max.img = start_imx6qp_nitrogen6_max.pblb.imximg
 image-$(CONFIG_MACH_NITROGEN6) += barebox-boundarydevices-imx6qp-nitrogen6_max.img
 
-pblx-$(CONFIG_MACH_TX6X) += start_imx6dl_tx6x_512m
-CFG_start_imx6dl_tx6x_512m.pblx.imximg = $(board)/karo-tx6x/flash-header-tx6dl-512m.imxcfg
-FILE_barebox-karo-imx6dl-tx6x-512m.img = start_imx6dl_tx6x_512m.pblx.imximg
+pblb-$(CONFIG_MACH_TX6X) += start_imx6dl_tx6x_512m
+CFG_start_imx6dl_tx6x_512m.pblb.imximg = $(board)/karo-tx6x/flash-header-tx6dl-512m.imxcfg
+FILE_barebox-karo-imx6dl-tx6x-512m.img = start_imx6dl_tx6x_512m.pblb.imximg
 image-$(CONFIG_MACH_TX6X) += barebox-karo-imx6dl-tx6x-512m.img
 
-pblx-$(CONFIG_MACH_TX6X) += start_imx6dl_tx6x_1g
-CFG_start_imx6dl_tx6x_1g.pblx.imximg = $(board)/karo-tx6x/flash-header-tx6dl-1g.imxcfg
-FILE_barebox-karo-imx6dl-tx6x-1g.img = start_imx6dl_tx6x_1g.pblx.imximg
+pblb-$(CONFIG_MACH_TX6X) += start_imx6dl_tx6x_1g
+CFG_start_imx6dl_tx6x_1g.pblb.imximg = $(board)/karo-tx6x/flash-header-tx6dl-1g.imxcfg
+FILE_barebox-karo-imx6dl-tx6x-1g.img = start_imx6dl_tx6x_1g.pblb.imximg
 image-$(CONFIG_MACH_TX6X) += barebox-karo-imx6dl-tx6x-1g.img
 
-pblx-$(CONFIG_MACH_TX6X) += start_imx6q_tx6x_1g
-CFG_start_imx6q_tx6x_1g.pblx.imximg = $(board)/karo-tx6x/flash-header-tx6q-1g.imxcfg
-FILE_barebox-karo-imx6q-tx6x-1g.img = start_imx6q_tx6x_1g.pblx.imximg
+pblb-$(CONFIG_MACH_TX6X) += start_imx6q_tx6x_1g
+CFG_start_imx6q_tx6x_1g.pblb.imximg = $(board)/karo-tx6x/flash-header-tx6q-1g.imxcfg
+FILE_barebox-karo-imx6q-tx6x-1g.img = start_imx6q_tx6x_1g.pblb.imximg
 image-$(CONFIG_MACH_TX6X) += barebox-karo-imx6q-tx6x-1g.img
 
-pblx-$(CONFIG_MACH_TX6X) += start_imx6q_tx6x_2g
-CFG_start_imx6q_tx6x_2g.pblx.imximg = $(board)/karo-tx6x/flash-header-tx6qp-2g.imxcfg
-FILE_barebox-karo-imx6qp-tx6x-2g.img = start_imx6q_tx6x_2g.pblx.imximg
+pblb-$(CONFIG_MACH_TX6X) += start_imx6q_tx6x_2g
+CFG_start_imx6q_tx6x_2g.pblb.imximg = $(board)/karo-tx6x/flash-header-tx6qp-2g.imxcfg
+FILE_barebox-karo-imx6qp-tx6x-2g.img = start_imx6q_tx6x_2g.pblb.imximg
 image-$(CONFIG_MACH_TX6X) += barebox-karo-imx6qp-tx6x-2g.img
 
-pblx-$(CONFIG_MACH_UDOO) += start_imx6_udoo
-CFG_start_imx6_udoo.pblx.imximg = $(board)/udoo/flash-header-mx6-udoo.imxcfg
-FILE_barebox-udoo-imx6q.img = start_imx6_udoo.pblx.imximg
+pblb-$(CONFIG_MACH_UDOO) += start_imx6_udoo
+CFG_start_imx6_udoo.pblb.imximg = $(board)/udoo/flash-header-mx6-udoo.imxcfg
+FILE_barebox-udoo-imx6q.img = start_imx6_udoo.pblb.imximg
 image-$(CONFIG_MACH_UDOO) += barebox-udoo-imx6q.img
 
-pblx-$(CONFIG_MACH_CM_FX6) += start_imx6_cm_fx6
-CFG_start_imx6_cm_fx6.imx-sram-img = $(board)/cm-fx6/flash-header-mx6-cm-fx6.imxcfg
-FILE_barebox-cm-fx6.img = start_imx6_cm_fx6.imx-sram-img
+pblb-$(CONFIG_MACH_CM_FX6) += start_imx6_cm_fx6
+CFG_start_imx6_cm_fx6.pblb.imximg = $(board)/cm-fx6/flash-header-mx6-cm-fx6.imxcfg
+FILE_barebox-cm-fx6.img = start_imx6_cm_fx6.pblb.imximg
 image-$(CONFIG_MACH_CM_FX6) += barebox-cm-fx6.img
 
-pblx-$(CONFIG_MACH_CM_FX6) += start_imx6_utilite
-CFG_start_imx6_utilite.imx-sram-img = $(board)/cm-fx6/flash-header-mx6-cm-fx6.imxcfg
-FILE_barebox-utilite.img = start_imx6_utilite.imx-sram-img
+pblb-$(CONFIG_MACH_CM_FX6) += start_imx6_utilite
+CFG_start_imx6_utilite.pblb.imximg = $(board)/cm-fx6/flash-header-mx6-cm-fx6.imxcfg
+FILE_barebox-utilite.img = start_imx6_utilite.pblb.imximg
 image-$(CONFIG_MACH_CM_FX6) += barebox-utilite.img
 
-pblx-$(CONFIG_MACH_VARISCITE_MX6) += start_variscite_custom
-CFG_start_variscite_custom.pblx.imximg = $(board)/variscite-mx6/flash-header-variscite.imxcfg
-FILE_barebox-variscite-custom.img = start_variscite_custom.pblx.imximg
+pblb-$(CONFIG_MACH_VARISCITE_MX6) += start_variscite_custom
+CFG_start_variscite_custom.pblb.imximg = $(board)/variscite-mx6/flash-header-variscite.imxcfg
+FILE_barebox-variscite-custom.img = start_variscite_custom.pblb.imximg
 image-$(CONFIG_MACH_VARISCITE_MX6) += barebox-variscite-custom.img
 
-pblx-$(CONFIG_MACH_EMBEDSKY_E9) += start_imx6q_embedsky_e9
-CFG_start_imx6q_embedsky_e9.pblx.imximg = $(board)/embedsky-e9/flash-header-e9.imxcfg
-FILE_barebox-embedsky-imx6q-e9.img = start_imx6q_embedsky_e9.pblx.imximg
+pblb-$(CONFIG_MACH_EMBEDSKY_E9) += start_imx6q_embedsky_e9
+CFG_start_imx6q_embedsky_e9.pblb.imximg = $(board)/embedsky-e9/flash-header-e9.imxcfg
+FILE_barebox-embedsky-imx6q-e9.img = start_imx6q_embedsky_e9.pblb.imximg
 image-$(CONFIG_MACH_EMBEDSKY_E9) += barebox-embedsky-imx6q-e9.img
 
-pblx-$(CONFIG_MACH_EMBEST_RIOTBOARD) += start_imx6s_riotboard
-CFG_start_imx6s_riotboard.pblx.imximg = $(board)/embest-riotboard/flash-header-embest-riotboard.imxcfg
-FILE_barebox-embest-imx6s-riotboard.img = start_imx6s_riotboard.pblx.imximg
+pblb-$(CONFIG_MACH_EMBEST_RIOTBOARD) += start_imx6s_riotboard
+CFG_start_imx6s_riotboard.pblb.imximg = $(board)/embest-riotboard/flash-header-embest-riotboard.imxcfg
+FILE_barebox-embest-imx6s-riotboard.img = start_imx6s_riotboard.pblb.imximg
 image-$(CONFIG_MACH_EMBEST_RIOTBOARD) += barebox-embest-imx6s-riotboard.img
 
-pblx-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_pbaa03_1gib
-CFG_start_phytec_pbaa03_1gib.pblx.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pcaaxl3-1gib.imxcfg
-FILE_barebox-phytec-pbaa03-1gib.img = start_phytec_pbaa03_1gib.pblx.imximg
+pblb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_pbaa03_1gib
+CFG_start_phytec_pbaa03_1gib.pblb.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pcaaxl3-1gib.imxcfg
+FILE_barebox-phytec-pbaa03-1gib.img = start_phytec_pbaa03_1gib.pblb.imximg
 image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-pbaa03-1gib.img
 
-pblx-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_pbaa03_1gib_1bank
-CFG_start_phytec_pbaa03_1gib_1bank.pblx.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pcaaxl3-1gib-1bank.imxcfg
-FILE_barebox-phytec-pbaa03-1gib-1bank.img = start_phytec_pbaa03_1gib_1bank.pblx.imximg
+pblb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_pbaa03_1gib_1bank
+CFG_start_phytec_pbaa03_1gib_1bank.pblb.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pcaaxl3-1gib-1bank.imxcfg
+FILE_barebox-phytec-pbaa03-1gib-1bank.img = start_phytec_pbaa03_1gib_1bank.pblb.imximg
 image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-pbaa03-1gib-1bank.img
 
-pblx-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_pbaa03_2gib
-CFG_start_phytec_pbaa03_2gib.pblx.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pcaaxl3-2gib.imxcfg
-FILE_barebox-phytec-pbaa03-2gib.img = start_phytec_pbaa03_2gib.pblx.imximg
+pblb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_pbaa03_2gib
+CFG_start_phytec_pbaa03_2gib.pblb.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pcaaxl3-2gib.imxcfg
+FILE_barebox-phytec-pbaa03-2gib.img = start_phytec_pbaa03_2gib.pblb.imximg
 image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-pbaa03-2gib.img
 
-pblx-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_phycore_imx6q_som_nand_1gib
-CFG_start_phytec_phycore_imx6q_som_nand_1gib.pblx.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pcm058-1gib.imxcfg
-FILE_barebox-phytec-phycore-imx6q-som-nand-1gib.img = start_phytec_phycore_imx6q_som_nand_1gib.pblx.imximg
+pblb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_phycore_imx6q_som_nand_1gib
+CFG_start_phytec_phycore_imx6q_som_nand_1gib.pblb.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pcm058-1gib.imxcfg
+FILE_barebox-phytec-phycore-imx6q-som-nand-1gib.img = start_phytec_phycore_imx6q_som_nand_1gib.pblb.imximg
 image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-phycore-imx6q-som-nand-1gib.img
 
-pblx-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_phycore_imx6qp_som_nand_1gib
-CFG_start_phytec_phycore_imx6qp_som_nand_1gib.pblx.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pcm058qp-1gib.imxcfg
-FILE_barebox-phytec-phycore-imx6qp-som-nand-1gib.img = start_phytec_phycore_imx6qp_som_nand_1gib.pblx.imximg
+pblb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_phycore_imx6qp_som_nand_1gib
+CFG_start_phytec_phycore_imx6qp_som_nand_1gib.pblb.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pcm058qp-1gib.imxcfg
+FILE_barebox-phytec-phycore-imx6qp-som-nand-1gib.img = start_phytec_phycore_imx6qp_som_nand_1gib.pblb.imximg
 image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-phycore-imx6qp-som-nand-1gib.img
 
-pblx-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_phycore_imx6q_som_emmc_1gib
-CFG_start_phytec_phycore_imx6q_som_emmc_1gib.pblx.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pcm058-1gib.imxcfg
-FILE_barebox-phytec-phycore-imx6q-som-emmc-1gib.img = start_phytec_phycore_imx6q_som_emmc_1gib.pblx.imximg
+pblb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_phycore_imx6q_som_emmc_1gib
+CFG_start_phytec_phycore_imx6q_som_emmc_1gib.pblb.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pcm058-1gib.imxcfg
+FILE_barebox-phytec-phycore-imx6q-som-emmc-1gib.img = start_phytec_phycore_imx6q_som_emmc_1gib.pblb.imximg
 image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-phycore-imx6q-som-emmc-1gib.img
 
-pblx-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_phycore_imx6q_som_emmc_2gib
-CFG_start_phytec_phycore_imx6q_som_emmc_2gib.pblx.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pcm058-2gib.imxcfg
-FILE_barebox-phytec-phycore-imx6q-som-emmc-2gib.img = start_phytec_phycore_imx6q_som_emmc_2gib.pblx.imximg
+pblb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_phycore_imx6q_som_emmc_2gib
+CFG_start_phytec_phycore_imx6q_som_emmc_2gib.pblb.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pcm058-2gib.imxcfg
+FILE_barebox-phytec-phycore-imx6q-som-emmc-2gib.img = start_phytec_phycore_imx6q_som_emmc_2gib.pblb.imximg
 image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-phycore-imx6q-som-emmc-2gib.img
 
-pblx-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_phycore_imx6dl_som_nand_256mb
-CFG_start_phytec_phycore_imx6dl_som_nand_256mb.pblx.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pcm058dl-256mb.imxcfg
-FILE_barebox-phytec-phycore-imx6dl-som-nand-256mb.img = start_phytec_phycore_imx6dl_som_nand_256mb.pblx.imximg
+pblb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_phycore_imx6dl_som_nand_256mb
+CFG_start_phytec_phycore_imx6dl_som_nand_256mb.pblb.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pcm058dl-256mb.imxcfg
+FILE_barebox-phytec-phycore-imx6dl-som-nand-256mb.img = start_phytec_phycore_imx6dl_som_nand_256mb.pblb.imximg
 image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-phycore-imx6dl-som-nand-256mb.img
 
-pblx-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_phycore_imx6dl_som_nand_1gib
-CFG_start_phytec_phycore_imx6dl_som_nand_1gib.pblx.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pcm058dl-1gib-32bit.imxcfg
-FILE_barebox-phytec-phycore-imx6dl-som-nand-1gib.img = start_phytec_phycore_imx6dl_som_nand_1gib.pblx.imximg
+pblb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_phycore_imx6dl_som_nand_1gib
+CFG_start_phytec_phycore_imx6dl_som_nand_1gib.pblb.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pcm058dl-1gib-32bit.imxcfg
+FILE_barebox-phytec-phycore-imx6dl-som-nand-1gib.img = start_phytec_phycore_imx6dl_som_nand_1gib.pblb.imximg
 image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-phycore-imx6dl-som-nand-1gib.img
 
-pblx-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_phycore_imx6dl_som_emmc_1gib
-CFG_start_phytec_phycore_imx6dl_som_emmc_1gib.pblx.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pcm058dl-1gib.imxcfg
-FILE_barebox-phytec-phycore-imx6dl-som-emmc-1gib.img = start_phytec_phycore_imx6dl_som_emmc_1gib.pblx.imximg
+pblb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_phycore_imx6dl_som_emmc_1gib
+CFG_start_phytec_phycore_imx6dl_som_emmc_1gib.pblb.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pcm058dl-1gib.imxcfg
+FILE_barebox-phytec-phycore-imx6dl-som-emmc-1gib.img = start_phytec_phycore_imx6dl_som_emmc_1gib.pblb.imximg
 image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-phycore-imx6dl-som-emmc-1gib.img
 
-pblx-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_phycore_imx6ul_som_512mb
-CFG_start_phytec_phycore_imx6ul_som_512mb.pblx.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pcl063-512mb.imxcfg
-FILE_barebox-phytec-phycore-imx6ul-512mb.img = start_phytec_phycore_imx6ul_som_512mb.pblx.imximg
+pblb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_phycore_imx6ul_som_512mb
+CFG_start_phytec_phycore_imx6ul_som_512mb.pblb.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pcl063-512mb.imxcfg
+FILE_barebox-phytec-phycore-imx6ul-512mb.img = start_phytec_phycore_imx6ul_som_512mb.pblb.imximg
 image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-phycore-imx6ul-512mb.img
 
-pblx-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_phycore_imx6ull_som_256mb
-CFG_start_phytec_phycore_imx6ull_som_256mb.pblx.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pcl063-256mb.imxcfg
-FILE_barebox-phytec-phycore-imx6ull-256mb.img = start_phytec_phycore_imx6ull_som_256mb.pblx.imximg
+pblb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_phycore_imx6ull_som_256mb
+CFG_start_phytec_phycore_imx6ull_som_256mb.pblb.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pcl063-256mb.imxcfg
+FILE_barebox-phytec-phycore-imx6ull-256mb.img = start_phytec_phycore_imx6ull_som_256mb.pblb.imximg
 image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-phycore-imx6ull-256mb.img
 
-pblx-$(CONFIG_MACH_KONTRON_SAMX6I) += start_imx6q_samx6i
-CFG_start_imx6q_samx6i.pblx.imximg = $(board)/kontron-samx6i/flash-header-samx6i-quad.imxcfg
-FILE_barebox-imx6q-samx6i.img = start_imx6q_samx6i.pblx.imximg
+pblb-$(CONFIG_MACH_KONTRON_SAMX6I) += start_imx6q_samx6i
+CFG_start_imx6q_samx6i.pblb.imximg = $(board)/kontron-samx6i/flash-header-samx6i-quad.imxcfg
+FILE_barebox-imx6q-samx6i.img = start_imx6q_samx6i.pblb.imximg
 image-$(CONFIG_MACH_KONTRON_SAMX6I) += barebox-imx6q-samx6i.img
 
-pblx-$(CONFIG_MACH_KONTRON_SAMX6I) += start_imx6dl_samx6i
-CFG_start_imx6dl_samx6i.pblx.imximg = $(board)/kontron-samx6i/flash-header-samx6i-duallite.imxcfg
-FILE_barebox-imx6dl-samx6i.img = start_imx6dl_samx6i.pblx.imximg
+pblb-$(CONFIG_MACH_KONTRON_SAMX6I) += start_imx6dl_samx6i
+CFG_start_imx6dl_samx6i.pblb.imximg = $(board)/kontron-samx6i/flash-header-samx6i-duallite.imxcfg
+FILE_barebox-imx6dl-samx6i.img = start_imx6dl_samx6i.pblb.imximg
 image-$(CONFIG_MACH_KONTRON_SAMX6I) += barebox-imx6dl-samx6i.img
 
-pblx-$(CONFIG_MACH_GRINN_LITEBOARD) += start_imx6ul_liteboard_256mb
-CFG_start_imx6ul_liteboard_256mb.pblx.imximg = $(board)/grinn-liteboard/flash-header-liteboard-256mb.imxcfg
-FILE_barebox-grinn-liteboard-256mb.img = start_imx6ul_liteboard_256mb.pblx.imximg
+pblb-$(CONFIG_MACH_GRINN_LITEBOARD) += start_imx6ul_liteboard_256mb
+CFG_start_imx6ul_liteboard_256mb.pblb.imximg = $(board)/grinn-liteboard/flash-header-liteboard-256mb.imxcfg
+FILE_barebox-grinn-liteboard-256mb.img = start_imx6ul_liteboard_256mb.pblb.imximg
 image-$(CONFIG_MACH_GRINN_LITEBOARD) += barebox-grinn-liteboard-256mb.img
 
-pblx-$(CONFIG_MACH_GRINN_LITEBOARD) += start_imx6ul_liteboard_512mb
-CFG_start_imx6ul_liteboard_512mb.pblx.imximg = $(board)/grinn-liteboard/flash-header-liteboard-512mb.imxcfg
-FILE_barebox-grinn-liteboard-512mb.img = start_imx6ul_liteboard_512mb.pblx.imximg
+pblb-$(CONFIG_MACH_GRINN_LITEBOARD) += start_imx6ul_liteboard_512mb
+CFG_start_imx6ul_liteboard_512mb.pblb.imximg = $(board)/grinn-liteboard/flash-header-liteboard-512mb.imxcfg
+FILE_barebox-grinn-liteboard-512mb.img = start_imx6ul_liteboard_512mb.pblb.imximg
 image-$(CONFIG_MACH_GRINN_LITEBOARD) += barebox-grinn-liteboard-512mb.img
 
-pblx-$(CONFIG_MACH_GW_VENTANA) += start_imx6q_gw54xx_1gx64
-CFG_start_imx6q_gw54xx_1gx64.pblx.imximg = $(board)/gateworks-ventana/flash-header-ventana-quad-1gx64.imxcfg
-FILE_barebox-gateworks-imx6q-ventana-1gx64.img = start_imx6q_gw54xx_1gx64.pblx.imximg
+pblb-$(CONFIG_MACH_GW_VENTANA) += start_imx6q_gw54xx_1gx64
+CFG_start_imx6q_gw54xx_1gx64.pblb.imximg = $(board)/gateworks-ventana/flash-header-ventana-quad-1gx64.imxcfg
+FILE_barebox-gateworks-imx6q-ventana-1gx64.img = start_imx6q_gw54xx_1gx64.pblb.imximg
 image-$(CONFIG_MACH_GW_VENTANA) += barebox-gateworks-imx6q-ventana-1gx64.img
 
-pblx-$(CONFIG_MACH_ELTEC_HIPERCAM) += start_imx6dl_eltec_hipercam
-CFG_start_imx6dl_eltec_hipercam.pblx.imximg = $(board)/eltec-hipercam/flash-header-eltec-hipercam.imxcfg
-FILE_barebox-eltec-hipercam.img = start_imx6dl_eltec_hipercam.pblx.imximg
+pblb-$(CONFIG_MACH_ELTEC_HIPERCAM) += start_imx6dl_eltec_hipercam
+CFG_start_imx6dl_eltec_hipercam.pblb.imximg = $(board)/eltec-hipercam/flash-header-eltec-hipercam.imxcfg
+FILE_barebox-eltec-hipercam.img = start_imx6dl_eltec_hipercam.pblb.imximg
 image-$(CONFIG_MACH_ELTEC_HIPERCAM) += barebox-eltec-hipercam.img
 
-pblx-$(CONFIG_MACH_ADVANTECH_ROM_742X) += start_advantech_imx6dl_rom_7421
-CFG_start_advantech_imx6dl_rom_7421.pblx.imximg = $(board)/advantech-mx6/flash-header-advantech-rom-7421.imxcfg
-FILE_barebox-advantech-imx6dl-rom-7421.img = start_advantech_imx6dl_rom_7421.pblx.imximg
+pblb-$(CONFIG_MACH_ADVANTECH_ROM_742X) += start_advantech_imx6dl_rom_7421
+CFG_start_advantech_imx6dl_rom_7421.pblb.imximg = $(board)/advantech-mx6/flash-header-advantech-rom-7421.imxcfg
+FILE_barebox-advantech-imx6dl-rom-7421.img = start_advantech_imx6dl_rom_7421.pblb.imximg
 image-$(CONFIG_MACH_ADVANTECH_ROM_742X) += barebox-advantech-imx6dl-rom-7421.img
 
-pblx-$(CONFIG_MACH_WARP7) += start_imx7s_element14_warp7
-CFG_start_imx7s_element14_warp7.pblx.imximg = $(board)/element14-warp7/flash-header-mx7-warp.imxcfg
-FILE_barebox-element14-imx7s-warp7.img = start_imx7s_element14_warp7.pblx.imximg
+pblb-$(CONFIG_MACH_WARP7) += start_imx7s_element14_warp7
+CFG_start_imx7s_element14_warp7.pblb.imximg = $(board)/element14-warp7/flash-header-mx7-warp.imxcfg
+FILE_barebox-element14-imx7s-warp7.img = start_imx7s_element14_warp7.pblb.imximg
 image-$(CONFIG_MACH_WARP7) += barebox-element14-imx7s-warp7.img
 
-pblx-$(CONFIG_MACH_PHYTEC_PHYCORE_IMX7) += start_phytec_phycore_imx7
-CFG_start_phytec_phycore_imx7.pblx.imximg = $(board)/phytec-phycore-imx7/flash-header-phytec-phycore-imx7.imxcfg
-FILE_barebox-phytec-phycore-imx7.img = start_phytec_phycore_imx7.pblx.imximg
+pblb-$(CONFIG_MACH_PHYTEC_PHYCORE_IMX7) += start_phytec_phycore_imx7
+CFG_start_phytec_phycore_imx7.pblb.imximg = $(board)/phytec-phycore-imx7/flash-header-phytec-phycore-imx7.imxcfg
+FILE_barebox-phytec-phycore-imx7.img = start_phytec_phycore_imx7.pblb.imximg
 image-$(CONFIG_MACH_PHYTEC_PHYCORE_IMX7) += barebox-phytec-phycore-imx7.img
 
-pblx-$(CONFIG_MACH_VF610_TWR) += start_vf610_twr
-CFG_start_vf610_twr.pblx.imximg = $(board)/freescale-vf610-twr/flash-header-vf610-twr.imxcfg
-FILE_barebox-vf610-twr.img = start_vf610_twr.pblx.imximg
+pblb-$(CONFIG_MACH_VF610_TWR) += start_vf610_twr
+CFG_start_vf610_twr.pblb.imximg = $(board)/freescale-vf610-twr/flash-header-vf610-twr.imxcfg
+FILE_barebox-vf610-twr.img = start_vf610_twr.pblb.imximg
 image-$(CONFIG_MACH_VF610_TWR) += barebox-vf610-twr.img
 
-pblx-$(CONFIG_MACH_ZII_RDU2) += start_imx6_zii_rdu2
-CFG_start_imx6_zii_rdu2.imx-sram-img = $(board)/zii-imx6q-rdu2/flash-header-rdu2.imxcfg
-FILE_barebox-zii-imx6-rdu2.img = start_imx6_zii_rdu2.imx-sram-img
+pblb-$(CONFIG_MACH_ZII_RDU2) += start_imx6_zii_rdu2
+CFG_start_imx6_zii_rdu2.pblb.imximg = $(board)/zii-imx6q-rdu2/flash-header-rdu2.imxcfg
+FILE_barebox-zii-imx6-rdu2.img = start_imx6_zii_rdu2.pblb.imximg
 image-$(CONFIG_MACH_ZII_RDU2) += barebox-zii-imx6-rdu2.img
 
-pblx-$(CONFIG_MACH_ZII_VF610_DEV) += start_zii_vf610_dev
-CFG_start_zii_vf610_dev.pblx.imximg = $(board)/zii-vf610-dev/flash-header-zii-vf610-dev.imxcfg
-FILE_barebox-zii-vf610-dev.img = start_zii_vf610_dev.pblx.imximg
+pblb-$(CONFIG_MACH_ZII_VF610_DEV) += start_zii_vf610_dev
+CFG_start_zii_vf610_dev.pblb.imximg = $(board)/zii-vf610-dev/flash-header-zii-vf610-dev.imxcfg
+FILE_barebox-zii-vf610-dev.img = start_zii_vf610_dev.pblb.imximg
 image-$(CONFIG_MACH_ZII_VF610_DEV) += barebox-zii-vf610-dev.img
 
 # ----------------------- i.MX7 based boards ---------------------------
-pblx-$(CONFIG_MACH_FREESCALE_MX7_SABRESD) += start_imx7d_sabresd
-CFG_start_imx7d_sabresd.pblx.imximg = $(board)/freescale-mx7-sabresd/flash-header-mx7-sabresd.imxcfg
-FILE_barebox-freescale-mx7-sabresd.img = start_imx7d_sabresd.pblx.imximg
+pblb-$(CONFIG_MACH_FREESCALE_MX7_SABRESD) += start_imx7d_sabresd
+CFG_start_imx7d_sabresd.pblb.imximg = $(board)/freescale-mx7-sabresd/flash-header-mx7-sabresd.imxcfg
+FILE_barebox-freescale-mx7-sabresd.img = start_imx7d_sabresd.pblb.imximg
 image-$(CONFIG_MACH_FREESCALE_MX7_SABRESD) += barebox-freescale-mx7-sabresd.img
 
-pblx-$(CONFIG_MACH_ZII_IMX7D_RPU2) += start_zii_imx7d_rpu2
-CFG_start_zii_imx7d_rpu2.pblx.imximg = $(board)/zii-imx7d-rpu2/flash-header-zii-imx7d-rpu2.imxcfg
-FILE_barebox-zii-imx7d-rpu2.img = start_zii_imx7d_rpu2.pblx.imximg
+pblb-$(CONFIG_MACH_ZII_IMX7D_RPU2) += start_zii_imx7d_rpu2
+CFG_start_zii_imx7d_rpu2.pblb.imximg = $(board)/zii-imx7d-rpu2/flash-header-zii-imx7d-rpu2.imxcfg
+FILE_barebox-zii-imx7d-rpu2.img = start_zii_imx7d_rpu2.pblb.imximg
 image-$(CONFIG_MACH_ZII_IMX7D_RPU2) += barebox-zii-imx7d-rpu2.img
 
 # ----------------------- i.MX8mq based boards --------------------------
-pblx-$(CONFIG_MACH_NXP_IMX8MQ_EVK) += start_nxp_imx8mq_evk
-CFG_start_nxp_imx8mq_evk.imx-sram-img = $(board)/nxp-imx8mq-evk/flash-header-imx8mq-evk.imxcfg
-FILE_barebox-nxp-imx8mq-evk.img = start_nxp_imx8mq_evk.imx-sram-img
+pblb-$(CONFIG_MACH_NXP_IMX8MQ_EVK) += start_nxp_imx8mq_evk
+CFG_start_nxp_imx8mq_evk.pblb.imximg = $(board)/nxp-imx8mq-evk/flash-header-imx8mq-evk.imxcfg
+FILE_barebox-nxp-imx8mq-evk.img = start_nxp_imx8mq_evk.pblb.imximg
 image-$(CONFIG_MACH_NXP_IMX8MQ_EVK) += barebox-nxp-imx8mq-evk.img
diff --git a/images/Makefile.mvebu b/images/Makefile.mvebu
index 17fa0616b2..8d6a5bd0bb 100644
--- a/images/Makefile.mvebu
+++ b/images/Makefile.mvebu
@@ -11,92 +11,92 @@ KWBOPTS = -c -d 0x1000000 -e 0x1000000
 
 # ----------------------- Armada 370 based boards ---------------------------
 GLOBALSCALE_MIRABOX_KWBOPTS = ${KWBOPTS} -i $(board)/globalscale-mirabox/kwbimage.cfg
-OPTS_start_globalscale_mirabox.pblx.kwbimg = $(GLOBALSCALE_MIRABOX_KWBOPTS)
-FILE_barebox-globalscale-mirabox.img	= start_globalscale_mirabox.pblx.kwbimg
-FILE_barebox-globalscale-mirabox-2nd.img = start_globalscale_mirabox.pblx
-pblx-$(CONFIG_MACH_GLOBALSCALE_MIRABOX) += start_globalscale_mirabox
+OPTS_start_globalscale_mirabox.pblb.kwbimg = $(GLOBALSCALE_MIRABOX_KWBOPTS)
+FILE_barebox-globalscale-mirabox.img	= start_globalscale_mirabox.pblb.kwbimg
+FILE_barebox-globalscale-mirabox-2nd.img = start_globalscale_mirabox.pblb
+pblb-$(CONFIG_MACH_GLOBALSCALE_MIRABOX) += start_globalscale_mirabox
 image-$(CONFIG_MACH_GLOBALSCALE_MIRABOX) += barebox-globalscale-mirabox.img
 image-$(CONFIG_MACH_GLOBALSCALE_MIRABOX) += barebox-globalscale-mirabox-2nd.img
 
 NETGEAR_RN104_KWBOPTS = ${KWBOPTS} -i $(board)/netgear-rn104/kwbimage.cfg
-OPTS_start_netgear_rn104.pblx.kwbimg = $(NETGEAR_RN104_KWBOPTS)
-FILE_barebox-netgear-rn104.img	= start_netgear_rn104.pblx.kwbimg
-FILE_barebox-netgear-rn104-2nd.img = start_netgear_rn104.pblx
-pblx-$(CONFIG_MACH_NETGEAR_RN104) += start_netgear_rn104
+OPTS_start_netgear_rn104.pblb.kwbimg = $(NETGEAR_RN104_KWBOPTS)
+FILE_barebox-netgear-rn104.img	= start_netgear_rn104.pblb.kwbimg
+FILE_barebox-netgear-rn104-2nd.img = start_netgear_rn104.pblb
+pblb-$(CONFIG_MACH_NETGEAR_RN104) += start_netgear_rn104
 image-$(CONFIG_MACH_NETGEAR_RN104) += barebox-netgear-rn104.img
 image-$(CONFIG_MACH_NETGEAR_RN104) += barebox-netgear-rn104-2nd.img
 
 # ----------------------- Armada XP based boards ---------------------------
 LENOVO_IX4_300D_KWBOPTS = ${KWBOPTS} -i $(board)/lenovo-ix4-300d/kwbimage.cfg
-OPTS_start_lenovo_ix4_300d.pblx.kwbimg = $(LENOVO_IX4_300D_KWBOPTS)
-FILE_barebox-lenovo-ix4-300d.img   = start_lenovo_ix4_300d.pblx.kwbimg
-FILE_barebox-lenovo-ix4-300d-2nd.img = start_lenovo_ix4_300d.pblx
-pblx-$(CONFIG_MACH_LENOVO_IX4_300D) += start_lenovo_ix4_300d
+OPTS_start_lenovo_ix4_300d.pblb.kwbimg = $(LENOVO_IX4_300D_KWBOPTS)
+FILE_barebox-lenovo-ix4-300d.img   = start_lenovo_ix4_300d.pblb.kwbimg
+FILE_barebox-lenovo-ix4-300d-2nd.img = start_lenovo_ix4_300d.pblb
+pblb-$(CONFIG_MACH_LENOVO_IX4_300D) += start_lenovo_ix4_300d
 image-$(CONFIG_MACH_LENOVO_IX4_300D) += barebox-lenovo-ix4-300d.img
 image-$(CONFIG_MACH_LENOVO_IX4_300D) += barebox-lenovo-ix4-300d-2nd.img
 
 MARVELL_ARMADA_XP_GP_KWBOPTS = ${KWBOPTS} -i $(board)/marvell-armada-xp-gp/kwbimage.cfg
-OPTS_start_marvell_armada_xp_gp.pblx.kwbimg = $(MARVELL_ARMADA_XP_GP_KWBOPTS)
-FILE_barebox-marvell-armada-xp-gp.img   = start_marvell_armada_xp_gp.pblx.kwbimg
-FILE_barebox-marvell-armada-xp-gp-2nd.img = start_marvell_armada_xp_gp.pblx
-pblx-$(CONFIG_MACH_MARVELL_ARMADA_XP_GP) += start_marvell_armada_xp_gp
+OPTS_start_marvell_armada_xp_gp.pblb.kwbimg = $(MARVELL_ARMADA_XP_GP_KWBOPTS)
+FILE_barebox-marvell-armada-xp-gp.img   = start_marvell_armada_xp_gp.pblb.kwbimg
+FILE_barebox-marvell-armada-xp-gp-2nd.img = start_marvell_armada_xp_gp.pblb
+pblb-$(CONFIG_MACH_MARVELL_ARMADA_XP_GP) += start_marvell_armada_xp_gp
 image-$(CONFIG_MACH_MARVELL_ARMADA_XP_GP) += barebox-marvell-armada-xp-gp.img
 image-$(CONFIG_MACH_MARVELL_ARMADA_XP_GP) += barebox-marvell-armada-xp-gp-2nd.img
 
 NETGEAR_RN2120_KWBOPTS = ${KWBOPTS} -i $(board)/netgear-rn2120/kwbimage.cfg
-OPTS_start_netgear_rn2120.pblx.kwbimg = $(NETGEAR_RN2120_KWBOPTS)
-FILE_barebox-netgear-rn2120.img	= start_netgear_rn2120.pblx.kwbimg
-FILE_barebox-netgear-rn2120-2nd.img = start_netgear_rn2120.pblx
-pblx-$(CONFIG_MACH_NETGEAR_RN2120) += start_netgear_rn2120
+OPTS_start_netgear_rn2120.pblb.kwbimg = $(NETGEAR_RN2120_KWBOPTS)
+FILE_barebox-netgear-rn2120.img	= start_netgear_rn2120.pblb.kwbimg
+FILE_barebox-netgear-rn2120-2nd.img = start_netgear_rn2120.pblb
+pblb-$(CONFIG_MACH_NETGEAR_RN2120) += start_netgear_rn2120
 image-$(CONFIG_MACH_NETGEAR_RN2120) += barebox-netgear-rn2120.img
 image-$(CONFIG_MACH_NETGEAR_RN2120) += barebox-netgear-rn2120-2nd.img
 
 # ----------------------- Armada 38x based boards ---------------------------
 TURRIS_OMNIA_KWBOPTS = ${KWBOPTS} -i $(board)/turris-omnia/kwbimage.cfg
-OPTS_start_turris_omnia.pblx.kwbimg = $(TURRIS_OMNIA_KWBOPTS)
-FILE_barebox-turris-omnia.img = start_turris_omnia.pblx.kwbimg
-FILE_barebox-turris-omnia-2nd.img = start_turris_omnia.pblx
-pblx-$(CONFIG_MACH_TURRIS_OMNIA) += start_turris_omnia
+OPTS_start_turris_omnia.pblb.kwbimg = $(TURRIS_OMNIA_KWBOPTS)
+FILE_barebox-turris-omnia.img = start_turris_omnia.pblb.kwbimg
+FILE_barebox-turris-omnia-2nd.img = start_turris_omnia.pblb
+pblb-$(CONFIG_MACH_TURRIS_OMNIA) += start_turris_omnia
 image-$(CONFIG_MACH_TURRIS_OMNIA) += barebox-turris-omnia.img
 
 PLATHOME_OPENBLOCKS_AX3_KWBOPTS = ${KWBOPTS} -i $(board)/plathome-openblocks-ax3/kwbimage.cfg
-OPTS_start_plathome_openblocks_ax3.pblx.kwbimg = $(PLATHOME_OPENBLOCKS_AX3_KWBOPTS)
-FILE_barebox-plathome-openblocks-ax3.img   = start_plathome_openblocks_ax3.pblx.kwbimg
-FILE_barebox-plathome-openblocks-ax3-2nd.img = start_plathome_openblocks_ax3.pblx
-pblx-$(CONFIG_MACH_PLATHOME_OPENBLOCKS_AX3) += start_plathome_openblocks_ax3
+OPTS_start_plathome_openblocks_ax3.pblb.kwbimg = $(PLATHOME_OPENBLOCKS_AX3_KWBOPTS)
+FILE_barebox-plathome-openblocks-ax3.img   = start_plathome_openblocks_ax3.pblb.kwbimg
+FILE_barebox-plathome-openblocks-ax3-2nd.img = start_plathome_openblocks_ax3.pblb
+pblb-$(CONFIG_MACH_PLATHOME_OPENBLOCKS_AX3) += start_plathome_openblocks_ax3
 image-$(CONFIG_MACH_PLATHOME_OPENBLOCKS_AX3) += barebox-plathome-openblocks-ax3.img
 image-$(CONFIG_MACH_PLATHOME_OPENBLOCKS_AX3) += barebox-plathome-openblocks-ax3-2nd.img
 
 # ----------------------- Dove 88AP510 based boards ---------------------------
 SOLIDRUN_CUBOX_KWBOPTS = ${KWBOPTS} -i $(board)/solidrun-cubox/kwbimage.cfg
-OPTS_start_solidrun_cubox.pblx.kwbimg = $(SOLIDRUN_CUBOX_KWBOPTS)
-FILE_barebox-solidrun-cubox.img	= start_solidrun_cubox.pblx.kwbimg
-FILE_barebox-solidrun-cubox-2nd.img = start_solidrun_cubox.pblx
-pblx-$(CONFIG_MACH_SOLIDRUN_CUBOX) += start_solidrun_cubox
+OPTS_start_solidrun_cubox.pblb.kwbimg = $(SOLIDRUN_CUBOX_KWBOPTS)
+FILE_barebox-solidrun-cubox.img	= start_solidrun_cubox.pblb.kwbimg
+FILE_barebox-solidrun-cubox-2nd.img = start_solidrun_cubox.pblb
+pblb-$(CONFIG_MACH_SOLIDRUN_CUBOX) += start_solidrun_cubox
 image-$(CONFIG_MACH_SOLIDRUN_CUBOX) += barebox-solidrun-cubox.img
 image-$(CONFIG_MACH_SOLIDRUN_CUBOX) += barebox-solidrun-cubox-2nd.img
 
 # ----------------------- Kirkwood based boards ---------------------------
 GLOBALSCALE_GURUPLUG_KWBOPTS = ${KWBOPTS} -i $(board)/globalscale-guruplug/kwbimage.cfg
-OPTS_start_globalscale_guruplug.pblx.kwbimg = $(GLOBALSCALE_GURUPLUG_KWBOPTS)
-FILE_barebox-globalscale-guruplug.img	= start_globalscale_guruplug.pblx.kwbimg
-FILE_barebox-globalscale-guruplug-2nd.img = start_globalscale_guruplug.pblx
-pblx-$(CONFIG_MACH_GLOBALSCALE_GURUPLUG) += start_globalscale_guruplug
+OPTS_start_globalscale_guruplug.pblb.kwbimg = $(GLOBALSCALE_GURUPLUG_KWBOPTS)
+FILE_barebox-globalscale-guruplug.img	= start_globalscale_guruplug.pblb.kwbimg
+FILE_barebox-globalscale-guruplug-2nd.img = start_globalscale_guruplug.pblb
+pblb-$(CONFIG_MACH_GLOBALSCALE_GURUPLUG) += start_globalscale_guruplug
 image-$(CONFIG_MACH_GLOBALSCALE_GURUPLUG) += barebox-globalscale-guruplug.img
 image-$(CONFIG_MACH_GLOBALSCALE_GURUPLUG) += barebox-globalscale-guruplug-2nd.img
 
 PLATHOME_OPENBLOCKS_A6_KWBOPTS = ${KWBOPTS} -i $(board)/plathome-openblocks-a6/kwbimage.cfg
-OPTS_start_plathome_openblocks_a6.pblx.kwbimg = $(PLATHOME_OPENBLOCKS_A6_KWBOPTS)
-FILE_barebox-plathome-openblocks-a6.img   = start_plathome_openblocks_a6.pblx.kwbimg
-FILE_barebox-plathome-openblocks-a6-2nd.img = start_plathome_openblocks_a6.pblx
-pblx-$(CONFIG_MACH_PLATHOME_OPENBLOCKS_A6) += start_plathome_openblocks_a6
+OPTS_start_plathome_openblocks_a6.pblb.kwbimg = $(PLATHOME_OPENBLOCKS_A6_KWBOPTS)
+FILE_barebox-plathome-openblocks-a6.img   = start_plathome_openblocks_a6.pblb.kwbimg
+FILE_barebox-plathome-openblocks-a6-2nd.img = start_plathome_openblocks_a6.pblb
+pblb-$(CONFIG_MACH_PLATHOME_OPENBLOCKS_A6) += start_plathome_openblocks_a6
 image-$(CONFIG_MACH_PLATHOME_OPENBLOCKS_A6) += barebox-plathome-openblocks-a6.img
 image-$(CONFIG_MACH_PLATHOME_OPENBLOCKS_A6) += barebox-plathome-openblocks-a6-2nd.img
 
 USI_TOPKICK_KWBOPTS = ${KWBOPTS} -i $(board)/usi-topkick/kwbimage.cfg
-OPTS_start_usi_topkick.pblx.kwbimg = $(USI_TOPKICK_KWBOPTS)
-FILE_barebox-usi-topkick.img	= start_usi_topkick.pblx.kwbimg
-FILE_barebox-usi-topkick-2nd.img = start_usi_topkick.pblx
-pblx-$(CONFIG_MACH_USI_TOPKICK) += start_usi_topkick
+OPTS_start_usi_topkick.pblb.kwbimg = $(USI_TOPKICK_KWBOPTS)
+FILE_barebox-usi-topkick.img	= start_usi_topkick.pblb.kwbimg
+FILE_barebox-usi-topkick-2nd.img = start_usi_topkick.pblb
+pblb-$(CONFIG_MACH_USI_TOPKICK) += start_usi_topkick
 image-$(CONFIG_MACH_USI_TOPKICK) += barebox-usi-topkick.img
 image-$(CONFIG_MACH_USI_TOPKICK) += barebox-usi-topkick-2nd.img
diff --git a/images/Makefile.mxs b/images/Makefile.mxs
index aab883202a..f93c3fddd0 100644
--- a/images/Makefile.mxs
+++ b/images/Makefile.mxs
@@ -7,7 +7,7 @@
 quiet_cmd_mxs_bootstream = MXS-BOOTSTREAM $@
       cmd_mxs_bootstream = $(objtree)/scripts/mxsimage -c $(CFG_$(@F)) -b $< -o $@ -p $(word 2,$^)
 
-$(obj)/%.mxsbs: $(obj)/%.pblx $(obj)/prep_%.pblb FORCE
+$(obj)/%.mxsbs: $(obj)/%.pblb $(obj)/prep_%.pblb FORCE
 	$(call if_changed,mxs_bootstream)
 
 # %.mxsbsu - convert into unencrypted MXS BootStream image
@@ -15,7 +15,7 @@ $(obj)/%.mxsbs: $(obj)/%.pblx $(obj)/prep_%.pblb FORCE
 quiet_cmd_mxs_bootstream_u = MXS-BOOTSTREAM-U $@
       cmd_mxs_bootstream_u = $(objtree)/scripts/mxsimage -u -c $(CFG_$(@F)) -b $< -o $@ -p $(word 2,$^)
 
-$(obj)/%.mxsbsu: $(obj)/%.pblx $(obj)/prep_%.pblb FORCE
+$(obj)/%.mxsbsu: $(obj)/%.pblb $(obj)/prep_%.pblb FORCE
 	$(call if_changed,mxs_bootstream_u)
 
 # %.mxssd - convert into MXS SD card image
@@ -29,38 +29,38 @@ $(obj)/%.mxssd: $(obj)/%
 mxs23cfg = $(srctree)/arch/arm/mach-mxs/mxs23img.cfg
 mxs28cfg = $(srctree)/arch/arm/mach-mxs/mxs28img.cfg
 
-pblx-$(CONFIG_MACH_DUCKBILL) += start_barebox_duckbill prep_start_barebox_duckbill
+pblb-$(CONFIG_MACH_DUCKBILL) += start_barebox_duckbill prep_start_barebox_duckbill
 CFG_start_barebox_duckbill.mxsbs = $(mxs28cfg)
 FILE_barebox-duckbill-bootstream.img = start_barebox_duckbill.mxsbs
 image-$(CONFIG_MACH_DUCKBILL) += barebox-duckbill-bootstream.img
 FILE_barebox-duckbill-sd.img = start_barebox_duckbill.mxsbs.mxssd
 image-$(CONFIG_MACH_DUCKBILL) += barebox-duckbill-sd.img
-FILE_barebox-duckbill-2nd.img = start_barebox_duckbill.pblx
+FILE_barebox-duckbill-2nd.img = start_barebox_duckbill.pblb
 image-$(CONFIG_MACH_DUCKBILL) += barebox-duckbill-2nd.img
 
-pblx-$(CONFIG_MACH_TX28) += start_barebox_karo_tx28 prep_start_barebox_karo_tx28
+pblb-$(CONFIG_MACH_TX28) += start_barebox_karo_tx28 prep_start_barebox_karo_tx28
 CFG_start_barebox_karo_tx28.mxsbs = $(mxs28cfg)
 FILE_barebox-karo-tx28-bootstream.img = start_barebox_karo_tx28.mxsbs
 image-$(CONFIG_MACH_TX28) += barebox-karo-tx28-bootstream.img
 FILE_barebox-karo-tx28-sd.img = start_barebox_karo_tx28.mxsbs.mxssd
 image-$(CONFIG_MACH_TX28) += barebox-karo-tx28-sd.img
-FILE_barebox-karo-tx28-2nd.img = start_barebox_karo_tx28.pblx
+FILE_barebox-karo-tx28-2nd.img = start_barebox_karo_tx28.pblb
 image-$(CONFIG_MACH_TX28) += barebox-karo-tx28-2nd.img
 
-pblx-$(CONFIG_MACH_MX28EVK) += start_barebox_freescale_mx28evk prep_start_barebox_freescale_mx28evk
+pblb-$(CONFIG_MACH_MX28EVK) += start_barebox_freescale_mx28evk prep_start_barebox_freescale_mx28evk
 CFG_start_barebox_freescale_mx28evk.mxsbs = $(mxs28cfg)
 FILE_barebox-freescale-mx28evk-bootstream.img = start_barebox_freescale_mx28evk.mxsbs
 image-$(CONFIG_MACH_MX28EVK) += barebox-freescale-mx28evk-bootstream.img
 FILE_barebox-freescale-mx28evk-sd.img = start_barebox_freescale_mx28evk.mxsbs.mxssd
 image-$(CONFIG_MACH_MX28EVK) += barebox-freescale-mx28evk-sd.img
-FILE_barebox-freescale-mx28evk-2nd.img = start_barebox_freescale_mx28evk.pblx
+FILE_barebox-freescale-mx28evk-2nd.img = start_barebox_freescale_mx28evk.pblb
 image-$(CONFIG_MACH_MX28EVK) += barebox-freescale-mx28evk-2nd.img
 
-pblx-$(CONFIG_MACH_IMX233_OLINUXINO) += start_barebox_olinuxino_imx23 prep_start_barebox_olinuxino_imx23
+pblb-$(CONFIG_MACH_IMX233_OLINUXINO) += start_barebox_olinuxino_imx23 prep_start_barebox_olinuxino_imx23
 CFG_start_barebox_olinuxino_imx23.mxsbs = $(mxs23cfg)
 FILE_barebox-olinuxino-imx23-bootstream.img = start_barebox_olinuxino_imx23.mxsbs
 image-$(CONFIG_MACH_IMX233_OLINUXINO) += barebox-olinuxino-imx23-bootstream.img
 FILE_barebox-olinuxino-imx23-sd.img = start_barebox_olinuxino_imx23.mxsbs.mxssd
 image-$(CONFIG_MACH_IMX233_OLINUXINO) += barebox-olinuxino-imx23-sd.img
-FILE_barebox-olinuxino-imx23-2nd.img = start_barebox_olinuxino_imx23.pblx
+FILE_barebox-olinuxino-imx23-2nd.img = start_barebox_olinuxino_imx23.pblb
 image-$(CONFIG_MACH_IMX233_OLINUXINO) += barebox-olinuxino-imx23-2nd.img
diff --git a/images/Makefile.omap3 b/images/Makefile.omap3
index 694ec30836..4d87b1da26 100644
--- a/images/Makefile.omap3
+++ b/images/Makefile.omap3
@@ -6,10 +6,10 @@ quiet_cmd_omap3_mlo_image = MLO     $@
 $(obj)/%.omap3_mlo: $(obj)/% FORCE
 	$(call if_changed,omap3_mlo_image)
 
-pblx-$(CONFIG_MACH_BEAGLE) += start_omap3_beagleboard_sdram start_omap3_beagleboard_sram
-FILE_barebox-beagleboard.img = start_omap3_beagleboard_sdram.pblx
+pblb-$(CONFIG_MACH_BEAGLE) += start_omap3_beagleboard_sdram start_omap3_beagleboard_sram
+FILE_barebox-beagleboard.img = start_omap3_beagleboard_sdram.pblb
 omap3-barebox-$(CONFIG_MACH_BEAGLE) += barebox-beagleboard.img
-FILE_barebox-beagleboard-mlo.img = start_omap3_beagleboard_sram.pblx.omap3_mlo
+FILE_barebox-beagleboard-mlo.img = start_omap3_beagleboard_sram.pblb.omap3_mlo
 omap3-mlo-$(CONFIG_MACH_BEAGLE) += barebox-beagleboard-mlo.img
 
 ifdef CONFIG_OMAP_BUILD_IFT
diff --git a/images/Makefile.rockchip b/images/Makefile.rockchip
index 3f1ee57db2..16303164ae 100644
--- a/images/Makefile.rockchip
+++ b/images/Makefile.rockchip
@@ -2,10 +2,10 @@
 # barebox image generation Makefile for Rockchip images
 #
 
-pblx-$(CONFIG_MACH_RADXA_ROCK) += start_radxa_rock
-FILE_barebox-radxa-rock.img = start_radxa_rock.pblx
+pblb-$(CONFIG_MACH_RADXA_ROCK) += start_radxa_rock
+FILE_barebox-radxa-rock.img = start_radxa_rock.pblb
 image-$(CONFIG_MACH_RADXA_ROCK) += barebox-radxa-rock.img
 
-pblx-$(CONFIG_MACH_PHYTEC_SOM_RK3288) += start_rk3288_phycore_som
-FILE_barebox-rk3288-phycore-som.img = start_rk3288_phycore_som.pblx
+pblb-$(CONFIG_MACH_PHYTEC_SOM_RK3288) += start_rk3288_phycore_som
+FILE_barebox-rk3288-phycore-som.img = start_rk3288_phycore_som.pblb
 image-$(CONFIG_MACH_PHYTEC_SOM_RK3288) += barebox-rk3288-phycore-som.img
diff --git a/images/Makefile.socfpga b/images/Makefile.socfpga
index a075b36702..13581add11 100644
--- a/images/Makefile.socfpga
+++ b/images/Makefile.socfpga
@@ -25,44 +25,44 @@ $(obj)/%.socfpga-ocram-img: $(obj)/%.pblb $(obj)/barebox.z FORCE
 	$(call if_changed,socfpga_ocram_img,$(@F))
 
 # ----------------------- Cyclone5 based boards ---------------------------
-pblx-$(CONFIG_MACH_SOCFPGA_ALTERA_SOCDK) += start_socfpga_socdk_xload
-FILE_barebox-socfpga-socdk-xload.img = start_socfpga_socdk_xload.pblx.socfpgaimg
+pblb-$(CONFIG_MACH_SOCFPGA_ALTERA_SOCDK) += start_socfpga_socdk_xload
+FILE_barebox-socfpga-socdk-xload.img = start_socfpga_socdk_xload.pblb.socfpgaimg
 socfpga-xload-$(CONFIG_MACH_SOCFPGA_ALTERA_SOCDK) += barebox-socfpga-socdk-xload.img
 
-pblx-$(CONFIG_MACH_SOCFPGA_ALTERA_SOCDK) += start_socfpga_socdk
-FILE_barebox-socfpga-socdk.img = start_socfpga_socdk.pblx
+pblb-$(CONFIG_MACH_SOCFPGA_ALTERA_SOCDK) += start_socfpga_socdk
+FILE_barebox-socfpga-socdk.img = start_socfpga_socdk.pblb
 socfpga-barebox-$(CONFIG_MACH_SOCFPGA_ALTERA_SOCDK) += barebox-socfpga-socdk.img
 
-pblx-$(CONFIG_MACH_SOCFPGA_TERASIC_DE0_NANO_SOC) += start_socfpga_de0_nano_soc_xload
-FILE_barebox-socfpga-de0_nano_soc-xload.img = start_socfpga_de0_nano_soc_xload.pblx.socfpgaimg
+pblb-$(CONFIG_MACH_SOCFPGA_TERASIC_DE0_NANO_SOC) += start_socfpga_de0_nano_soc_xload
+FILE_barebox-socfpga-de0_nano_soc-xload.img = start_socfpga_de0_nano_soc_xload.pblb.socfpgaimg
 socfpga-xload-$(CONFIG_MACH_SOCFPGA_TERASIC_DE0_NANO_SOC) += barebox-socfpga-de0_nano_soc-xload.img
 
-pblx-$(CONFIG_MACH_SOCFPGA_TERASIC_DE0_NANO_SOC) += start_socfpga_de0_nano_soc
-FILE_barebox-socfpga-de0_nano_soc.img = start_socfpga_de0_nano_soc.pblx
+pblb-$(CONFIG_MACH_SOCFPGA_TERASIC_DE0_NANO_SOC) += start_socfpga_de0_nano_soc
+FILE_barebox-socfpga-de0_nano_soc.img = start_socfpga_de0_nano_soc.pblb
 socfpga-barebox-$(CONFIG_MACH_SOCFPGA_TERASIC_DE0_NANO_SOC) += barebox-socfpga-de0_nano_soc.img
 
-pblx-$(CONFIG_MACH_SOCFPGA_REFLEX_ACHILLES) += start_socfpga_achilles
+pblb-$(CONFIG_MACH_SOCFPGA_REFLEX_ACHILLES) += start_socfpga_achilles
 FILE_barebox-socfpga-achilles.img = start_socfpga_achilles.socfpga-ocram-img
 socfpga-barebox-$(CONFIG_MACH_SOCFPGA_REFLEX_ACHILLES) += barebox-socfpga-achilles.img
 
-pblx-$(CONFIG_MACH_SOCFPGA_REFLEX_ACHILLES) += start_socfpga_achilles_bringup
-FILE_barebox-socfpga-achilles-bringup.img = start_socfpga_achilles_bringup.pblx
+pblb-$(CONFIG_MACH_SOCFPGA_REFLEX_ACHILLES) += start_socfpga_achilles_bringup
+FILE_barebox-socfpga-achilles-bringup.img = start_socfpga_achilles_bringup.pblb
 socfpga-barebox-$(CONFIG_MACH_SOCFPGA_REFLEX_ACHILLES) += barebox-socfpga-achilles-bringup.img
 
-pblx-$(CONFIG_MACH_SOCFPGA_TERASIC_SOCKIT) += start_socfpga_sockit_xload
-FILE_barebox-socfpga-sockit-xload.img = start_socfpga_sockit_xload.pblx.socfpgaimg
+pblb-$(CONFIG_MACH_SOCFPGA_TERASIC_SOCKIT) += start_socfpga_sockit_xload
+FILE_barebox-socfpga-sockit-xload.img = start_socfpga_sockit_xload.pblb.socfpgaimg
 socfpga-xload-$(CONFIG_MACH_SOCFPGA_TERASIC_SOCKIT) += barebox-socfpga-sockit-xload.img
 
-pblx-$(CONFIG_MACH_SOCFPGA_TERASIC_SOCKIT) += start_socfpga_sockit
-FILE_barebox-socfpga-sockit.img = start_socfpga_sockit.pblx
+pblb-$(CONFIG_MACH_SOCFPGA_TERASIC_SOCKIT) += start_socfpga_sockit
+FILE_barebox-socfpga-sockit.img = start_socfpga_sockit.pblb
 socfpga-barebox-$(CONFIG_MACH_SOCFPGA_TERASIC_SOCKIT) += barebox-socfpga-sockit.img
 
-pblx-$(CONFIG_MACH_SOCFPGA_EBV_SOCRATES) += start_socfpga_socrates_xload
-FILE_barebox-socfpga-socrates-xload.img = start_socfpga_socrates_xload.pblx.socfpgaimg
+pblb-$(CONFIG_MACH_SOCFPGA_EBV_SOCRATES) += start_socfpga_socrates_xload
+FILE_barebox-socfpga-socrates-xload.img = start_socfpga_socrates_xload.pblb.socfpgaimg
 socfpga-xload-$(CONFIG_MACH_SOCFPGA_EBV_SOCRATES) += barebox-socfpga-socrates-xload.img
 
-pblx-$(CONFIG_MACH_SOCFPGA_EBV_SOCRATES) += start_socfpga_socrates
-FILE_barebox-socfpga-socrates.img = start_socfpga_socrates.pblx
+pblb-$(CONFIG_MACH_SOCFPGA_EBV_SOCRATES) += start_socfpga_socrates
+FILE_barebox-socfpga-socrates.img = start_socfpga_socrates.pblb
 socfpga-barebox-$(CONFIG_MACH_SOCFPGA_EBV_SOCRATES) += barebox-socfpga-socrates.img
 
 ifdef CONFIG_ARCH_SOCFPGA_XLOAD
diff --git a/images/Makefile.tegra b/images/Makefile.tegra
index c1e0b20573..f5b5841e06 100644
--- a/images/Makefile.tegra
+++ b/images/Makefile.tegra
@@ -29,64 +29,64 @@ $(obj)/%.t124img: $(obj)/% FORCE
 	$(call if_changed,tegra124_image)
 
 # ----------------------- Tegra20 based boards ---------------------------
-pblx-$(CONFIG_MACH_TOSHIBA_AC100) += start_toshiba_ac100
-FILE_barebox-tegra20-toshiba-ac100-usbloader.img = start_toshiba_ac100.pblx
+pblb-$(CONFIG_MACH_TOSHIBA_AC100) += start_toshiba_ac100
+FILE_barebox-tegra20-toshiba-ac100-usbloader.img = start_toshiba_ac100.pblb
 image-$(CONFIG_MACH_TOSHIBA_AC100) += barebox-tegra20-toshiba-ac100-usbloader.img
 
-pblx-$(CONFIG_MACH_TORADEX_COLIBRI_T20) += start_colibri_t20_256_usbload
-FILE_barebox-tegra20-toradex-colibri-t20-256-usbloader-iris.img = start_colibri_t20_256_usbload.pblx
+pblb-$(CONFIG_MACH_TORADEX_COLIBRI_T20) += start_colibri_t20_256_usbload
+FILE_barebox-tegra20-toradex-colibri-t20-256-usbloader-iris.img = start_colibri_t20_256_usbload.pblb
 image-$(CONFIG_MACH_TORADEX_COLIBRI_T20) += barebox-tegra20-toradex-colibri-t20-256-usbloader-iris.img
 
-pblx-$(CONFIG_MACH_TORADEX_COLIBRI_T20) += start_colibri_t20_256_hsmmc
-BCT_start_colibri_t20_256_hsmmc.pblx.t20img = $(objboard)/toradex-colibri-t20/colibri-t20_256_hsmmc.bct
-FILE_barebox-tegra20-toradex-colibri-t20-256-hsmmc-iris.img = start_colibri_t20_256_hsmmc.pblx.t20img
+pblb-$(CONFIG_MACH_TORADEX_COLIBRI_T20) += start_colibri_t20_256_hsmmc
+BCT_start_colibri_t20_256_hsmmc.pblb.t20img = $(objboard)/toradex-colibri-t20/colibri-t20_256_hsmmc.bct
+FILE_barebox-tegra20-toradex-colibri-t20-256-hsmmc-iris.img = start_colibri_t20_256_hsmmc.pblb.t20img
 image-$(CONFIG_MACH_TORADEX_COLIBRI_T20) += barebox-tegra20-toradex-colibri-t20-256-hsmmc-iris.img
 
-pblx-$(CONFIG_MACH_TORADEX_COLIBRI_T20) += start_colibri_t20_256_v11_nand
-BCT_start_colibri_t20_256_v11_nand.pblx.t20img = $(objboard)/toradex-colibri-t20/colibri-t20_256_v11_nand.bct
-FILE_barebox-tegra20-toradex-colibri-t20-256-v11-nand-iris.img = start_colibri_t20_256_v11_nand.pblx.t20img
+pblb-$(CONFIG_MACH_TORADEX_COLIBRI_T20) += start_colibri_t20_256_v11_nand
+BCT_start_colibri_t20_256_v11_nand.pblb.t20img = $(objboard)/toradex-colibri-t20/colibri-t20_256_v11_nand.bct
+FILE_barebox-tegra20-toradex-colibri-t20-256-v11-nand-iris.img = start_colibri_t20_256_v11_nand.pblb.t20img
 image-$(CONFIG_MACH_TORADEX_COLIBRI_T20) += barebox-tegra20-toradex-colibri-t20-256-v11-nand-iris.img
 
-pblx-$(CONFIG_MACH_TORADEX_COLIBRI_T20) += start_colibri_t20_256_v12_nand
-BCT_start_colibri_t20_256_v12_nand.pblx.t20img = $(objboard)/toradex-colibri-t20/colibri-t20_256_v12_nand.bct
-FILE_barebox-tegra20-toradex-colibri-t20-256-v12-nand-iris.img = start_colibri_t20_256_v12_nand.pblx.t20img
+pblb-$(CONFIG_MACH_TORADEX_COLIBRI_T20) += start_colibri_t20_256_v12_nand
+BCT_start_colibri_t20_256_v12_nand.pblb.t20img = $(objboard)/toradex-colibri-t20/colibri-t20_256_v12_nand.bct
+FILE_barebox-tegra20-toradex-colibri-t20-256-v12-nand-iris.img = start_colibri_t20_256_v12_nand.pblb.t20img
 image-$(CONFIG_MACH_TORADEX_COLIBRI_T20) += barebox-tegra20-toradex-colibri-t20-256-v12-nand-iris.img
 
-pblx-$(CONFIG_MACH_TORADEX_COLIBRI_T20) += start_colibri_t20_512_usbload
-FILE_barebox-tegra20-toradex-colibri-t20-512-usbloader-iris.img = start_colibri_t20_512_usbload.pblx
+pblb-$(CONFIG_MACH_TORADEX_COLIBRI_T20) += start_colibri_t20_512_usbload
+FILE_barebox-tegra20-toradex-colibri-t20-512-usbloader-iris.img = start_colibri_t20_512_usbload.pblb
 image-$(CONFIG_MACH_TORADEX_COLIBRI_T20) += barebox-tegra20-toradex-colibri-t20-512-usbloader-iris.img
 
-pblx-$(CONFIG_MACH_TORADEX_COLIBRI_T20) += start_colibri_t20_512_hsmmc
-BCT_start_colibri_t20_512_hsmmc.pblx.t20img = $(objboard)/toradex-colibri-t20/colibri-t20_512_hsmmc.bct
-FILE_barebox-tegra20-toradex-colibri-t20-512-hsmmc-iris.img = start_colibri_t20_512_hsmmc.pblx.t20img
+pblb-$(CONFIG_MACH_TORADEX_COLIBRI_T20) += start_colibri_t20_512_hsmmc
+BCT_start_colibri_t20_512_hsmmc.pblb.t20img = $(objboard)/toradex-colibri-t20/colibri-t20_512_hsmmc.bct
+FILE_barebox-tegra20-toradex-colibri-t20-512-hsmmc-iris.img = start_colibri_t20_512_hsmmc.pblb.t20img
 image-$(CONFIG_MACH_TORADEX_COLIBRI_T20) += barebox-tegra20-toradex-colibri-t20-512-hsmmc-iris.img
 
-pblx-$(CONFIG_MACH_TORADEX_COLIBRI_T20) += start_colibri_t20_512_v11_nand
-BCT_start_colibri_t20_512_v11_nand.pblx.t20img = $(objboard)/toradex-colibri-t20/colibri-t20_512_v11_nand.bct
-FILE_barebox-tegra20-toradex-colibri-t20-512-v11-nand-iris.img = start_colibri_t20_512_v11_nand.pblx.t20img
+pblb-$(CONFIG_MACH_TORADEX_COLIBRI_T20) += start_colibri_t20_512_v11_nand
+BCT_start_colibri_t20_512_v11_nand.pblb.t20img = $(objboard)/toradex-colibri-t20/colibri-t20_512_v11_nand.bct
+FILE_barebox-tegra20-toradex-colibri-t20-512-v11-nand-iris.img = start_colibri_t20_512_v11_nand.pblb.t20img
 image-$(CONFIG_MACH_TORADEX_COLIBRI_T20) += barebox-tegra20-toradex-colibri-t20-512-v11-nand-iris.img
 
-pblx-$(CONFIG_MACH_TORADEX_COLIBRI_T20) += start_colibri_t20_512_v12_nand
-BCT_start_colibri_t20_512_v12_nand.pblx.t20img = $(objboard)/toradex-colibri-t20/colibri-t20_512_v12_nand.bct
-FILE_barebox-tegra20-toradex-colibri-t20-512-v12-nand-iris.img = start_colibri_t20_512_v12_nand.pblx.t20img
+pblb-$(CONFIG_MACH_TORADEX_COLIBRI_T20) += start_colibri_t20_512_v12_nand
+BCT_start_colibri_t20_512_v12_nand.pblb.t20img = $(objboard)/toradex-colibri-t20/colibri-t20_512_v12_nand.bct
+FILE_barebox-tegra20-toradex-colibri-t20-512-v12-nand-iris.img = start_colibri_t20_512_v12_nand.pblb.t20img
 image-$(CONFIG_MACH_TORADEX_COLIBRI_T20) += barebox-tegra20-toradex-colibri-t20-512-v12-nand-iris.img
 
 # ----------------------- Tegra30 based boards ---------------------------
-pblx-$(CONFIG_MACH_NVIDIA_BEAVER) += start_nvidia_beaver
-FILE_barebox-tegra30-nvidia-beaver-usbloader.img = start_nvidia_beaver.pblx
+pblb-$(CONFIG_MACH_NVIDIA_BEAVER) += start_nvidia_beaver
+FILE_barebox-tegra30-nvidia-beaver-usbloader.img = start_nvidia_beaver.pblb
 image-$(CONFIG_MACH_NVIDIA_BEAVER) += barebox-tegra30-nvidia-beaver-usbloader.img
 
-pblx-$(CONFIG_MACH_NVIDIA_BEAVER) += start_nvidia_beaver
-BCT_start_nvidia_beaver.pblx.t30img = $(objboard)/nvidia-beaver/beaver-2gb-emmc.bct
-FILE_barebox-tegra30-nvidia-beaver-emmc.img = start_nvidia_beaver.pblx.t30img
+pblb-$(CONFIG_MACH_NVIDIA_BEAVER) += start_nvidia_beaver
+BCT_start_nvidia_beaver.pblb.t30img = $(objboard)/nvidia-beaver/beaver-2gb-emmc.bct
+FILE_barebox-tegra30-nvidia-beaver-emmc.img = start_nvidia_beaver.pblb.t30img
 image-$(CONFIG_MACH_NVIDIA_BEAVER) += barebox-tegra30-nvidia-beaver-emmc.img
 
 # ----------------------- Tegra124 based boards --------------------------
-pblx-$(CONFIG_MACH_NVIDIA_JETSON) += start_nvidia_jetson
-FILE_barebox-tegra124-nvidia-jetson-tk1-usbloader.img = start_nvidia_jetson.pblx
+pblb-$(CONFIG_MACH_NVIDIA_JETSON) += start_nvidia_jetson
+FILE_barebox-tegra124-nvidia-jetson-tk1-usbloader.img = start_nvidia_jetson.pblb
 image-$(CONFIG_MACH_NVIDIA_JETSON) += barebox-tegra124-nvidia-jetson-tk1-usbloader.img
 
-pblx-$(CONFIG_MACH_NVIDIA_JETSON) += start_nvidia_jetson
-BCT_start_nvidia_jetson.pblx.t124img = $(objboard)/nvidia-jetson-tk1/jetson-tk1-2gb-emmc.bct
-FILE_barebox-tegra124-nvidia-jetson-tk1-emmc.img = start_nvidia_jetson.pblx.t124img
+pblb-$(CONFIG_MACH_NVIDIA_JETSON) += start_nvidia_jetson
+BCT_start_nvidia_jetson.pblb.t124img = $(objboard)/nvidia-jetson-tk1/jetson-tk1-2gb-emmc.bct
+FILE_barebox-tegra124-nvidia-jetson-tk1-emmc.img = start_nvidia_jetson.pblb.t124img
 image-$(CONFIG_MACH_NVIDIA_JETSON) += barebox-tegra124-nvidia-jetson-tk1-emmc.img
diff --git a/images/Makefile.vexpress b/images/Makefile.vexpress
index 0f12dc12a5..d2af191845 100644
--- a/images/Makefile.vexpress
+++ b/images/Makefile.vexpress
@@ -2,10 +2,10 @@
 # barebox image generation Makefile for VExpress images
 #
 
-pblx-$(CONFIG_MACH_VEXPRESS) += start_vexpress_ca9
-FILE_barebox-vexpress-ca9.img = start_vexpress_ca9.pblx
+pblb-$(CONFIG_MACH_VEXPRESS) += start_vexpress_ca9
+FILE_barebox-vexpress-ca9.img = start_vexpress_ca9.pblb
 image-$(CONFIG_MACH_VEXPRESS) += barebox-vexpress-ca9.img
 
-pblx-$(CONFIG_MACH_VEXPRESS) += start_vexpress_ca15
-FILE_barebox-vexpress-ca15.img = start_vexpress_ca15.pblx
+pblb-$(CONFIG_MACH_VEXPRESS) += start_vexpress_ca15
+FILE_barebox-vexpress-ca15.img = start_vexpress_ca15.pblb
 image-$(CONFIG_MACH_VEXPRESS) += barebox-vexpress-ca15.img
diff --git a/images/piggy.S b/images/piggy.S
new file mode 100644
index 0000000000..84396ae4ec
--- /dev/null
+++ b/images/piggy.S
@@ -0,0 +1,6 @@
+        .section .piggydata,#alloc
+        .globl  input_data
+input_data:
+        .incbin "images/barebox.z"
+        .globl  input_data_end
+input_data_end:
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
