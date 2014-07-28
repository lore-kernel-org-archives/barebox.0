Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22d.google.com ([2a00:1450:4010:c04::22d])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XBsHN-0002Xr-2M
 for barebox@lists.infradead.org; Mon, 28 Jul 2014 21:16:22 +0000
Received: by mail-lb0-f173.google.com with SMTP id p9so6294396lbv.32
 for <barebox@lists.infradead.org>; Mon, 28 Jul 2014 14:16:05 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue, 29 Jul 2014 01:15:29 +0400
Message-Id: <1406582130-10116-11-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1406582130-10116-1-git-send-email-antonynpavlov@gmail.com>
References: <1406582130-10116-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH v2 10/11] ARM: add Canon A1100 DISKBOOT.BIN image generation
 stuff
To: barebox@lists.infradead.org

This commit makes it possible to run barebox on real
Canon A1100 camera.

The 'dancingbits' utility imported from CHDK software;
see http://chdk.wikia.com/ for details.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 .gitignore            |  1 +
 Makefile              |  2 +-
 arch/arm/Makefile     |  8 +++++-
 scripts/.gitignore    |  1 +
 scripts/Makefile      |  1 +
 scripts/dancingbits.c | 77 +++++++++++++++++++++++++++++++++++++++++++++++++++
 scripts/dancingbits.h | 20 +++++++++++++
 scripts/mkdiskboot    | 13 +++++++++
 8 files changed, 121 insertions(+), 2 deletions(-)

diff --git a/.gitignore b/.gitignore
index a62e08c..39e10b1 100644
--- a/.gitignore
+++ b/.gitignore
@@ -48,6 +48,7 @@ barebox.kwb
 barebox.kwbuart
 barebox.efi
 barebox.canon-a1100.bin
+DISKBOOT-A1100.BIN
 barebox-flash-image
 System.map
 Module.symvers
diff --git a/Makefile b/Makefile
index 1ec0bfd..932bd4a 100644
--- a/Makefile
+++ b/Makefile
@@ -994,7 +994,7 @@ CLEAN_FILES +=	barebox System.map include/generated/barebox_default_env.h \
 		scripts/bareboxenv-target barebox-flash-image \
 		barebox.srec barebox.s5p barebox.ubl barebox.zynq \
 		barebox.uimage barebox.spi barebox.kwb barebox.kwbuart \
-		barebox.efi barebox.canon-a1100.bin
+		barebox.efi barebox.canon-a1100.bin DISKBOOT-A1100.BIN
 
 # Directories & files removed with 'make mrproper'
 MRPROPER_DIRS  += include/config include2 usr/include
diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 337aef1..6960397 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -191,8 +191,14 @@ quiet_cmd_canon_a1100_image = DD      $@
 barebox.canon-a1100.bin: $(KBUILD_BINARY) FORCE
 	$(call if_changed,canon_a1100_image)
 
+quiet_cmd_canon_a1100_diskboot_image = DB      $@
+      cmd_canon_a1100_diskboot_image = scripts/mkdiskboot $< $@ || \
+	echo "WARNING: Couldn't create Canon A1100 DISKBOOT image due to previous errors."
+DISKBOOT-A1100.BIN: $(KBUILD_BINARY) FORCE
+	$(call if_changed,canon_a1100_diskboot_image)
+
 ifeq ($(CONFIG_MACH_CANON_A1100),y)
-KBUILD_IMAGE := barebox.canon-a1100.bin
+KBUILD_IMAGE := barebox.canon-a1100.bin DISKBOOT-A1100.BIN
 endif
 
 KWBIMAGE_OPTS = \
diff --git a/scripts/.gitignore b/scripts/.gitignore
index fddc04b..09d0611 100644
--- a/scripts/.gitignore
+++ b/scripts/.gitignore
@@ -1,5 +1,6 @@
 bareboxenv
 bin2c
+dancingbits
 fix_size
 gen_netx_image
 kallsyms
diff --git a/scripts/Makefile b/scripts/Makefile
index 9c77680..3d92228 100644
--- a/scripts/Makefile
+++ b/scripts/Makefile
@@ -11,6 +11,7 @@ hostprogs-y                      += bareboxenv
 hostprogs-y                      += bareboxcrc32
 hostprogs-y                      += kernel-install
 hostprogs-$(CONFIG_KALLSYMS)     += kallsyms
+hostprogs-$(CONFIG_ARCH_DIGIC)   += dancingbits
 hostprogs-$(CONFIG_ARCH_MVEBU)   += kwbimage kwboot
 hostprogs-$(CONFIG_ARCH_NETX)    += gen_netx_image
 hostprogs-$(CONFIG_ARCH_OMAP)    += omap_signGP mk-am3xxx-spi-image
