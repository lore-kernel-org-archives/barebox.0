Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp.mei.co.jp ([133.183.100.20])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Y3dS5-0000uP-Ln
 for barebox@lists.infradead.org; Wed, 24 Dec 2014 04:21:38 +0000
Received: from mail-gw.jp.panasonic.com ([157.8.1.157])
 by smtp.mei.co.jp (8.12.11.20060614/3.7W/kc-maile13) with ESMTP id
 sBO4LA9T027626
 for <barebox@lists.infradead.org>; Wed, 24 Dec 2014 13:21:10 +0900 (JST)
Received: from epochmail.jp.panasonic.com ([157.8.1.130])
 by mail.jp.panasonic.com (8.11.6p2/3.7W/kc-maili12) with ESMTP id sBO4L9o07964
 for <barebox@lists.infradead.org>; Wed, 24 Dec 2014 13:21:09 +0900
From: Masahiro Yamada <yamada.m@jp.panasonic.com>
Date: Wed, 24 Dec 2014 13:21:01 +0900
Message-Id: <1419394862-31457-3-git-send-email-yamada.m@jp.panasonic.com>
In-Reply-To: <1419394862-31457-1-git-send-email-yamada.m@jp.panasonic.com>
References: <1419394862-31457-1-git-send-email-yamada.m@jp.panasonic.com>
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
Subject: [PATCH 2/3] kbuild: do not create symbolic link include/asm
To: barebox@lists.infradead.org

There does not exist include/asm-$(SRCARCH) any more, so no point
to create a symbolic link to an empty directory.

Signed-off-by: Masahiro Yamada <yamada.m@jp.panasonic.com>
---

 .gitignore |  1 -
 Makefile   | 35 +----------------------------------
 2 files changed, 1 insertion(+), 35 deletions(-)

diff --git a/.gitignore b/.gitignore
index 5d9157d..03c5e20 100644
--- a/.gitignore
+++ b/.gitignore
@@ -61,7 +61,6 @@ barebox_default_env*
 #
 # Generated include files
 #
-include/asm
 include/asm-*/asm-offsets.h
 include/config
 include/linux/compile.h
diff --git a/Makefile b/Makefile
index f1dcec2..2978439 100644
--- a/Makefile
+++ b/Makefile
@@ -808,7 +808,7 @@ endif
 prepare2: prepare3 outputmakefile
 
 prepare1: prepare2 include/generated/version.h include/generated/utsrelease.h \
-                   include/asm include/config.h include/config/auto.conf
+                   include/config.h include/config/auto.conf
 
 ifneq ($(KBUILD_MODULES),)
 	$(Q)mkdir -p $(MODVERDIR)
@@ -828,39 +828,6 @@ prepare prepare-all: prepare0
 
 export CPPFLAGS_barebox.lds += -C -U$(ARCH)
 
-# FIXME: The asm symlink changes when $(ARCH) changes. That's
-# hard to detect, but I suppose "make mrproper" is a good idea
-# before switching between archs anyway.
-
-define check-symlink
-	set -e;								\
-	if [ -L include/asm ]; then					\
-		asmlink=`readlink include/asm | cut -d '-' -f 2`;	\
-		if [ "$$asmlink" != "$(SRCARCH)" ]; then		\
-			echo "ERROR: the symlink $@ points to asm-$$asmlink but asm-$(SRCARCH) was expected";	\
-			echo "       set ARCH or save .config and run 'make mrproper' to fix it";		\
-			exit 1;						\
-		fi;							\
-	fi
-endef
-
-# We create the target directory of the symlink if it does
-# not exist so the test in chack-symlink works and we have a
-# directory for generated filesas used by some architectures.
-define create-symlink
-	if [ ! -L include/asm ]; then					\
-			$(kecho) '  SYMLINK $@ -> include/asm-$(SRCARCH)';	\
-			if [ ! -d include/asm-$(SRCARCH) ]; then	\
-				mkdir -p include/asm-$(SRCARCH);	\
-			fi;						\
-			ln -fsn asm-$(SRCARCH) $@;			\
-	fi
-endef
-
-include/asm:
-	$(Q)$(check-symlink)
-	$(Q)$(create-symlink)
-
 define symlink-config-h
 	if [ -f $(srctree)/$(BOARD)/config.h ]; then		\
 		$(kecho) '  SYMLINK $@ -> $(BOARD)/config.h';	\
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
