Delivery-date: Tue, 28 Apr 2026 15:28:52 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wHiUe-00HKhY-2c
	for lore@lore.pengutronix.de;
	Tue, 28 Apr 2026 15:28:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wHiUd-000117-Nt
	for lore@pengutronix.de; Tue, 28 Apr 2026 15:28:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=GLERhuGLZiX812uGVjHYN2oHXfrJ88KO/GWb0jwnYwc=; b=ElylzsPcOFfwMeGNDeTWggEHmi
	GPTZcOcMbZFMXhhAHYZVP+8cAPf6o0voy/v/n+VXuF8sEjZgnQ4RBOQo4qSUCNrdCcg106Q/JYiGK
	Vx2JZsR8K2rkVpkqRjuAfqc5XeqcMeVJt0kNm8kK4NOhlI5Cigqy8m+yHoz2WZLdGmlnSU5wj7n7N
	2d4pDk6ZP2jfgcEPam8B84R75r2WO99VC3tXIUF0eIgaZJhCAyZCDs71ichQxjiWlr0DyT3LCacmz
	Q/at9QSIJQDaJ1Y87q+cqwctRvNNJWrsQwvJeaaa+wcKQxyG09Xv0WuUivepYwu7jYeE+ZH2Kg7cS
	SJ6x/2Sw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHiU9-00000001Xh7-3gab;
	Tue, 28 Apr 2026 13:28:21 +0000
Received: from mail-yx1-xb136.google.com ([2607:f8b0:4864:20::b136])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHiU7-00000001XgQ-3q8V
	for barebox@lists.infradead.org;
	Tue, 28 Apr 2026 13:28:21 +0000
Received: by mail-yx1-xb136.google.com with SMTP id 956f58d0204a3-65005a8840dso9702597d50.0
        for <barebox@lists.infradead.org>; Tue, 28 Apr 2026 06:28:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1777382898; x=1777987698; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=GLERhuGLZiX812uGVjHYN2oHXfrJ88KO/GWb0jwnYwc=;
        b=Q89gBO47AGe6nxSz4GrsLEPfgHH4CDW0QvFLSY5VwVOtFqo+O/0SJ37dWgsRSzq3H9
         4OPhD5jis4TFaHLS3jcRDXMJpB70YXD81hB5dz1BY53iDNMA+ZlA1BC3u5ggZTzEvVKG
         +IEJ15hseLjfh84/iXEf6zpTD3jXh4Mm+iq9t0fML7Rg7GEkdqJXLzGy970DgeCZZBVx
         6V2x6bw3sSd56KzGf9JadAXeKDiKK7CIpSXE8BPiiS7HvlgFXBwjJqDjOi5TGjBlDG/+
         53tMi+pst8nssaWzOGDmPUByXf47dXWWF6+IdSco1OOFKpavf8KAriKwMQjvtYR9Jq57
         PPpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777382898; x=1777987698;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GLERhuGLZiX812uGVjHYN2oHXfrJ88KO/GWb0jwnYwc=;
        b=gQVlenCzULN3TO8C5rSrQhk5iqep3MwDDdJzkPm+Fiq1XRAPpUpfq7GQHXtn0kFpjP
         GEFKRoj0gbhdnBKcxK3ja9rR1GKlgU3TtYS1OdJrPAJt5QbyrpOof7u0bI+/VdXl1j5I
         IkX0UhWNyJ1BtujwwP75cCbp+klEKNj8udUz/jjiXyuZacpX1hBZS3WGnm/zpIMaMTry
         jKX+OZfNRDYizmbiaqJXmunWY1lpOE6k5JnnYZDqpSnNBAOQ4Z8wmIZp5MQcJF4NTofY
         gjG8wd1I4Uwo1/Kw20G78FDx0gvcHNdPRgxSTq/qBQbK4VLyYfr2P5J3/aQsBPHXlK8S
         ZzhQ==
X-Gm-Message-State: AOJu0YxokCAPiRi9nesuriMa/BIJxhh4B76s4+potSoyPjyoL/KEbC29
	nzXUhfrvZgi1M6oGinZ7ArVNLe+5NJvFkJ83z+Q0ZfrbRdvyGtvODVqYH+rRTffULoc=
X-Gm-Gg: AeBDietK9nDzoabBiwGX9flmTuOtjEPVTKStTSDpdmWz23vkZ4AG72RdTgm5SxmsQem
	QjDvZP4Ks5ZvBGYZUt75Mt+9IcIGRDzl8ppXgrNs7VQSprTta+XxhIzE2NgXtpdHUzvK7Fc7NnO
	nkvYwAzaZ+NO/ExsX7NaWkpclij/CxkrwAtfkxTST/akMmUDp0+5JU3KifcyN+XPQDvLm9pLaUN
	qOjG2W2f9dMmuCT52MBHtuG3vSuzB/vuw9N/MXINuS4QebNfCUb5mr5joCaPYFKoCOUYGbQn4R3
	74hoCJPqFk90mZE0XYlksa6gBuhju/QnbFiU8rQccT3Bp61FWHRWC/4bt6OLB4EWoCbb0nn0IHV
	6zKmgF3kOSFbQQrePXfAkb+d/leZMrDWj3gG3TZ8pdbip5VzpVe0ISr+2Y24VBUX1AKM7hTAJTz
	m2Jo24VFA6+0fna4ImGjQdh86HWO4RyX6omsZHVvyBXCeMp0+lAA==
X-Received: by 2002:a05:690e:4182:b0:651:cf23:6612 with SMTP id 956f58d0204a3-65beee43e1cmr2235475d50.34.1777382898114;
        Tue, 28 Apr 2026 06:28:18 -0700 (PDT)
Received: from gentoo.sknt.ru ([95.161.221.172])
        by smtp.gmail.com with ESMTPSA id 956f58d0204a3-65bee46362bsm1723352d50.15.2026.04.28.06.28.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Apr 2026 06:28:17 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Tue, 28 Apr 2026 16:28:10 +0300
Message-ID: <20260428132811.3691086-1-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.52.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260428_062819_973312_A8488A6A 
X-CRM114-Status: GOOD (  28.43  )
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
Subject: [PATCH v2 1/2] Add support for extlinux.conf
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
- The "root=" parameter is stripped from the APPEND line only when
  global.bootm.appendroot is set. This allows barebox to inject the
  correct root device based on the actual boot device (e.g., when the
  same rootfs image is used across different storage media).
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
 common/Kconfig    |  19 +++
 common/Makefile   |   1 +
 common/extlinux.c | 286 ++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 306 insertions(+)
 create mode 100644 common/extlinux.c

diff --git a/common/Kconfig b/common/Kconfig
index fd422714d5..0e93686e4f 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -734,6 +734,25 @@ config BLSPEC
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
index 27c5dea168..cd929b2194 100644
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
index 0000000000..0e838e9889
--- /dev/null
+++ b/common/extlinux.c
@@ -0,0 +1,286 @@
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
+	if (e->append) {
+		char *append;
+
+		/*
+		 * The same rootfs image may be launched from eMMC or SD card.
+		 * Remove any hardcoded root= parameter from "append" to avoid
+		 * conflicts, then let barebox automatically add the correct
+		 * root= (via global.bootm.appendroot) based on the boot device.
+		 */
+		if (data.appendroot)
+			append = remove_param(e->append, "ROOT=");
+		else
+			append = xstrdup(e->append);
+
+		globalvar_add_simple("linux.bootargs.dyn.extlinux", append);
+
+		free(append);
+	}
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



