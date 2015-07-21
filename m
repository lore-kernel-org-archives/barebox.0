Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZHSos-0006VA-Ds
 for barebox@lists.infradead.org; Tue, 21 Jul 2015 08:22:35 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 21 Jul 2015 10:22:11 +0200
Message-Id: <1437466931-23552-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] drop <stddef.h> includes
To: Barebox List <barebox@lists.infradead.org>

The compilers stddef.h should not be included. We declare all types
ourselves.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/tlsf.c         | 1 -
 fs/ext4/ext4_common.c | 1 -
 include/tlsf.h        | 2 --
 3 files changed, 4 deletions(-)

diff --git a/common/tlsf.c b/common/tlsf.c
index 9515ac7..984342e 100644
--- a/common/tlsf.c
+++ b/common/tlsf.c
@@ -1,4 +1,3 @@
-#include <stddef.h>
 #include <stdio.h>
 #include <stdlib.h>
 #include <string.h>
diff --git a/fs/ext4/ext4_common.c b/fs/ext4/ext4_common.c
index ab0e6b5..04b1915 100644
--- a/fs/ext4/ext4_common.c
+++ b/fs/ext4/ext4_common.c
@@ -30,7 +30,6 @@
 
 #include <common.h>
 #include <malloc.h>
-#include <stddef.h>
 #include <linux/stat.h>
 #include <linux/time.h>
 #include <asm/byteorder.h>
diff --git a/include/tlsf.h b/include/tlsf.h
index d575e16..1917fa1 100644
--- a/include/tlsf.h
+++ b/include/tlsf.h
@@ -16,8 +16,6 @@
 ** of the document, therefore no GPL restrictions apply.
 */
 
-#include <stddef.h>
-
 #if defined(__cplusplus)
 extern "C" {
 #endif
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
