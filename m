Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 4.mo1.mail-out.ovh.net ([46.105.76.26]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SvmoP-0001fu-HW
 for barebox@lists.infradead.org; Mon, 30 Jul 2012 10:02:54 +0000
Received: from mail94.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 5C199FF9B24
 for <barebox@lists.infradead.org>; Mon, 30 Jul 2012 12:08:51 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 30 Jul 2012 12:02:38 +0200
Message-Id: <1343642565-32257-5-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1343642565-32257-1-git-send-email-plagnioj@jcrosoft.com>
References: <20120730100022.GD19759@game.jcrosoft.org>
 <1343642565-32257-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 05/12] Add compressed image support
To: barebox@lists.infradead.org

From: Sascha Hauer <s.hauer@pengutronix.de>

This allows for creating a lzo compressed binary unsing the pbl.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
[From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>]
re-integrate it in the new pbl target.
Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/Kconfig         |    1 +
 arch/arm/Makefile        |    4 ++++
 arch/arm/cpu/start.c     |   59 ++++++++++++++++++++++++++++++++++++++++++++++
 arch/arm/pbl/Makefile    |   16 +++++++++++--
 arch/arm/pbl/piggy.lzo.S |    6 +++++
 5 files changed, 84 insertions(+), 2 deletions(-)
 create mode 100644 arch/arm/pbl/piggy.lzo.S

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 3d11497..245bec8 100644
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
index 80ef986..8e4bb48 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -194,6 +194,10 @@ ifeq ($(CONFIG_ARCH_DAVINCI),y)
 KBUILD_IMAGE := barebox.ubl
 endif
 
+ifdef CONFIG_IMAGE_COMPRESSION
+KBUILD_IMAGE := zbarebox.bin
+endif
+
 pbl := arch/arm/pbl
 zbarebox.S zbarebox.bin zbarebox: barebox.bin
 	$(Q)$(MAKE) $(build)=$(pbl) $(pbl)/$@
diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index 49b1d5b..a54f5fd 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -98,8 +98,67 @@ void __naked __bare_init reset(void)
 }
 
 #ifdef __PBL__
+extern void *input_data;
+extern void *input_data_end;
+
+#define STATIC static
+
+#ifdef CONFIG_IMAGE_COMPRESSION_LZO
+#include "../../../lib/decompress_unlzo.c"
+#endif
+
+void barebox_uncompress(void *compressed_start, unsigned int len)
+{
+	void (*barebox)(void);
+
+	if (IS_ENABLED(CONFIG_THUMB2_BAREBOX))
+		barebox = (void *)(TEXT_BASE + 1);
+	else
+		barebox = (void *)TEXT_BASE;
+
+	decompress((void *)compressed_start,
+			len,
+			NULL, NULL,
+			(void *)TEXT_BASE, NULL, NULL);
+
+	/* flush I-cache before jumping to the uncompressed binary */
+	__asm__ __volatile__("mcr p15, 0, %0, c7, c5, 0" : : "r" (0));
+
+	barebox();
+}
+
 void barebox_pbl(uint32_t offset)
 {
+	uint32_t compressed_start, compressed_end, len;
+	void (*uncompress)(void *compressed_start, unsigned int len);
+
+	compressed_start = (uint32_t)&input_data - offset;
+	compressed_end = (uint32_t)&input_data_end - offset;
+	len = compressed_end - compressed_start;
+
+	/*
+	 * Check if the compressed binary will be overwritten
+	 * by the uncompressed binary
+	 */
+	if (compressed_start >= TEXT_BASE &&
+			compressed_start < TEXT_BASE + len * 4 ) {
+		/*
+		 * copy compressed binary to its link address
+		 */
+		memcpy(&input_data, (void *)compressed_start, len);
+		compressed_start = (uint32_t)&input_data;
+	}
+
+	uncompress = barebox_uncompress;
+
+	/* call barebox_uncompress with its absolute address */
+	__asm__ __volatile__(
+		"mov r0, %1\n"
+		"mov r1, %2\n"
+		"mov pc, %0\n"
+		:
+		: "r"(uncompress), "r"(compressed_start), "r"(len)
+		: "r0", "r1");
 }
 #else
 void barebox_pbl(uint32_t offset) {}
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
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
