Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 14.mo1.mail-out.ovh.net ([178.32.97.215]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1StwY2-0003rF-JT
 for barebox@lists.infradead.org; Wed, 25 Jul 2012 08:02:35 +0000
Received: from mail94.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 1DB2BFF97CC
 for <barebox@lists.infradead.org>; Wed, 25 Jul 2012 10:08:08 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 25 Jul 2012 10:02:52 +0200
Message-Id: <1343203373-18641-10-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1343203373-18641-1-git-send-email-plagnioj@jcrosoft.com>
References: <20120725075730.GT22657@game.jcrosoft.org>
 <1343203373-18641-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 10/11] arm: use the new built-comp.o generated files
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 Makefile                     |    2 ++
 arch/arm/compressed/Makefile |   33 +++------------------------------
 arch/arm/lib/Makefile        |    4 ++++
 compressed/Makefile          |    5 +++++
 4 files changed, 14 insertions(+), 30 deletions(-)
 create mode 100644 compressed/Makefile

diff --git a/Makefile b/Makefile
index 277f7da..35a681f 100644
--- a/Makefile
+++ b/Makefile
@@ -474,6 +474,8 @@ CFLAGS += $(call cc-option,-Wno-pointer-sign,)
 # this default value
 export KBUILD_IMAGE ?= barebox
 
+common-$(CONFIG_IMAGE_COMPRESSION)	+= compressed/
+
 barebox-dirs	:= $(patsubst %/,%,$(filter %/, $(common-y)))
 
 barebox-alldirs	:= $(sort $(barebox-dirs) $(patsubst %/,%,$(filter %/, \
diff --git a/arch/arm/compressed/Makefile b/arch/arm/compressed/Makefile
index 59e7d59..9d8c051 100644
--- a/arch/arm/compressed/Makefile
+++ b/arch/arm/compressed/Makefile
@@ -6,12 +6,11 @@ OBJCOPYFLAGS_zbarebox.bin = -O binary
 
 targets := zbarebox zbarebox.bin zbarebox.S \
 	   piggy.$(suffix_y) piggy.$(suffix_y).o \
-	   lib1funcs.o lib1funcs.S ashldi3.o ashldi3.S \
-	   misc.o string.o start.o
+	   start.o
 
 # Make sure files are removed during clean
 extra-y       += piggy.gzip piggy.lzo piggy.lzma piggy.xzkern \
-		 lib1funcs.S ashldi3.S start.c string.c misc.c
+		 start.c
 
 $(obj)/zbarebox.bin:	$(obj)/zbarebox FORCE
 	$(call if_changed,objcopy)
@@ -21,39 +20,13 @@ $(obj)/zbarebox.bin:	$(obj)/zbarebox FORCE
 $(obj)/zbarebox.S: $(obj)/zbarebox FORCE
 	$(call if_changed,disasm)
 
-# For __aeabi_uidivmod
-lib1funcs = $(obj)/lib1funcs.o
-
-$(obj)/lib1funcs.S: $(srctree)/arch/$(SRCARCH)/lib/lib1funcs.S
-	$(call cmd,shipped)
-
 CFLAGS_start.o = -D CONFIG_COMPRESSOR
 start= $(obj)/start.o
 $(obj)/start.c: $(srctree)/arch/$(SRCARCH)/cpu/start.c
 	$(call cmd,shipped)
 
-string= $(obj)/string.o
-$(obj)/string.c: $(srctree)/compressed/string.c
-	$(call cmd,shipped)
-
-misc= $(obj)/misc.o
-$(obj)/misc.c: $(srctree)/compressed/misc.c
-	$(call cmd,shipped)
-
-# For __aeabi_llsl
-ashldi3 = $(obj)/ashldi3.o
-
-$(obj)/ashldi3.S: $(srctree)/arch/$(SRCARCH)/lib/ashldi3.S
-	$(call cmd,shipped)
-
-# For __div0
-div0 = $(obj)/div0.o
-
-$(obj)/div0.c: $(srctree)/arch/$(SRCARCH)/lib/div0.c
-	$(call cmd,shipped)
-
 LDFLAGS_zbarebox	:= -Map zbarebox.map
-comp := $(obj)/piggy.$(suffix_y).o \
+comp := $(barebox-common-comp) $(obj)/piggy.$(suffix_y).o \
 	$(lib1funcs) $(ashldi3) $(start) $(string) $(misc) $(div0)
 
 $(obj)/zbarebox: $(obj)/barebox.lds $(comp) FORCE
diff --git a/arch/arm/lib/Makefile b/arch/arm/lib/Makefile
index 1b6f7f4..2291dc2 100644
--- a/arch/arm/lib/Makefile
+++ b/arch/arm/lib/Makefile
@@ -22,3 +22,7 @@ obj-$(CONFIG_ARM_UNWIND) += unwind.o
 obj-$(CONFIG_MODULES) += module.o
 extra-y += barebox.lds
 extra-$(CONFIG_IMAGE_COMPRESSION) += barebox-compressed.lds
+
+comp-y	+= lib1funcs.o
+comp-y	+= ashldi3.o
+comp-y	+= div0.o
diff --git a/compressed/Makefile b/compressed/Makefile
new file mode 100644
index 0000000..c2c4f7f
--- /dev/null
+++ b/compressed/Makefile
@@ -0,0 +1,5 @@
+#
+# only unsed by the decompressor
+#
+comp-y += misc.o
+comp-y += string.o
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
