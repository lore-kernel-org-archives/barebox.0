Delivery-date: Tue, 11 Jun 2024 07:13:30 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sGtp4-0044gL-2N
	for lore@lore.pengutronix.de;
	Tue, 11 Jun 2024 07:13:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sGtp3-0007zg-Un
	for lore@pengutronix.de; Tue, 11 Jun 2024 07:13:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FuDvlECeZDqoEz03rfAPLj8gRJGfUzWjU0b6mpiPOFk=; b=g9Zj4kB6v7GDBxp3+GkLnw/o/w
	vW8SxuSdE9+zRQ5YjFkdvEFBFS+XoRpUcYvTuBrPzxxPljwwrByX23cCz6LAhXHOImQeemCv3VNyd
	BHjuecYZeEgA6vi7+kJfqtBEZNAKE34MpMCjee8I2gs7nVEfVpPD7oU0yHxtQdl1/tymRM0hQ6n6L
	2x7nmT9CandZHi3f+CVbwpFmPkGq2sY8/kcHO6OTZQnAEfqlKf/oD7THMlJykuSQe2RLy2fNaehCI
	pmPq2QQf5yigzz0B6D9r0HXHAdOSXkCXNwKnbbvt++Jad1tcMho1+yGPHKv2U6vco9qszWBGWIr+3
	XKm7rANA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sGtoU-00000007Q54-0kF2;
	Tue, 11 Jun 2024 05:12:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sGtoI-00000007Q2F-1zHq
	for barebox@lists.infradead.org;
	Tue, 11 Jun 2024 05:12:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sGtoF-0007nq-VS; Tue, 11 Jun 2024 07:12:39 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sGtoF-001TFl-JC; Tue, 11 Jun 2024 07:12:39 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sGtoF-00HJc3-1Z;
	Tue, 11 Jun 2024 07:12:39 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 11 Jun 2024 07:12:35 +0200
Message-Id: <20240611051237.4126918-3-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240611051237.4126918-1-s.hauer@pengutronix.de>
References: <20240611051237.4126918-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240610_221242_607951_B41FC446 
X-CRM114-Status: GOOD (  22.16  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 2/4] base: add class device support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This introduces the concept of class devices in barebox. Class devices
group together devices of the same type. Several subsystems like
watchdog and network devices have a struct device embedded in their
subsystem specific struct anyway, so we can use this as a class device.
As these class devices are collected on a list we can use this list to
iterate over all network/watchdog devices and thus free the subsystems
from the burden of keeping a list themselves.

There is a 'class' command added in this patch which can be used to show
all registered classes along with the devices registered for each class.

The classes known at compile time can be collected on a linker list
using the macro DEFINE_DEV_CLASS(). That way registering classes does
not need an additional initcall and also no care has to be taken that
this initcalls runs before the first user adds devices to a new class.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/Kconfig                  |  6 +++++
 commands/Makefile                 |  1 +
 commands/class.c                  | 30 ++++++++++++++++++++++
 drivers/base/Makefile             |  1 +
 drivers/base/class.c              | 41 +++++++++++++++++++++++++++++++
 include/asm-generic/barebox.lds.h |  7 ++++++
 include/device.h                  | 21 ++++++++++++++++
 7 files changed, 107 insertions(+)
 create mode 100644 commands/class.c
 create mode 100644 drivers/base/class.c

diff --git a/commands/Kconfig b/commands/Kconfig
index 899673bfee..c9c4be67e0 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -68,6 +68,12 @@ config CMD_BOOTROM
 
 	  bootrom [-la]
 
+config CMD_CLASS
+	tristate
+	prompt "class"
+	help
+	  Show information about registered device classes
+
 config CMD_DEVINFO
 	tristate
 	default y
diff --git a/commands/Makefile b/commands/Makefile
index 30e1f8403e..f65187703f 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -115,6 +115,7 @@ obj-$(CONFIG_CMD_BAREBOX_UPDATE)+= barebox-update.o
 obj-$(CONFIG_CMD_MIITOOL)	+= miitool.o
 obj-$(CONFIG_CMD_DETECT)	+= detect.o
 obj-$(CONFIG_CMD_BOOT)		+= boot.o
+obj-$(CONFIG_CMD_CLASS)		+= class.o
 obj-$(CONFIG_CMD_DEVINFO)	+= devinfo.o
 obj-$(CONFIG_CMD_DEVUNBIND)	+= devunbind.o
 obj-$(CONFIG_CMD_DEVLOOKUP)	+= devlookup.o
