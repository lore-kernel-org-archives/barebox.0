Delivery-date: Tue, 01 Apr 2025 13:09:02 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tzZUM-006y13-0V
	for lore@lore.pengutronix.de;
	Tue, 01 Apr 2025 13:09:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tzZUL-0004SJ-7m
	for lore@pengutronix.de; Tue, 01 Apr 2025 13:09:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=AKTDD2Q2VnFy0V4E0cfJ4j1XBbf7bMHaTn5dudhN2I8=; b=eNnU4CET4C8Xarm1Mf2Sr3rSmR
	8tzg3skLv3CaFdXZw0EfoT/wDXijhhU4LgiJ+70Qgewfbl96QOe7nSRo2eX3kGL6LAE+iXlyXSwyd
	6hCtowaNJusYkXn3vxasLzbgGVZ5U3EcQWa0E1Y8v8U72TmOh8sFtDTNelsNNJa2FRD9PLw5nNh2E
	geTEg6G+Enmm6izPYcMulM0WPXnxo8WmTNAFPA61i7L8gd0zXQNdYhRQKugFZAymb4etpvMzguum2
	+yJZmaj6LzPtwIs64iB8xAsQdrqsEaCAkZ2ugaQ6+cbI9z6VawHemFf/6nGMG9AdRviHp7kyU8HuM
	JWk5TjGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzZTt-00000002juX-0eJF;
	Tue, 01 Apr 2025 11:08:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzZQ9-00000002ig2-3pee
	for barebox@lists.infradead.org;
	Tue, 01 Apr 2025 11:04:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tzZQ8-0002Wm-H6; Tue, 01 Apr 2025 13:04:40 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tzZQ8-002kd8-15;
	Tue, 01 Apr 2025 13:04:40 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tzZA7-00GcAa-2Z;
	Tue, 01 Apr 2025 12:48:07 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  1 Apr 2025 12:48:04 +0200
Message-Id: <20250401104806.3959859-15-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250401104806.3959859-1-a.fatoum@pengutronix.de>
References: <20250401104806.3959859-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250401_040442_287322_27810857 
X-CRM114-Status: GOOD (  22.30  )
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
X-Spam-Status: No, score=-5.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 14/16] common: bootdef: add new boot entry provider
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

It's common to configure barebox to continue boot from the same boot
medium that barebox itself was loaded from.

This can be implemented by adding a script that checks $bootsource and
$bootsource_instance and pointing global.boot.default at it, but this is
a useful enough default that it should not need any extra scripting.

Therefore, add a default boot entries provider that resolves an alias at
runtime and then returns the actual boot entries. The code is
intentionally kept generic as we may want to add more targets along
these lines:

  - bootsource:        expands to the boot medium
  - storage:           expands to all storage devices
  - storage.builtin:   expands to unremovable storage (e.g. eMMC)
  - storage.removable: expands to removable storage (e.g. USB)
  - storage.debugger:  expands to debugger/emulator storage
                       (e.g. semihosting)

The storage family of targets still need some thinking through, so
add only bootsource for now.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/Kconfig      | 14 ++++++++
 common/Makefile     |  2 ++
 common/bootdef.c    | 40 +++++++++++++++++++++++
 common/cdev-alias.c | 79 +++++++++++++++++++++++++++++++++++++++++++++
 include/driver.h    | 13 ++++++++
 5 files changed, 148 insertions(+)
 create mode 100644 common/bootdef.c
 create mode 100644 common/cdev-alias.c

diff --git a/common/Kconfig b/common/Kconfig
index 4d2a2a73f39b..a3df70b4dbb7 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -74,6 +74,9 @@ config LOGBUF
 config STDDEV
 	bool
 
+config CDEV_ALIAS
+	bool
+
 config MENUTREE
 	bool
 	select GLOB
@@ -1204,6 +1207,17 @@ config BOOTCHOOSER
 	select OFTREE
 	select PARAMETER
 
+config BOOT_DEFAULTS
+	bool "default boot targets"
+	select BOOT
+	select CDEV_ALIAS
+	default BLSPEC && OFDEVICE
+	help
+	  Say y here to enable a number of default boot targets that
+	  determine at runtime what to do. An example is the bootsource
+	  target, which will expand to the device that barebox has
+	  booted from if that could be determined.
+
 config RESET_SOURCE
 	bool "detect Reset cause"
 	depends on GLOBALVAR
diff --git a/common/Makefile b/common/Makefile
index 0e9648378d8c..9b67187561bf 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -79,10 +79,12 @@ obj-$(CONFIG_FIRMWARE)		+= firmware.o
 obj-$(CONFIG_UBIFORMAT)		+= ubiformat.o
 obj-$(CONFIG_BAREBOX_UPDATE_IMX_NAND_FCB) += imx-bbu-nand-fcb.o
 obj-$(CONFIG_BOOT)		+= boot.o bootscan.o
+obj-$(CONFIG_BOOT_DEFAULTS)	+= bootdef.o
 obj-$(CONFIG_SERIAL_DEV_BUS)	+= serdev.o
 obj-$(CONFIG_USB_GADGET)	+= usbgadget.o
 obj-pbl-$(CONFIG_HAVE_OPTEE)	+= optee.o
 obj-$(CONFIG_FASTBOOT_BASE)	+= fastboot.o
