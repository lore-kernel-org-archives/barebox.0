Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dxB9j-0004GG-5N
 for barebox@lists.infradead.org; Wed, 27 Sep 2017 12:09:47 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 27 Sep 2017 14:08:59 +0200
Message-Id: <20170927120910.10516-2-s.hauer@pengutronix.de>
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
Subject: [PATCH 01/12] file_list: Add function to add an entry to the list
To: Barebox List <barebox@lists.infradead.org>

Add file_list_add_entry() to add a single entry to a file_list. Then
use it in file_list_parse_one() instead of open coding adding a new
entry.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/file-list.c  | 28 +++++++++++++++++++---------
 include/file-list.h |  3 +++
 2 files changed, 22 insertions(+), 9 deletions(-)

diff --git a/common/file-list.c b/common/file-list.c
index 90c0f429c5..010f8f0617 100644
--- a/common/file-list.c
+++ b/common/file-list.c
@@ -8,12 +8,26 @@
 #define PARSE_NAME	1
 #define PARSE_FLAGS	2
 
+int file_list_add_entry(struct file_list *files, const char *name, const char *filename,
+			unsigned long flags)
+{
+	struct file_list_entry *entry = xzalloc(sizeof(*entry));
+
+	entry->name = xstrdup(name);
+	entry->filename = xstrdup(filename);
+	entry->flags = flags;
+
+	list_add_tail(&entry->list, &files->list);
+
+	return 0;
+}
+
 static int file_list_parse_one(struct file_list *files, const char *partstr, const char **endstr)
 {
 	int i = 0, state = PARSE_DEVICE;
 	char filename[PATH_MAX];
 	char name[PATH_MAX];
-	struct file_list_entry *entry = xzalloc(sizeof(*entry));
+	unsigned long flags = 0;
 
 	memset(filename, 0, sizeof(filename));
 	memset(name, 0, sizeof(name));
@@ -39,13 +53,13 @@ static int file_list_parse_one(struct file_list *files, const char *partstr, con
 		case PARSE_FLAGS:
 			switch (*partstr) {
 			case 's':
-				entry->flags |= FILE_LIST_FLAG_SAFE;
+				flags |= FILE_LIST_FLAG_SAFE;
 				break;
 			case 'r':
-				entry->flags |= FILE_LIST_FLAG_READBACK;
+				flags |= FILE_LIST_FLAG_READBACK;
 				break;
 			case 'c':
-				entry->flags |= FILE_LIST_FLAG_CREATE;
+				flags |= FILE_LIST_FLAG_CREATE;
 				break;
 			default:
 				return -EINVAL;
@@ -60,15 +74,11 @@ static int file_list_parse_one(struct file_list *files, const char *partstr, con
 	if (state != PARSE_FLAGS)
 		return -EINVAL;
 
-	entry->name = xstrdup(name);
-	entry->filename = xstrdup(filename);
 	if (*partstr == ',')
 		partstr++;
 	*endstr = partstr;
 
-	list_add_tail(&entry->list, &files->list);
-
-	return 0;
+	return file_list_add_entry(files, name, filename, flags);
 }
 
 struct file_list *file_list_parse(const char *str)
diff --git a/include/file-list.h b/include/file-list.h
index 608181ff8d..ccdc2b5efd 100644
--- a/include/file-list.h
+++ b/include/file-list.h
@@ -20,6 +20,9 @@ struct file_list {
 struct file_list *file_list_parse(const char *str);
 void file_list_free(struct file_list *);
 
+int file_list_add_entry(struct file_list *files, const char *name, const char *filename,
+			unsigned long flags);
+
 #define file_list_for_each_entry(files, entry) \
 	list_for_each_entry(entry, &files->list, list)
 
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
