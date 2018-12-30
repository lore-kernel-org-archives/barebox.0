Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from conuserg-09.nifty.com ([210.131.2.76])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gdbdf-0007w7-Hl
 for barebox@lists.infradead.org; Sun, 30 Dec 2018 14:00:27 +0000
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Sun, 30 Dec 2018 22:59:28 +0900
Message-Id: <1546178368-26182-12-git-send-email-yamada.masahiro@socionext.com>
In-Reply-To: <1546178368-26182-1-git-send-email-yamada.masahiro@socionext.com>
References: <1546178368-26182-1-git-send-email-yamada.masahiro@socionext.com>
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
Subject: [PATCH 11/11] kbuild: remove unnecessary LEX_PREFIX and YACC_PREFIX
To: barebox@lists.infradead.org

Because the latest Kconfig uses the default 'yy' prefix, this is
no longer unneeded.

Based on Linux commit eea199b445f6 ("kbuild: remove unnecessary
LEX_PREFIX and YACC_PREFIX").

Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
---

 scripts/Makefile.lib | 10 +++-------
 1 file changed, 3 insertions(+), 7 deletions(-)

diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index b0f6d68..afe4875 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -179,26 +179,22 @@ endef
 
 # LEX
 # ---------------------------------------------------------------------------
-LEX_PREFIX = $(if $(LEX_PREFIX_${baseprereq}),$(LEX_PREFIX_${baseprereq}),yy)
-
 quiet_cmd_flex = LEX     $@
-      cmd_flex = $(LEX) -o$@ -L -P $(LEX_PREFIX) $<
+      cmd_flex = $(LEX) -o$@ -L $<
 
 $(obj)/%.lex.c: $(src)/%.l FORCE
 	$(call if_changed,flex)
 
 # YACC
 # ---------------------------------------------------------------------------
-YACC_PREFIX = $(if $(YACC_PREFIX_${baseprereq}),$(YACC_PREFIX_${baseprereq}),yy)
-
 quiet_cmd_bison = YACC    $@
-      cmd_bison = $(YACC) -o$@ -t -l -p $(YACC_PREFIX) $<
+      cmd_bison = $(YACC) -o$@ -t -l $<
 
 $(obj)/%.tab.c: $(src)/%.y FORCE
 	$(call if_changed,bison)
 
 quiet_cmd_bison_h = YACC    $@
-      cmd_bison_h = $(YACC) -o/dev/null --defines=$@ -t -l -p $(YACC_PREFIX) $<
+      cmd_bison_h = $(YACC) -o/dev/null --defines=$@ -t -l $<
 
 $(obj)/%.tab.h: $(src)/%.y FORCE
 	$(call if_changed,bison_h)
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
