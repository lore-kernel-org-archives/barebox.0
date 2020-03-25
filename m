Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from conuserg-12.nifty.com ([210.131.2.79])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGzYk-00010O-1i
 for barebox@lists.infradead.org; Wed, 25 Mar 2020 06:30:39 +0000
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Wed, 25 Mar 2020 15:30:02 +0900
Message-Id: <20200325063002.27306-1-yamada.masahiro@socionext.com>
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
Subject: [PATCH 1/3] kbuild: remove clean-dirs syntax
To: barebox@lists.infradead.org

[ Linux comit 1634f2bfdb846ed0a8b73131a9dff7c420fb3fe1 ]

The only the difference between clean-files and clean-dirs is the -r
option passed to the 'rm' command.

You can always pass -r, and then remove the clean-dirs syntax.

Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
---
 scripts/Makefile.clean   | 15 +--------------
 scripts/kconfig/Makefile |  2 +-
 2 files changed, 2 insertions(+), 15 deletions(-)

diff --git a/scripts/Makefile.clean b/scripts/Makefile.clean
index 41712f89751c..d1e4a7800ee7 100644
--- a/scripts/Makefile.clean
+++ b/scripts/Makefile.clean
@@ -46,27 +46,14 @@ __clean-files   := $(wildcard                                               \
                    $(addprefix $(obj)/, $(filter-out /%, $(__clean-files))) \
 		   $(filter /%, $(__clean-files)))
 
-# as clean-dirs is given relative to the current directory, this adds
-# a $(obj) prefix, except for absolute paths
-
-__clean-dirs    := $(wildcard                                               \
-                   $(addprefix $(obj)/, $(filter-out /%, $(clean-dirs)))    \
-		   $(filter /%, $(clean-dirs)))
-
 # ==========================================================================
 
 quiet_cmd_clean    = CLEAN   $(obj)
-      cmd_clean    = rm -f $(__clean-files)
-quiet_cmd_cleandir = CLEAN   $(__clean-dirs)
-      cmd_cleandir = rm -rf $(__clean-dirs)
-
+      cmd_clean    = rm -rf $(__clean-files)
 
 __clean: $(subdir-ymn)
 ifneq ($(strip $(__clean-files)),)
 	+$(call cmd,clean)
-endif
-ifneq ($(strip $(__clean-dirs)),)
-	+$(call cmd,cleandir)
 endif
 	@:
 
diff --git a/scripts/kconfig/Makefile b/scripts/kconfig/Makefile
index 7656e1137b6b..bed7a5a2fbe9 100644
--- a/scripts/kconfig/Makefile
+++ b/scripts/kconfig/Makefile
@@ -114,7 +114,7 @@ testconfig: $(obj)/conf
 	$(PYTHON3) -B -m pytest $(srctree)/$(src)/tests \
 	-o cache_dir=$(abspath $(obj)/tests/.cache) \
 	$(if $(findstring 1,$(KBUILD_VERBOSE)),--capture=no)
-clean-dirs += tests/.cache
+clean-files += tests/.cache
 
 # Help text used by make help
 help:
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
