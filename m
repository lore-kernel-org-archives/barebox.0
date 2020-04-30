Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from conuserg-09.nifty.com ([210.131.2.76])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU1Wt-0002Nu-Dy
 for barebox@lists.infradead.org; Thu, 30 Apr 2020 05:14:37 +0000
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Thu, 30 Apr 2020 14:13:57 +0900
Message-Id: <20200430051357.766084-4-masahiroy@kernel.org>
In-Reply-To: <20200430051357.766084-1-masahiroy@kernel.org>
References: <20200430051357.766084-1-masahiroy@kernel.org>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 4/4] kbuild: sync scripts/Kbuild.include with Linux 5.7-rc2
To: barebox@lists.infradead.org
Cc: Masahiro Yamada <masahiroy@kernel.org>

More random cherry-picks for scripts/Kbuild.include

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 scripts/Kbuild.include | 42 ++++++++++++++++++++++--------------------
 1 file changed, 22 insertions(+), 20 deletions(-)

diff --git a/scripts/Kbuild.include b/scripts/Kbuild.include
index 074d2db04..838ab11e7 100644
--- a/scripts/Kbuild.include
+++ b/scripts/Kbuild.include
@@ -1,3 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0
 ####
 # kbuild: Generic definitions
 
@@ -23,10 +24,18 @@ depfile = $(subst $(comma),_,$(dot-target).d)
 # filename of target with directory and extension stripped
 basetarget = $(basename $(notdir $@))
 
+###
+# real prerequisites without phony targets
+real-prereqs = $(filter-out $(PHONY), $^)
+
 ###
 # Escape single quote for use in echo statements
 escsq = $(subst $(squote),'\$(squote)',$1)
 
+###
+# Quote a string to pass it to C files. foo => '"foo"'
+stringify = $(squote)$(quote)$1$(quote)$(squote)
+
 ###
 # Easy method for doing a status message
        kecho := :
@@ -62,18 +71,19 @@ endef
 
 ######
 # gcc support functions
-# See documentation in Documentation/kbuild/makefiles.txt
+# See documentation in Documentation/kbuild/makefiles.rst
 
 # cc-cross-prefix
 # Usage: CROSS_COMPILE := $(call cc-cross-prefix, m68k-linux-gnu- m68k-linux-)
-# Return first prefix where a prefix$(CC) is found in PATH.
-# If no $(CC) found in PATH with listed prefixes return nothing
-cc-cross-prefix =  \
-	$(word 1, $(foreach c,$(1),                                   \
-		$(shell set -e;                                       \
-		if (which $(strip $(c))$(CC)) > /dev/null 2>&1 ; then \
-			echo $(c);                                    \
-		fi)))
+# Return first <prefix> where a <prefix>gcc is found in PATH.
+# If no gcc found in PATH with listed prefixes return nothing
+#
+# Note: '2>/dev/null' is here to force Make to invoke a shell. Otherwise, it
+# would try to directly execute the shell builtin 'command'. This workaround
+# should be kept for a long time since this issue was fixed only after the
+# GNU Make 4.2.1 release.
+cc-cross-prefix = $(firstword $(foreach c, $(1), \
+			$(if $(shell command -v -- $(c)gcc 2>/dev/null), $(c))))
 
 # output directory for tests below
 TMPOUT := $(if $(KBUILD_EXTMOD),$(firstword $(KBUILD_EXTMOD))/)
@@ -138,18 +148,13 @@ ld-option = $(call try-run,\
 # Shorthand for $(Q)$(MAKE) -f scripts/Makefile.build obj=
 # Usage:
 # $(Q)$(MAKE) $(build)=dir
-build := -f $(if $(KBUILD_SRC),$(srctree)/)scripts/Makefile.build obj
+build := -f $(srctree)/scripts/Makefile.build obj
 
 ###
-# Shorthand for $(Q)$(MAKE) -f scripts/Makefile.modbuiltin obj=
-# Usage:
-# $(Q)$(MAKE) $(modbuiltin)=dir
-modbuiltin := -f $(if $(KBUILD_SRC),$(srctree)/)scripts/Makefile.modbuiltin obj
-
-# Shorthand for $(Q)$(MAKE) -f scripts/Makefile.clean obj=dir
+# Shorthand for $(Q)$(MAKE) -f scripts/Makefile.clean obj=
 # Usage:
 # $(Q)$(MAKE) $(clean)=dir
-clean := -f $(if $(KBUILD_SRC),$(srctree)/)scripts/Makefile.clean obj
+clean := -f $(srctree)/scripts/Makefile.clean obj
 
 # Prefix -I with $(srctree) if it is not an absolute path.
 # skip if -I has no parameter
@@ -167,9 +172,6 @@ echo-cmd = $(if $($(quiet)cmd_$(1)),\
 # printing commands
 cmd = @set -e; $(echo-cmd) $(cmd_$(1))
 
-# Add $(obj)/ for paths that are not absolute
-objectify = $(foreach o,$(1),$(if $(filter /%,$(o)),$(o),$(obj)/$(o)))
-
 ###
 # if_changed      - execute command if any prerequisite is newer than
 #                   target, or command line has changed
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
