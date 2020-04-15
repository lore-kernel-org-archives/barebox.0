Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from conuserg-11.nifty.com ([210.131.2.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOcvX-0002Yg-5o
 for barebox@lists.infradead.org; Wed, 15 Apr 2020 07:57:46 +0000
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Wed, 15 Apr 2020 16:57:04 +0900
Message-Id: <20200415075705.54683-2-masahiroy@kernel.org>
In-Reply-To: <20200415075705.54683-1-masahiroy@kernel.org>
References: <20200415075705.54683-1-masahiroy@kernel.org>
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
Subject: [PATCH 2/3] kbuild: update flex and bison rules to Linux 5.7-rc1
To: barebox@lists.infradead.org
Cc: Masahiro Yamada <masahiroy@kernel.org>

Import the following commits from Linux, and re-sync.

- 6ba7dc6616ce
  "kbuild: make bison create C file and header in a single pattern rule"

- cf8dfd15e5fb
  "kbuild: move flex and bison rules to Makefile.host"

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 scripts/Makefile.host | 20 +++++++++++++++++++-
 scripts/Makefile.lib  | 22 ----------------------
 2 files changed, 19 insertions(+), 23 deletions(-)

diff --git a/scripts/Makefile.host b/scripts/Makefile.host
index 61f0a7714..8f4d62f22 100644
--- a/scripts/Makefile.host
+++ b/scripts/Makefile.host
@@ -1,3 +1,21 @@
+# SPDX-License-Identifier: GPL-2.0
+
+# LEX
+# ---------------------------------------------------------------------------
+quiet_cmd_flex = LEX     $@
+      cmd_flex = $(LEX) -o$@ -L $<
+
+$(obj)/%.lex.c: $(src)/%.l FORCE
+	$(call if_changed,flex)
+
+# YACC
+# ---------------------------------------------------------------------------
+quiet_cmd_bison = YACC    $(basename $@).[ch]
+      cmd_bison = $(YACC) -o $(basename $@).c --defines=$(basename $@).h -t -l $<
+
+$(obj)/%.tab.c $(obj)/%.tab.h: $(src)/%.y FORCE
+	$(call if_changed,bison)
+
 # ==========================================================================
 # Building binaries on the host system
 # Binaries are used during the compilation of the kernel, for example
@@ -5,7 +23,7 @@
 #
 # Both C and C++ are supported, but preferred language is C for such utilities.
 #
-# Sample syntax (see Documentation/kbuild/makefiles.txt for reference)
+# Sample syntax (see Documentation/kbuild/makefiles.rst for reference)
 # hostprogs := bin2hex
 # Will compile bin2hex.c and create an executable named bin2hex
 #
diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index 2b64b5432..d4c2ed15b 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -195,28 +195,6 @@ $(foreach m, $(notdir $1), \
 	$(addprefix $(obj)/, $(foreach s, $3, $($(m:%$(strip $2)=%$(s)))))))
 endef
 
-# LEX
-# ---------------------------------------------------------------------------
-quiet_cmd_flex = LEX     $@
-      cmd_flex = $(LEX) -o$@ -L $<
-
-$(obj)/%.lex.c: $(src)/%.l FORCE
-	$(call if_changed,flex)
-
-# YACC
-# ---------------------------------------------------------------------------
-quiet_cmd_bison = YACC    $@
-      cmd_bison = $(YACC) -o$@ -t -l $<
-
-$(obj)/%.tab.c: $(src)/%.y FORCE
-	$(call if_changed,bison)
-
-quiet_cmd_bison_h = YACC    $@
-      cmd_bison_h = $(YACC) -o/dev/null --defines=$@ -t -l $<
-
-$(obj)/%.tab.h: $(src)/%.y FORCE
-	$(call if_changed,bison_h)
-
 # Shipped files
 # ===========================================================================
 
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
