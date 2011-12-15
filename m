Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 3.mo5.mail-out.ovh.net ([46.105.40.108]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RbBst-00069f-H2
 for barebox@lists.infradead.org; Thu, 15 Dec 2011 14:02:12 +0000
Received: from mail434.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id DA166FF954D
 for <barebox@lists.infradead.org>; Thu, 15 Dec 2011 15:02:31 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu, 15 Dec 2011 14:57:37 +0100
Message-Id: <1323957458-5929-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/2] scripts/Makefile.lib: update compress cmd support
To: barebox@lists.infradead.org

import from linux 3.2-rc3

update gzip and add bzip2, lzma, lzo and xz

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 scripts/Makefile.lib |   67 +++++++++++++++++++++++++++++++++++++++++++++++++-
 1 files changed, 66 insertions(+), 1 deletions(-)

diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index d7e2563..b842c48 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -160,6 +160,71 @@ cmd_objcopy = $(OBJCOPY) $(OBJCOPYFLAGS) $(OBJCOPYFLAGS_$(@F)) $< $@
 # ---------------------------------------------------------------------------
 
 quiet_cmd_gzip = GZIP    $@
-cmd_gzip = gzip -f -9 < $< > $@
+cmd_gzip = (cat $(filter-out FORCE,$^) | gzip -n -f -9 > $@) || \
+	(rm -f $@ ; false)
 
+# Bzip2
+# ---------------------------------------------------------------------------
+
+# Bzip2 and LZMA do not include size in file... so we have to fake that;
+# append the size as a 32-bit littleendian number as gzip does.
+size_append = printf $(shell						\
+dec_size=0;								\
+for F in $1; do								\
+	fsize=$$(stat -c "%s" $$F);					\
+	dec_size=$$(expr $$dec_size + $$fsize);				\
+done;									\
+printf "%08x\n" $$dec_size |						\
+	sed 's/\(..\)/\1 /g' | {					\
+		read ch0 ch1 ch2 ch3;					\
+		for ch in $$ch3 $$ch2 $$ch1 $$ch0; do			\
+			printf '%s%03o' '\\' $$((0x$$ch)); 		\
+		done;							\
+	}								\
+)
+
+quiet_cmd_bzip2 = BZIP2   $@
+cmd_bzip2 = (cat $(filter-out FORCE,$^) | \
+	bzip2 -9 && $(call size_append, $(filter-out FORCE,$^))) > $@ || \
+	(rm -f $@ ; false)
+
+# Lzma
+# ---------------------------------------------------------------------------
+
+quiet_cmd_lzma = LZMA    $@
+cmd_lzma = (cat $(filter-out FORCE,$^) | \
+	lzma -9 && $(call size_append, $(filter-out FORCE,$^))) > $@ || \
+	(rm -f $@ ; false)
+
+quiet_cmd_lzo = LZO     $@
+cmd_lzo = (cat $(filter-out FORCE,$^) | \
+	lzop -9 && $(call size_append, $(filter-out FORCE,$^))) > $@ || \
+	(rm -f $@ ; false)
+
+# XZ
+# ---------------------------------------------------------------------------
+# Use xzkern to compress the kernel image and xzmisc to compress other things.
+#
+# xzkern uses a big LZMA2 dictionary since it doesn't increase memory usage
+# of the kernel decompressor. A BCJ filter is used if it is available for
+# the target architecture. xzkern also appends uncompressed size of the data
+# using size_append. The .xz format has the size information available at
+# the end of the file too, but it's in more complex format and it's good to
+# avoid changing the part of the boot code that reads the uncompressed size.
+# Note that the bytes added by size_append will make the xz tool think that
+# the file is corrupt. This is expected.
+#
+# xzmisc doesn't use size_append, so it can be used to create normal .xz
+# files. xzmisc uses smaller LZMA2 dictionary than xzkern, because a very
+# big dictionary would increase the memory usage too much in the multi-call
+# decompression mode. A BCJ filter isn't used either.
+quiet_cmd_xzkern = XZKERN  $@
+cmd_xzkern = (cat $(filter-out FORCE,$^) | \
+	sh $(srctree)/scripts/xz_wrap.sh && \
+	$(call size_append, $(filter-out FORCE,$^))) > $@ || \
+	(rm -f $@ ; false)
 
+quiet_cmd_xzmisc = XZMISC  $@
+cmd_xzmisc = (cat $(filter-out FORCE,$^) | \
+	xz --check=crc32 --lzma2=dict=1MiB) > $@ || \
+	(rm -f $@ ; false)
-- 
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
