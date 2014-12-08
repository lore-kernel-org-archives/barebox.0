Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Xxyae-0008Jw-7d
 for barebox@lists.infradead.org; Mon, 08 Dec 2014 13:43:06 +0000
Received: from dude.hi.4.pengutronix.de ([10.1.0.7] helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <l.stach@pengutronix.de>) id 1XxyaG-0004d9-8V
 for barebox@lists.infradead.org; Mon, 08 Dec 2014 14:42:40 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Mon,  8 Dec 2014 14:42:33 +0100
Message-Id: <1418046159-29843-6-git-send-email-l.stach@pengutronix.de>
In-Reply-To: <1418046159-29843-1-git-send-email-l.stach@pengutronix.de>
References: <1418046159-29843-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH 06/12] fs: efivar: switch to standard list implementation
To: barebox@lists.infradead.org

Cleans the code a bit and will allow us to implement
removing of vars quite a bit easier.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 fs/efivarfs.c | 34 +++++++++++++---------------------
 1 file changed, 13 insertions(+), 21 deletions(-)

diff --git a/fs/efivarfs.c b/fs/efivarfs.c
index 4e13c8365e0e..fda5d7449e4f 100644
--- a/fs/efivarfs.c
+++ b/fs/efivarfs.c
@@ -196,12 +196,12 @@ static loff_t efivarfs_lseek(struct device_d *dev, FILE *f, loff_t pos)
 
 struct efivarfs_dir_entry {
 	char *name;
-	struct efivarfs_dir_entry *next;
+	struct list_head node;
 };
 
 struct efivarfs_dir {
-	struct efivarfs_dir_entry *first;
-	struct efivarfs_dir_entry *current;
+	struct list_head entries;
+	struct list_head *current;
 	DIR dir;
 };
 
@@ -217,6 +217,7 @@ static DIR *efivarfs_opendir(struct device_d *dev, const char *pathname)
 	name[0] = 0;
 
 	edir = xzalloc(sizeof(*edir));
+	INIT_LIST_HEAD(&edir->entries);
 
 	while (1) {
 		struct efivarfs_dir_entry *entry;
@@ -230,19 +231,12 @@ static DIR *efivarfs_opendir(struct device_d *dev, const char *pathname)
 		name8 = strdup_wchar_to_char(name);
 
 		entry->name = asprintf("%s-%pUl", name8, &vendor);
-
 		free(name8);
 
-		if (!edir->first)
-			edir->first = entry;
-
-		if (edir->current)
-			edir->current->next = entry;
-
-		edir->current = entry;
+		list_add_tail(&entry->node, &edir->entries);
 	}
 
-	edir->current = edir->first;
+	edir->current = edir->entries.next;
 
 	return &edir->dir;
 }
@@ -250,11 +244,14 @@ static DIR *efivarfs_opendir(struct device_d *dev, const char *pathname)
 static struct dirent *efivarfs_readdir(struct device_d *dev, DIR *dir)
 {
 	struct efivarfs_dir *edir = container_of(dir, struct efivarfs_dir, dir);
+	struct efivarfs_dir_entry *entry;
 
-	if (!edir->current)
+	if (edir->current == &edir->entries)
 		return NULL;
 
-	strcpy(dir->d.d_name, edir->current->name);
+	entry = list_entry(edir->current, struct efivarfs_dir_entry, node);
+
+	strcpy(dir->d.d_name, entry->name);
 
 	edir->current = edir->current->next;
 
@@ -264,16 +261,11 @@ static struct dirent *efivarfs_readdir(struct device_d *dev, DIR *dir)
 static int efivarfs_closedir(struct device_d *dev, DIR *dir)
 {
 	struct efivarfs_dir *edir = container_of(dir, struct efivarfs_dir, dir);
-	struct efivarfs_dir_entry *entry;
-
-	entry = edir->first;
+	struct efivarfs_dir_entry *entry, *tmp;
 
-	while (entry) {
-		struct efivarfs_dir_entry *tmp;
+	list_for_each_entry_safe(entry, tmp, &edir->entries, node) {
 		free(entry->name);
-		tmp = entry->next;
 		free(entry);
-		entry = tmp;
 	}
 
 	free(edir);
-- 
2.1.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
