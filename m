Delivery-date: Mon, 10 Jun 2024 10:12:56 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sGa9A-003aft-00
	for lore@lore.pengutronix.de;
	Mon, 10 Jun 2024 10:12:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sGa99-0006Kz-6R
	for lore@pengutronix.de; Mon, 10 Jun 2024 10:12:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Go2Wfjxof+nmTxUamFUIG5fsBNWVWr0kqgaD9WFaPhk=; b=WLALMtGmP6cXMhlEzsW3R2Prdj
	4t2lfKEoyBTFAU8v3YNTQoAPJ0Kwe+pLEwd/iRJUErEVBOdpWGXB3GkYodxCtMpx2V/X02nq5AoXJ
	ueC/Js5cxcPre+a2aTgXUAhWkglsB/ZV41BW6S7jDgpKFsZUKdCl2ZlaIY/Qar37RrmCL7ZVaVXpj
	M2PZdYv2UG4BGuYd3O38UDvv8Sbg7zy00QO3xPaEh2zpqf5Mp2loyZ9btOuAvWlKm6Pc7BDl7c+fN
	NOOXiEE6Aw8Dvil53rUsRfaGUJ6MvKr2HTlIxXOCJsG85Ha+uEKeeWlOhJ8CpDWicM2kggchYZ9N6
	vKMzxZPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sGa8e-00000004C8N-2to0;
	Mon, 10 Jun 2024 08:12:24 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sGa8W-00000004C66-1lVV
	for barebox@lists.infradead.org;
	Mon, 10 Jun 2024 08:12:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sGa8V-000669-5Y; Mon, 10 Jun 2024 10:12:15 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sGa8U-001G30-On; Mon, 10 Jun 2024 10:12:14 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sGa8U-003h57-28;
	Mon, 10 Jun 2024 10:12:14 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 10 Jun 2024 10:12:11 +0200
Message-Id: <20240610081213.858714-3-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240610081213.858714-1-s.hauer@pengutronix.de>
References: <20240610081213.858714-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240610_011216_538448_5BA5E36B 
X-CRM114-Status: GOOD (  20.74  )
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
Subject: [PATCH 2/4] base: add class device support
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
index 899673bfee..7831e6276d 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -68,6 +68,12 @@ config CMD_BOOTROM
 
 	  bootrom [-la]
 
+config CMD_CLASS
+	tristate
+	prompt "class"
+	help
+	  Show information about registered classes and devices
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
index ad1bc7ca1e..38eab6037e 100644
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
+#define DECLARE_CLASS(_name, _classname)					\
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



