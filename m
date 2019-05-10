Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOyua-0008Ok-SU
 for barebox@lists.infradead.org; Fri, 10 May 2019 06:21:54 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 10 May 2019 08:21:26 +0200
Message-Id: <20190510062135.11534-6-s.hauer@pengutronix.de>
In-Reply-To: <20190510062135.11534-1-s.hauer@pengutronix.de>
References: <20190510062135.11534-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 05/14] ARM: Layerscape: Add QSPI boot support
To: Barebox List <barebox@lists.infradead.org>

Booting Layerscape from QSPI is a bit tricky and the approach we take is
different from the one U-Boot has taken, so it's worth writing and
reading the following explanation.

The QSPI controller can map the Flash contents into the memory space (On
LS1046a at 0x40000000). The PBL unit uses this to read the RCW from this
memory window. The Layerscape SoCs have a PowerPC history, so it seemed
appropriate for the designers to let the QSPI controller operate in
big endian mode by default. To let the SoC see the correct RCW we have
to write the RCW and PBI data with be64 endianess. Our PBL image tool
pokes the initial binary into the SoC internal SRAM using PBI data as
done with SD/MMC boot aswell. barebox then changes the QSPI controller
endianess to le64 to properly read the barebox binary (placed at an
flash offset of 128KiB, so found in memory at 0x40020000) into SDRAM and
jumps to it.

U-Boot has another approach. Here the initial binary is executed in
place directly at 0x40100000. This means the QSPI controller endianess
must be swapped inside the PBI data. This has the effect that the whole
RCW/PBI data must be 64bit endianess swapped *except* the very last word
of the PBI data which contains the CRC command and is read already with
changed endianess. As a conclusion when porting QSPI PBI files from U-Boot
to barebox skip commands changing the endianess in the QSPI controller
and make sure the image is executed in internal SRAM and not in the
Flash memory window.

Lines like this should be removed:

09550000 000f400c

This sets the binary execution address:

09570604 40100000

For barebox it should be changed to 0x10000000.

As a result the PBI files can probably be unified between SD and QSPI
boot.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-layerscape/Makefile             |  1 +
 arch/arm/mach-layerscape/include/mach/xload.h |  2 +
 arch/arm/mach-layerscape/xload-qspi.c         | 37 +++++++++++++++++++
 images/Makefile.layerscape                    |  6 +++
 scripts/pblimage.c                            | 17 ++++++++-
 5 files changed, 62 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/mach-layerscape/xload-qspi.c

diff --git a/arch/arm/mach-layerscape/Makefile b/arch/arm/mach-layerscape/Makefile
index ad4e2f7af3..4705154fb1 100644
--- a/arch/arm/mach-layerscape/Makefile
+++ b/arch/arm/mach-layerscape/Makefile
@@ -3,3 +3,4 @@ lwl-y += lowlevel.o errata.o
 lwl-$(CONFIG_ARCH_LS1046) += lowlevel-ls1046a.o
 obj-y += icid.o
 obj-pbl-y += boot.o
+pbl-y += xload-qspi.o
diff --git a/arch/arm/mach-layerscape/include/mach/xload.h b/arch/arm/mach-layerscape/include/mach/xload.h
index fedd36e020..94756ed13d 100644
--- a/arch/arm/mach-layerscape/include/mach/xload.h
+++ b/arch/arm/mach-layerscape/include/mach/xload.h
@@ -2,5 +2,7 @@
 #define __MACH_XLOAD_H
 
 int ls1046a_esdhc_start_image(unsigned long r0, unsigned long r1, unsigned long r2);
+int ls1046a_qspi_start_image(unsigned long r0, unsigned long r1,
+					     unsigned long r2);
 
 #endif /* __MACH_XLOAD_H */
