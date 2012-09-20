Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TEmCJ-0004Z7-MI
 for barebox@lists.infradead.org; Thu, 20 Sep 2012 19:14:04 +0000
From: Jan Luebbe <jlu@pengutronix.de>
Date: Thu, 20 Sep 2012 21:13:44 +0200
Message-Id: <1348168424-11742-1-git-send-email-jlu@pengutronix.de>
In-Reply-To: <1348149724-28468-1-git-send-email-t.gamez@phytec.de>
References: <1348149724-28468-1-git-send-email-t.gamez@phytec.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] Makefile: add target to produce a SPL compatible uImage
To: barebox@lists.infradead.org, =?UTF-8?q?Teresa=20G=C3=A1mez?= <t.gamez@phytec.de>

This is mostly useful during the initial port of barebox to a new
board which is supported by u-boot. It also allows starting barebox
from a SRAM-based u-boot SPL.

A different load address can be set like this:
make barebox.uimage UIMAGE_BASE=0x80000000

Also add barebox.ubl to CLEAN_FILES.

Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
---
I've carried this patch for some time and adjusted it to support
PBL (compressed image), but have not had an opportunity to verify
it again.

Teresa, if you have some time to try it out, that would be very
much appreciated. :)


 .gitignore |    1 +
 Makefile   |   19 ++++++++++++++++++-
 2 files changed, 19 insertions(+), 1 deletion(-)

diff --git a/.gitignore b/.gitignore
index 4154c73..7e98a25 100644
--- a/.gitignore
+++ b/.gitignore
@@ -35,6 +35,7 @@ barebox.srec
 barebox.netx
 barebox.s5p
 barebox.ubl
+barebox.uimage
 barebox.map
 System.map
 Module.symvers
diff --git a/Makefile b/Makefile
index 0f1a319..5cb4730 100644
--- a/Makefile
+++ b/Makefile
@@ -686,6 +686,22 @@ ifndef CONFIG_PBL_IMAGE
 	$(call cmd,check_file_size,$(CONFIG_BAREBOX_MAX_IMAGE_SIZE))
 endif
 
+# By default the uImage load address is 2MB below CONFIG_TEXT_BASE,
+# leaving space for the compressed PBL image at 1MB below CONFIG_TEXT_BASE.
+UIMAGE_BASE ?= $(shell printf "0x%08x" $$(($(CONFIG_TEXT_BASE) - 0x200000)))
+
+# For development provide a target which makes barebox loadable by an
+# unmodified u-boot
+quiet_cmd_barebox_mkimage = MKIMAGE $@
+      cmd_barebox_mkimage = $(srctree)/scripts/mkimage -A $(ARCH) -T firmware -C none \
+       -O barebox -a $(UIMAGE_BASE) -e $(UIMAGE_BASE) \
+       -n "barebox $(KERNELRELEASE)" -d $< $@
+
+# barebox.uimage is build from the raw barebox binary, without any other
+# headers.
+barebox.uimage: $(KBUILD_BINARY) FORCE
+	$(call if_changed,barebox_mkimage)
+
 ifdef CONFIG_X86
 barebox.S: barebox
 ifdef CONFIG_X86_HDBOOT
@@ -1015,7 +1031,8 @@ CLEAN_FILES +=	barebox System.map include/generated/barebox_default_env.h \
                 .tmp_version .tmp_barebox* barebox.bin barebox.map barebox.S \
 		.tmp_kallsyms* barebox_default_env* barebox.ldr \
 		scripts/bareboxenv-target barebox-flash-image \
-		Doxyfile.version barebox.srec barebox.s5p
+		Doxyfile.version barebox.srec barebox.s5p barebox.ubl \
+		barebox.uimage
 
 # Directories & files removed with 'make mrproper'
 MRPROPER_DIRS  += include/config include2 usr/include
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
