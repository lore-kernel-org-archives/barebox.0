Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eZXda-0004HJ-6z
 for barebox@lists.infradead.org; Thu, 11 Jan 2018 07:51:07 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 11 Jan 2018 08:50:11 +0100
Message-Id: <20180111075012.9050-7-s.hauer@pengutronix.de>
In-Reply-To: <20180111075012.9050-1-s.hauer@pengutronix.de>
References: <20180111075012.9050-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 6/7] file_list: Add ubi flag
To: Barebox List <barebox@lists.infradead.org>

This flag is added to better support flashing UBI image with Android
sparse images. Android fastboot splits images which are bigger than the
free memory into multiple images which are then transferred in multiple
fastboot sessions. In a session which is not the first one we can no
longer detect if an image is a UBI image or not, so we need a flag to
make this explicit.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/file-list.c  | 3 +++
 include/file-list.h | 1 +
 2 files changed, 4 insertions(+)

diff --git a/common/file-list.c b/common/file-list.c
index 8d61b76cbb..eb469cf9be 100644
--- a/common/file-list.c
+++ b/common/file-list.c
@@ -92,6 +92,9 @@ static int file_list_parse_one(struct file_list *files, const char *partstr, con
 			case 'c':
 				flags |= FILE_LIST_FLAG_CREATE;
 				break;
+			case 'u':
+				flags |= FILE_LIST_FLAG_UBI;
+				break;
 			default:
 				pr_err("Unknown flag '%c'\n", *partstr);
 				return -EINVAL;
diff --git a/include/file-list.h b/include/file-list.h
index 1e02539d4d..404d8d64bb 100644
--- a/include/file-list.h
+++ b/include/file-list.h
@@ -4,6 +4,7 @@
 #define FILE_LIST_FLAG_SAFE	(1 << 0)
 #define FILE_LIST_FLAG_READBACK	(1 << 1)
 #define FILE_LIST_FLAG_CREATE	(1 << 2)
+#define FILE_LIST_FLAG_UBI	(1 << 3)
 
 struct file_list_entry {
 	char *name;
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
