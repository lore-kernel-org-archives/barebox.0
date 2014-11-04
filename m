Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Xladz-0003uR-5M
 for barebox@lists.infradead.org; Tue, 04 Nov 2014 09:43:22 +0000
Received: from dude.hi.4.pengutronix.de ([10.1.0.7] helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <l.stach@pengutronix.de>) id 1Xladd-0002Wv-6M
 for barebox@lists.infradead.org; Tue, 04 Nov 2014 10:42:57 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Tue,  4 Nov 2014 10:42:51 +0100
Message-Id: <1415094176-26435-5-git-send-email-l.stach@pengutronix.de>
In-Reply-To: <1415094176-26435-1-git-send-email-l.stach@pengutronix.de>
References: <1415094176-26435-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH 05/10] fs: efivar: move variable discovery into probe
To: barebox@lists.infradead.org

So we can manipulate things easier.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 fs/efivarfs.c | 109 +++++++++++++++++++++++++++++++---------------------------
 1 file changed, 58 insertions(+), 51 deletions(-)

diff --git a/fs/efivarfs.c b/fs/efivarfs.c
index fda5d7449e4f..aa66aa8dd99d 100644
--- a/fs/efivarfs.c
+++ b/fs/efivarfs.c
@@ -34,9 +34,18 @@
 #include <mach/efi.h>
 #include <mach/efi-device.h>
 
+struct efivarfs_inode {
+	char *name;
+	struct list_head node;
+};
+
+struct efivarfs_dir {
+	struct list_head *current;
+	DIR dir;
+};
+
 struct efivarfs_priv {
-	struct efi_file_handle *root_dir;
-	struct efi_file_io_interface *protocol;
+	struct list_head inodes;
 };
 
 static int char_to_nibble(char c)
@@ -194,64 +203,29 @@ static loff_t efivarfs_lseek(struct device_d *dev, FILE *f, loff_t pos)
 	return f->pos;
 }
 
-struct efivarfs_dir_entry {
-	char *name;
-	struct list_head node;
-};
-
-struct efivarfs_dir {
-	struct list_head entries;
-	struct list_head *current;
-	DIR dir;
-};
-
 static DIR *efivarfs_opendir(struct device_d *dev, const char *pathname)
 {
-	efi_status_t efiret;
-	efi_guid_t vendor;
-	s16 name[1024];
+	struct efivarfs_priv *priv = dev->priv;
 	struct efivarfs_dir *edir;
-	unsigned long size;
-	unsigned char *name8;
-
-	name[0] = 0;
 
 	edir = xzalloc(sizeof(*edir));
-	INIT_LIST_HEAD(&edir->entries);
-
-	while (1) {
-		struct efivarfs_dir_entry *entry;
-
-		size = sizeof(name);
-		efiret = RT->get_next_variable(&size, name, &vendor);
-		if (EFI_ERROR(efiret))
-			break;
-
-		entry = xzalloc(sizeof(*entry));
-		name8 = strdup_wchar_to_char(name);
-
-		entry->name = asprintf("%s-%pUl", name8, &vendor);
-		free(name8);
-
-		list_add_tail(&entry->node, &edir->entries);
-	}
-
-	edir->current = edir->entries.next;
+	edir->current = priv->inodes.next;
 
 	return &edir->dir;
 }
 
 static struct dirent *efivarfs_readdir(struct device_d *dev, DIR *dir)
 {
+	struct efivarfs_priv *priv = dev->priv;
 	struct efivarfs_dir *edir = container_of(dir, struct efivarfs_dir, dir);
-	struct efivarfs_dir_entry *entry;
+	struct efivarfs_inode *inode;
 
-	if (edir->current == &edir->entries)
+	if (edir->current == &priv->inodes)
 		return NULL;
 
-	entry = list_entry(edir->current, struct efivarfs_dir_entry, node);
+	inode = list_entry(edir->current, struct efivarfs_inode, node);
 
-	strcpy(dir->d.d_name, entry->name);
+	strcpy(dir->d.d_name, inode->name);
 
 	edir->current = edir->current->next;
 
@@ -261,12 +235,6 @@ static struct dirent *efivarfs_readdir(struct device_d *dev, DIR *dir)
 static int efivarfs_closedir(struct device_d *dev, DIR *dir)
 {
 	struct efivarfs_dir *edir = container_of(dir, struct efivarfs_dir, dir);
-	struct efivarfs_dir_entry *entry, *tmp;
-
-	list_for_each_entry_safe(entry, tmp, &edir->entries, node) {
-		free(entry->name);
-		free(entry);
-	}
 
 	free(edir);
 
@@ -300,12 +268,51 @@ static int efivarfs_stat(struct device_d *dev, const char *filename, struct stat
 
 static int efivarfs_probe(struct device_d *dev)
 {
+	efi_status_t efiret;
+	efi_guid_t vendor;
+	s16 name[1024];
+	unsigned long size;
+	unsigned char *name8;
+	struct efivarfs_priv *priv;
+
+	name[0] = 0;
+
+	priv = xzalloc(sizeof(*priv));
+	INIT_LIST_HEAD(&priv->inodes);
+
+	while (1) {
+		struct efivarfs_inode *inode;
+
+		size = sizeof(name);
+		efiret = RT->get_next_variable(&size, name, &vendor);
+		if (EFI_ERROR(efiret))
+			break;
+
+		inode = xzalloc(sizeof(*inode));
+		name8 = strdup_wchar_to_char(name);
+
+		inode->name = asprintf("%s-%pUl", name8, &vendor);
+		free(name8);
+
+		list_add_tail(&inode->node, &priv->inodes);
+	}
+
+	dev->priv = priv;
+
 	return 0;
 }
 
 static void efivarfs_remove(struct device_d *dev)
 {
-	free(dev->priv);
+	struct efivarfs_priv *priv = dev->priv;
+	struct efivarfs_inode *inode, *tmp;
+
+	list_for_each_entry_safe(inode, tmp, &priv->inodes, node) {
+		free(inode->name);
+		free(inode);
+	}
+
+	free(priv);
 }
 
 static struct fs_driver_d efivarfs_driver = {
-- 
2.1.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
