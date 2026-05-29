Delivery-date: Fri, 29 May 2026 07:15:32 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wSpZD-0004zj-1W
	for lore@lore.pengutronix.de;
	Fri, 29 May 2026 07:15:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wSpZC-0001Gd-Aq
	for lore@pengutronix.de; Fri, 29 May 2026 07:15:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Wcqtm97CG08L0X5pMr2Kp/IFZbqvoFF/iAholclwLCA=; b=MA6pmiQD+woh3meaSxZPZF4Y5+
	WkCNgPr0qmBmNjqKu/hXl0cES+VngD3ll0+70CA8JaqvguLKMvAeYHG1v7vePaKxTkgV13X08I3bE
	WZYHwOxzS8m3SD2qB6sC2KN5y+dLTOwThYs8DiUXLOMIZfQGv3gk5f/Iz6HY1ZKaeJ7LWpea4XVoJ
	ezmq7uXiGZdsZU8B8XvznCy+dRDTwPfG13sW5Jy/RZU+wrDx4jWkhD/Jc7zfnky+Ny/ZfYp9vW9US
	nCjr6QkJ88MUJfT+Nn7zQW1zUYgnIH3bINvlLBpGe+w5SyXBCawpaJ8w5ZXzjXWOYtH6+jYPA6y1D
	wQZOMMqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSpXk-00000006ku6-0oXf;
	Fri, 29 May 2026 05:14:00 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSpXh-00000006ktj-2P9k
	for barebox@lists.infradead.org;
	Fri, 29 May 2026 05:13:59 +0000
Received: by mail-lf1-x130.google.com with SMTP id 2adb3069b0e04-5aa21fa024cso11970498e87.2
        for <barebox@lists.infradead.org>; Thu, 28 May 2026 22:13:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780031635; x=1780636435; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Wcqtm97CG08L0X5pMr2Kp/IFZbqvoFF/iAholclwLCA=;
        b=k4YT12ckAHIKB7HivCUdKDoLUTyZQavEsQK+RdIICWM/4F46SkKQz3/iQ03j7lqcdu
         y1qnkuyqeIrrLlhjTqP2BblNW4I4U/X7zFJrqlHliqD6ObB+cnNOi9jTiXpsO5axQkrL
         jm40hq+S5U7ORXRaw4kKa5JRkTr6MQCvqf7hNGhJZ+tJi7vk7IKbAeVp967bO18k7rmW
         yg8pZYXTrDhLl1KMETesuIy+EHwYzJ4Y/ksHdbeYIqso4Ss+2Xbqs7/bc4x53jE8PgAV
         Us3OLMgtWBHxTGV5IfmJGRQBqB4cZYEyeK3AX0UUi4UpsP2HadK2GKwwvYWlSn04Ej21
         HadA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780031635; x=1780636435;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Wcqtm97CG08L0X5pMr2Kp/IFZbqvoFF/iAholclwLCA=;
        b=sszzKbT8CKm/NpbBLgoIFn/LHEeJE+DpY5L5iXFAjWiaPr3NYuQ4kHuazspY4xRWbt
         aVGR4HKc1f0AQjwUEH9nIU5ePUatJ+XrDqTyd6dRv6GfnD8BMfZju3laebiap1Z5pNoL
         murioL90CzyibsEJKX21ETEkggAljjyzpTuibIySWANXzbbdLCtTvzG6JgTd/3YtxDWj
         RMu0nv3enySTlT9O4haUMnafKyU5V77p4BdgECWhA1IS4Vndr+z6Fe2pf/WBIrZQnJDj
         z2J0cEx2xw0fezpcLHiN1SBNKMCu9Y17t85KHIEf+gYuxWGAWwgzJcndGg63xre2VKOM
         a1+w==
X-Gm-Message-State: AOJu0Yw/oSqVatYKQh1+mFqyYPKPs019+jFrbzaRL7MPqi+2m0CBIknx
	/92/fou+2K4RKMAOdwgXbGN5HxDh8kn5mrUPJsDck1eJm6C8RiJnBfWCm9vyvp2FKJk=
