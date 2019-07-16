Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnHZj-0001hE-M5
 for barebox@lists.infradead.org; Tue, 16 Jul 2019 07:08:37 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 16 Jul 2019 09:08:25 +0200
Message-Id: <20190716070825.23959-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] ubiformat: Fix wrong error tests
To: Barebox List <barebox@lists.infradead.org>

Several tests in ubiformat test for a positive error code where a
negative error code is returned from the called functions. This
is because the original code used tested against errno which is a
positive value.
One place still tests against errno, but the test should be against
the return value from the last function call. Fix that aswell.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/ubiformat.c | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/common/ubiformat.c b/common/ubiformat.c
index 655c5323ba..72b9b6f2eb 100644
--- a/common/ubiformat.c
+++ b/common/ubiformat.c
@@ -31,7 +31,6 @@
 #include <common.h>
 #include <fs.h>
 #include <fcntl.h>
-#include <errno.h>
 #include <crc.h>
 #include <stdlib.h>
 #include <clock.h>
@@ -258,7 +257,7 @@ static int flash_image(struct ubiformat_args *args, struct mtd_info *mtd,
 				printf("\n");
 			sys_errmsg("failed to erase eraseblock %d", eb);
 
-			if (err != EIO)
+			if (err != -EIO)
 				goto out_close;
 
 			if (mark_bad(args, mtd, si, eb))
@@ -310,7 +309,7 @@ static int flash_image(struct ubiformat_args *args, struct mtd_info *mtd,
 		if (err) {
 			sys_errmsg("cannot write eraseblock %d", eb);
 
-			if (err != EIO)
+			if (err != -EIO)
 				goto out_close;
 
 			err = mtd_peb_torture(mtd, eb);
@@ -401,7 +400,7 @@ static int format(struct ubiformat_args *args, struct mtd_info *mtd,
 				printf("\n");
 
 			sys_errmsg("failed to erase eraseblock %d", eb);
-			if (err != EIO)
+			if (err != -EIO)
 				goto out_free;
 
 			if (mark_bad(args, mtd, si, eb))
@@ -433,7 +432,7 @@ static int format(struct ubiformat_args *args, struct mtd_info *mtd,
 			sys_errmsg("cannot write EC header (%d bytes buffer) to eraseblock %d",
 				   write_size, eb);
 
-			if (errno != EIO) {
+			if (err != -EIO) {
 				if (args->subpage_size != mtd->writesize)
 					normsg("may be sub-page size is incorrect?");
 				goto out_free;
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
