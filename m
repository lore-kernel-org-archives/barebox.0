Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Xxyae-0008K0-7v
 for barebox@lists.infradead.org; Mon, 08 Dec 2014 13:43:08 +0000
Received: from dude.hi.4.pengutronix.de ([10.1.0.7] helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <l.stach@pengutronix.de>) id 1XxyaG-0004d9-A2
 for barebox@lists.infradead.org; Mon, 08 Dec 2014 14:42:40 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Mon,  8 Dec 2014 14:42:36 +0100
Message-Id: <1418046159-29843-9-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH 09/12] fs: efivar: preserve more info in inode
To: barebox@lists.infradead.org

Preserve info needed for easy manipulation of variables.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 fs/efivarfs.c | 15 ++++++++++-----
 1 file changed, 10 insertions(+), 5 deletions(-)

diff --git a/fs/efivarfs.c b/fs/efivarfs.c
index aa66aa8dd99d..a36020d2d08e 100644
--- a/fs/efivarfs.c
+++ b/fs/efivarfs.c
@@ -35,7 +35,9 @@
 #include <mach/efi-device.h>
 
 struct efivarfs_inode {
-	char *name;
+	s16 *name;
+	efi_guid_t vendor;
+	char *full_name; /* name including vendor namespacing */
 	struct list_head node;
 };
 
@@ -225,7 +227,7 @@ static struct dirent *efivarfs_readdir(struct device_d *dev, DIR *dir)
 
 	inode = list_entry(edir->current, struct efivarfs_inode, node);
 
-	strcpy(dir->d.d_name, inode->name);
+	strcpy(dir->d.d_name, inode->full_name);
 
 	edir->current = edir->current->next;
 
@@ -271,8 +273,8 @@ static int efivarfs_probe(struct device_d *dev)
 	efi_status_t efiret;
 	efi_guid_t vendor;
 	s16 name[1024];
+	char *name8;
 	unsigned long size;
-	unsigned char *name8;
 	struct efivarfs_priv *priv;
 
 	name[0] = 0;
@@ -289,9 +291,12 @@ static int efivarfs_probe(struct device_d *dev)
 			break;
 
 		inode = xzalloc(sizeof(*inode));
-		name8 = strdup_wchar_to_char(name);
+		inode->name = strdup_wchar(name);
+
+		inode->vendor = vendor;
 
-		inode->name = asprintf("%s-%pUl", name8, &vendor);
+		name8 = strdup_wchar_to_char(inode->name);
+		inode->full_name = asprintf("%s-%pUl", name8, &vendor);
 		free(name8);
 
 		list_add_tail(&inode->node, &priv->inodes);
-- 
2.1.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
