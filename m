Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from conuserg-09.nifty.com ([210.131.2.76])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gdbdf-0007w6-H3
 for barebox@lists.infradead.org; Sun, 30 Dec 2018 14:00:26 +0000
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Sun, 30 Dec 2018 22:59:23 +0900
Message-Id: <1546178368-26182-7-git-send-email-yamada.masahiro@socionext.com>
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
Subject: [PATCH 06/11] .gitignore: move *.lex.c *.tab.[ch] patterns to the
 top-level .gitignore
To: barebox@lists.infradead.org

Linux commit 598893002745690e57692ca5bf6fb9ff04604a1b

These patterns are common to host programs that require lexer and parser.
Move them to the top .gitignore.

Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
---

 .gitignore                 | 2 ++
 scripts/dtc/.gitignore     | 3 ---
 scripts/kconfig/.gitignore | 3 ---
 3 files changed, 2 insertions(+), 6 deletions(-)

diff --git a/.gitignore b/.gitignore
index dd1a052..f6aff49 100644
--- a/.gitignore
+++ b/.gitignore
@@ -19,6 +19,7 @@
 *.elf
 *.i
 *.ko
+*.lex.c
 *.lst
 *.mcp
 *.mod.c
@@ -30,6 +31,7 @@
 *.so
 *.so.dbg
 *.symtypes
+*.tab.[ch]
 *.bin.gen.S
 Module.symvers
 
diff --git a/scripts/dtc/.gitignore b/scripts/dtc/.gitignore
index 80f6b50..2c0d6a1 100644
--- a/scripts/dtc/.gitignore
+++ b/scripts/dtc/.gitignore
@@ -1,5 +1,2 @@
 dtc
-dtc-lexer.lex.c
-dtc-parser.tab.c
-dtc-parser.tab.h
 fdtget
diff --git a/scripts/kconfig/.gitignore b/scripts/kconfig/.gitignore
index be603c4..bdbabbe 100644
--- a/scripts/kconfig/.gitignore
+++ b/scripts/kconfig/.gitignore
@@ -2,9 +2,6 @@
 # Generated files
 #
 config*
-*.lex.c
-*.tab.c
-*.tab.h
 zconf.hash.c
 *.moc
 gconf.glade.h
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
