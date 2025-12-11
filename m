Delivery-date: Thu, 11 Dec 2025 21:31:45 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTnKD-00AQBA-03
	for lore@lore.pengutronix.de;
	Thu, 11 Dec 2025 21:31:45 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTnKB-0006mw-7M
	for lore@pengutronix.de; Thu, 11 Dec 2025 21:31:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0aqpL1FY0IBmxy+mjQcwjpXAoYLsRwbIzVkcvJ1K9eQ=; b=3SYPT2zhkkZFjK8THB2e6OPfqo
	ruFfmIXG8cYY9gre791WZjwyBfKWG1g1NWc4jvyce9C4NDnOD9tzkaV+OK0nmOF7s7+Hd4BEDCZy3
	iUfm+OSEVlr3fVqTibZ4e/ewBu62slPYOwEsEvTu8adx3OirmbGnvAUzq8nQ4CB8Khaa1wsiFEwJu
	T4Sfg+hd/jVgnmlvZq+NXWy0bQ/x1lit0taQVLnERyxqONDNTDAGVIFAvL5FYNlR/fkE2xgKflM4T
	hJKC9HkJZPB9WhoFuBCOgOuQzKug5fx+vWSraNkBxo/E0l7QEuqAv6gPsUU2Mebz4rWVyjQJSLu2v
	UIEg+9QA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTnJc-0000000HE92-3O4b;
	Thu, 11 Dec 2025 20:31:08 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTnJY-0000000HE5l-14UY
	for barebox@bombadil.infradead.org;
	Thu, 11 Dec 2025 20:31:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=0aqpL1FY0IBmxy+mjQcwjpXAoYLsRwbIzVkcvJ1K9eQ=; b=C3mgX0Dzy4OuVMJJkdOj0dLchQ
	EC7voKiCWqJQqtGAiTDkReBGcyoMqcM9q0+jb/JMp0vVnWZ61TjV448x4y6c+w1BpAkKEVIgcenyv
	1NfHAU8mLdJwm/7qi2qJOiy5fvzjLuqa9lhECUZJ9l35LULoJI75iCr2UZ86UPSIIbo1AsxXBZiwu
	vsaAc5LnA/p4JyQZiaUlRugutWLyKwIP7TmhJRjCt32PWktZtm3OmI9eT3vlbLLstIoRcbu0tgjg/
	3bf1AQpLb7HR4ssMxru91Eyj6FZfENMx1Ro0ChlKfx/usK8l35beikrcQMPCsoXQftZhAvjMbNFIn
	VvlJxDcw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTmS0-0000000FZ9Y-1EF0
	for barebox@lists.infradead.org;
	Thu, 11 Dec 2025 19:35:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTnJR-0006JP-Pc; Thu, 11 Dec 2025 21:30:57 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTnJR-005BR2-1n;
	Thu, 11 Dec 2025 21:30:57 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTnJR-00000008e20-1qAR;
	Thu, 11 Dec 2025 21:30:57 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 11 Dec 2025 21:29:56 +0100
Message-ID: <20251211203056.2014710-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251211203056.2014710-1-a.fatoum@pengutronix.de>
References: <20251211203056.2014710-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251211_193544_464196_7A9B52B2 
X-CRM114-Status: GOOD (  17.06  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 05/16] fs: efivarfs: prepare for use with barebox as EFI loader
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The barebox efivarfs is currently only registered when barebox is an EFI
payload. It  hardcodes use of RT to access the runtime services and the
efivarfs is mounted on every startup.

Replace this with an automount and rework the file system slightly, so
the file system can be mounted later outside of payload once barebox
activates the upcoming EFI loader support.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/startup.c |  4 ++--
 efi/efivar.c     |  1 +
 fs/Kconfig       |  2 +-
 fs/efivarfs.c    | 38 ++++++++++++++++++++++++++++----------
 4 files changed, 32 insertions(+), 13 deletions(-)

diff --git a/common/startup.c b/common/startup.c
index 602233345a25..c48adb42f953 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -62,9 +62,9 @@ static int mount_root(void)
 	mkdir("/mnt", 0);
 	devfs_init();
 