X-Gm-Gg: Acq92OHdllMF4xuWqhzEtBNi727vfrrgacSZxlbvEQP6VafMpL3HwX8b+qjkavXnybL
	3ADoKwKc/Ei7+97+N6tB5KmmXtI/34r1GXXvywC9+NvpAnEBrbEfoz8TtbcSYGgASasZeuyo+Np
	/OM06FcD5lDuc8ffmCq9YUgaEjbzFyvHRagmT9jHmoO+QFldX/usF+d0KeRZu/fq/TSiWMh2Mub
	roHNYUN3r0uA/SorqU+waSx6MZPEb1pATzLEjO9Dk1bfPVN1krGLQhkThSrTvTZlYWqyNqRc4cW
	BZZnvbKp9GL28y0nnZ8jhZnuisd7DKkIdyFq84AEsSHwSBi5KCdcFJJgnjzrpjGVMEz0jDj3xpz
	qMlxYBaH3hQwcS3MiiKY8dURB520Cp50LyqL8t/c2GSqt54X86lwGGQKIi9g9CY8jASMHcqEcBS
	PUyKplW1GZJZwSzVip4gjmB4828l6oloqzAjQRH8r36O+ykWsfFA==
X-Received: by 2002:a05:651c:212a:b0:393:9773:9d8d with SMTP id 38308e7fff4ca-396536bda4dmr3018231fa.10.1780031634951;
        Thu, 28 May 2026 22:13:54 -0700 (PDT)
