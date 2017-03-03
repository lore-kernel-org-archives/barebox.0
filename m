Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 12.mo1.mail-out.ovh.net ([87.98.162.229])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cjp5j-0000ge-8y
 for barebox@lists.infradead.org; Fri, 03 Mar 2017 15:26:02 +0000
Received: from player691.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo1.mail-out.ovh.net (Postfix) with ESMTP id A7D3F5A113
 for <barebox@lists.infradead.org>; Fri,  3 Mar 2017 16:25:33 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri,  3 Mar 2017 16:31:37 +0100
Message-Id: <1488555097-21189-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1488555097-21189-1-git-send-email-plagnioj@jcrosoft.com>
References: <20170303152759.GF4120@mail.ovh.net>
 <1488555097-21189-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/2] efivarfs: rework the filesystem to make it human readable
To: barebox@lists.infradead.org

today we use <varname>-<guid as %pUl>

such as Boot0000-8be4df61-93ca-11d2-aa0d-00e098032b8c

now we will use a different approach where will represent first the vendor
as a directory and then inside the associates variable.

But also create symlink on the vendor with readable name.

so it will look like this:

barebox@barebox EFI payload:/ ls -l /efivars/
drwxrwxrwx             36 04b37fe8-f6ae-480b-bdd5-37d98c5e89aa
drwxrwxrwx             36 4a67b082-0a4c-41cf-b6c7-440b29bb8c4f
drwxrwxrwx             36 4c19049f-4137-4dd3-9c10-8b97a83ffdfa
drwxrwxrwx             36 5b446ed1-e30b-4faa-871a-3654eca36080
drwxrwxrwx             36 5b91f69c-8b88-4a2b-9269-5f1d802b5175
drwxrwxrwx             36 8be4df61-93ca-11d2-aa0d-00e098032b8c
lrwxrwxrwx              3 Efi -> 8be4df61-93ca-11d2-aa0d-00e098032b8c
lrwxrwxrwx              7 barebox -> 5b91f69c-8b88-4a2b-9269-5f1d802b5175
drwxrwxrwx             36 eb704011-1402-11d3-8e77-00a0c969723b
lrwxrwxrwx              7 systemd -> 4a67b082-0a4c-41cf-b6c7-440b29bb8c4f
barebox@barebox EFI payload:/ ls -l /efivars/Efi/
-rw-rw-rw-             62 Boot0000
-rw-rw-rw-             80 Boot0001
-rw-rw-rw-             84 Boot0002
-rw-rw-rw-            106 Boot0003
-rw-rw-rw-            108 Boot0004
-rw-rw-rw-            141 Boot0005
-rw-rw-rw-             88 Boot0006
-rw-rw-rw-              2 BootCurrent
-rw-rw-rw-              4 BootOptionSupport
-rw-rw-rw-             14 BootOrder
-rw-rw-rw-            107 ConIn
-rw-rw-rw-           1567 ConInDev
-rw-rw-rw-            103 ConOut
-rw-rw-rw-           1855 ConOutDev
-rw-rw-rw-             73 ErrOut
-rw-rw-rw-           1563 ErrOutDev
-rw-rw-rw-             14 Key0000
-rw-rw-rw-             14 Key0001
-rw-rw-rw-              4 Lang
-rw-rw-rw-             13 LangCodes
-rw-rw-rw-              8 OsIndicationsSupported
-rw-rw-rw-              3 PlatformLang
-rw-rw-rw-             18 PlatformLangCodes
-rw-rw-rw-            108 PlatformRecovery0000
-rw-rw-rw-              2 Timeout
barebox@barebox EFI payload:/ ls -l /efivars/barebox/
barebox@barebox EFI payload:/ ls -l /efivars/systemd/
-rw-rw-rw-             14 LoaderTimeInitUSec

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 common/efi-guid.c |  17 ++-
 common/efi/efi.c  |   2 +-
 fs/efivarfs.c     | 379 ++++++++++++++++++++++++++++++++++++++++++------------
 include/efi.h     |   1 +
 4 files changed, 312 insertions(+), 87 deletions(-)