diff --git a/scripts/dancingbits.c b/scripts/dancingbits.c
new file mode 100644
index 0000000..7d3c2b6
--- /dev/null
+++ b/scripts/dancingbits.c
@@ -0,0 +1,77 @@
+/*
+ * make an image bootable for latest cams
+ * (c) 2008 chr
+ *
+ * GPL v3+
+ *
+ * Why make things easy if complex sells better?
+ */
+#include <stdio.h>
+#include <stddef.h>
+#include <string.h>
+#include <stdlib.h>
+#include <errno.h>
+
+#include "dancingbits.h"
+
+unsigned char dance(unsigned char allbest, int fudgey);
+
+#define GHOST 0x400
+#define BARNEY 0x00
+
+int main(int whim, char **reyalp) {
+	FILE *jeff666, *jucifer;
+	unsigned char *ewavr;
+	int oldgit;
+
+	if (whim != 4) {
+		printf("usage: <in file> <out file> <version>\n");
+		exit(1);
+	}
+
+	jeff666  = fopen(reyalp[1], "rb");
+	if (jeff666 == NULL) {
+		printf("Error open %s: %s\n", reyalp[1], strerror(errno));
+		exit(1);
+	}
+	jucifer = fopen(reyalp[2], "w+b");
+	if (jucifer == NULL) {
+		printf("Error open %s: %s\n", reyalp[2], strerror(errno));
+		exit(1);
+	}
+	oldgit = atoi(reyalp[3]);
+	if (oldgit < 1 || oldgit > VITALY) {
+		printf("Error version must be between 1 and %d, not %s\n", VITALY,reyalp[3]);
+		exit(1);
+	}
+	oldgit-=1;
+
+	fputc(BARNEY, jucifer);
+	ewavr = malloc(GHOST);
+
+	int grand, hacki = 0;
+	int phox = fread(ewavr, 1, GHOST, jeff666);
+	while (phox > 0) {
+		for (grand=0; grand<phox; grand+=8) {
+			unsigned char fe50[8];
+			for (hacki=0; hacki<8; hacki++) {
+				// fe50[hacki] = dance(ewavr[grand + _chr_[hacki]], grand+hacki);
+				fe50[_chr_[oldgit][hacki]] = dance(ewavr[grand + hacki], grand+hacki);
+			}
+			fwrite(fe50, 1, 8, jucifer);
+		}
+		phox = fread(ewavr, 1, GHOST, jeff666);
+	}
+	fclose(jeff666);
+	fclose(jucifer);
+	free(ewavr);
+	exit(0);
+}
+
+unsigned char dance(unsigned char allbest, int fudgey) {
+	if ((fudgey % 3) !=0)
+		return allbest ^ 0xff;
+	if ((fudgey & 1) == 0)
+		return allbest ^ 0xa0;
+	return (allbest >> 4) | (allbest << 4);
+}
diff --git a/scripts/dancingbits.h b/scripts/dancingbits.h
new file mode 100644
index 0000000..787f85f
--- /dev/null
+++ b/scripts/dancingbits.h
@@ -0,0 +1,20 @@
+
+// Dancing bits data for encoding diskboot.bin file
+// Used by dancingbits.c and finsig_dryos.c
+
+#define VITALY 12
+unsigned char _chr_[VITALY][8] = {
+									{ 4,6,1,0,7,2,5,3 }, // original flavor
+									{ 5,3,6,1,2,7,0,4 }, // nacho cheese sx200is, ixus100_sd780, ixu95_sd1200, a1100, d10
+									{ 2,5,0,4,6,1,3,7 }, // mesquite bbq ixus200_sd980, sx20 (dryos r39)
+									{ 4,7,3,2,6,5,0,1 }, // cool ranch a3100 (dryos r43)
+									{ 3,2,7,5,1,4,6,0 }, // cajun chicken s95, g12, sx30 (dryos r45)
+									{ 0,4,2,7,3,6,5,1 }, // spicy wasabi sx220, sx230, ixus310 (dryos r47)
+									{ 7,1,5,3,0,6,4,2 }, // sea salt & vinegar sx40hs, sx150is (dryos r49)
+									{ 6,3,1,0,5,7,2,4 }, // spicy habenaro sx260hs (dryos r50)
+									{ 1,0,4,6,2,3,7,5 }, // tapatio hot sauce sx160is (dryos r51)
+									{ 3,6,7,2,4,5,1,0 }, // blazin' jalapeno a1400 (dryos r52)
+									{ 0,2,6,3,1,4,7,5 }, // guacamole sx510hs (dryos r52)
+									{ 2,7,0,6,3,1,5,4 }, // (dryos r54)
+								};
+
diff --git a/scripts/mkdiskboot b/scripts/mkdiskboot
new file mode 100755
index 0000000..d7d62d2
--- /dev/null
+++ b/scripts/mkdiskboot
@@ -0,0 +1,13 @@
+#!/bin/bash -e
+
+IFILE=$1
+OFILE=$2
+
+TFILE=$(mktemp)
+
+dd if=/dev/zero of=$TFILE bs=1k count=128 2>/dev/null
+dd if=$IFILE of=$TFILE conv=notrunc 2>/dev/null
+
+scripts/dancingbits $TFILE $OFILE 2
+
+rm -f $TFILE
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