diff --git a/commands/class.c b/commands/class.c
new file mode 100644
index 0000000000..f5d67b012f
--- /dev/null
+++ b/commands/class.c
@@ -0,0 +1,30 @@
+// SPDX-License-Identifier: GPL-2.0-only
+#include <common.h>
+#include <command.h>
+#include <complete.h>
+
+static int do_class(int argc, char *argv[])
+{
+	struct class *class;
+	struct device *dev;
+
+	class_for_each(class) {
+		printf("%s:\n", class->name);
+		class_for_each_device(class, dev) {
+			printf("    %s\n", dev_name(dev));
+		}
+	}
+
+	return 0;
+}
+
+BAREBOX_CMD_HELP_START(class)
+BAREBOX_CMD_HELP_TEXT("Show information about registered classes and their devices")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(class)
+	.cmd = do_class,
+	BAREBOX_CMD_DESC("show information about classes")
+	BAREBOX_CMD_GROUP(CMD_GRP_INFO)
+	BAREBOX_CMD_COMPLETE(empty_complete)
+BAREBOX_CMD_END
diff --git a/drivers/base/Makefile b/drivers/base/Makefile
index acc53763da..94b677eea0 100644
--- a/drivers/base/Makefile
+++ b/drivers/base/Makefile
@@ -3,6 +3,7 @@ obj-y	+= bus.o
 obj-y	+= driver.o
 obj-y	+= platform.o
 obj-y	+= resource.o
+obj-y	+= class.o
 obj-y	+= regmap/
 
 obj-$(CONFIG_PM_GENERIC_DOMAINS) += power.o
diff --git a/drivers/base/class.c b/drivers/base/class.c
new file mode 100644
index 0000000000..6757d34140
--- /dev/null
+++ b/drivers/base/class.c
@@ -0,0 +1,41 @@
+// SPDX-License-Identifier: GPL-2.0-only
+#include <device.h>
+#include <driver.h>
+#include <linux/list.h>
+
+LIST_HEAD(class_list);
+
+static int class_register(struct class *class)
+{
+	list_add_tail(&class->list, &class_list);
+
+	return 0;
+}
+
+int class_add_device(struct class *class, struct device *dev)
+{
+	list_add_tail(&dev->class_list, &class->devices);
+
+	return 0;
+}
+
+void class_remove_device(struct class *class, struct device *dev)
+{
+	list_del(&class->devices);
+}
+
+extern struct class __barebox_class_start;
+extern struct class __barebox_class_end;
+
+static int register_classes(void)
+{
+	struct class *c;
+
+	for (c = &__barebox_class_start;
+	     c != &__barebox_class_end;
+	     c++)
+		class_register(c);
+
+	return 0;
+}
+device_initcall(register_classes);
diff --git a/include/asm-generic/barebox.lds.h b/include/asm-generic/barebox.lds.h
index d3736ebaed..8bbf5907cd 100644
--- a/include/asm-generic/barebox.lds.h
+++ b/include/asm-generic/barebox.lds.h
@@ -70,6 +70,12 @@
 	KEEP(*(SORT_BY_NAME(.barebox_magicvar*)))	\
 	__barebox_magicvar_end = .;
 
+#define BAREBOX_CLASSES				\
+	STRUCT_ALIGN();				\
+	__barebox_class_start = .;		\
+	KEEP(*(SORT_BY_NAME(.barebox_class*)))	\
+	__barebox_class_end = .;
+
 #define BAREBOX_CLK_TABLE			\
 	STRUCT_ALIGN();				\
 	__clk_of_table_start = .;		\
@@ -138,6 +144,7 @@
 	BAREBOX_SYMS				\
 	KERNEL_CTORS()				\
 	BAREBOX_MAGICVARS			\
+	BAREBOX_CLASSES				\
 	BAREBOX_CLK_TABLE			\
 	BAREBOX_DTB				\
 	BAREBOX_RSA_KEYS			\
diff --git a/include/device.h b/include/device.h
index ad1bc7ca1e..992ac7aa7b 100644
--- a/include/device.h
+++ b/include/device.h
@@ -76,6 +76,8 @@ struct device {
 
 	struct list_head cdevs;
 
+	struct list_head class_list;
+
 	const struct platform_device_id *id_entry;
 	union {
 		struct device_node *device_node;
@@ -102,6 +104,25 @@ struct device {
 	char *deferred_probe_reason;
 };
 
+struct class {
+	const char *name;
+	struct list_head devices;
+	struct list_head list;
+};
+
+#define DEFINE_DEV_CLASS(_name, _classname)					\
+	struct class _name __ll_elem(.barebox_class_##_name) = {		\
+		.name = _classname,						\
+		.devices = LIST_HEAD_INIT(_name.devices),			\
+	}
+
+int class_add_device(struct class *class, struct device *dev);
+void class_remove_device(struct class *class, struct device *dev);
+
+extern struct list_head class_list;
+#define class_for_each_device(class, dev) list_for_each_entry(dev, &class->devices, class_list)
+#define class_for_each(class) list_for_each_entry(class, &class_list, list)
+
 struct device_alias {
 	struct device *dev;
 	struct list_head list;
-- 
2.39.2