diff --git a/common/efi-guid.c b/common/efi-guid.c
index 71aa21ddd..6908012df 100644
--- a/common/efi-guid.c
+++ b/common/efi-guid.c
@@ -14,11 +14,21 @@ efi_guid_t efi_systemd_vendor_guid = EFI_SYSTEMD_VENDOR_GUID;
 
 #define EFI_GUID_STRING(guid, short, long) do {	\
 	if (!efi_guidcmp(guid, *g))		\
-		return long;			\
+		return is_long ? long : short;			\
 	} while(0)
 
+
 const char *efi_guid_string(efi_guid_t *g)
 {
+	const char *name;
+
+	name = efi_guid_string_type(g, 1);
+
+	return name ? name : "Unknown";
+}
+
+const char *efi_guid_string_type(efi_guid_t *g, int is_long)
+{
 	EFI_GUID_STRING(EFI_NULL_GUID, "NULL", "NULL GUID");
 	EFI_GUID_STRING(EFI_MPS_TABLE_GUID, "MPS Table", "MPS Table GUID in EFI System Table");
 	EFI_GUID_STRING(EFI_ACPI_TABLE_GUID, "ACPI Table", "ACPI 1.0 Table GUID in EFI System Table");
@@ -88,5 +98,8 @@ const char *efi_guid_string(efi_guid_t *g)
 	EFI_GUID_STRING(EFI_ISCSIDXE_INF_GUID, "IScsiDxe.inf", "EFI IScsiDxe.inf File GUID");
 	EFI_GUID_STRING(EFI_VLANCONFIGDXE_INF_GUID, "VlanConfigDxe.inf", "EFI VlanConfigDxe.inf File GUID");
 
-	return "unknown";
+	EFI_GUID_STRING(EFI_BAREBOX_VENDOR_GUID, "barebox", "Barebox Bootloader");
+	EFI_GUID_STRING(EFI_SYSTEMD_VENDOR_GUID, "systemd", "Linux systemd");
+
+	return NULL;
 }
diff --git a/common/efi/efi.c b/common/efi/efi.c
index 05c58250f..b4a5bb88e 100644
--- a/common/efi/efi.c
+++ b/common/efi/efi.c
@@ -299,7 +299,7 @@ static int efi_init(void)
 
 	defaultenv_append_directory(env_efi);
 
-	env = xasprintf("/efivars/barebox-env-%pUl", &efi_barebox_vendor_guid);
+	env = xasprintf("/efivars/%pUl/barebox-env", &efi_barebox_vendor_guid);
 	default_environment_path_set(env);
 
 	return 0;
diff --git a/fs/efivarfs.c b/fs/efivarfs.c
index bf7351e6d..90aa3cfcf 100644
--- a/fs/efivarfs.c
+++ b/fs/efivarfs.c
@@ -27,6 +27,7 @@
 #include <linux/stat.h>
 #include <xfuncs.h>
 #include <fcntl.h>
+#include <libgen.h>
 #include <efi.h>
 #include <wchar.h>
 #include <linux/err.h>
@@ -35,21 +36,99 @@
 #include <efi/efi-device.h>
 
 struct efivarfs_inode {
+	int is_dir;
+	int is_symlink;
 	s16 *name;
 	efi_guid_t vendor;
 	char *full_name; /* name including vendor namespacing */
+	struct efivarfs_inode *parent;
 	struct list_head node;
-};
-
-struct efivarfs_dir {
-	struct list_head *current;
-	DIR dir;
+	struct list_head childs;
 };
 
 struct efivarfs_priv {
 	struct list_head inodes;
 };
 