-	if (IS_ENABLED(CONFIG_FS_EFIVARFS) && efi_is_payload()) {
+	if (IS_ENABLED(CONFIG_FS_EFIVARFS)) {
 		mkdir("/efivars", 0);
-		mount("none", "efivarfs", "/efivars", NULL);
+		automount_add("/efivars", "mount -t efivarfs none /efivars");
 	}
 
 	if (IS_ENABLED(CONFIG_FS_PSTORE)) {
diff --git a/efi/efivar.c b/efi/efivar.c
index a51f3b2d1d8e..808693a7a746 100644
--- a/efi/efivar.c
+++ b/efi/efivar.c
@@ -14,6 +14,7 @@
 #include <efi/variable.h>
 #include <wchar.h>
 #include <xfuncs.h>
+#include <errno.h>
 #include <linux/sprintf.h>
 
 void *efi_get_variable(char *name, efi_guid_t *vendor, int *var_size)
diff --git a/fs/Kconfig b/fs/Kconfig
index e86420f9c259..c0c634bb419d 100644
--- a/fs/Kconfig
+++ b/fs/Kconfig
@@ -94,7 +94,7 @@ config FS_EFI
 	  by the EFI Firmware via the EFI Simple File System Protocol.
 
 config FS_EFIVARFS
-	depends on EFI_PAYLOAD
+	depends on EFI
 	select FS_LEGACY
 	select FS_WRITABLE
 	bool
diff --git a/fs/efivarfs.c b/fs/efivarfs.c
index 7b80e703f2d9..3641dd92917d 100644
--- a/fs/efivarfs.c
+++ b/fs/efivarfs.c
@@ -25,6 +25,7 @@
 #include <xfuncs.h>
 #include <fcntl.h>
 #include <efi.h>
+#include <efi/efi-mode.h>
 #include <wchar.h>
 #include <linux/err.h>
 #include <linux/ctype.h>
@@ -45,12 +46,14 @@ struct efivarfs_dir {
 
 struct efivarfs_priv {
 	struct list_head inodes;
+	struct efi_runtime_services *rt;
 };
 
 static int efivars_create(struct device *dev, const char *pathname,
 			  mode_t mode)
 {
 	struct efivarfs_priv *priv = dev->priv;
+	struct efi_runtime_services *rt = priv->rt;
 	struct efivarfs_inode *inode;
 	efi_guid_t vendor;
 	efi_status_t efiret;
@@ -79,7 +82,7 @@ static int efivars_create(struct device *dev, const char *pathname,
 	inode->full_name = basprintf("%s-%pUl", name8, &inode->vendor);
 	free(name8);
 
-	efiret = RT->set_variable(inode->name, &inode->vendor,
+	efiret = rt->set_variable(inode->name, &inode->vendor,
 				  EFI_VARIABLE_NON_VOLATILE |
 				  EFI_VARIABLE_BOOTSERVICE_ACCESS |
 				  EFI_VARIABLE_RUNTIME_ACCESS,
@@ -97,6 +100,7 @@ static int efivars_create(struct device *dev, const char *pathname,
 static int efivars_unlink(struct device *dev, const char *pathname)
 {
 	struct efivarfs_priv *priv = dev->priv;
+	struct efi_runtime_services *rt = priv->rt;
 	struct efivarfs_inode *inode, *tmp;
 	efi_status_t efiret;
 
@@ -105,7 +109,7 @@ static int efivars_unlink(struct device *dev, const char *pathname)
 
 	list_for_each_entry_safe(inode, tmp, &priv->inodes, node) {
 		if (!strcmp(inode->full_name, pathname)) {
-			efiret = RT->set_variable(inode->name, &inode->vendor,
+			efiret = rt->set_variable(inode->name, &inode->vendor,
 						  0, 0, NULL);
 			if (EFI_ERROR(efiret))
 				return -efi_errno(efiret);
@@ -123,10 +127,13 @@ struct efivars_file {
 	efi_guid_t vendor;
 	s16 *name;
 	u32 attributes;
+	struct efivarfs_priv *priv;
 };
 
 static int efivarfs_open(struct device *dev, struct file *f, const char *filename)
 {
+	struct efivarfs_priv *priv = dev->priv;
+	struct efi_runtime_services *rt = priv->rt;
 	struct efivars_file *efile;
 	efi_status_t efiret;
 	int ret;
@@ -137,7 +144,7 @@ static int efivarfs_open(struct device *dev, struct file *f, const char *filenam
 	if (ret)
 		return -ENOENT;
 
-	efiret = RT->get_variable(efile->name, &efile->vendor,
+	efiret = rt->get_variable(efile->name, &efile->vendor,
 				  NULL, &efile->size, NULL);
 	if (EFI_ERROR(efiret) && efiret != EFI_BUFFER_TOO_SMALL) {
 		ret = -efi_errno(efiret);
@@ -150,7 +157,7 @@ static int efivarfs_open(struct device *dev, struct file *f, const char *filenam
 		goto out;
 	}
 
-	efiret = RT->get_variable(efile->name, &efile->vendor,
+	efiret = rt->get_variable(efile->name, &efile->vendor,
 				  &efile->attributes, &efile->size,
 				  efile->buf);
 	if (EFI_ERROR(efiret)) {
@@ -158,6 +165,8 @@ static int efivarfs_open(struct device *dev, struct file *f, const char *filenam
 		goto out;
 	}
 
+	efile->priv = priv;
+
 	f->f_size = efile->size;
 	f->private_data = efile;
 
@@ -192,6 +201,7 @@ static int efivarfs_read(struct file *f, void *buf, size_t insize)
 static int efivarfs_write(struct file *f, const void *buf, size_t insize)
 {
 	struct efivars_file *efile = f->private_data;
+	struct efi_runtime_services *rt = efile->priv->rt;
 	efi_status_t efiret;
 
 	if (efile->size < f->f_pos + insize) {
@@ -201,7 +211,7 @@ static int efivarfs_write(struct file *f, const void *buf, size_t insize)
 
 	memcpy(efile->buf + f->f_pos, buf, insize);
 
-	efiret = RT->set_variable(efile->name, &efile->vendor,
+	efiret = rt->set_variable(efile->name, &efile->vendor,
 				  efile->attributes,
 				  efile->size ? efile->size : 1, efile->buf);
 	if (EFI_ERROR(efiret))
@@ -213,12 +223,13 @@ static int efivarfs_write(struct file *f, const void *buf, size_t insize)
 static int efivarfs_truncate(struct file *f, loff_t size)
 {
 	struct efivars_file *efile = f->private_data;
+	struct efi_runtime_services *rt = efile->priv->rt;
 	efi_status_t efiret;
 
 	efile->size = size;
 	efile->buf = realloc(efile->buf, efile->size + sizeof(uint32_t));
 
-	efiret = RT->set_variable(efile->name, &efile->vendor,
+	efiret = rt->set_variable(efile->name, &efile->vendor,
 				  efile->attributes,
 				  efile->size ? efile->size : 1, efile->buf);
 	if (EFI_ERROR(efiret))
@@ -268,6 +279,8 @@ static int efivarfs_closedir(struct device *dev, DIR *dir)
 static int efivarfs_stat(struct device *dev, const char *filename,
 			 struct stat *s)
 {
+	struct efivarfs_priv *priv = dev->priv;
+	struct efi_runtime_services *rt = priv->rt;
 	efi_guid_t vendor;
 	s16 *name;
 	efi_status_t efiret;
@@ -278,7 +291,7 @@ static int efivarfs_stat(struct device *dev, const char *filename,
 	if (ret)
 		return -ENOENT;
 
-	efiret = RT->get_variable(name, &vendor, NULL, &size, NULL);
+	efiret = rt->get_variable(name, &vendor, NULL, &size, NULL);
 
 	free(name);
 
@@ -299,17 +312,23 @@ static int efivarfs_probe(struct device *dev)
 	char *name8;
 	size_t size;
 	struct efivarfs_priv *priv;
+	struct efi_runtime_services *rt;
+
+	rt = efi_get_runtime_services();
+	if (!rt)
+		return -ENODEV;
 
 	name[0] = 0;
 
 	priv = xzalloc(sizeof(*priv));
+	priv->rt = rt;
 	INIT_LIST_HEAD(&priv->inodes);
 
 	while (1) {
 		struct efivarfs_inode *inode;
 
 		size = sizeof(name);
-		efiret = RT->get_next_variable(&size, name, &vendor);
+		efiret = rt->get_next_variable(&size, name, &vendor);
 		if (EFI_ERROR(efiret))
 			break;
 
@@ -370,5 +389,4 @@ static int efivarfs_init(void)
 {
 	return register_fs_driver(&efivarfs_driver);
 }
-
-coredevice_efi_initcall(efivarfs_init);
+coredevice_initcall(efivarfs_init);
-- 
2.47.3



