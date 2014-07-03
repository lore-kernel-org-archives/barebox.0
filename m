Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X2bdq-0005Yg-C8
 for barebox@lists.infradead.org; Thu, 03 Jul 2014 07:41:15 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  3 Jul 2014 09:40:46 +0200
Message-Id: <1404373246-10075-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1404373246-10075-1-git-send-email-s.hauer@pengutronix.de>
References: <1404373246-10075-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] ls: sort files with -l
To: barebox@lists.infradead.org

Always collect directory entries in a string_list and evaluate it
later. This makes sure that the files are printed alphabetically
even when -l is given.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/ls.c | 54 ++++++++++++++++++++++++++++--------------------------
 1 file changed, 28 insertions(+), 26 deletions(-)

diff --git a/commands/ls.c b/commands/ls.c
index f8144ae..1a5925d 100644
--- a/commands/ls.c
+++ b/commands/ls.c
@@ -53,6 +53,8 @@ int ls(const char *path, ulong flags)
 	char tmp[PATH_MAX];
 	struct stat s;
 	struct string_list sl;
+	struct string_list *entry;
+	int ret;
 
 	string_list_init(&sl);
 
@@ -71,51 +73,51 @@ int ls(const char *path, ulong flags)
 	if (!dir)
 		return -errno;
 
-	while ((d = readdir(dir))) {
-		sprintf(tmp, "%s/%s", path, d->d_name);
-		if (flags & LS_COLUMN) {
-			string_list_add_sorted(&sl, d->d_name);
-		} else {
-			if (lstat(tmp, &s))
-				goto out;
-			ls_one(d->d_name, tmp, &s);
-		}
-	}
+	while ((d = readdir(dir)))
+		string_list_add_sorted(&sl, d->d_name);
 
 	closedir(dir);
 
 	if (flags & LS_COLUMN) {
 		string_list_print_by_column(&sl);
-		string_list_free(&sl);
-	}
-
-	if (!(flags & LS_RECURSIVE))
-		return 0;
+	} else {
+		string_list_for_each_entry(entry, &sl) {
+			sprintf(tmp, "%s/%s", path, entry->str);
+			ret = lstat(tmp, &s);
+			if (ret) {
+				printf("%s: %s\n", tmp, strerror(-ret));
+				continue;
+			}
 
-	dir = opendir(path);
-	if (!dir) {
-		errno = ENOENT;
-		return -ENOENT;
+			ls_one(entry->str, tmp, &s);
+		}
 	}
 
-	while ((d = readdir(dir))) {
+	if (!(flags & LS_RECURSIVE))
+		goto out;
 
-		if (!strcmp(d->d_name, "."))
+	string_list_for_each_entry(entry, &sl) {
+		if (!strcmp(entry->str, "."))
 			continue;
-		if (!strcmp(d->d_name, ".."))
+		if (!strcmp(entry->str, ".."))
 			continue;
-		sprintf(tmp, "%s/%s", path, d->d_name);
+		sprintf(tmp, "%s/%s", path, entry->str);
+
+		ret = lstat(tmp, &s);
+		if (ret) {
+			printf("%s: %s\n", tmp, strerror(-ret));
+			continue;
+		}
 
-		if (lstat(tmp, &s))
-			goto out;
 		if (s.st_mode & S_IFDIR) {
 			char *norm = normalise_path(tmp);
 			ls(norm, flags);
 			free(norm);
 		}
 	}
+
 out:
-	closedir(dir);
+	string_list_free(&sl);
 
 	return 0;
 }
-- 
2.0.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
