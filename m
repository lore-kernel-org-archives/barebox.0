Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gw3i0-00054S-Hb
 for barebox@lists.infradead.org; Tue, 19 Feb 2019 11:37:10 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 19 Feb 2019 12:36:59 +0100
Message-Id: <20190219113700.10172-2-a.fatoum@pengutronix.de>
In-Reply-To: <20190219113700.10172-1-a.fatoum@pengutronix.de>
References: <20190219113700.10172-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 1/2] scripts/dtc: fix update-dtc-source.sh for barebox use
To: barebox@lists.infradead.org

Unlike Linux:
- barebox' scripts/gen-dtb-s has a dependency on fdget,
  thus change the script to copy fdget.c as part of the update.
- has the libfdt source files in the same directory as the rest
- we don't have/need Makefile.libfdt

Adjust the update-dtc-source.sh script to account for this, so
it can be used to update the scripts/dtc directory. To do so, run
the script while its directory is otherwise empty.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 scripts/dtc/update-dtc-source.sh | 23 +++++++++++------------
 1 file changed, 11 insertions(+), 12 deletions(-)

diff --git a/scripts/dtc/update-dtc-source.sh b/scripts/dtc/update-dtc-source.sh
index 1a009fd195d0..e29f5af00f2d 100755
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
@@ -33,8 +32,8 @@ DTC_LINUX_PATH=`pwd`/scripts/dtc
 
 DTC_SOURCE="checks.c data.c dtc.c dtc.h flattree.c fstree.c livetree.c srcpos.c \
 		srcpos.h treesource.c util.c util.h version_gen.h Makefile.dtc \
-		dtc-lexer.l dtc-parser.y"
-LIBFDT_SOURCE="Makefile.libfdt fdt.c fdt.h fdt_addresses.c fdt_empty_tree.c \
+		dtc-lexer.l dtc-parser.y fdtget.c"
+LIBFDT_SOURCE="fdt.c fdt.h fdt_addresses.c fdt_empty_tree.c \
 		fdt_overlay.c fdt_ro.c fdt_rw.c fdt_strerror.c fdt_sw.c \
 		fdt_wip.c libfdt.h libfdt_env.h libfdt_internal.h"
 
@@ -59,13 +58,13 @@ for f in $DTC_SOURCE; do
 	git add ${f}
 done
 for f in $LIBFDT_SOURCE; do
-       cp ${DTC_UPSTREAM_PATH}/libfdt/${f} libfdt/${f}
-       git add libfdt/${f}
+       cp ${DTC_UPSTREAM_PATH}/libfdt/${f} ${f}
+       git add ${f}
 done
 
-sed -i -- 's/#include <libfdt_env.h>/#include "libfdt_env.h"/g' ./libfdt/libfdt.h
-sed -i -- 's/#include <fdt.h>/#include "fdt.h"/g' ./libfdt/libfdt.h
-git add ./libfdt/libfdt.h
+sed -i -- 's/#include <libfdt_env.h>/#include "libfdt_env.h"/g' ./libfdt.h
+sed -i -- 's/#include <fdt.h>/#include "fdt.h"/g' ./libfdt.h
+git add ./libfdt.h
 
 commit_msg=$(cat << EOF
 scripts/dtc: Update to upstream version ${dtc_version}
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
