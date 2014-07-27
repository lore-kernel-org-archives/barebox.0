Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x230.google.com ([2a00:1450:4010:c03::230])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XBL3s-0006e2-UP
 for barebox@lists.infradead.org; Sun, 27 Jul 2014 09:48:13 +0000
Received: by mail-la0-f48.google.com with SMTP id gl10so4334640lab.7
 for <barebox@lists.infradead.org>; Sun, 27 Jul 2014 02:47:53 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sun, 27 Jul 2014 13:47:26 +0400
Message-Id: <1406454448-10645-8-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1406454448-10645-1-git-send-email-antonynpavlov@gmail.com>
References: <1406454448-10645-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 7/9] ARM: add Canon A1100 ROM image generation
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 .gitignore                |  1 +
 Makefile                  |  2 +-
 arch/arm/Makefile         | 10 ++++++++++
 scripts/canon-a1100-image | 10 ++++++++++
 4 files changed, 22 insertions(+), 1 deletion(-)

diff --git a/.gitignore b/.gitignore
index ddeb7b1..a62e08c 100644
--- a/.gitignore
+++ b/.gitignore
@@ -47,6 +47,7 @@ barebox.map
 barebox.kwb
 barebox.kwbuart
 barebox.efi
+barebox.canon-a1100.bin
 barebox-flash-image
 System.map
 Module.symvers
diff --git a/Makefile b/Makefile
index 3d08818..1ec0bfd 100644
--- a/Makefile
+++ b/Makefile
@@ -994,7 +994,7 @@ CLEAN_FILES +=	barebox System.map include/generated/barebox_default_env.h \
 		scripts/bareboxenv-target barebox-flash-image \
 		barebox.srec barebox.s5p barebox.ubl barebox.zynq \
 		barebox.uimage barebox.spi barebox.kwb barebox.kwbuart \
-		barebox.efi
+		barebox.efi barebox.canon-a1100.bin
 
 # Directories & files removed with 'make mrproper'
 MRPROPER_DIRS  += include/config include2 usr/include
diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 1b0d7fe..337aef1 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -185,6 +185,16 @@ ifeq ($(machine-y),zynq)
 KBUILD_IMAGE := barebox.zynq
 endif
 
+quiet_cmd_canon_a1100_image = DD      $@
+      cmd_canon_a1100_image = scripts/canon-a1100-image $< $@ || \
+	echo "WARNING: Couldn't create Canon A1100 image due to previous errors."
+barebox.canon-a1100.bin: $(KBUILD_BINARY) FORCE
+	$(call if_changed,canon_a1100_image)
+
+ifeq ($(CONFIG_MACH_CANON_A1100),y)
+KBUILD_IMAGE := barebox.canon-a1100.bin
+endif
+
 KWBIMAGE_OPTS = \
 	-c -i $(srctree)/$(BOARD)/kwbimage.cfg -d $(TEXT_BASE) -e $(TEXT_BASE)
 
diff --git a/scripts/canon-a1100-image b/scripts/canon-a1100-image
new file mode 100755
index 0000000..6c08d74
--- /dev/null
+++ b/scripts/canon-a1100-image
@@ -0,0 +1,10 @@
+#!/bin/bash -e
+
+IFILE=$1
+OFILE=$2
+
+dd if=/dev/zero bs=4M count=1 of=$OFILE 2>/dev/null
+dd if=$IFILE of=$OFILE conv=notrunc 2>/dev/null
+
+# 0xffff0000:  fe 3f f0 ea     b       0xffc00000
+echo -n -e "\xfe\x3f\xf0\xea" | dd of=$OFILE bs=64K seek=63 conv=notrunc 2>/dev/null
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
