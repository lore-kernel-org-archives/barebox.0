Delivery-date: Thu, 16 Apr 2026 15:46:08 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wDN2m-00Cq66-0s
	for lore@lore.pengutronix.de;
	Thu, 16 Apr 2026 15:46:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wDN2l-0006Jk-7h
	for lore@pengutronix.de; Thu, 16 Apr 2026 15:46:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=S5SbtZGnICM6CdJ31U7vmBUEBljaEvz1fn6kDOvIOBM=; b=RB6gACKqwRlep853fc7F/dPj08
	sTcZls1Jdg7HJjWDQn4rQMNSU98ALdD9l8CrL/nZBGAoO8xnqRY+RQmhG8wuNU2udZkb4Gku0PTjm
	7gFgAKZ7HbOZQVWkCyJ1lHfS/DmmIY1dkSpZpIMxi3ZDW3CT0ekI/sK1gW3MFjMcZCyWyRWu4uI4X
	Jpn0vIIvSnonxFf2aWimbFCrGuMWFZo7cTYReW29ZjCa02RmGeGeOr671uv2aCb0R1jMH8pttlC2p
	4YgGXqzbw8LcV2ULcc0bqSiUMxNXhbmtDpxzP2gHRUQwXWfuGVhsGFYCatP/xLm10j43an2WNZufm
	/FsECtjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDN29-00000002WWY-2r8G;
	Thu, 16 Apr 2026 13:45:29 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDN26-00000002WW1-2krU
	for barebox@lists.infradead.org;
	Thu, 16 Apr 2026 13:45:27 +0000
Received: by mail-lf1-x12e.google.com with SMTP id 2adb3069b0e04-5a10d130b37so672022e87.0
        for <barebox@lists.infradead.org>; Thu, 16 Apr 2026 06:45:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1776347124; x=1776951924; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=S5SbtZGnICM6CdJ31U7vmBUEBljaEvz1fn6kDOvIOBM=;
        b=GIWNln2VXQlPzpw5Cez+uFj2r1rk01JuDH4WAzkNv1SIqIE9Ep6j6inn/6dN2EGLEl
         mCUDlneqqQxQeiPvkEoZZjDdfQ7uDzprIpNrjWV5KeIn/nXjfsW28SLxwUxYPMSmFRng
         PLdL2/PbYh6LVnAu6kb4Nbt+bXMEpLaeNbenHDVUSJXYTbM4GES4YrnHL96kSvRBzMVW
         9VqDNIVZ3ofrNP3hlPA63VrV6B90W/hi6BYdgxtvCa6qK4BObG8ckFPgEA5aYUmvMUyV
         B/19AG8DxlfNOdX9AKM2uxgvwAvR6O/czYaa+S3zU5EuvUlF/7UIlvoSsExbOBf+wbrH
         4bSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776347124; x=1776951924;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=S5SbtZGnICM6CdJ31U7vmBUEBljaEvz1fn6kDOvIOBM=;
        b=NbPNt1Lo8wIxmeXu9Em9MgUnUp3dQpS8oOynx2bojdxVBFzV5rXB6utbDMcqvOuxel
         KUjk/v6H9ThyXkGAhlgZSw6wBZNPuitVWuxTa2jSi1XLTVFBQg6k7gMyNMdFg5gbmCk5
         GFta3JGVVgUVxma8kI5LfGKW9zJeBjZV4puqyvfgw9nT5s3AC3/QoffNvnHTrC4u7sL9
         bnjgXqEJ9rAPUDTKxVtXZJLwq3j1lnvhaqEtnZIqfMvHAtAbJxmx9VUmdwLN6K1zniK+
         3ssSmGG8ekpi2wYgNmzyEo6L5RbA8pGZrIY0IDR7j6kVcP1cOls7mLd2gxgwY/M2mSfh
         NfAQ==
X-Gm-Message-State: AOJu0YwJ1yAw+4vZMv8rfdCuU0VnBgT1AbYWkqLe3vrq15gqOfGCEQU0
	642V8nYfPZvq0tX/3UBXf5vNrDt+NY6FfOxBy8vrAQpYLOkHcoDGP93JZdelfC+0ysA=
