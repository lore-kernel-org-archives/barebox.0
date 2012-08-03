Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo1.mail-out.ovh.net ([178.32.228.1])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SxF4O-0000cT-S9
 for barebox@lists.infradead.org; Fri, 03 Aug 2012 10:25:26 +0000
Received: from mail94.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 9443FFFAECC
 for <barebox@lists.infradead.org>; Fri,  3 Aug 2012 12:31:35 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri,  3 Aug 2012 12:25:14 +0200
Message-Id: <1343989522-8807-4-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1343989522-8807-1-git-send-email-plagnioj@jcrosoft.com>
References: <20120803102300.GB23597@game.jcrosoft.org>
 <1343989522-8807-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 04/12] pbl: discard unwind symbol if enable in barebox
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/Kconfig            |    1 +
 arch/arm/Makefile           |    4 ++++
 arch/arm/pbl/Makefile       |   16 ++++++++++++++--
 arch/arm/pbl/piggy.lzo.S    |    6 ++++++
 arch/arm/pbl/zbarebox.lds.S |    4 ++++
 5 files changed, 29 insertions(+), 2 deletions(-)
 create mode 100644 arch/arm/pbl/piggy.lzo.S

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 7932afc..9cba655 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -5,6 +5,7 @@ config ARM
 	select HAVE_CONFIGURABLE_MEMORY_LAYOUT
 	select HAVE_CONFIGURABLE_TEXT_BASE
 	select HAVE_PBL_IMAGE
+	select HAVE_IMAGE_COMPRESSION
 	default y
 
 config ARM_AMBA
diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 0ea050e..be4ef30 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -197,6 +197,10 @@ ifeq ($(CONFIG_ARCH_DAVINCI),y)
 KBUILD_IMAGE := barebox.ubl
 endif
 
+ifdef CONFIG_IMAGE_COMPRESSION
+KBUILD_IMAGE := zbarebox.bin
+endif
+
 pbl := arch/arm/pbl
 zbarebox.S zbarebox.bin zbarebox: barebox.bin
 	$(Q)$(MAKE) $(build)=$(pbl) $(pbl)/$@
diff --git a/arch/arm/pbl/Makefile b/arch/arm/pbl/Makefile
index 9b364bb..4135911 100644
--- a/arch/arm/pbl/Makefile
+++ b/arch/arm/pbl/Makefile
@@ -1,7 +1,14 @@
 
+suffix_$(CONFIG_IMAGE_COMPRESSION_LZO)	= lzo
+
 OBJCOPYFLAGS_zbarebox.bin = -O binary
+piggy_o := piggy.$(suffix_y).o
+
+targets := zbarebox.lds zbarebox zbarebox.bin zbarebox.S \
+	   $(piggy_o) piggy.$(suffix_y)
 
-targets := zbarebox.lds zbarebox zbarebox.bin zbarebox.S
+# Make sure files are removed during clean
+extra-y       += piggy.gzip piggy.lzo piggy.lzma piggy.xzkern
 
 $(obj)/zbarebox.bin:	$(obj)/zbarebox FORCE
 	$(call if_changed,objcopy)
@@ -12,7 +19,7 @@ $(obj)/zbarebox.S: $(obj)/zbarebox FORCE
 	$(call if_changed,disasm)
 
 LDFLAGS_zbarebox	:= -Map zbarebox.map
-zbarebox-common := $(barebox-pbl-common)
+zbarebox-common := $(barebox-pbl-common) $(obj)/$(piggy_o)
 zbarebox-lds := $(obj)/zbarebox.lds
 
 quiet_cmd_zbarebox__ ?= LD      $@
@@ -23,3 +30,8 @@ quiet_cmd_zbarebox__ ?= LD      $@
 
 $(obj)/zbarebox: $(zbarebox-lds) $(zbarebox-common) FORCE
 	$(call if_changed,zbarebox__)
+
+$(obj)/piggy.$(suffix_y): $(obj)/../../../barebox.bin FORCE
+	$(call if_changed,$(suffix_y))
+
+$(obj)/$(piggy_o): $(obj)/piggy.$(suffix_y) FORCE
diff --git a/arch/arm/pbl/piggy.lzo.S b/arch/arm/pbl/piggy.lzo.S
new file mode 100644
index 0000000..e0484c7
--- /dev/null
+++ b/arch/arm/pbl/piggy.lzo.S
@@ -0,0 +1,6 @@
+	.section .piggydata,#alloc
+	.globl	input_data
+input_data:
+	.incbin	"arch/arm/pbl/piggy.lzo"
+	.globl	input_data_end
+input_data_end:
diff --git a/arch/arm/pbl/zbarebox.lds.S b/arch/arm/pbl/zbarebox.lds.S
index b6e8028..d587090 100644
--- a/arch/arm/pbl/zbarebox.lds.S
+++ b/arch/arm/pbl/zbarebox.lds.S
@@ -46,6 +46,10 @@ SECTIONS
 		__bare_init_end = .;
 		*(.text*)
 	}
+
+	/* Discard unwind if enable in barebox */
+	/DISCARD/ : { *(.ARM.ex*) }
+
 	BAREBOX_BARE_INIT_SIZE
 
 	. = ALIGN(4);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
