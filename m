Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from conuserg-08.nifty.com ([210.131.2.75])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvP77-0000gz-3b
 for barebox@lists.infradead.org; Wed, 07 Aug 2019 16:48:38 +0000
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Thu,  8 Aug 2019 01:48:08 +0900
Message-Id: <20190807164808.15228-1-yamada.masahiro@socionext.com>
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
Subject: [PATCH] kbuild: use -fmacro-prefix-map to make __FILE__ a relative
 path
To: barebox@lists.infradead.org

Linux commit a73619a845d5625079cc1b3b820f44c899618388

The __FILE__ macro is used everywhere in the kernel to locate the file
printing the log message, such as WARN_ON(), etc.  If the kernel is
built out of tree, this can be a long absolute path, like this:

  WARNING: CPU: 1 PID: 1 at /path/to/build/directory/arch/arm64/kernel/foo.c:...

This is because Kbuild runs in the objtree instead of the srctree,
then __FILE__ is expanded to a file path prefixed with $(srctree)/.

Commit 9da0763bdd82 ("kbuild: Use relative path when building in a
subdir of the source tree") improved this to some extent; $(srctree)
becomes ".." if the objtree is a child of the srctree.

For other cases of out-of-tree build, __FILE__ is still the absolute
path.  It also means the kernel image depends on where it was built.

A brand-new option from GCC, -fmacro-prefix-map, solves this problem.
If your compiler supports it, __FILE__ is the relative path from the
srctree regardless of O= option.  This provides more readable log and
more reproducible builds.

Please note __FILE__ is always an absolute path for external modules.

Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
---
 Makefile | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Makefile b/Makefile
index 08ca8e2dac..e817771b25 100644
--- a/Makefile
+++ b/Makefile
@@ -486,6 +486,9 @@ CFLAGS += $(call cc-option,-Wdeclaration-after-statement,)
 # disable pointer signed / unsigned warnings in gcc 4.0
 CFLAGS += $(call cc-option,-Wno-pointer-sign,)
 
+# change __FILE__ to the relative path from the srctree
+CFLAGS += $(call cc-option,-fmacro-prefix-map=$(srctree)/=)
+
 # KBUILD_IMAGE: Default barebox image to build
 # Depending on the architecture, this can be either compressed or not.
 # It will also include any necessary headers to be bootable.
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
