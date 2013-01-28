Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 4.mo2.mail-out.ovh.net ([87.98.172.75]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Tzkzz-0007Gb-Ey
 for barebox@lists.infradead.org; Mon, 28 Jan 2013 09:27:32 +0000
Received: from mail416.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id B7B69DC10D7
 for <barebox@lists.infradead.org>; Mon, 28 Jan 2013 10:37:24 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 28 Jan 2013 10:26:12 +0100
Message-Id: <1359365172-30549-3-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1359365172-30549-1-git-send-email-plagnioj@jcrosoft.com>
References: <20130128092320.GQ26329@game.jcrosoft.org>
 <1359365172-30549-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 3/3] pbl: add none compression support
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/pbl/Makefile         |    3 ++-
 arch/arm/pbl/piggy.shipped.S  |    6 ++++++
 arch/mips/pbl/Makefile        |    3 ++-
 arch/mips/pbl/piggy.shipped.S |    6 ++++++
 pbl/Kconfig                   |    3 +++
 pbl/decomp.c                  |   12 ++++++++++++
 6 files changed, 31 insertions(+), 2 deletions(-)
 create mode 100644 arch/arm/pbl/piggy.shipped.S
 create mode 100644 arch/mips/pbl/piggy.shipped.S

diff --git a/arch/arm/pbl/Makefile b/arch/arm/pbl/Makefile
index 7faa51a..6eeee73 100644
--- a/arch/arm/pbl/Makefile
+++ b/arch/arm/pbl/Makefile
@@ -1,6 +1,7 @@
 
 suffix_$(CONFIG_IMAGE_COMPRESSION_GZIP) = gzip
 suffix_$(CONFIG_IMAGE_COMPRESSION_LZO)	= lzo
+suffix_$(CONFIG_IMAGE_COMPRESSION_NONE)	= shipped
 
 OBJCOPYFLAGS_zbarebox.bin = -O binary
 piggy_o := piggy.$(suffix_y).o
@@ -9,7 +10,7 @@ targets := zbarebox.lds zbarebox zbarebox.bin zbarebox.S \
 	   $(piggy_o) piggy.$(suffix_y)
 
 # Make sure files are removed during clean
-extra-y       += piggy.gzip piggy.lzo piggy.lzma piggy.xzkern zbarebox.map
+extra-y       += piggy.gzip piggy.lzo piggy.lzma piggy.xzkern piggy.shipped zbarebox.map
 
 $(obj)/zbarebox.bin:	$(obj)/zbarebox FORCE
 	$(call if_changed,objcopy)
diff --git a/arch/arm/pbl/piggy.shipped.S b/arch/arm/pbl/piggy.shipped.S
new file mode 100644
index 0000000..dbc2569
--- /dev/null
+++ b/arch/arm/pbl/piggy.shipped.S
@@ -0,0 +1,6 @@
+	.section .piggydata,#alloc
+	.globl  input_data
+input_data:
+	.incbin "arch/arm/pbl/piggy.shipped"
+	.globl  input_data_end
+input_data_end:
diff --git a/arch/mips/pbl/Makefile b/arch/mips/pbl/Makefile
index 7faa51a..6eeee73 100644
--- a/arch/mips/pbl/Makefile
+++ b/arch/mips/pbl/Makefile
@@ -1,6 +1,7 @@
 
 suffix_$(CONFIG_IMAGE_COMPRESSION_GZIP) = gzip
 suffix_$(CONFIG_IMAGE_COMPRESSION_LZO)	= lzo
+suffix_$(CONFIG_IMAGE_COMPRESSION_NONE)	= shipped
 
 OBJCOPYFLAGS_zbarebox.bin = -O binary
 piggy_o := piggy.$(suffix_y).o
@@ -9,7 +10,7 @@ targets := zbarebox.lds zbarebox zbarebox.bin zbarebox.S \
 	   $(piggy_o) piggy.$(suffix_y)
 
 # Make sure files are removed during clean
-extra-y       += piggy.gzip piggy.lzo piggy.lzma piggy.xzkern zbarebox.map
+extra-y       += piggy.gzip piggy.lzo piggy.lzma piggy.xzkern piggy.shipped zbarebox.map
 
 $(obj)/zbarebox.bin:	$(obj)/zbarebox FORCE
 	$(call if_changed,objcopy)
diff --git a/arch/mips/pbl/piggy.shipped.S b/arch/mips/pbl/piggy.shipped.S
new file mode 100644
index 0000000..963262d
--- /dev/null
+++ b/arch/mips/pbl/piggy.shipped.S
@@ -0,0 +1,6 @@
+	.section .piggydata,#alloc
+	.globl  input_data
+input_data:
+	.incbin "arch/mips/pbl/piggy.shipped"
+	.globl  input_data_end
+input_data_end:
diff --git a/pbl/Kconfig b/pbl/Kconfig
index ea7d227..37e4c4a 100644
--- a/pbl/Kconfig
+++ b/pbl/Kconfig
@@ -34,6 +34,9 @@ config IMAGE_COMPRESSION_LZO
 config IMAGE_COMPRESSION_GZIP
 	bool "gzip"
 
+config IMAGE_COMPRESSION_NONE
+	bool "none"
+
 endchoice
 
 endif
diff --git a/pbl/decomp.c b/pbl/decomp.c
index bd67ed8..aa6a31e 100644
--- a/pbl/decomp.c
+++ b/pbl/decomp.c
@@ -18,6 +18,18 @@
 #include "../../../lib/decompress_inflate.c"
 #endif
 
+#ifdef CONFIG_IMAGE_COMPRESSION_NONE
+STATIC int decompress(u8 *input, int in_len,
+				int (*fill) (void *, unsigned int),
+				int (*flush) (void *, unsigned int),
+				u8 *output, int *posp,
+				void (*error) (char *x))
+{
+	memcpy(output, input, in_len);
+	return 0;
+}
+#endif
+
 static void noinline errorfn(char *error)
 {
 	while (1);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