X-Gm-Gg: AeBDiesNjUdUUo1wLuFPLDRg8VJ7SQNR57cr9e6QgUCwvLeOid+YgaxOe9R5Pyklhbe
	kcQtXCbuYi1IrDHrDSPWgfroX050vz//tyRp/hYMr3fG7DdAe0GZ0k4Inge6vWvzeTMURTuNuLj
	Rw5tAdFBUUZe4wnWnTSz4bYKp9l0C9klYACsTXVcSQo+k/DTbQE++WcDHKZLxZDgPgw5O7QL4Vf
	yOZj9dZW4ezyPiUzywWMl1lgyu45EbWrkFRKVj5XZc8/ilHRLaWTfI5y4+im3Pb1fg5lIGAczgu
	kFugUTyuryFO9u0+yC6ZrlA/ygOr8nQZt+uxz08hxKKJ0mMkv+QlQjEUB2isAf1msmoCj3Cjqlh
	9ngw3gEISdcY+PvkJkayp+APvo/DZhPTRIoYqTuP7U8SVsFHJXotWFRgFKmkpdJMOxRMjF2n0tb
	wICIGr3zyVdy1Tg0MTe+gHupi4eBMMkUdvCmL76oHfAGipI2/NAg==
X-Received: by 2002:a05:6512:3a8d:b0:5a2:7cde:3440 with SMTP id 2adb3069b0e04-5a40df964b4mr1297315e87.17.1776347123539;
        Thu, 16 Apr 2026 06:45:23 -0700 (PDT)
Received: from gentoo.sknt.ru ([95.161.221.172])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a40a2fb93esm1295587e87.66.2026.04.16.06.45.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Apr 2026 06:45:22 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Thu, 16 Apr 2026 16:45:17 +0300
Message-ID: <20260416134518.3282395-1-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.52.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260416_064526_757156_D998CE00 
X-CRM114-Status: GOOD (  26.98  )
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
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] Add support for extlinux.conf
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This adds support for the extlinux.conf configuration format, commonly
used by Syslinux and many Linux distributions. The configuration file
is typically located at /boot/extlinux/extlinux.conf or
/extlinux/extlinux.conf and defines boot entries with kernel, initrd,
device tree, and command line options.

The implementation integrates with the existing boot entry framework:
- The extlinux scanner discovers entries on mounted filesystems
- Default label is turned into a boot entry
- The "root=" parameter is automatically stripped from the append line
  to allow barebox to inject the correct root device (via appendroot)
- Bootm is used to load and start the kernel
---
barebox@Diasom DS-RK3568-SOM-EVB:/ global.boot.default=mmc1.2
barebox@Diasom DS-RK3568-SOM-EVB:/ boot
ext4 ext40: EXT2 rev 1, inode_size 256, descriptor size 64
Booting entry 'extlinux: linux'
extlinux: Booting extlinux label 'linux'
Adding "root=/dev/mmcblk1p3" to Kernel commandline
Loading ARM aarch64 Linux/EFI image '/mnt/mmc1.2/boot/extlinux/../vmlinuz'
Loaded initrd from GZIP compressed /mnt/mmc1.2/boot/extlinux/../initrd.img to 0x000000000d390000-0x000000000fb48ca6
commandline: mem=0xef600000 root=/dev/mmcblk1p3 console=ttyS2,1500000n8 ro systemd.unit=setup.target quiet splash  systemd.machine_id=181af2816b4c6b0aef77068e0ccc69ad
Loaded kernel to 0x0a400000, devicetree at 0x000000000fb49000

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 common/Kconfig    |  19 ++++
 common/Makefile   |   1 +
 common/extlinux.c | 271 ++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 291 insertions(+)
 create mode 100644 common/extlinux.c

