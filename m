Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TNq8O-0008Ok-TT
 for barebox@lists.infradead.org; Mon, 15 Oct 2012 19:15:29 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 15 Oct 2012 21:15:25 +0200
Message-Id: <1350328525-14354-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] make make -s more silent
To: barebox@lists.infradead.org

use $(kecho) instead of echo to not output messages with
make -s

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Makefile                |    6 +++---
 arch/arm/pbl/Makefile   |    2 +-
 arch/arm/tools/Makefile |    4 ++--
 3 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/Makefile b/Makefile
index 881680d..af3711a 100644
--- a/Makefile
+++ b/Makefile
@@ -894,7 +894,7 @@ endef
 # directory for generated filesas used by some architectures.
 define create-symlink
 	if [ ! -L include/asm ]; then					\
-			echo '  SYMLINK $@ -> include/asm-$(SRCARCH)';	\
+			$(kecho) '  SYMLINK $@ -> include/asm-$(SRCARCH)';	\
 			if [ ! -d include/asm-$(SRCARCH) ]; then	\
 				mkdir -p include/asm-$(SRCARCH);	\
 			fi;						\
@@ -907,11 +907,11 @@ include/asm:
 	$(Q)$(create-symlink)
 
 include/config.h: include/config/auto.conf
-	@echo '  SYMLINK $@ -> $(BOARD)/config.h'
+	$(kecho) '  SYMLINK $@ -> $(BOARD)/config.h'
 ifneq ($(KBUILD_SRC),)
 	$(Q)ln -fsn $(srctree)/$(BOARD)/config.h $@
 else
-	@ln -fsn ../$(BOARD)/config.h $@
+	$(Q)ln -fsn ../$(BOARD)/config.h $@
 endif
 
 # Generate some files
diff --git a/arch/arm/pbl/Makefile b/arch/arm/pbl/Makefile
index fe68e72..4e4e7ef 100644
--- a/arch/arm/pbl/Makefile
+++ b/arch/arm/pbl/Makefile
@@ -14,7 +14,7 @@ extra-y       += piggy.gzip piggy.lzo piggy.lzma piggy.xzkern
 $(obj)/zbarebox.bin:	$(obj)/zbarebox FORCE
 	$(call if_changed,objcopy)
 	$(call cmd,check_file_size,$(CONFIG_BAREBOX_MAX_IMAGE_SIZE))
-	@echo '  Barebox: $@ is ready'
+	$(kecho) '  Barebox: $@ is ready'
 
 $(obj)/zbarebox.S: $(obj)/zbarebox FORCE
 	$(call if_changed,disasm)
diff --git a/arch/arm/tools/Makefile b/arch/arm/tools/Makefile
index 635cb18..7d8c14a 100644
--- a/arch/arm/tools/Makefile
+++ b/arch/arm/tools/Makefile
@@ -5,6 +5,6 @@
 #
 
 include/generated/mach-types.h: $(src)/gen-mach-types $(src)/mach-types
-	@echo '  Generating $@'
-	@mkdir -p $(dir $@)
+	$(kecho) '  Generating $@'
+	$(Q)mkdir -p $(dir $@)
 	$(Q)$(AWK) -f $^ > $@ || { rm -f $@; /bin/false; }
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
