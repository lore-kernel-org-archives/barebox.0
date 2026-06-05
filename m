Delivery-date: Fri, 05 Jun 2026 07:25:30 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wVN3i-002VxF-0b
	for lore@lore.pengutronix.de;
	Fri, 05 Jun 2026 07:25:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wVN3h-00061w-2O
	for lore@pengutronix.de; Fri, 05 Jun 2026 07:25:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=IciWfvCzQH9JT4eCXMrlfiM8of+Ixfa1Uuht10dl21A=; b=d3ScMjwQn7TwdHjjaflNgU6YiI
	1lk0ZktsJTWzRd5Nw/1dp9SoiZFLNK34wgP8vzOmk+24kQ4EBDq5u3Z5h14ttkJNZkR7RxHNnOU+d
	DmvCbk8UHhtMv70hF+nwIaEKsXd62L0HyzsJv4J4oNc2Xu1PifEfmh+GygmsSpnMRxUbeR0gE512Z
	DdFye9lPDXv4+9KJf2wgp/dMfOOGg7hUHJqDqXl74xPtxaKhxEKF3kTRi1MNacJ5L4/7QsfD1mEc/
	Q1jv+OyMZeCRaXmrXlEdwoUAkTi3tqzzZ2OAe8LgsBaUjKaxzAi++mYRnecODeqqT6I3tLtp9I213
	ldnyi6JQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wVN2D-000000006Ms-0eAs;
	Fri, 05 Jun 2026 05:23:57 +0000
Received: from mail-lf1-x134.google.com ([2a00:1450:4864:20::134])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wVN2A-000000006MW-30P5
	for barebox@lists.infradead.org;
	Fri, 05 Jun 2026 05:23:56 +0000
Received: by mail-lf1-x134.google.com with SMTP id 2adb3069b0e04-5aa69131836so1297397e87.3
        for <barebox@lists.infradead.org>; Thu, 04 Jun 2026 22:23:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780637033; x=1781241833; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=IciWfvCzQH9JT4eCXMrlfiM8of+Ixfa1Uuht10dl21A=;
        b=GiJa+k8aMp8YXMLMeKgAfdUmr/7FaxsRbMy/1eZh07rdrfCRM+rvT9D3G77ao9I0ZY
         tDlAkPHLb2/mgDKpTAWrFQvLYI/eCYMSmib7bcMK9yK6BPPzozGnkdNqIQlekbaxBu5e
         5b2BpifRP6yQkuW3IT+XP8OP99NztsyaHlKH1N/cN3H0qiEPcaLv8WUhZbY2gn2wzgdm
         N/TAOX/pMREoadoj9m7FdPnxZ/tr03I0miQWxDwUDv7/fYXVOEwZQvZkMCzMJnXSfWaG
         KcFg69fJLTZnRs/Z/YhFb3D0MEOjydI7Z7vPI+oAxPRcIXV49EbR0UCEL4cEdL/9maec
         7DGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780637033; x=1781241833;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IciWfvCzQH9JT4eCXMrlfiM8of+Ixfa1Uuht10dl21A=;
        b=W+kBgpt2e+zX2Cic3yGhcxQTMz9fRhOA+0MVfv930+y4MlZp4pr5ESK5TKgRIgHXVK
         SfbTFWYbvwYgD2z5xfvvrsSNJdmHhkXx4KXVFHxtyVXevXFwT6UdOJ2SBA4jSyyrNwj7
         0amHW2akS0+tncQILuTmIMPh7msCZBoPVyph1HOv355/IvJgevdOjQJAWdXD+kVjHbMd
         xx4zQlsoniBNvBT9WCaZEW+hXhIC0B6w/spp/ldwGuM04l/owz3RN1AhUmYImTdm0LIN
         jSWeBgBpF/6TtmDWVI6bMNQGNVuFyvehePGr12IxTOkzKRmBX+lDQrF5MWbIDA+L+gPt
         mBrw==
X-Gm-Message-State: AOJu0Yy+jSaJ+3dY+Q7hwhHnr0CTZxFrunddiX6lzIBffyeqeeVP5T1q
	0/2d9Jx+5fre0GOAUJNYaY3KqDhfF9g2u3qAUSYKzTOO9dj4GwP2z7sUV4r+yg==
X-Gm-Gg: Acq92OFru92xoEjqL4mQwKMX1/s18ggZFiYsetLVh/MDa8t1icfXjrrY+3gkEptq9Ef
	aHwqQmMyrQeqSrdD+iFfcydagRurHECUa+1HpfCKIY0nMdmFlKq3+orZufkyiwWvFabRFC3DmsA
	la03pABqLV5RLvvelw1jpXLGzMCCj17PgYLQAoqRMEvYNraIjCSzx2jw8HxQW+W+BGc49a8DZfS
	SGpEakb/XeTFA3WGxvmjqnI5VCeDg2536FPbyo1OJjGbtBRnGVjJ92BFW0cuouvb35LxcLz38La
	/FumvCNBMlhQJ1GaidcpkeN2uhZNG62MTGcEgGaeuVe7ESFN8Bp91NtNG59zpNEHpEFNOV29Rmw
	QQHpU21vd20cNBVhAubrBq49Zbqzuluj9ovLwgkmXgP2DT1qDN0dSdSGQJqtbknanCfAFNLDFGY
	LzouD8ZKHZ9EMUFzhGtbH6+F+2mXyS5RLzhqyqHCfPn0ikl5fdRg==
X-Received: by 2002:a05:6512:a82:b0:5aa:b6a:6028 with SMTP id 2adb3069b0e04-5aa87c02634mr465874e87.45.1780637032329;
        Thu, 04 Jun 2026 22:23:52 -0700 (PDT)
Received: from gentoo.sknt.ru ([95.161.221.172])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5aa7b99c2b9sm1609748e87.80.2026.06.04.22.23.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Jun 2026 22:23:51 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Fri,  5 Jun 2026 08:23:46 +0300
Message-ID: <20260605052347.3009484-1-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.52.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260604_222354_821483_A6AEE59D 
X-CRM114-Status: GOOD (  25.79  )
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
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v4 1/2] Add support for extlinux.conf
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This adds support for the extlinux.conf configuration format, commonly
used by Syslinux and many Linux distributions. The configuration file
is typically located at /boot/extlinux/extlinux.conf or
/extlinux/extlinux.conf and defines boot entries with kernel, initrd,
device tree, and command line options.

The implementation integrates with the existing boot entry framework:
- The extlinux scanner discovers entries on mounted filesystems.
- Only the DEFAULT label is turned into a boot entry (multiple
  LABEL sections are ignored after the default is found).
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
 common/Kconfig    |  20 ++++
 common/Makefile   |   1 +
 common/extlinux.c | 247 ++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 268 insertions(+)
 create mode 100644 common/extlinux.c

diff --git a/common/Kconfig b/common/Kconfig
index f9985d8aa4..0708855b78 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -773,6 +773,26 @@ config BLSPEC
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
+
+	  Note: barebox only uses the entry specified by the DEFAULT keyword.
+	  Additional LABEL sections are ignored. This allows a simple and
+	  portable way to define a single default boot option.
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
index 0000000000..caa62923da
--- /dev/null
+++ b/common/extlinux.c
@@ -0,0 +1,247 @@
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
+/*
+ * Parse extlinux.conf. Only the entry pointed to by the DEFAULT keyword
+ * is extracted; all other LABEL sections are ignored.
+ */
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