+static struct efivarfs_inode *efivarfs_get_by_name(
+	struct list_head *inodes, const char *full_name)
+{
+	struct efivarfs_inode *inode, *tmp;
+
+	list_for_each_entry_safe(inode, tmp, inodes, node) {
+		if (!strcmp(inode->full_name, full_name))
+			return inode;
+	}
+
+	return NULL;
+}
+
+static struct efivarfs_inode *efivarfs_get_by_vendor(
+	struct efivarfs_priv *priv, efi_guid_t *guid)
+{
+	struct efivarfs_inode *inode, *tmp;
+
+	list_for_each_entry_safe(inode, tmp, &priv->inodes, node) {
+		if (!efi_guidcmp(inode->vendor, *guid))
+			return inode;
+	}
+
+	return NULL;
+}
+
+static struct efivarfs_inode *efivarfs_add_vendor(
+	struct efivarfs_priv *priv, efi_guid_t *guid)
+{
+	struct efivarfs_inode *vendor;
+	struct efivarfs_inode *symlink;
+	const char *name;
+
+	vendor = efivarfs_get_by_vendor(priv, guid);
+
+	if (vendor)
+		return vendor;
+
+	vendor = xzalloc(sizeof(*vendor));
+	vendor->is_dir = 1;
+	vendor->full_name = basprintf("%pUl", guid);
+	vendor->vendor = *guid;
+
+	list_add_tail(&vendor->node, &priv->inodes);
+	INIT_LIST_HEAD(&vendor->childs);
+
+	name = efi_guid_string_type(guid, 0);
+	if (!name)
+		goto out;
+
+	/* add symlink if we can resolv it */
+	symlink = xzalloc(sizeof(*symlink));
+	symlink->is_symlink = 1;
+	symlink->full_name = xstrdup(name);
+	symlink->vendor = *guid;
+	symlink->parent = vendor;
+	list_add_tail(&symlink->node, &priv->inodes);
+
+out:
+	return vendor;
+}
+
+static struct efivarfs_inode *efivarfs_add_var(
+	struct efivarfs_inode *v_inode, s16 *name)
+{	
+	struct efivarfs_inode *inode;
+
+	inode = xzalloc(sizeof(*inode));
+	inode->name = xstrdup_wchar(name);
+
+	inode->vendor = v_inode->vendor;
+
+	inode->full_name = xstrdup_wchar_to_char(inode->name);
+
+	list_add_tail(&inode->node, &v_inode->childs);
+
+	return inode;
+}
+
 static int char_to_nibble(char c)
 {
 	int ret = tolower(c);
@@ -93,47 +172,74 @@ int efi_guid_parse(const char *str, efi_guid_t *guid)
 	return 0;
 }
 
