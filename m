Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Xladz-0003uX-4p
 for barebox@lists.infradead.org; Tue, 04 Nov 2014 09:43:20 +0000
Received: from dude.hi.4.pengutronix.de ([10.1.0.7] helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <l.stach@pengutronix.de>) id 1Xladd-0002Wv-8M
 for barebox@lists.infradead.org; Tue, 04 Nov 2014 10:42:57 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Tue,  4 Nov 2014 10:42:55 +0100
Message-Id: <1415094176-26435-9-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH 09/10] fs: efivar: implement write support
To: barebox@lists.infradead.org

Implement the standard FS ops for writing/manipulating
efivars.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 fs/efivarfs.c | 105 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 include/efi.h |   3 +-
 2 files changed, 107 insertions(+), 1 deletion(-)

diff --git a/fs/efivarfs.c b/fs/efivarfs.c
index f54925133848..9a1503bd1387 100644
--- a/fs/efivarfs.c
+++ b/fs/efivarfs.c
@@ -126,6 +126,75 @@ static int efivarfs_parse_filename(const char *filename, efi_guid_t *vendor, s16
 	return 0;
 }
 
+static int efivars_create(struct device_d *dev, const char *pathname, mode_t mode)
+{
+	struct efivarfs_priv *priv = dev->priv;
+	struct efivarfs_inode *inode;
+	efi_guid_t vendor;
+	efi_status_t efiret;
+	u8 dummydata;
+	char *name8;
+	s16 *name;
+	int ret;
+
+	if (pathname[0] == '/')
+		pathname++;
+
+	/* deny creating files with other vendor GUID than our own */
+	ret = efivarfs_parse_filename(pathname, &vendor, &name);
+	if (ret)
+		return -ENOENT;
+
+	if (memcmp(&vendor, &EFI_BAREBOX_VENDOR_GUID, sizeof(efi_guid_t)))
+		return -EPERM;
+
+	inode = xzalloc(sizeof(*inode));
+	inode->name = name;
+	inode->vendor = vendor;
+
+
+	name8 = strdup_wchar_to_char(inode->name);
+	inode->full_name = asprintf("%s-%pUl", name8, &inode->vendor);
+	free(name8);
+
+	efiret = RT->set_variable(inode->name, &inode->vendor,
+				  EFI_VARIABLE_NON_VOLATILE |
+				  EFI_VARIABLE_BOOTSERVICE_ACCESS |
+				  EFI_VARIABLE_RUNTIME_ACCESS,
+				  1, &dummydata);
+	if (EFI_ERROR(efiret)) {
+		free(inode);
+		return -efi_errno(efiret);
+	}
+
+	list_add_tail(&inode->node, &priv->inodes);
+
+	return 0;
+}
+
+static int efivars_unlink(struct device_d *dev, const char *pathname)
+{
+	struct efivarfs_priv *priv = dev->priv;
+	struct efivarfs_inode *inode, *tmp;
+	efi_status_t efiret;
+
+	if (pathname[0] == '/')
+		pathname++;
+
+	list_for_each_entry_safe(inode, tmp, &priv->inodes, node) {
+		if (!strcmp(inode->full_name, pathname)) {
+			efiret = RT->set_variable(inode->name, &inode->vendor,
+						  0, 0, NULL);
+			if (EFI_ERROR(efiret))
+				return -efi_errno(efiret);
+			list_del(&inode->node);
+			free(inode);
+		}
+	}
+
+	return 0;
+}
+
 struct efivars_file {
 	void *buf;
 	unsigned long size;
@@ -197,6 +266,38 @@ static int efivarfs_read(struct device_d *_dev, FILE *f, void *buf, size_t insiz
 	return insize;
 }
 
+static int efivarfs_write(struct device_d *_dev, FILE *f, const void *buf, size_t insize)
+{
+	struct efivars_file *efile = f->inode;
+
+	if (efile->size < f->pos + insize) {
+		efile->buf = realloc(efile->buf, f->pos + insize);
+		efile->size = f->pos + insize;
+	}
+
+	memcpy(efile->buf + f->pos, buf, insize);
+
+	RT->set_variable(efile->name, &efile->vendor, efile->attributes,
+			 efile->size ? efile->size : 1, efile->buf);
+
+	return insize;
+}
+
+static int efivarfs_truncate(struct device_d *dev, FILE *f, ulong size)
+{
+	struct efivars_file *efile = f->inode;
+
+	efile->size = size;
+	efile->buf = realloc(efile->buf, efile->size + sizeof(uint32_t));
+
+	RT->set_variable(efile->name, &efile->vendor, efile->attributes,
+			 efile->size ? efile->size : 1, efile->buf);
+
+	f->size = efile->size;
+
+	return 0;
+}
+
 static loff_t efivarfs_lseek(struct device_d *dev, FILE *f, loff_t pos)
 {
 	f->pos = pos;
@@ -320,9 +421,13 @@ static void efivarfs_remove(struct device_d *dev)
 }
 
 static struct fs_driver_d efivarfs_driver = {
+	.create    = efivars_create,
+	.unlink    = efivars_unlink,
 	.open      = efivarfs_open,
 	.close     = efivarfs_close,
 	.read      = efivarfs_read,
+	.write     = efivarfs_write,
+	.truncate  = efivarfs_truncate,
 	.lseek     = efivarfs_lseek,
 	.opendir   = efivarfs_opendir,
 	.readdir   = efivarfs_readdir,
diff --git a/include/efi.h b/include/efi.h
index 507115881b55..cc6a0d81a543 100644
--- a/include/efi.h
+++ b/include/efi.h
@@ -279,7 +279,8 @@ typedef struct {
 			u32 *Attributes, unsigned long *data_size, void *data);
 	efi_status_t (EFIAPI *get_next_variable)(unsigned long *variable_name_size,
 			s16 *variable_name, efi_guid_t *vendor);
-	void *set_variable;
+	efi_status_t (EFIAPI *set_variable)(s16 *variable_name, efi_guid_t *vendor,
+			u32 Attributes, unsigned long data_size, void *data);
 	void *get_next_high_mono_count;
 	void (EFIAPI *reset_system)(efi_reset_type_t reset_type, efi_status_t reset_status,
 			unsigned long data_size, void *reset_data);
-- 
2.1.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