diff --git a/arch/arm/mach-layerscape/xload-qspi.c b/arch/arm/mach-layerscape/xload-qspi.c
new file mode 100644
index 0000000000..c76780a0e8
--- /dev/null
+++ b/arch/arm/mach-layerscape/xload-qspi.c
@@ -0,0 +1,37 @@
+// SPDX-License-Identifier: GPL-2.0
+
+#include <common.h>
+#include <soc/fsl/immap_lsch2.h>
+#include <asm-generic/sections.h>
+#include <asm/cache.h>
+#include <mach/xload.h>
+#include <mach/layerscape.h>
+
+/*
+ * The offset of the 2nd stage image in the output file. This must match with the
+ * offset the pblimage tool puts barebox to.
+ */
+#define BAREBOX_START	(128 * 1024)
+
+int ls1046a_qspi_start_image(unsigned long r0, unsigned long r1,
+					     unsigned long r2)
+{
+	void *qspi_reg_base = IOMEM(LSCH2_QSPI0_BASE_ADDR);
+	void *membase = (void *)LS1046A_DDR_SDRAM_BASE;
+	void *qspi_mem_base = IOMEM(0x40000000);
+	void (*barebox)(unsigned long, unsigned long, unsigned long) = membase;
+
+	/* Switch controller into little endian mode */
+	out_be32(qspi_reg_base, 0x000f400c);
+
+	memcpy(membase, qspi_mem_base + BAREBOX_START, barebox_image_size);
+	icache_invalidate();
+
+	printf("Starting barebox\n");
+
+	barebox(r0, r1, r2);
+
+	printf("failed\n");
+
+	return -EIO;
+}
diff --git a/images/Makefile.layerscape b/images/Makefile.layerscape
index 59f672791b..38e6648729 100644
--- a/images/Makefile.layerscape
+++ b/images/Makefile.layerscape
@@ -14,6 +14,12 @@ quiet_cmd_lspbl_image = LSPBL-IMG $@
 			$(objtree)/scripts/pblimage -o $@ -r $(lspbl-rcw-tmp) \
 			-m $($(patsubst $(obj)/%.pblb,PBL_CODE_SIZE_%,$<)) -p $(lspbl-pbi-tmp) -i $<
 
+quiet_cmd_lspbl_spi_image = LSPBL-SPI-IMG $@
+      cmd_lspbl_spi_image = $(CPP) $(lspbl_cfg_cpp_flags) -o $(lspbl-rcw-tmp) $(word 2,$^) ; \
+			    $(CPP) $(lspbl_cfg_cpp_flags) -o $(lspbl-pbi-tmp) $(word 3,$^) ; \
+			    $(objtree)/scripts/pblimage -o $@ -r $(lspbl-rcw-tmp) -s \
+			    -m $($(patsubst $(obj)/%.pblb,PBL_CODE_SIZE_%,$<)) -p $(lspbl-pbi-tmp) -i $<
+
 pbl-$(CONFIG_MACH_LS1046ARDB) += start_ls1046ardb.pbl
 $(obj)/barebox-ls1046ardb-2nd.image: $(obj)/start_ls1046ardb.pblb
 	$(call if_changed,shipped)
diff --git a/scripts/pblimage.c b/scripts/pblimage.c
index 56256260c8..73c0169ac1 100644
--- a/scripts/pblimage.c
+++ b/scripts/pblimage.c
@@ -13,6 +13,7 @@
 #include <stdint.h>
 #include <getopt.h>
 #include <endian.h>
+#include <byteswap.h>
 
 #define roundup(x, y)		((((x) + ((y) - 1)) / (y)) * (y))
 #define PBL_ACS_CONT_CMD	0x81000000
@@ -49,6 +50,7 @@ static int pbl_end;
 static int image_size;
 static int out_fd;
 static int in_fd;
+static int spiimage;
 
 static uint32_t pbl_cmd_initaddr;
 static uint32_t pbi_crc_cmd1;
@@ -229,6 +231,7 @@ static void add_end_cmd(void)
 static void pbl_load_image(void)
 {
 	int size;
+	uint64_t *buf64 = (void *)mem_buf;
 
 	/* parse the rcw.cfg file. */
 	pbl_parser(rcwfile);
@@ -245,6 +248,15 @@ static void pbl_load_image(void)
 
 	add_end_cmd();
 
+	if (spiimage) {
+		int i;
+
+		pbl_size = roundup(pbl_size, 8);
+
+		for (i = 0; i < pbl_size / 8; i++)
+			buf64[i] = bswap_64(buf64[i]);
+	}
+
 	size = pbl_size;
 
 	if (write(out_fd, (const void *)&mem_buf, size) != size) {
@@ -338,7 +350,7 @@ int main(int argc, char *argv[])
 	int opt, ret;
 	off_t pos;
 
-	while ((opt = getopt(argc, argv, "i:r:p:o:m:")) != -1) {
+	while ((opt = getopt(argc, argv, "i:r:p:o:m:s")) != -1) {
 		switch (opt) {
 		case 'i':
 			infile = optarg;
@@ -355,6 +367,9 @@ int main(int argc, char *argv[])
 		case 'm':
 			pbl_end = atoi(optarg);
 			break;
+		case 's':
+			spiimage = 1;
+			break;
 		default:
 			exit(EXIT_FAILURE);
 		}
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