diff --git a/common/Kconfig b/common/Kconfig
index cd002865f7..bbffbfe92c 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -726,6 +726,25 @@ config BLSPEC
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
index ac39ee4e3e..dda42c099a 100644
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
index 0000000000..39d5191ecc
--- /dev/null
+++ b/common/extlinux.c
@@ -0,0 +1,271 @@
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
+#include <malloc.h>
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
+static int extlinux_boot(struct bootentry *be, int verbose, int dryrun)
+{
+	struct extlinux_entry *e =
+		container_of(be, struct extlinux_entry, entry);
+	char *kernel_abs, *initrd_abs = NULL, *fdt_abs = NULL;
+	struct bootm_data data = {};
+	int ret;
+
+	bootm_data_init_defaults(&data);
+
+	data.dryrun = max_t(int, dryrun, data.dryrun);
+	data.verbose = max(verbose, data.verbose);
+	data.appendroot = true;
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
+		globalvar_add_simple("linux.bootargs.dyn.extlinux", e->append);
+
+	pr_info("Booting extlinux label '%s'\n", e->label);
+
+	ret = bootm_boot(&data);
+	if (ret)
+		pr_err("bootm failed: %s\n", strerror(-ret));
+
+	free(kernel_abs);
+	free(initrd_abs);
+	free(fdt_abs);
+
+	return ret;
+}
+
+static void extlinux_entry_free(struct bootentry *be)
+{
+	struct extlinux_entry *e =
+		container_of(be, struct extlinux_entry, entry);
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
+static char *remove_param(const char *params, const char *param)
+{
+	char *result, *dst;
+	const char *src;
+
+	result = xmalloc(strlen(params) + 1);
+
+	src = params;
+	dst = result;
+
+	while (*src) {
+		if (!strncasecmp(src, param, strlen(param))) {
+			while (*src && *src != ' ')
+				src++;
+
+			src = skip_spaces(src);
+
+			continue;
+		}
+
+		*dst++ = *src++;
+	}
+
+	*dst = '\0';
+
+	return result;
+}
+
+static struct extlinux_entry *parse_extlinux_conf(const char *abspath,
+						  const char *rootpath)
+{
+	char *buf, *bufptr, *line, *p, *default_label = NULL;
+	struct extlinux_entry *entry = NULL;
+
+	bufptr = read_file(abspath, NULL);
+	if (!bufptr)
+		return ERR_PTR(-errno);
+
+	for (p = bufptr; *p; p++)
+		if (*p == '\r')
+			*p = '\n';
+
+	buf = bufptr;
+	while ((line = strsep(&buf, "\n")) != NULL) {
+		char *key, *val;
+
+		line = skip_spaces(line);
+
+		if (*line == '#' || *line == '\0')
+			continue;
+
+		key = line;
+		val = strchr(line, ' ');
+		if (!val)
+			val = strchr(line, '\t');
+		if (val) {
+			*val++ = '\0';
+			val = skip_spaces(val);
+		} else
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
+			} else if (entry)
+				break;
+			continue;
+		}
+
+		/*
+		 * The same rootfs image may be launched from eMMC or SD card.
+		 * Remove any hardcoded root= parameter from "append" to avoid
+		 * conflicts, then let barebox automatically add the correct
+		 * root= (via appendroot) based on the boot device.
+		 */
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
+				entry->append = remove_param(val, "ROOT=");
+			else
+				pr_debug("Unhandled key: %s\n", key);
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
+static int extlinux_scan_file(struct bootscanner *scanner,
+			      struct bootentries *bootentries,
+			      const char *configname)
+{
+	struct extlinux_entry *e;
+	const char *rootpath;
+
+	if (!strends(configname, "extlinux.conf"))
+		return 0;
+
+	rootpath = get_mounted_path(configname);
+	if (IS_ERR(rootpath))
+		return PTR_ERR(rootpath);
+
+	e = parse_extlinux_conf(configname, rootpath);
+	if (IS_ERR(e))
+		return PTR_ERR(e);
+
+	e->entry.boot = extlinux_boot;
+	e->entry.release = extlinux_entry_free;
+	e->entry.path = xstrdup(configname);
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
+static int extlinux_scan_directory(struct bootscanner *scanner,
+				   struct bootentries *bootentries,
+				   const char *rootpath)
+{
+	char *path;
+	struct stat s;
+	int ret;
+
+	path = basprintf("%s/boot/extlinux/extlinux.conf", rootpath);
+
+	ret = stat(path, &s);
+	if (!ret && S_ISREG(s.st_mode))
+		ret = extlinux_scan_file(scanner, bootentries, path);
+
+	free(path);
+
+	return ret < 1 ? ret : 1;
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
+};
+
+static int extlinux_init(void)
+{
+	return bootentry_register_provider(&extlinux_provider);
+}
+device_initcall(extlinux_init);
-- 
2.52.0



