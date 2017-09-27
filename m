Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dxB9j-0004GI-5O
 for barebox@lists.infradead.org; Wed, 27 Sep 2017 12:09:44 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 27 Sep 2017 14:09:04 +0200
Message-Id: <20170927120910.10516-7-s.hauer@pengutronix.de>
In-Reply-To: <20170927120910.10516-1-s.hauer@pengutronix.de>
References: <20170927120910.10516-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 06/12] file_list: Add error messages
To: Barebox List <barebox@lists.infradead.org>

Add error messages when file list parsing fails. Also, forward the error
from file_list_parse_one() instead of using -EINVAL for every error.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/file-list.c | 13 +++++++++----
 1 file changed, 9 insertions(+), 4 deletions(-)

diff --git a/common/file-list.c b/common/file-list.c
index 0c3cb0a4e7..8d61b76cbb 100644
--- a/common/file-list.c
+++ b/common/file-list.c
@@ -9,6 +9,8 @@
  * General Public License for more details.
  */
 
+#define pr_fmt(fmt)	"file_list: " fmt
+
 #include <common.h>
 #include <malloc.h>
 #include <fs.h>
@@ -91,6 +93,7 @@ static int file_list_parse_one(struct file_list *files, const char *partstr, con
 				flags |= FILE_LIST_FLAG_CREATE;
 				break;
 			default:
+				pr_err("Unknown flag '%c'\n", *partstr);
 				return -EINVAL;
 			}
 			break;
@@ -100,8 +103,10 @@ static int file_list_parse_one(struct file_list *files, const char *partstr, con
 		partstr++;
 	}
 
-	if (state != PARSE_FLAGS)
+	if (state != PARSE_FLAGS) {
+		pr_err("Missing ')'\n");
 		return -EINVAL;
+	}
 
 	if (*partstr == ',')
 		partstr++;
@@ -121,9 +126,9 @@ struct file_list *file_list_parse(const char *str)
 	INIT_LIST_HEAD(&files->list);
 
 	while (*str) {
-		if (file_list_parse_one(files, str, &endptr)) {
-			printf("parse error\n");
-			ret = -EINVAL;
+		ret = file_list_parse_one(files, str, &endptr);
+		if (ret) {
+			pr_err("parse error\n");
 			goto out;
 		}
 		str = endptr;
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
