Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WG4kA-0003Vd-MM
 for barebox@lists.infradead.org; Wed, 19 Feb 2014 10:51:13 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 19 Feb 2014 11:50:45 +0100
Message-Id: <1392807047-32080-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1392807047-32080-1-git-send-email-s.hauer@pengutronix.de>
References: <1392807047-32080-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/5] make: Add wildcard rules for compressed files
To: barebox@lists.infradead.org

To simplify generating compressed files.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/Makefile.lib | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index 73a433d..e87e401 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -193,6 +193,9 @@ quiet_cmd_gzip = GZIP    $@
 cmd_gzip = (cat $(filter-out FORCE,$^) | gzip -n -f -9 > $@) || \
 	(rm -f $@ ; false)
 
+%.gz: %
+	$(call if_changed,gzip)
+
 # DTC
 # ---------------------------------------------------------------------------
 
@@ -251,6 +254,9 @@ cmd_bzip2 = (cat $(filter-out FORCE,$^) | \
 	bzip2 -9 && $(call size_append, $(filter-out FORCE,$^))) > $@ || \
 	(rm -f $@ ; false)
 
+%.bz2: %
+	$(call if_changed,bzip2)
+
 # Lzma
 # ---------------------------------------------------------------------------
 
@@ -259,11 +265,17 @@ cmd_lzma = (cat $(filter-out FORCE,$^) | \
 	lzma -9 && $(call size_append, $(filter-out FORCE,$^))) > $@ || \
 	(rm -f $@ ; false)
 
+%.lzma: %
+	$(call if_changed,lzma)
+
 quiet_cmd_lzo = LZO     $@
 cmd_lzo = (cat $(filter-out FORCE,$^) | \
 	lzop -9 && $(call size_append, $(filter-out FORCE,$^))) > $@ || \
 	(rm -f $@ ; false)
 
+%.lzo: %
+	$(call if_changed,lzo)
+
 # XZ
 # ---------------------------------------------------------------------------
 # Use xzkern to compress the kernel image and xzmisc to compress other things.
@@ -292,11 +304,17 @@ cmd_xzmisc = (cat $(filter-out FORCE,$^) | \
 	xz --check=crc32 --lzma2=dict=1MiB) > $@ || \
 	(rm -f $@ ; false)
 
+# lz4
+# ---------------------------------------------------------------------------
+
 quiet_cmd_lz4 = LZ4     $@
 cmd_lz4 = (cat $(filter-out FORCE,$^) | \
 	lz4c -l -c1 stdin stdout && $(call size_append, $(filter-out FORCE,$^))) > $@ || \
 	(rm -f $@ ; false)
 
+%.lz4: %
+	$(call if_changed,lz4)
+
 quiet_cmd_disasm = DISASM  $@
 cmd_disasm = $(OBJDUMP) -d $< > $@
 
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
