Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WksCy-0007fK-H1
 for barebox@lists.infradead.org; Thu, 15 May 2014 09:44:13 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 15 May 2014 11:43:50 +0200
Message-Id: <1400147030-16936-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] ARM: AM3xxx: Add support for building AM33xx spi images
To: barebox@lists.infradead.org

From: Jan Luebbe <jlu@pengutronix.de>

mk-am35xx-spi-image can only build AM35xx images. Rename
the tool to mk-am3xxx-spi-image and add support for the AM33xx.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Makefile                                  |  7 ++-
 scripts/Makefile                                   |  2 +-
 ...mk-am35xx-spi-image.c => mk-am3xxx-spi-image.c} | 52 ++++++++++++++++++----
 3 files changed, 50 insertions(+), 11 deletions(-)
 rename scripts/{mk-am35xx-spi-image.c => mk-am3xxx-spi-image.c} (77%)

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 3312a49..c576999 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -167,13 +167,16 @@ KBUILD_IMAGE := barebox.ubl
 endif
 
 quiet_cmd_am35xx_spi_image = SPI-IMG $@
-      cmd_am35xx_spi_image = scripts/mk-am35xx-spi-image -a $(TEXT_BASE) $< > $@
+      cmd_am35xx_spi_image = scripts/mk-am3xxx-spi-image -s am35xx -a $(TEXT_BASE) $< > $@
 
 barebox.spi: $(KBUILD_BINARY) FORCE
 	$(call if_changed,am35xx_spi_image)
 
+MLO.spi: MLO FORCE
+	$(call if_changed,am35xx_spi_image)
+
 ifeq ($(CONFIG_OMAP_BUILD_SPI),y)
-KBUILD_IMAGE := barebox.spi
+KBUILD_IMAGE := MLO.spi
 endif
 
 quiet_cmd_zynq_image = ZYNQ-IMG $@
diff --git a/scripts/Makefile b/scripts/Makefile
index 3908c1d..d8925da 100644
--- a/scripts/Makefile
+++ b/scripts/Makefile
@@ -13,7 +13,7 @@ hostprogs-y                      += kernel-install
 hostprogs-$(CONFIG_KALLSYMS)     += kallsyms
 hostprogs-$(CONFIG_ARCH_MVEBU)   += kwbimage kwboot
 hostprogs-$(CONFIG_ARCH_NETX)    += gen_netx_image
-hostprogs-$(CONFIG_ARCH_OMAP)    += omap_signGP mk-am35xx-spi-image
+hostprogs-$(CONFIG_ARCH_OMAP)    += omap_signGP mk-am3xxx-spi-image
 hostprogs-$(CONFIG_ARCH_S5PCxx)  += s5p_cksum
 hostprogs-$(CONFIG_ARCH_DAVINCI) += mkublheader
 hostprogs-$(CONFIG_ARCH_ZYNQ)	 += zynq_mkimage
diff --git a/scripts/mk-am35xx-spi-image.c b/scripts/mk-am3xxx-spi-image.c
similarity index 77%
rename from scripts/mk-am35xx-spi-image.c
rename to scripts/mk-am3xxx-spi-image.c
index 74e79db..dcb7060 100644
--- a/scripts/mk-am35xx-spi-image.c
+++ b/scripts/mk-am3xxx-spi-image.c
@@ -48,32 +48,66 @@
 #include <getopt.h>
 #include <endian.h>
 
+enum soc {
+	SOC_AM33XX,
+	SOC_AM35XX,
+	SOC_UNKNOWN,
+};
+
+static char *soc_names[] = {
+	[SOC_AM33XX] = "am33xx",
+	[SOC_AM35XX] = "am35xx",
+};
+
 void usage(char *prgname)
 {
 	printf("usage: %s [OPTION] FILE > IMAGE\n"
 	       "\n"
 	       "options:\n"
-	       "  -a <address> memory address for the loaded image in SRAM\n",
+	       "  -a <address> memory address for the loaded image in SRAM\n"
+	       "  -s <soc>     SoC to use (am33xx, am35xx)\n",
 	       prgname);
 }
 
 int main(int argc, char *argv[])
 {
 	FILE *input;
-	int opt;
+	int opt, i;
 	off_t pos;
 	size_t size;
 	uint32_t addr = 0x40200000;
 	uint32_t temp;
+	enum soc soc = SOC_UNKNOWN;
+	char *socname = NULL;
 
-	while((opt = getopt(argc, argv, "a:")) != -1) {
+	while((opt = getopt(argc, argv, "a:s:")) != -1) {
 		switch (opt) {
 		case 'a':
 			addr = strtoul(optarg, NULL, 0);
 			break;
+		case 's':
+			socname = optarg;
+			break;
+		}
+	}
+
+	if (!socname) {
+		fprintf(stderr, "SoC not specified. Use -s <soc>\n");
+		exit(EXIT_FAILURE);
+	}
+
+	for (i = 0; i < 2; i++) {
+		if (!strcmp(socname, soc_names[i])) {
+			soc = i;
+			break;
 		}
 	}
 
+	if (soc == SOC_UNKNOWN) {
+		fprintf(stderr, "SoC %s unknown\n", socname);
+		exit(EXIT_FAILURE);
+	}
+
 	if (optind >= argc) {
 		usage(argv[0]);
 		exit(1);
@@ -108,12 +142,14 @@ int main(int argc, char *argv[])
 	pos = (pos + 3) & ~3;
 
 	/* image size */
-	temp = htobe32((uint32_t)pos);
-	fwrite(&temp, sizeof(uint32_t), 1, stdout);
+	if (soc == SOC_AM35XX) {
+		temp = htobe32((uint32_t)pos);
+		fwrite(&temp, sizeof(uint32_t), 1, stdout);
 
-	/* memory address */
-	temp = htobe32(addr);
-	fwrite(&temp, sizeof(uint32_t), 1, stdout);
+		/* memory address */
+		temp = htobe32(addr);
+		fwrite(&temp, sizeof(uint32_t), 1, stdout);
+	}
 
 	for (;;) {
 		size = fread(&temp, 1, sizeof(uint32_t), input);
-- 
2.0.0.rc0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
