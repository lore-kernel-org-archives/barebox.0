Delivery-date: Thu, 18 Dec 2025 12:41:12 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWCNc-00CobG-2l
	for lore@lore.pengutronix.de;
	Thu, 18 Dec 2025 12:41:12 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWCN3-0002ZB-2T
	for lore@pengutronix.de; Thu, 18 Dec 2025 12:41:12 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6388YGLFrJarAA26m9+tPcaqzGf2WeHwfmLqzumQ/v8=; b=GKgCRokRvQAshPxT1jrV2GdgAU
	9Ts5fa1Ywk/K9VAM+/m23+1i/FTpLPXCzjquegpGMwv4lfY+u/YxWA7roI8r309muVymGIvqJBbOr
	bIrp9RhJAI/Oj2FY9zOAWSsPL6qHoP7qHD+LgqoQ8J1ck43MDJZXXJ5pwUe6sVe+hQDrgbVMffAnn
	belWpP+apSZ+AjdRaunecOYL+AxbXSJQPwp/kCPl/HMUNtTqomCUt4qTokh314pT+BpHxRQVOfWUw
	iYqnZ9RjP3W0QRLmNqP0k9/sC0Bc9J0ONshs3cBs7Wu66PAbYJHbOHSWcjxeomdtIBKytbFtzd8Uc
	0bjWxLvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWCKa-00000008Lq6-3Vpo;
	Thu, 18 Dec 2025 11:38:04 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWCJn-00000008KeX-1DVV
	for barebox@bombadil.infradead.org;
	Thu, 18 Dec 2025 11:37:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=6388YGLFrJarAA26m9+tPcaqzGf2WeHwfmLqzumQ/v8=; b=Kxf43sO/MyysWjmPkjdDggh0o4
	ITLKZvcZgK/MreCpybDRkm/GjQtk3PbFhHReCAZiDn5c+JcmraPOYEEYHLYYP3ZgRAdFBStPM0jZs
	3PtehEA7NoRQ79lYQyc9o+sMSWEjsrAQrqt8qhbA8icYID/3TGUMHaoTzOsXKRDrsNYpYxQhJgkKj
	VKESQ4DM2j+s1pmKNah65D/2ADsoWSm3WcZ8PM5rdkTmF6I1ae8cr7BhA9YUELqq9EUmc9m0DHsje
	FkKgsMmvyDjW6m4BpyxikljtdvDjoMCa3+OOtXgwSWkdMClGWCrmdUCakF4t1f3ZtgoAbaXaj6yaA
	jH8OR2Ug==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWBRy-00000008fRQ-2wkb
	for barebox@lists.infradead.org;
	Thu, 18 Dec 2025 10:41:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWCJN-0008Bg-6h; Thu, 18 Dec 2025 12:36:49 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWCJN-006Gva-03;
	Thu, 18 Dec 2025 12:36:49 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWBw5-0000000AVre-0Lv9;
	Thu, 18 Dec 2025 12:12:45 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 18 Dec 2025 11:38:03 +0100
Message-ID: <20251218111242.1527495-44-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251218111242.1527495-1-a.fatoum@pengutronix.de>
References: <20251218111242.1527495-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251218_104157_677287_B14D4B1D 
X-CRM114-Status: GOOD (  24.66  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v1 43/54] efi: loader: add ESP boot entry provider
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

When no Boot variables have been configured, the default per spec
is to look through known media for an EFI payload at the removable
media path (CONFIG_EFI_PAYLOAD_DEFAULT_PATH).

Implement a boot entry provider that does just that.

This is going to be called by an incoming efibootmgr target, so bump the
priority below the existing ones, so it's not taken as the default.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 efi/loader/Makefile  |   1 +
 efi/loader/bootesp.c | 260 +++++++++++++++++++++++++++++++++++++++++++
 include/libfile.h    |   2 +
 lib/libfile.c        |  56 ++++++++++
 4 files changed, 319 insertions(+)
 create mode 100644 efi/loader/bootesp.c

diff --git a/efi/loader/Makefile b/efi/loader/Makefile
index 44ba3a86e4d4..84a8bf1ca229 100644
--- a/efi/loader/Makefile
+++ b/efi/loader/Makefile
@@ -12,3 +12,4 @@ obj-y += setup.o
 obj-y += watchdog.o
 obj-y += pe.o
 obj-y += loadopts.o
