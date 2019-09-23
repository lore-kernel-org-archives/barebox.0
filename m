Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCNAj-0001nJ-90
 for barebox@lists.infradead.org; Mon, 23 Sep 2019 12:10:30 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 23 Sep 2019 14:10:13 +0200
Message-Id: <20190923121018.31574-2-a.fatoum@pengutronix.de>
In-Reply-To: <20190923121018.31574-1-a.fatoum@pengutronix.de>
References: <20190923121018.31574-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 1/6] scripts/dtc: Reinstate barebox-specifics in
 update-dtc-source.sh
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

The barebox update-dtc-source.sh differs from the Linux one in that it
installs fdtget as well, because it's required for barebox IMD to work.
Readd fdtget.c to DTC_SOURCE and while at it reinstate the old comments.

Fixes: 46bdae84e8 ("dtc: Update update-dtc-source.sh from Linux")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
Please apply to upstream/master
---
 scripts/dtc/update-dtc-source.sh | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

diff --git a/scripts/dtc/update-dtc-source.sh b/scripts/dtc/update-dtc-source.sh
index 7dd29a0362b8..fc644c5ada26 100755
--- a/scripts/dtc/update-dtc-source.sh
+++ b/scripts/dtc/update-dtc-source.sh
@@ -4,15 +4,14 @@
 #
 # This script assumes that the dtc and the linux git trees are in the
 # same directory. After building dtc in the dtc directory, it copies the
-# source files and generated source file(s) into the scripts/dtc directory
-# in the kernel and creates a git commit updating them to the new
-# version.
+# source files into the scripts/dtc directory in barebox and creates a git
+# commit updating them to the new version.
 #
-# Usage: from the top level Linux source tree, run:
+# Usage: from the top level barebox source tree, run:
 # $ ./scripts/dtc/update-dtc-source.sh
 #
 # The script will change into the dtc tree, build and test dtc, copy the
-# relevant files into the kernel tree and create a git commit. The commit
+# relevant files into the barebox tree and create a git commit. The commit
 # message will need to be modified to reflect the version of DTC being
 # imported
 #
@@ -33,7 +32,7 @@ DTC_LINUX_PATH=`pwd`/scripts/dtc
 
 DTC_SOURCE="checks.c data.c dtc.c dtc.h flattree.c fstree.c livetree.c srcpos.c \
 		srcpos.h treesource.c util.c util.h version_gen.h yamltree.c Makefile.dtc \
-		dtc-lexer.l dtc-parser.y"
+		dtc-lexer.l dtc-parser.y fdtget.c"
 LIBFDT_SOURCE="Makefile.libfdt fdt.c fdt.h fdt_addresses.c fdt_empty_tree.c \
 		fdt_overlay.c fdt_ro.c fdt_rw.c fdt_strerror.c fdt_sw.c \
 		fdt_wip.c libfdt.h libfdt_env.h libfdt_internal.h"
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