+obj-$(CONFIG_CDEV_ALIAS)	+= cdev-alias.o
 
 ifdef CONFIG_PASSWORD
 
diff --git a/common/bootdef.c b/common/bootdef.c
new file mode 100644
index 000000000000..254228580191
--- /dev/null
+++ b/common/bootdef.c
@@ -0,0 +1,40 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * Copyright (C) 2025 Ahmad Fatoum
+ */
+#define pr_fmt(fmt)	"bootdef: " fmt
+
+#include <boot.h>
+#include <xfuncs.h>
+#include <string.h>
+#include <bootsource.h>
+#include <driver.h>
+#include <init.h>
+
+static int bootdev_process(struct cdev *cdev, void *entries)
+{
+	return bootentry_create_from_name(entries, cdev->name);
+}
+
+static int bootdef_add_entry(struct bootentries *entries, const char *name)
+{
+	int ret;
+
+	ret = cdev_alias_resolve_for_each(name, bootdev_process, entries);
+	if (ret == -ENODEV) {
+		pr_info("Could not autodetect bootsource device\n");
+		return 0;
+	}
+
+	return ret;
+}
+
+static struct bootentry_provider bootdef_entry_provider = {
+	.generate = bootdef_add_entry,
+};
+
+static int bootdef_entry_init(void)
+{
+	return bootentry_register_provider(&bootdef_entry_provider);
+}
+device_initcall(bootdef_entry_init);
diff --git a/common/cdev-alias.c b/common/cdev-alias.c
new file mode 100644
index 000000000000..5c37c2e58bf3
--- /dev/null
+++ b/common/cdev-alias.c
@@ -0,0 +1,79 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * Copyright (C) 2025 Ahmad Fatoum
+ */
+#define pr_fmt(fmt)	"cdev-alias: " fmt
+
+#include <xfuncs.h>
+#include <string.h>
+#include <stringlist.h>
+#include <bootsource.h>
+#include <driver.h>
+#include <init.h>
+
+struct cdev_alias {
+	const char *name;
+	int (*resolve)(struct cdev_alias *, const char *arg,
+		       cdev_alias_processor_t fn, void *data);
+};
+
+static struct cdev *resolve_partition(struct cdev *cdev,
+				      const char *partname)
+{
+	struct cdev *partcdev;
+
+	if (!partname)
+		return cdev;
+
+	for_each_cdev_partition(partcdev, cdev) {
+		if (streq_ptr(partcdev->partname, partname))
+			return partcdev;
+	}
+
+	return ERR_PTR(-ENODEV);
+}
+
+static int cdev_alias_resolve_bootsource(struct cdev_alias *cdev_alias,
+					 const char *partname,
+					 cdev_alias_processor_t fn,
+					 void *data)
+{
+	struct cdev *cdev;
+
+	cdev = bootsource_of_cdev_find();
+	if (!cdev)
+		return -ENODEV;
+
+	cdev = resolve_partition(cdev, partname);
+	if (IS_ERR(cdev))
+		return PTR_ERR(cdev);
+
+	return fn(cdev, data);
+}
+
+static struct cdev_alias cdev_alias_aliases[] = {
+	{ "bootsource", cdev_alias_resolve_bootsource },
+	{ /* sentinel */}
+};
+
+int cdev_alias_resolve_for_each(const char *name,
+				cdev_alias_processor_t fn, void *data)
+{
+	struct cdev_alias *alias;
+	int ret = 0;
+	char *buf, *arg;
+
+	arg = buf = xstrdup(name);
+	name = strsep(&arg, ".");
+
+	for (alias = cdev_alias_aliases; alias->name; alias++) {
+		if (!streq_ptr(name, alias->name))
+			continue;
+
+		ret = alias->resolve(alias, arg, fn, data);
+		break;
+	}
+
+	free(buf);
+	return ret;
+}
diff --git a/include/driver.h b/include/driver.h
index c055e7b47b47..094347d4577e 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -515,6 +515,19 @@ int cdev_open(struct cdev *, unsigned long flags);
 int cdev_fdopen(struct cdev *cdev, unsigned long flags);
 int cdev_close(struct cdev *cdev);
 int cdev_flush(struct cdev *cdev);
+
+typedef int (*cdev_alias_processor_t)(struct cdev *, void *data);
+
+#ifdef CONFIG_CDEV_ALIAS
+int cdev_alias_resolve_for_each(const char *name,
+				cdev_alias_processor_t, void *data);
+#else
+static inline int cdev_alias_resolve_for_each(const char *name,
+				cdev_alias_processor_t fn, void *data)
+{
+	return 0;
+}
+#endif
 #if IN_PROPER
 ssize_t cdev_read(struct cdev *cdev, void *buf, size_t count, loff_t offset, ulong flags);
 ssize_t cdev_write(struct cdev *cdev, const void *buf, size_t count, loff_t offset, ulong flags);
-- 
2.39.5



