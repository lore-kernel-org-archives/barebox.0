Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T0Z4F-0003R5-Lm
 for barebox@lists.infradead.org; Sun, 12 Aug 2012 14:23:00 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 12 Aug 2012 16:22:39 +0200
Message-Id: <1344781367-13547-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1344781367-13547-1-git-send-email-s.hauer@pengutronix.de>
References: <1344781367-13547-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/8] Makefile.lib: add disasm and ln commands
To: barebox@lists.infradead.org

disasm: For generating an disasssembly of an ELF file
ln: For creating a softlink

Use the disasm command for generating barebox.S

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Makefile             |    4 +---
 scripts/Makefile.lib |    6 ++++++
 2 files changed, 7 insertions(+), 3 deletions(-)

diff --git a/Makefile b/Makefile
index ce1506c..06a94c3 100644
--- a/Makefile
+++ b/Makefile
@@ -254,6 +254,7 @@ MAKEFLAGS += --include-dir=$(srctree)
 
 # We need some generic definitions.
 include $(srctree)/scripts/Kbuild.include
+include $(srctree)/scripts/Makefile.lib
 
 # Make variables (CC, etc...)
 
@@ -703,9 +704,6 @@ endif
 	@echo " * Init Calls content" >> barebox.S
 	$(Q)$(OBJDUMP) -j .barebox_initcalls -d barebox >> barebox.S
 else
-quiet_cmd_disasm = DISASM  $@
-      cmd_disasm = $(OBJDUMP) -d $< > $@
-
 barebox.S: barebox FORCE
 	$(call if_changed,disasm)
 endif
diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index 1a5b2b5..cb46db2 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -242,3 +242,9 @@ quiet_cmd_xzmisc = XZMISC  $@
 cmd_xzmisc = (cat $(filter-out FORCE,$^) | \
 	xz --check=crc32 --lzma2=dict=1MiB) > $@ || \
 	(rm -f $@ ; false)
+
+quiet_cmd_disasm = DISASM  $@
+cmd_disasm = $(OBJDUMP) -d $< > $@
+
+quiet_cmd_ln = LN      $@
+cmd_ln = ln -sf $< $@
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