Received: from gentoo.sknt.ru ([95.161.221.172])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-39659c90b95sm263451fa.11.2026.05.28.22.13.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 May 2026 22:13:52 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Fri, 29 May 2026 08:13:46 +0300
Message-ID: <20260529051347.1373331-1-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.52.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260528_221357_663818_F1F92956 
X-CRM114-Status: GOOD (  24.93  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FORGED_GMAIL_RCVD,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=ham
	autolearn_force=no version=3.4.2
Subject: [PATCH v3 1/2] Add support for extlinux.conf
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This adds support for the extlinux.conf configuration format, commonly
used by Syslinux and many Linux distributions. The configuration file
is typically located at /boot/extlinux/extlinux.conf or
/extlinux/extlinux.conf and defines boot entries with kernel, initrd,
device tree, and command line options.

The implementation integrates with the existing boot entry framework:
- The extlinux scanner discovers entries on mounted filesystems.
- The default LABEL is turned into a boot entry.
- Bootm is used to load and start the kernel.
---
barebox@Diasom DS-RK3568-SOM-EVB:/ global.bootm.appendroot=true
barebox@Diasom DS-RK3568-SOM-EVB:/ global.boot.default=mmc1.2
barebox@Diasom DS-RK3568-SOM-EVB:/ boot
ext4 ext40: EXT2 rev 1, inode_size 256, descriptor size 64
Booting entry 'extlinux: linux'
extlinux: Booting extlinux label 'linux'
Adding "root=/dev/mmcblk1p3" to Kernel commandline
Loading ARM aarch64 Linux/EFI image '/mnt/mmc1.2/boot/extlinux/../vmlinuz'
commandline: root=/dev/mmcblk1p3 console=ttyS2,1500000n8 ro systemd.unit=setup.target quiet splash systemd.machine_id=181af2816b4c6b0aef77068e0ccc69ad
Loaded kernel to 0x0a400000, devicetree at 0x000000000fb49000

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 common/Kconfig    |  19 ++++
 common/Makefile   |   1 +
 common/extlinux.c | 243 ++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 263 insertions(+)
 create mode 100644 common/extlinux.c

diff --git a/common/Kconfig b/common/Kconfig
index 047dd5390b..6f1eabdf8b 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -776,6 +776,25 @@ config BLSPEC
 	  on a device and it allows the Operating System to install / update
 	  kernels.
 
+config EXTLINUX
+	bool
+	prompt "Support extlinux.conf"
+	depends on FLEXIBLE_BOOTARGS
+	depends on !SHELL_NONE
+	select BOOT
+	select BOOTM
+	select MMCBLKDEV_ROOTARG if MCI
+	help
+	  Enable this to let barebox parse extlinux.conf configuration files,
+	  commonly used by the Syslinux bootloader and many Linux distributions
+	  (e.g., on SD cards or USB drives).
+	  extlinux.conf is typically located at /boot/extlinux/extlinux.conf or
+	  /extlinux/extlinux.conf. It defines boot entries with kernel, initrd,
+	  device tree, and command line options.
+	  This option allows barebox to discover and boot operating systems
+	  that follow the extlinux configuration format, providing a simple
+	  and portable way to manage multiple boot options.
+
 config FLEXIBLE_BOOTARGS
 	bool
 	prompt "flexible Linux bootargs generation"
diff --git a/common/Makefile b/common/Makefile
index 21b6cecb3b..6b97edc2c3 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -9,6 +9,7 @@ obj-y				+= clock.o
 pbl-$(CONFIG_PBL_CLOCKSOURCE)	+= clock.o
 obj-y				+= console_common.o
 obj-$(CONFIG_OFDEVICE)		+= deep-probe.o
+obj-$(CONFIG_EXTLINUX)		+= extlinux.o
 obj-y				+= startup.o
 obj-y				+= misc.o
 obj-pbl-y			+= memsize.o
diff --git a/common/extlinux.c b/common/extlinux.c
new file mode 100644
index 0000000000..6ad01cc652
--- /dev/null
+++ b/common/extlinux.c
@@ -0,0 +1,243 @@
+// SPDX-License-Identifier: GPL-2.0+
+/* SPDX-FileCopyrightText: Alexander Shiyan <shc_work@mail.ru> */
+
+#define pr_fmt(fmt)     "extlinux: " fmt
+
+#include <boot.h>
+#include <bootm.h>
+#include <bootscan.h>
+#include <common.h>
+#include <environment.h>
+#include <fs.h>
+#include <globalvar.h>
+#include <libfile.h>
+#include <libgen.h>
+#include <string.h>
+
+struct extlinux_entry {
+	struct bootentry entry;
+	char *rootpath;
+	char *label;
+	char *kernel;
+	char *initrd;
+	char *fdtdir;
+	char *fdt;
+	char *append;
+};
+
+static int extlinux_boot(struct bootentry *entry, int verbose, int dryrun)
+{
+	struct extlinux_entry *e =
+		container_of(entry, struct extlinux_entry, entry);
+	char *kernel_abs, *initrd_abs = NULL, *fdt_abs = NULL;
+	struct bootm_data data = {};
+	int ret;
+
+	bootm_data_init_defaults(&data);
+
+	data.dryrun = max_t(int, dryrun, data.dryrun);
+	data.verbose = max(verbose, data.verbose);
+
+	kernel_abs = basprintf("%s/%s", e->rootpath, e->kernel);
+	data.os_file = kernel_abs;
+
+	if (e->initrd) {
+		initrd_abs = basprintf("%s/%s", e->rootpath, e->initrd);
+		data.initrd_file = initrd_abs;
+	}
+
+	if (e->fdt) {
+		char *fdtdir = e->fdtdir ? : e->rootpath;
+
+		fdt_abs = basprintf("%s/%s", fdtdir, e->fdt);
+		data.oftree_file = fdt_abs;
+	}
+
+	if (e->append)
+		globalvar_add_simple("linux.bootargs.dyn.bootentries",
+				     e->append);
+
+	pr_info("Booting extlinux label '%s'\n", e->label);
+
+	ret = bootm_entry(entry, &data);
+	if (ret)
+		pr_err("bootm failed: %pe\n", ERR_PTR(ret));
+
+	free(kernel_abs);
+	free(initrd_abs);
+	free(fdt_abs);
+
+	return ret;
+}
+
+static void extlinux_entry_free(struct bootentry *entry)
+{
+	struct extlinux_entry *e =
+		container_of(entry, struct extlinux_entry, entry);
+
+	free(e->rootpath);
+	free(e->label);
+	free(e->kernel);
+	free(e->initrd);
+	free(e->fdtdir);
+	free(e->fdt);
+	free(e->append);
+	free(e);
+}
+
+static struct extlinux_entry *parse_extlinux_conf(const char *abspath,
+						  const char *rootpath)
+{
+	char *buf, *bufptr, *line, *default_label = NULL;
+	struct extlinux_entry *entry = NULL;
+
+	bufptr = read_file(abspath, NULL);
+	if (!bufptr)
+		return ERR_PTR(-errno);
+
+	buf = bufptr;
+	while ((line = strsep(&buf, "\n\r")) != NULL) {
+		char *key, *val;
+
+		line = skip_spaces(line);
+
+		if (*line == '#' || *line == '\0')
+			continue;
+
+		key = strsep(&line, " \t");
+		val = isempty(line) ? NULL : skip_spaces(line);
+		if (!key || !val)
+			continue;
+
+		if (!default_label) {
+			if (!strcasecmp(key, "DEFAULT"))
+				default_label = xstrdup(val);
+
+			continue;
+		}
+
+		if (!strcasecmp(key, "LABEL")) {
+			if (!strcmp(val, default_label)) {
+				entry = xzalloc(sizeof(*entry));
+				entry->label = xstrdup(val);
+				entry->rootpath = dirname(xstrdup(abspath));
+			} else if (entry) {
+				break;
+			}
+			continue;
+		}
+
+		if (entry) {
+			if (!strcasecmp(key, "KERNEL"))
+				entry->kernel = xstrdup(val);
+			else if (!strcasecmp(key, "INITRD"))
+				entry->initrd = xstrdup(val);
+			else if (!strcasecmp(key, "FDTDIR"))
+				entry->fdtdir = xstrdup(val);
+			else if (!strcasecmp(key, "FDT"))
+				entry->fdt = xstrdup(val);
+			else if (!strcasecmp(key, "APPEND"))
+				entry->append = xstrdup(val);
+			else
+				pr_warn("Unhandled key: %s\n", key);
+		}
+	}
+
+	free(default_label);
+	free(bufptr);
+
+	if (!entry || !entry->kernel) {
+		if (entry)
+			extlinux_entry_free(&entry->entry);
+		return ERR_PTR(-EINVAL);
+	}
+
+	return entry;
+}
+
+static int _extlinux_scan_file(struct bootscanner *scanner,
+			       struct bootentries *bootentries,
+			       const char *configname,
+			       const char *rootpath)
+{
+	struct extlinux_entry *e;
+
+	if (!strends(configname, "extlinux.conf"))
+		return 0;
+
+	e = parse_extlinux_conf(configname, rootpath);
+	if (IS_ERR(e))
+		return PTR_ERR(e);
+
+	e->entry.boot = extlinux_boot;
+	e->entry.release = extlinux_entry_free;
+	e->entry.path = xstrdup_const(configname);
+	e->entry.title = basprintf("extlinux: %s", e->label);
+	e->entry.description = basprintf("extlinux entry \'%s\" on %s",
+					 e->label, rootpath);
+	e->entry.me.type = MENU_ENTRY_NORMAL;
+
+	bootentries_add_entry(bootentries, &e->entry);
+
+	return 1;
+}
+
+static int extlinux_scan_file(struct bootscanner *scanner,
+			      struct bootentries *bootentries,
+			      const char *configname)
+{
+	const char *rootpath = get_mounted_path(configname);
+
+	if (IS_ERR(rootpath))
+		return PTR_ERR(rootpath);
+
+	return _extlinux_scan_file(scanner, bootentries, configname, rootpath);
+}
+
+static int extlinux_scan_directory(struct bootscanner *scanner,
+				   struct bootentries *bootentries,
+				   const char *rootpath)
+{
+	char *path;
+	struct stat s;
+	int ret;
+
+	path = basprintf("%s/boot/extlinux/extlinux.conf", rootpath);
+	ret = stat(path, &s);
+	if (!ret && S_ISREG(s.st_mode))
+		ret = _extlinux_scan_file(scanner, bootentries, path, rootpath);
+	free(path);
+	if (ret > 0)
+		return ret;
+
+	path = basprintf("%s/extlinux/extlinux.conf", rootpath);
+	ret = stat(path, &s);
+	if (!ret && S_ISREG(s.st_mode))
+		ret = _extlinux_scan_file(scanner, bootentries, path, rootpath);
+	free(path);
+
+	return ret;
+}
+
+static struct bootscanner extlinux_scanner = {
+	.name = "extlinux",
+	.scan_file = extlinux_scan_file,
+	.scan_directory = extlinux_scan_directory,
+};
+
+static int extlinux_generate(struct bootentries *bootentries, const char *name)
+{
+	return bootentry_scan_generate(&extlinux_scanner, bootentries, name);
+}
+
+static struct bootentry_provider extlinux_provider = {
+	.name = "extlinux",
+	.generate = extlinux_generate,
+	.priority = -25,
+};
+
+static int extlinux_init(void)
+{
+	return bootentry_register_provider(&extlinux_provider);
+}
+device_initcall(extlinux_init);
-- 
2.52.0