-static int efivarfs_parse_filename(const char *filename, efi_guid_t *vendor, s16 **name)
+static struct efivarfs_inode *efivarfs_parse_path(struct efivarfs_priv *priv,
+		const char *filename, s16 **name, char **full_name)
 {
-	int len, ret;
-	const char *guidstr;
-	s16 *varname;
-	int i;
+	char *dir, *file;
+	char *tmp = xstrdup(filename);
+	char *tmp2 = xstrdup(filename);
+	const char *vendor_str;
+	s16 *varname = NULL;
+	int len;
+	void *ret = ERR_PTR(-EINVAL);
+	struct efivarfs_inode *inode;
+
+	dir = dirname(tmp);
+	file = basename(tmp2);
 
-	if (*filename == '/')
+	if (filename[0] == '/')
 		filename++;
 
-	len = strlen(filename);
+	if (dir[0] == '/')
+		dir++;
 
-	if (len < sizeof("-xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx"))
-		return -EINVAL;
+	if (!strlen(dir)) {
+		vendor_str = filename;
+		*name = NULL;
+		*full_name = NULL;
+	} else {
+		int i;
 
-	guidstr = filename + len - sizeof("xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx");
-	if (*guidstr != '-')
-		return -EINVAL;
+		vendor_str = dir;
+		if (name) {
+			len = strlen(file);
+
+			varname = xzalloc((len + 1) * sizeof(s16));
+
+			for (i = 0; i < len; i++)
+				varname[i] = file[i];
 
-	guidstr++;
+			*name = varname;
+		}
 
-	ret = efi_guid_parse(guidstr, vendor);
+		if (full_name)
+			*full_name = xstrdup(file);
+	}
 
-	varname = xzalloc((guidstr - filename) * sizeof(s16));
+	inode = efivarfs_get_by_name(&priv->inodes, vendor_str);
+	if (!inode)
+		goto err;
 
-	for (i = 0; i < guidstr - filename - 1; i++)
-		varname[i] = filename[i];
+	ret = inode;
+	goto out;
 
-	*name = varname;
+err:
+	free(varname);
+	*name = NULL;
+out:
+	free(tmp);
+	free(tmp2);
 
-	return 0;
+	return ret;
 }
 
 static int efivars_create(struct device_d *dev, const char *pathname, mode_t mode)
 {
 	struct efivarfs_priv *priv = dev->priv;
 	struct efivarfs_inode *inode;
-	efi_guid_t vendor;
+	struct efivarfs_inode *vendor;
 	efi_status_t efiret;
 	u8 dummydata;
-	char *name8;
 	s16 *name;
 	int ret;
 
@@ -141,58 +247,73 @@ static int efivars_create(struct device_d *dev, const char *pathname, mode_t mod
 		pathname++;
 
 	/* deny creating files with other vendor GUID than our own */
-	ret = efivarfs_parse_filename(pathname, &vendor, &name);
-	if (ret)
+	vendor = efivarfs_parse_path(priv, pathname, &name, NULL);
+	if (IS_ERR(vendor))
 		return -ENOENT;
 
-	if (memcmp(&vendor, &EFI_BAREBOX_VENDOR_GUID, sizeof(efi_guid_t)))
-		return -EPERM;
-
-	inode = xzalloc(sizeof(*inode));
-	inode->name = name;
-	inode->vendor = vendor;
-
-
-	name8 = xstrdup_wchar_to_char(inode->name);
-	inode->full_name = basprintf("%s-%pUl", name8, &inode->vendor);
-	free(name8);
+	if (memcmp(&vendor->vendor, &EFI_BAREBOX_VENDOR_GUID, sizeof(efi_guid_t))) {
+		ret =  -EPERM;
+		goto out;
+	}
 
-	efiret = RT->set_variable(inode->name, &inode->vendor,
+	efiret = RT->set_variable(name, &vendor->vendor,
 				  EFI_VARIABLE_NON_VOLATILE |
 				  EFI_VARIABLE_BOOTSERVICE_ACCESS |
 				  EFI_VARIABLE_RUNTIME_ACCESS,
 				  1, &dummydata);
 	if (EFI_ERROR(efiret)) {
-		free(inode);
-		return -efi_errno(efiret);
+		ret = -efi_errno(efiret);
+		goto out;
 	}
 
-	list_add_tail(&inode->node, &priv->inodes);
+	inode = efivarfs_add_var(vendor, name);
+	ret = 0;
 
-	return 0;
+out:
+	free(name);
+
+	return ret;
 }
 
 static int efivars_unlink(struct device_d *dev, const char *pathname)
 {
 	struct efivarfs_priv *priv = dev->priv;
-	struct efivarfs_inode *inode, *tmp;
+	struct efivarfs_inode *vendor, *inode;
 	efi_status_t efiret;
+	s16 *name;
+	char *full_name;
+	int ret;
 
 	if (pathname[0] == '/')
 		pathname++;
 
-	list_for_each_entry_safe(inode, tmp, &priv->inodes, node) {
-		if (!strcmp(inode->full_name, pathname)) {
-			efiret = RT->set_variable(inode->name, &inode->vendor,
-						  0, 0, NULL);
-			if (EFI_ERROR(efiret))
-				return -efi_errno(efiret);
-			list_del(&inode->node);
-			free(inode);
-		}
+	vendor = efivarfs_parse_path(priv, pathname, &name, &full_name);
+	if (IS_ERR(vendor)) {
+		ret = PTR_ERR(vendor);
+		goto out;
 	}
 
-	return 0;
+	inode = efivarfs_get_by_name(&vendor->childs, full_name);
+	if (IS_ERR(inode)) {
+		ret = PTR_ERR(inode);
+		goto out;
+	}
+
+	efiret = RT->set_variable(inode->name, &inode->vendor,  0, 0, NULL);
+	if (EFI_ERROR(efiret)) {
+		ret = -efi_errno(efiret);
+		goto out;
+	}
+
+	list_del(&inode->node);
+	free(inode);
+	ret = 0;
+
+out:
+	free(full_name);
+	free(name);
+
+	return ret;
 }
 
 struct efivars_file {
@@ -206,14 +327,20 @@ struct efivars_file {
 static int efivarfs_open(struct device_d *dev, FILE *f, const char *filename)
 {
 	struct efivars_file *efile;
+	struct efivarfs_priv *priv = dev->priv;
+	struct efivarfs_inode *vendor;
 	efi_status_t efiret;
 	int ret;
 
 	efile = xzalloc(sizeof(*efile));
 
-	ret = efivarfs_parse_filename(filename, &efile->vendor, &efile->name);
-	if (ret)
-		return -ENOENT;
+	vendor = efivarfs_parse_path(priv, filename, &efile->name, NULL);
+	if (IS_ERR(vendor)) {
+		ret = PTR_ERR(vendor);
+		goto out;
+	}
+
+	efile->vendor = vendor->vendor;
 
 	efiret = RT->get_variable(efile->name, &efile->vendor,
 				  NULL, &efile->size, NULL);
@@ -243,6 +370,7 @@ static int efivarfs_open(struct device_d *dev, FILE *f, const char *filename)
 
 out:
 	free(efile->buf);
+	free(efile->name);
 	free(efile);
 
 	return ret;
@@ -253,6 +381,7 @@ static int efivarfs_close(struct device_d *dev, FILE *f)
 	struct efivars_file *efile = f->priv;
 
 	free(efile->buf);
+	free(efile->name);
 	free(efile);
 
 	return 0;
@@ -314,31 +443,75 @@ static loff_t efivarfs_lseek(struct device_d *dev, FILE *f, loff_t pos)
 	return f->pos;
 }
 
+struct efivarfs_dir {
+	struct efivarfs_inode *vendor;
+	struct efivarfs_inode *var;
+	int empty;
+	DIR dir;
+};
+
 static DIR *efivarfs_opendir(struct device_d *dev, const char *pathname)
 {
 	struct efivarfs_priv *priv = dev->priv;
 	struct efivarfs_dir *edir;
+	DIR *dir;
 
 	edir = xzalloc(sizeof(*edir));
-	edir->current = priv->inodes.next;
+	dir = &edir->dir;
+	dir->priv = edir;
+
+	if (pathname[0] == '/')
+		pathname++;
+
+	if (!strlen(pathname)) {
+		if (list_empty(&priv->inodes))
+			return dir;
 
-	return &edir->dir;
+		edir->vendor = list_first_entry(&priv->inodes,
+					struct efivarfs_inode, node);
+	} else {
+		struct efivarfs_inode *inode;
+
+		inode = efivarfs_get_by_name(&priv->inodes, pathname);
+		edir->vendor = inode->is_symlink ? inode->parent : inode;
+		if (!edir->vendor)
+			return dir;
+
+		if (list_empty(&edir->vendor->childs)) {
+			edir->empty = 1;
+			return dir;
+		}
+
+		edir->var = list_first_entry(&edir->vendor->childs,
+					struct efivarfs_inode, node);
+	}
+
+	return dir;
 }
 
 static struct dirent *efivarfs_readdir(struct device_d *dev, DIR *dir)
 {
 	struct efivarfs_priv *priv = dev->priv;
 	struct efivarfs_dir *edir = container_of(dir, struct efivarfs_dir, dir);
-	struct efivarfs_inode *inode;
+	struct efivarfs_inode *vendor = edir->vendor;
+	struct efivarfs_inode *var = edir->var;
 
-	if (edir->current == &priv->inodes)
+	if (!vendor)
 		return NULL;
 
-	inode = list_entry(edir->current, struct efivarfs_inode, node);
+	if (!var) {
+		if (edir->empty || &vendor->node == &priv->inodes)
+			return NULL;
 
-	strcpy(dir->d.d_name, inode->full_name);
+		strcpy(dir->d.d_name, vendor->full_name);
+		edir->vendor = list_entry(vendor->node.next, struct efivarfs_inode, node);
+	} else {
+		if (&var->node == &vendor->childs)
+			return NULL;
 
-	edir->current = edir->current->next;
+		strcpy(dir->d.d_name, var->full_name);
+		edir->var = list_entry(var->node.next, struct efivarfs_inode, node);
+	}
 
 	return &dir->d;
 }
@@ -354,26 +527,69 @@ static int efivarfs_closedir(struct device_d *dev, DIR *dir)
 
 static int efivarfs_stat(struct device_d *dev, const char *filename, struct stat *s)
 {
-	efi_guid_t vendor;
+	struct efivarfs_priv *priv = dev->priv;
+	struct efivarfs_inode *vendor;
 	s16 *name;
 	efi_status_t efiret;
 	unsigned long size = 0;
-	int ret;
+	int ret = -EINVAL;
 
-	ret = efivarfs_parse_filename(filename, &vendor, &name);
-	if (ret)
-		return -ENOENT;
+	vendor = efivarfs_parse_path(priv, filename, &name, NULL);
+	if (IS_ERR(vendor))
+		return PTR_ERR(vendor);
+
+	if (filename[0] == '/')
+		filename++;
+
+	if (!name) {
+		s->st_size = strlen(filename);
+		if (vendor->is_dir)
+			s->st_mode = S_IFDIR | S_IRWXU | S_IRWXG | S_IRWXO;
+		else
+			s->st_mode = S_IFLNK | S_IRWXU | S_IRWXG | S_IRWXO;
+
+		ret = 0;
+
+		goto out;
+	}
 
-	efiret = RT->get_variable(name, &vendor, NULL, &size, NULL);
+	efiret = RT->get_variable(name, &vendor->vendor, NULL, &size, NULL);
 
 	free(name);
 
-	if (EFI_ERROR(efiret) && efiret != EFI_BUFFER_TOO_SMALL)
-		return -efi_errno(efiret);
+	if (EFI_ERROR(efiret) && efiret != EFI_BUFFER_TOO_SMALL) {
+		ret = -efi_errno(efiret);
+		goto out;
+	}
 
 	s->st_mode = 00666 | S_IFREG;
 	s->st_size = size;
 
+	ret = 0;
+
+out:
+	return ret;
+}
+
+static int efivarfs_readlink(struct device_d *dev, const char *pathname,
+			char *buf, size_t bufsiz)
+{
+	struct efivarfs_priv *priv = dev->priv;
+	struct efivarfs_inode *node;
+	int len;
+
+	if (pathname[0] == '/')
+		pathname++;
+
+	node = efivarfs_get_by_name(&priv->inodes, pathname);
+
+	if (!node || !node->parent)
+		return -ENOENT;
+
+	len = min(bufsiz, strlen(node->parent->full_name));
+
+	memcpy(buf, node->parent->full_name, len);
+
 	return 0;
 }
 
@@ -382,7 +598,6 @@ static int efivarfs_probe(struct device_d *dev)
 	efi_status_t efiret;
 	efi_guid_t vendor;
 	s16 name[1024];
-	char *name8;
 	unsigned long size;
 	struct efivarfs_priv *priv;
 
@@ -391,24 +606,19 @@ static int efivarfs_probe(struct device_d *dev)
 	priv = xzalloc(sizeof(*priv));
 	INIT_LIST_HEAD(&priv->inodes);
 
+	efivarfs_add_vendor(priv, &efi_barebox_vendor_guid);
+
 	while (1) {
 		struct efivarfs_inode *inode;
+		struct efivarfs_inode *v_inode;
 
 		size = sizeof(name);
 		efiret = RT->get_next_variable(&size, name, &vendor);
 		if (EFI_ERROR(efiret))
 			break;
 
-		inode = xzalloc(sizeof(*inode));
-		inode->name = xstrdup_wchar(name);
-
-		inode->vendor = vendor;
-
-		name8 = xstrdup_wchar_to_char(inode->name);
-		inode->full_name = basprintf("%s-%pUl", name8, &vendor);
-		free(name8);
-
-		list_add_tail(&inode->node, &priv->inodes);
+		v_inode = efivarfs_add_vendor(priv, &vendor);
+		inode = efivarfs_add_var(v_inode, name);
 	}
 
 	dev->priv = priv;
@@ -442,6 +652,7 @@ static struct fs_driver_d efivarfs_driver = {
 	.readdir   = efivarfs_readdir,
 	.closedir  = efivarfs_closedir,
 	.stat      = efivarfs_stat,
+	.readlink  = efivarfs_readlink,
 	.drv = {
 		.probe  = efivarfs_probe,
 		.remove = efivarfs_remove,
diff --git a/include/efi.h b/include/efi.h
index e1fc134ee..afad26314 100644
--- a/include/efi.h
+++ b/include/efi.h
@@ -668,6 +668,7 @@ char *device_path_to_str(struct efi_device_path *dev_path);
 u8 device_path_to_type(struct efi_device_path *dev_path);
 char *device_path_to_partuuid(struct efi_device_path *dev_path);
 
+const char *efi_guid_string_type(efi_guid_t *g, int is_long);
 const char *efi_guid_string(efi_guid_t *g);
 
 #endif /* _LINUX_EFI_H */
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
