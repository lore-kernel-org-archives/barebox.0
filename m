Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from conuserg-09.nifty.com ([210.131.2.76])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gdbdf-0007w8-Gs
 for barebox@lists.infradead.org; Sun, 30 Dec 2018 14:00:27 +0000
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Sun, 30 Dec 2018 22:59:24 +0900
Message-Id: <1546178368-26182-8-git-send-email-yamada.masahiro@socionext.com>
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
Subject: [PATCH 07/11] kbuild: clean up *.lex.c and *.tab.[ch] patterns from
 top-level Makefile
To: barebox@lists.infradead.org

Linux commit 9a8dfb394c046742b2ac7444ba42272e11e9989d

Files suffixed by .lex.c, .tab.[ch] are generated lexers, parsers,
respectively.  Clean them up globally from the top Makefile.

Some of the final host programs those lexer/parser are linked into
are necessary for building external modules, but the intermediates
are unneeded.  They can be cleaned away by 'make clean' instead of
'make mrproper'.

Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
---

 Makefile                 | 1 +
 scripts/dtc/Makefile     | 3 ---
 scripts/kconfig/Makefile | 2 +-
 3 files changed, 2 insertions(+), 4 deletions(-)

diff --git a/Makefile b/Makefile
index a504dae..1f4baa6 100644
--- a/Makefile
+++ b/Makefile
@@ -997,6 +997,7 @@ clean: archclean $(clean-dirs)
 	@find . $(RCS_FIND_IGNORE) \
 		\( -name '*.[oas]' -o -name '*.ko' -o -name '.*.cmd' \
 		-o -name '.*.d' -o -name '.*.tmp' -o -name '*.mod.c' \
+		-o -name '*lex.c' -o -name '.tab.[ch]' \
 		-o -name '*.symtypes' -o -name '*.bbenv.*' -o -name "*.bbenv" \) \
 		-type f -print | xargs rm -f
 
diff --git a/scripts/dtc/Makefile b/scripts/dtc/Makefile
index cc4ebef..1d63476 100644
--- a/scripts/dtc/Makefile
+++ b/scripts/dtc/Makefile
@@ -41,6 +41,3 @@ HOSTCFLAGS_dtc-parser.tab.o := $(HOSTCFLAGS_DTC)
 
 # dependencies on generated files need to be listed explicitly
 $(obj)/dtc-lexer.lex.o: $(obj)/dtc-parser.tab.h
-
-# generated files need to be cleaned explicitly
-clean-files	:= dtc-lexer.lex.c dtc-parser.tab.c dtc-parser.tab.h
diff --git a/scripts/kconfig/Makefile b/scripts/kconfig/Makefile
index 9645c07..ef8e5f9 100644
--- a/scripts/kconfig/Makefile
+++ b/scripts/kconfig/Makefile
@@ -179,7 +179,7 @@ gconf-objs	:= gconf.o zconf.tab.o
 hostprogs-y := conf nconf mconf kxgettext qconf gconf
 
 clean-files	:= qconf.moc .tmp_qtcheck .tmp_gtkcheck
-clean-files	+= zconf.tab.c zconf.lex.c zconf.hash.c gconf.glade.h
+clean-files	+= zconf.hash.c gconf.glade.h
 clean-files     += config.pot linux.pot
 
 # Check that we have the required ncurses stuff installed for lxdialog (menuconfig)
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
