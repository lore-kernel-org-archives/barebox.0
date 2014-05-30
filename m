Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-x22d.google.com ([2a00:1450:400c:c00::22d])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WqIi9-0002Bg-55
 for barebox@lists.infradead.org; Fri, 30 May 2014 09:02:50 +0000
Received: by mail-wg0-f45.google.com with SMTP id m15so1610167wgh.28
 for <barebox@lists.infradead.org>; Fri, 30 May 2014 02:02:26 -0700 (PDT)
From: Holger Schurig <holgerschurig@gmail.com>
Date: Fri, 30 May 2014 11:07:33 +0200
Message-Id: <1401440856-6145-8-git-send-email-holgerschurig@gmail.com>
In-Reply-To: <1401440856-6145-1-git-send-email-holgerschurig@gmail.com>
References: <1401440856-6145-1-git-send-email-holgerschurig@gmail.com>
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
Subject: [PATCH 07/10] misc: upper-case some abbreviations
To: barebox@lists.infradead.org

Signed-off-by: Holger Schurig <holgerschurig@gmail.com>
---
 arch/arm/Kconfig         |    4 ++--
 arch/arm/cpu/cpu.c       |    2 +-
 arch/arm/lib/bootm.c     |    4 ++--
 commands/Kconfig         |   20 ++++++++++----------
 common/bootm.c           |    4 ++--
 common/filetype.c        |   20 ++++++++++----------
 lib/decompress_bunzip2.c |    2 +-
 7 files changed, 28 insertions(+), 28 deletions(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index c236a9e..8674a2d 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -252,7 +252,7 @@ config THUMB2_BAREBOX
 	bool "Compile barebox in thumb-2 mode (read help)"
 	help
 	  This enables compilation of barebox in thumb-2 mode which generates
-	  ~25% smaller binaries. Arm Assembly code needs some fixups to be able
+	  ~25% smaller binaries. ARM assembly code needs some fixups to be able
 	  to work correctly in thumb-2 mode. the barebox core should have these
 	  fixups since most assembly code is derived from the Kernel. However,
 	  your board lowlevel init code may break in thumb-2 mode. You have been
@@ -267,7 +267,7 @@ config ARM_BOARD_APPEND_ATAG
 
 endmenu
 
-menu "Arm specific settings"
+menu "ARM specific settings"
 
 config CPU_V7_DCACHE_SKIP
 	bool "Skip DCache Invalidate"
diff --git a/arch/arm/cpu/cpu.c b/arch/arm/cpu/cpu.c
index 895e07e..badd676 100644
--- a/arch/arm/cpu/cpu.c
+++ b/arch/arm/cpu/cpu.c
@@ -124,7 +124,7 @@ coredevice_initcall(arm_request_stack);
 static void thumb2_execute(void *func, int argc, char *argv[])
 {
 	/*
-	 * Switch back to arm mode before executing external
+	 * Switch back to ARM mode before executing external
 	 * programs.
 	 */
 	__asm__ __volatile__ (
diff --git a/arch/arm/lib/bootm.c b/arch/arm/lib/bootm.c
index 1d69052..4896d01 100644
--- a/arch/arm/lib/bootm.c
+++ b/arch/arm/lib/bootm.c
@@ -135,7 +135,7 @@ static int do_bootm_linux(struct image_data *data)
 		load_address = mem_start + PAGE_ALIGN(
 		               uimage_get_size(data->os, data->os_num) * 4);
 		if (bootm_verbose(data))
-			printf("no os load address, defaulting to 0x%08lx\n",
+			printf("no OS load address, defaulting to 0x%08lx\n",
 				load_address);
 	}
 
@@ -294,7 +294,7 @@ static int do_bootz_linux(struct image_data *data)
 
 		load_address = data->os_address;
 		if (bootm_verbose(data))
-			printf("no os load address, defaulting to 0x%08lx\n",
+			printf("no OS load address, defaulting to 0x%08lx\n",
 				load_address);
 	}
 
diff --git a/commands/Kconfig b/commands/Kconfig
index c3b4007..a1b1fc8 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -809,24 +809,24 @@ Detect file type
 	  what you have compiled into barebox. Example of "filetype -l":
 
 	  known filetypes:
-	  arm-zimage      : arm Linux zImage
-	  lzo             : lzo compressed
-	  lz4             : lz4 compressed
-	  arm-barebox     : arm barebox image
+	  arm-zimage      : ARM Linux zImage
+	  lzo             : LZO compressed
+	  lz4             : LZ4 compressed
+	  arm-barebox     : ARM barebox image
 	  u-boot          : U-Boot uImage
 	  ubi             : UBI image
 	  jffs2           : JFFS2 image
-	  gzip            : gzip compressed
-	  bzip2           : bzip2 compressed
-	  dtb             : open firmware flat device tree
-	  android         : Android boot image
-	  sh              : Bourne Shell
+	  gzip            : GZIP compressed
+	  bzip2           : BZIP2 compressed
+	  dtb             : open firmware Device Tree flattened Binary
+	  android         : android boot image
+	  sh              : bourne SHell
 	  mips-barebox    : MIPS barebox image
 	  fat             : FAT filesytem
 	  mbr             : MBR sector
 	  bmp             : BMP image
 	  png             : PNG image
-	  ext             : ext filesystem
+	  ext             : EXT filesystem
 	  gpt             : GUID Partition Table
 	  bpk             : Binary PacKage
 	  bbenv           : barebox environment file
diff --git a/common/bootm.c b/common/bootm.c
index b250bd1..d6e02a7 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -403,7 +403,7 @@ int bootm_boot(struct bootm_data *bootm_data)
 	if (os_type == filetype_uimage) {
 		ret = bootm_open_os_uimage(data);
 		if (ret) {
-			printf("loading os image failed with %s\n",
+			printf("Loading OS image failed with %s\n",
 					strerror(-ret));
 			goto err_out;
 		}
@@ -455,7 +455,7 @@ int bootm_boot(struct bootm_data *bootm_data)
 		printf("no image handler found for image type %s\n",
 			file_type_to_string(os_type));
 		if (os_type == filetype_uimage)
-			printf("and os type: %d\n", data->os->header.ih_os);
+			printf("and OS type: %d\n", data->os->header.ih_os);
 		ret = -ENODEV;
 		goto err_out;
 	}
diff --git a/common/filetype.c b/common/filetype.c
index 0b5da30..508a2b5 100644
--- a/common/filetype.c
+++ b/common/filetype.c
@@ -32,24 +32,24 @@ struct filetype_str {
 
 static const struct filetype_str filetype_str[] = {
 	[filetype_unknown] = { "unknown", "unkown" },
-	[filetype_arm_zimage] = { "arm Linux zImage", "arm-zimage" },
-	[filetype_lzo_compressed] = { "lzo compressed", "lzo" },
-	[filetype_lz4_compressed] = { "lz4 compressed", "lz4" },
-	[filetype_arm_barebox] = { "arm barebox image", "arm-barebox" },
+	[filetype_arm_zimage] = { "ARM Linux zImage", "arm-zimage" },
+	[filetype_lzo_compressed] = { "LZO compressed", "lzo" },
+	[filetype_lz4_compressed] = { "LZ4 compressed", "lz4" },
+	[filetype_arm_barebox] = { "ARM barebox image", "arm-barebox" },
 	[filetype_uimage] = { "U-Boot uImage", "u-boot" },
 	[filetype_ubi] = { "UBI image", "ubi" },
 	[filetype_jffs2] = { "JFFS2 image", "jffs2" },
-	[filetype_gzip] = { "gzip compressed", "gzip" },
-	[filetype_bzip2] = { "bzip2 compressed", "bzip2" },
-	[filetype_oftree] = { "open firmware flat device tree", "dtb" },
-	[filetype_aimage] = { "Android boot image", "android" },
-	[filetype_sh] = { "Bourne Shell", "sh" },
+	[filetype_gzip] = { "GZIP compressed", "gzip" },
+	[filetype_bzip2] = { "BZIP2 compressed", "bzip2" },
+	[filetype_oftree] = { "open firmware Device Tree flattened Binary", "dtb" },
+	[filetype_aimage] = { "android boot image", "android" },
+	[filetype_sh] = { "bourne SHell", "sh" },
 	[filetype_mips_barebox] = { "MIPS barebox image", "mips-barebox" },
 	[filetype_fat] = { "FAT filesytem", "fat" },
 	[filetype_mbr] = { "MBR sector", "mbr" },
 	[filetype_bmp] = { "BMP image", "bmp" },
 	[filetype_png] = { "PNG image", "png" },
-	[filetype_ext] = { "ext filesystem", "ext" },
+	[filetype_ext] = { "EXT filesystem", "ext" },
 	[filetype_gpt] = { "GUID Partition Table", "gpt" },
 	[filetype_bpk] = { "Binary PacKage", "bpk" },
 	[filetype_barebox_env] = { "barebox environment file", "bbenv" },
diff --git a/lib/decompress_bunzip2.c b/lib/decompress_bunzip2.c
index 4b6edd1..0ca2dcd 100644
--- a/lib/decompress_bunzip2.c
+++ b/lib/decompress_bunzip2.c
@@ -15,7 +15,7 @@
 
 	More efficient reading of Huffman codes, a streamlined read_bunzip()
 	function, and various other tweaks.  In (limited) tests, approximately
-	20% faster than bzcat on x86 and about 10% faster on arm.
+	20% faster than bzcat on x86 and about 10% faster on ARM.
 
 	Note that about 2/3 of the time is spent in read_unzip() reversing
 	the Burrows-Wheeler transformation.  Much of that time is delay
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
