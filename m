Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bk5Sd-00054A-Ak
 for barebox@lists.infradead.org; Wed, 14 Sep 2016 08:22:28 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 14 Sep 2016 10:21:52 +0200
Message-Id: <1473841313-4204-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] Add comp_copy function for use with
 CONFIG_IMAGE_COMPRESSION_NONE
To: Barebox List <barebox@lists.infradead.org>

The Makefile compression commands all append the size of the
uncompressed image. With CONFIG_IMAGE_COMPRESSION_NONE simply
'shipped' is used which does not append the size. Add and use
a special comp_copy function which adds the size. This helps
us to get the uncompressed image size in the startup code later.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/pbl/Makefile | 2 +-
 images/Makefile       | 2 +-
 scripts/Makefile.lib  | 8 ++++++++
 3 files changed, 10 insertions(+), 2 deletions(-)

diff --git a/arch/arm/pbl/Makefile b/arch/arm/pbl/Makefile
index 1ff39db..c455112 100644
--- a/arch/arm/pbl/Makefile
+++ b/arch/arm/pbl/Makefile
@@ -3,7 +3,7 @@ suffix_$(CONFIG_IMAGE_COMPRESSION_GZIP) = gzip
 suffix_$(CONFIG_IMAGE_COMPRESSION_LZO)	= lzo
 suffix_$(CONFIG_IMAGE_COMPRESSION_LZ4)	= lz4
 suffix_$(CONFIG_IMAGE_COMPRESSION_XZKERN)	= xzkern
-suffix_$(CONFIG_IMAGE_COMPRESSION_NONE)	= shipped
+suffix_$(CONFIG_IMAGE_COMPRESSION_NONE)	= comp_copy
 
 OBJCOPYFLAGS_zbarebox.bin = -O binary
 piggy_o := piggy.$(suffix_y).o
diff --git a/images/Makefile b/images/Makefile
index da9cc8d..0537af1 100644
--- a/images/Makefile
+++ b/images/Makefile
@@ -85,7 +85,7 @@ suffix_$(CONFIG_IMAGE_COMPRESSION_GZIP) = gzip
 suffix_$(CONFIG_IMAGE_COMPRESSION_LZO)  = lzo
 suffix_$(CONFIG_IMAGE_COMPRESSION_LZ4)	= lz4
 suffix_$(CONFIG_IMAGE_COMPRESSION_XZKERN) = xzkern
-suffix_$(CONFIG_IMAGE_COMPRESSION_NONE) = shipped
+suffix_$(CONFIG_IMAGE_COMPRESSION_NONE) = comp_copy
 
 # barebox.z - compressed barebox binary
 # ----------------------------------------------------------------
diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index e55bc27..e79998c 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -380,6 +380,14 @@ cmd_lz4 = (cat $(filter-out FORCE,$^) | \
 %.lz4: %
 	$(call if_changed,lz4)
 
+# comp_copy
+# ---------------------------------------------------------------------------
+# Wrapper which only copies a file, but compatible to the compression
+# functions above. Appends the size to the result file
+quiet_cmd_comp_copy ?= SHIPPED_S $@
+cmd_comp_copy ?= cat $(filter-out FORCE,$^) > $@; \
+                 $(call size_append, $(filter-out FORCE,$^)) >> $@
+
 quiet_cmd_disasm = DISASM  $@
 cmd_disasm = $(OBJDUMP) -d $< > $@
 
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
