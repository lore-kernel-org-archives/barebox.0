Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1akpMu-00065y-Ub
 for barebox@lists.infradead.org; Tue, 29 Mar 2016 08:51:23 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 29 Mar 2016 10:50:51 +0200
Message-Id: <1459241454-21155-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1459241454-21155-1-git-send-email-s.hauer@pengutronix.de>
References: <1459241454-21155-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/7] imd: rename imd_search_validate to imd_get
To: Barebox List <barebox@lists.infradead.org>

The name is more suitable for what the function does. Also let the
function return a pointer to the imd data found in the buffer.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/imd.c         | 24 +++++++++++-------------
 scripts/bareboximd.c |  1 +
 2 files changed, 12 insertions(+), 13 deletions(-)

diff --git a/common/imd.c b/common/imd.c
index 9bd1563..318980b 100644
--- a/common/imd.c
+++ b/common/imd.c
@@ -112,17 +112,17 @@ static int imd_validate_tags(void *buf, int bufsize, int start_ofs)
 }
 
 /*
- * imd_search_validate - find valid metadata in a buffer
+ * imd_get - find valid metadata in a buffer
  * @buf		the buffer
  * @size	buffer size
- * @start	The returned pointer to the metadata
  *
  * This iterates over a buffer and searches for metadata. The metadata
  * is checked for consistency (length fields not exceeding buffer and
- * presence of end header) and returned in @start. The returned pointer
- * is only valid when 0 is returned. The returned data may be unaligned.
+ * presence of end header) and returned.
+ *
+ * Return: a pointer to the image metadata or a ERR_PTR
  */
-static int imd_search_validate(void *buf, int size, struct imd_header **start)
+struct imd_header *imd_get(void *buf, int size)
 {
 	int start_ofs = 0;
 	int i, ret;
@@ -138,13 +138,11 @@ static int imd_search_validate(void *buf, int size, struct imd_header **start)
 		debug("Start tag found at offset %d\n", i);
 
 		ret = imd_validate_tags(buf, size, i);
-		if (!ret) {
-			*start = buf + i;
-			return 0;
-		}
+		if (!ret)
+			return buf + i;
 	}
 
-	return -EINVAL;
+	return ERR_PTR(-EINVAL);
 }
 
 struct imd_type_names {
@@ -282,9 +280,9 @@ int imd_command(int argc, char *argv[])
 	if (ret && ret != -EFBIG)
 		return -errno;
 
-	ret = imd_search_validate(buf, size, &imd_start);
-	if (ret)
-		return ret;
+	imd_start = imd_get(buf, size);
+	if (IS_ERR(imd_start))
+		return PTR_ERR(imd_start);
 
 	if (type == IMD_TYPE_INVALID) {
 		imd_for_each(imd_start, imd) {
diff --git a/scripts/bareboximd.c b/scripts/bareboximd.c
index a3622af..d4da681 100644
--- a/scripts/bareboximd.c
+++ b/scripts/bareboximd.c
@@ -33,6 +33,7 @@
 #include <string.h>
 #include <errno.h>
 #include <stdarg.h>
+#include <linux/err.h>
 
 #include "../include/image-metadata.h"
 
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
