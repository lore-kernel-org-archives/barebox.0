Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from conuserg-08.nifty.com ([210.131.2.75])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fOZmS-0003uw-Qo
 for barebox@lists.infradead.org; Fri, 01 Jun 2018 02:27:06 +0000
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Fri,  1 Jun 2018 11:26:09 +0900
Message-Id: <1527819969-26797-1-git-send-email-yamada.masahiro@socionext.com>
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
Subject: [PATCH] .gitignore: sort normal pattern rules alphabetically
To: barebox@lists.infradead.org

Follow Linux commit 1377dd3e2987 (".gitignore: sort normal pattern
rules alphabetically").

This would allow us to easily catch duplicated patterns if any.

Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
---

 .gitignore | 30 +++++++++++++++---------------
 1 file changed, 15 insertions(+), 15 deletions(-)

diff --git a/.gitignore b/.gitignore
index bbcfa22..d83d317 100644
--- a/.gitignore
+++ b/.gitignore
@@ -7,29 +7,29 @@
 # command after changing this file, to see if there are
 # any tracked files which get ignored after the change.
 #
-# Normal rules
+# Normal rules (sorted alphabetically)
 #
 .*
+*.a
+*.bbenv
+*.bbenv.*
+*.bct
+*.dcd
+*.dcd.S
+*.elf
+*.i
+*.ko
+*.lst
+*.mcp
+*.mod.c
 *.o
 *.o.*
-*.a
+*.patch
+*.pyc
 *.s
-*.ko
 *.so
 *.so.dbg
-*.mod.c
-*.i
-*.lst
 *.symtypes
-*.elf
-*.patch
-*.pyc
-*.mcp
-*.bct
-*.dcd
-*.dcd.S
-*.bbenv
-*.bbenv.*
 Module.symvers
 
 #
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