+obj-$(CONFIG_BOOT) += bootesp.o
diff --git a/efi/loader/bootesp.c b/efi/loader/bootesp.c
new file mode 100644
index 000000000000..afce5118aa68
--- /dev/null
+++ b/efi/loader/bootesp.c
@@ -0,0 +1,260 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+
+#define pr_fmt(fmt)  "efi-loader: bootesp: " fmt
+
+#include <malloc.h>
+#include <fcntl.h>
+#include <libfile.h>
+#include <libbb.h>
+#include <init.h>
+#include <bootm.h>
+#include <driver.h>
+#include <fs.h>
+#include <globalvar.h>
+#include <linux/stat.h>
+#include <linux/list.h>
+#include <linux/err.h>
+#include <spec/dps.h>
+#include <boot.h>
+#include <memory.h>
+#include <firmware.h>
+#include <command.h>
+
+#include <bootscan.h>
+
+struct esp_entry {
+	struct bootentry entry;
+
+	struct cdev *cdev;
+	const char *exepath;
+	const char *rootpath;
+};
+
+/*
+ * esp_boot - boot an entry
+ *
+ * This boots an entry. On success this function does not return.
+ * In case of an error the error code is returned. This function may
+ * return 0 in case of a successful dry run.
+ */
+static int esp_boot(struct bootentry *be, int verbose, int dryrun)
+{
+	struct esp_entry *entry = container_of(be, struct esp_entry, entry);
+	struct bootm_data data = {};
+	int ret;
+
+	bootm_data_init_defaults(&data);
+	data.verbose = max(verbose, data.verbose);
+	data.dryrun = dryrun;
+	data.efi_boot = BOOTM_EFI_REQUIRED;
+
+	data.os_file = strdup_const(entry->exepath);
+
+	/* TODO:
+	 * 1) move firmware/overlay handling into common/bootm.c and then
+	 * 2) implement device tree overlay patching protocol using it?
+	 */
+
+	ret = bootm_boot(&data);
+	if (ret)
+		pr_err("Booting failed\n");
+
+	free_const(data.os_file);
+
+	return ret;
+}
+
+static void esp_entry_free(struct bootentry *be)
+{
+	struct esp_entry *entry = container_of(be, struct esp_entry, entry);
+
+	free_const(entry->exepath);
+	free_const(entry->rootpath);
+	free(entry);
+}
+
+static struct esp_entry *esp_entry_alloc(struct bootentries *bootentries)
+{
+	struct esp_entry *entry;
+
+	entry = xzalloc(sizeof(*entry));
+
+	entry->entry.release = esp_entry_free;
+	entry->entry.boot = esp_boot;
+
+	return entry;
+}
+
+static int __esp_scan_file(struct bootentries *bootentries, const char *root,
+			   const char *exename)
+{
+	char *devname = NULL, *hwdevname = NULL;
+	struct esp_entry *entry;
+
+	pr_debug("%s: %s\n", __func__, root);
+
+	entry = esp_entry_alloc(bootentries);
+	if (IS_ERR(entry))
+		return PTR_ERR(entry);
+
+	root = root ?: get_mounted_path(exename);
+	entry->rootpath = xstrdup_const(root);
+	entry->exepath = xstrdup_const(exename);
+	entry->cdev = get_cdev_by_mountpath(root);
+
+	if (entry->cdev && entry->cdev->dev) {
+		devname = xstrdup(dev_name(entry->cdev->dev));
+		if (entry->cdev->dev->parent)
+			hwdevname = xstrdup(dev_name(entry->cdev->dev->parent));
+	}
+
+	entry->entry.title = xasprintf("EFI payload (%s)", exename);
+	entry->entry.description = basprintf("ESP entry, device: %s hwdevice: %s",
+					    devname ? devname : "none",
+					    hwdevname ? hwdevname : "none");
+	free(devname);
+	free(hwdevname);
+
+	entry->entry.me.type = MENU_ENTRY_NORMAL;
+	entry->entry.release = esp_entry_free;
+
+	bootentries_add_entry(bootentries, &entry->entry);
+	return 1;
+}
+
+static int esp_scan_file(struct bootscanner *scanner,
+			    struct bootentries *bootentries,
+			    const char *exename)
+{
+	u8 magic[2];
+
+	if (read_file_into_buf(exename, &magic, 2) != 2 ||!is_dos_exe(magic))
+		return 0;
+
+	return __esp_scan_file(bootentries, NULL, exename);
+}
+
+/*
+ * esp_scan_directory - scan over a directory
+ *
+ * Given a root path collects all bootentries.
+ *
+ * returns the number of entries found or a negative error value otherwise.
+ */
+static int esp_scan_directory(struct bootscanner *bootscanner,
+				  struct bootentries *bootentries,
+				  const char *root)
+{
+	const char *path = CONFIG_EFI_PAYLOAD_DEFAULT_PATH;
+	char *abspath;
+	int fd, ret, found = 0;
+	struct stat s;
+
+	pr_debug("%s: %s\n", __func__, root);
+
+	fd = open(root, O_DIRECTORY);
+	if (fd < 0)
+		return fd;
+
+	ret = fixup_path_case(fd, &path);
+	if (ret < 0)
+		goto out;
+	fd = ret;
+
+	ret = fstat(fd, &s);
+	if (ret || !S_ISREG(s.st_mode))
+		goto out;
+
+	abspath = xasprintf("%s/%s", root, path);
+
+	ret = __esp_scan_file(bootentries, root, abspath);
+	if (ret > 0)
+		found += ret;
+
+	free(abspath);
+
+	ret = found;
+out:
+	close(fd);
+	return ret;
+}
+
+static int esp_scan_with_flag(struct bootscanner *scanner,
+			      struct bootentries *bootentries, struct cdev *cdev,
+			      unsigned flags)
+{
+	struct cdev *partcdev;
+	int found = 0, err = 0;
+	int ret;
+
+	for_each_cdev_partition(partcdev, cdev) {
+		if ((partcdev->flags & flags) != flags)
+			continue;
+
+		err = -ENOENT;
+
+		if (partcdev->typeflags & DPS_TYPE_FLAG_NO_AUTO) {
+			pr_debug("%s: partition skipped from autodiscovery\n",
+				 partcdev->name);
+			continue;
+		}
+
+		ret = boot_scan_cdev(scanner, bootentries, partcdev, true);
+		if (ret > 0)
+			found += ret;
+	}
+
+	return found ?: err;
+}
+
+/*
+ * esp_scan_disk - scan a disk cdev for ESP
+ *
+ * Given a cdev this functions scans over all child partitions looking
+ * for the ESP.
+ * Returns the number of entries found or a negative error code if some unexpected
+ * error occurred.
+ */
+static int esp_scan_disk(struct bootscanner *scanner,
+			 struct bootentries *bootentries, struct cdev *cdev)
+{
+	int nesp = 0, nlegacy = 0;
+
+	pr_debug("%s: %s\n", __func__, cdev->name);
+
+	nesp = esp_scan_with_flag(scanner, bootentries, cdev,
+				  DEVFS_PARTITION_BOOTABLE_ESP);
+	if (nesp < 0)
+		return nesp;
+
+	nlegacy = esp_scan_with_flag(scanner, bootentries, cdev,
+				     DEVFS_PARTITION_BOOTABLE_LEGACY);
+	if (nlegacy < 0)
+		return nlegacy;
+
+	return nesp + nlegacy;
+}
+
+static struct bootscanner esp_scanner = {
+	.name		= "esp",
+	.scan_file	= esp_scan_file,
+	.scan_directory	= esp_scan_directory,
+	.scan_disk	= esp_scan_disk,
+};
+
+static int esp_bootentry_generate(struct bootentries *bootentries, const char *name)
+{
+	return bootentry_scan_generate(&esp_scanner, bootentries, name);
+}
+
+static struct bootentry_provider esp_bootentry_provider = {
+	.name = "esp",
+	.generate = esp_bootentry_generate,
+	.priority = -50,
+};
+
+static int esp_init(void)
+{
+	return bootentry_register_provider(&esp_bootentry_provider);
+}
+device_initcall(esp_init);
diff --git a/include/libfile.h b/include/libfile.h
index cdcad4b173d0..dc292e422e0b 100644
--- a/include/libfile.h
+++ b/include/libfile.h
@@ -57,4 +57,6 @@ int cache_file(const char *path, char **newpath);
 struct resource *file_to_sdram(const char *filename, unsigned long adr,
 			       enum resource_memtype memtype);
 
+int fixup_path_case(int dirfd, const char **path);
+
 #endif /* __LIBFILE_H */
diff --git a/lib/libfile.c b/lib/libfile.c
index a6690b0b904a..01189773b7e3 100644
--- a/lib/libfile.c
+++ b/lib/libfile.c
@@ -20,6 +20,7 @@
 #include <libfile.h>
 #include <progress.h>
 #include <stdlib.h>
+#include <string.h>
 #include <linux/stat.h>
 
 /*
@@ -831,3 +832,58 @@ struct resource *file_to_sdram(const char *filename, unsigned long adr,
 
 	return res;
 }
+
+int fixup_path_case(int fd, const char **path)
+{
+	DIR *dir;
+	struct dirent *entry;
+	char *resolved_path, *curr, *next;
+
+	next = resolved_path = xstrdup(*path);
+
+	while ((curr = strsep(&next, "/"))) {
+		size_t nextlen = strlen(curr);
+		char *imatch = NULL;
+
+		dir = fdopendir(fd);
+		if (!dir)
+			goto err;
+
+		while ((entry = readdir(dir)) != NULL) {
+			size_t d_namelen = strlen(entry->d_name);
+
+			if (nextlen != d_namelen)
+				continue;
+
+			if (!strcmp(entry->d_name, curr))
+				goto next_component;
+
+			if (!imatch && !strcasecmp(entry->d_name, curr))
+				imatch = xstrdup(entry->d_name);
+		}
+
+		if (!imatch) {
+			errno = ENOENT;
+			goto err;
+		}
+
+		strncpy(curr, imatch, nextlen);
+		free(imatch);
+
+next_component:
+		fd = openat(fd, curr, next ? O_DIRECTORY : 0);
+		closedir(dir);
+
+		if (fd < 0)
+			goto err;
+
+		if (next)
+			curr[nextlen] = '/';
+	}
+
+	*path = resolved_path;
+	return fd;
+err:
+	free(resolved_path);
+	return -errno;
+}
-- 
2.47.3



