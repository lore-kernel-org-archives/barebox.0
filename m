Delivery-date: Thu, 18 Dec 2025 12:40:44 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWCNA-00CoY7-1H
	for lore@lore.pengutronix.de;
	Thu, 18 Dec 2025 12:40:44 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWCMc-0002Jj-8m
	for lore@pengutronix.de; Thu, 18 Dec 2025 12:40:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/43gJvWnIxCQ1OAohFVHXkP4CzBxzJbBy7iClcj6fcE=; b=m5ZwfgZUzapQHwWHHcCJ4HUhKD
	9RECHHTGbTXi2rVMfXNttMUVLuNRtbK6WRJJAy+Y1MUvGHBT5/jNssPzbANXIbQtnlfEKSCgq0gEn
	5nFk8/2hJramibsbxbKW61aC5oX2/1o0F0IOqr7dzU3jWg9mn5lDG+LARhipacqCZ5CIWJgFH4Zz9
	zsNDB9w53mkZL7MbmTzWhSi8MfsbqCSj0aINlRqSuoSzzWGcY/vZwl1OmarCHE+fulxS0QEZfQyIZ
	8WbK6AEzFl17eBs1LNB3LkAZaOI+a12FdJ5N3Gc8c4ujibdBwYm2WcjHpkafSKI4Ou2Oq/aB0XRNF
	az5RgKCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWCKA-00000008LCv-1Qhj;
	Thu, 18 Dec 2025 11:37:38 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWCJa-00000008KQM-1vj5
	for barebox@bombadil.infradead.org;
	Thu, 18 Dec 2025 11:37:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=/43gJvWnIxCQ1OAohFVHXkP4CzBxzJbBy7iClcj6fcE=; b=XHebs/M7gciN76+/5EA2Bsxfq5
	IujhfXxyr9eCN4pvRY1WBSTb0gISvyUsM/avt9IpRuDDyI2QnJp+iSeusuTf2iOkDa0XuCmOPlNRC
	aPKtC5iijekpLBycFdXCkDY9Z+f4YSYwizAwFeABTrrDKR9yJhUOpD3SrQ6o/yiyB+DqXgse8qmeN
	fstzT+xnfNy1y9osL3mRQEyIsKZRYYWeAOw/zJtG3sTM/ZbAwaRcwNslWZAusVWzZKa07KoAyNOmW
	xwp+CCVx+rgwBX/MbT5RutRSu9hEbf4VrDM+ho/yftoENBw5GGbEvAZd92LV7eE11jfSRCQrMyIU1
	wCnH7vqQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWBS2-00000008fRf-0DTG
	for barebox@lists.infradead.org;
	Thu, 18 Dec 2025 10:41:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWCJO-0008ER-A3; Thu, 18 Dec 2025 12:36:50 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWCJO-006GwQ-0P;
	Thu, 18 Dec 2025 12:36:50 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWBw4-0000000AVre-0189;
	Thu, 18 Dec 2025 12:12:44 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 18 Dec 2025 11:37:40 +0100
Message-ID: <20251218111242.1527495-21-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251218111242.1527495-1-a.fatoum@pengutronix.de>
References: <20251218111242.1527495-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251218_104143_017887_B47435D6 
X-CRM114-Status: GOOD (  19.72  )
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
Subject: [PATCH v1 20/54] efi: loader: setup root node
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The root of the EFI object model is the EFI root node. Register it and
add infrastructure for protocols and tables to register themselves in
initcalls.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 efi/loader/Makefile  |   1 +
 efi/loader/setup.c   | 232 +++++++++++++++++++++++++++++++++++++++++++
 include/efi/loader.h |   9 ++
 include/efi/mode.h   |  23 ++++-
 4 files changed, 261 insertions(+), 4 deletions(-)
 create mode 100644 efi/loader/setup.c

diff --git a/efi/loader/Makefile b/efi/loader/Makefile
index 92e4b51eb665..bb739210ac1d 100644
--- a/efi/loader/Makefile
+++ b/efi/loader/Makefile
@@ -7,3 +7,4 @@ obj-y += devicepath.o
 obj-y += debug_support.o
 obj-y += boot.o
 obj-y += runtime.o
+obj-y += setup.o
diff --git a/efi/loader/setup.c b/efi/loader/setup.c
new file mode 100644
index 000000000000..87b7d3a68dc8
--- /dev/null
+++ b/efi/loader/setup.c
@@ -0,0 +1,232 @@
+// SPDX-License-Identifier: GPL-2.0+
+// SPDX-Comment: Origin-URL: https://github.com/u-boot/u-boot/blob/e7a85ec651ed5794eb9a837e1073f6b3146af501/lib/efi_loader/efi_setup.c
+// SPDX-Comment: Origin-URL: https://github.com/u-boot/u-boot/blob/ac040ae58dba316d86edc788416fae58a5f44e3f/lib/efi_loader/efi_root_node.c
+/*
+ *  EFI setup code
+ *
+ *  Copyright (c) 2016-2018 Alexander Graf et al.
+ */
+
+#define pr_fmt(fmt) "efi-loader: setup: " fmt
+
+#include <linux/printk.h>
+#include <linux/array_size.h>
+#include <driver.h>
+#include <string.h>
+#include <magicvar.h>
+#include <efi/loader.h>
+#include <efi/mode.h>
+#include <efi/guid.h>
+#include <efi/devicepath.h>
+#include <efi/loader/object.h>
+#include <efi/error.h>
+#include <xfuncs.h>
+
+struct efi_boot_services *loaderBS;
+struct efi_runtime_services *loaderRT;
+
+const efi_guid_t efi_barebox_guid = BAREBOX_GUID;
+
+efi_handle_t efi_root = NULL;
+
+struct efi_root_dp {
+	struct efi_device_path_vendor vendor;
+	struct efi_device_path end;
+} __packed;
+
+/**
+ * efi_root_node_register() - create root node
+ *
+ * Create the root node on which we install all protocols that are
+ * not related to a loaded image or a driver.
+ *
+ * Return:	status code
+ */
+static efi_status_t efi_root_node_register(void)
+{
+	efi_status_t ret;
+	struct efi_root_dp *dp;
+
+	/* Create device path protocol */
+	dp = calloc(1, sizeof(*dp));
+	if (!dp)
+		return EFI_OUT_OF_RESOURCES;
+
+	/* Fill vendor node */
+	dp->vendor.header.type = DEVICE_PATH_TYPE_HARDWARE_DEVICE;
+	dp->vendor.header.sub_type = DEVICE_PATH_SUB_TYPE_VENDOR;
+	dp->vendor.header.length = sizeof(struct efi_device_path_vendor);
+	dp->vendor.Guid = efi_barebox_guid;
+
+	/* Fill end node */
+	dp->end.type = DEVICE_PATH_TYPE_END;
+	dp->end.sub_type = DEVICE_PATH_SUB_TYPE_END;
+	dp->end.length = sizeof(struct efi_device_path);
+
+	/* Create root node and install protocols */
+	ret = efi_install_multiple_protocol_interfaces(&efi_root,
+		 /* Device path protocol */
+		 &efi_device_path_protocol_guid, dp,
+		 /* Device path to text protocol */
+		 NULL);
+
+	efi_root->type = EFI_OBJECT_TYPE_BAREBOX_FIRMWARE;
+
+	return ret;
+}
+
+struct efi_deferred_cb {
+	efi_status_t (*cb)(void *);
+	void *data;
+	struct list_head list;
+};
+
+struct efi_deferred_add_protocol_ctx {
+	efi_handle_t handle;
+	const efi_guid_t *protocol;
+	const void *interface;
+};
+
+struct efi_deferred_add_protocol {
+	struct efi_deferred_cb base;
+	struct efi_deferred_add_protocol_ctx ctx;
+};
+
+static LIST_HEAD(efi_deferred_cbs);
+
+void efi_register_deferred_init(efi_status_t (*init)(void *), void *data)
+{
+	struct efi_deferred_cb *deferred = xzalloc(sizeof(*deferred));
+
+	deferred->cb = init;
+	deferred->data = data;
+	list_add_tail(&deferred->list, &efi_deferred_cbs);
+}
+
+static efi_status_t add_protocol(void *_ctx)
+{
+	struct efi_deferred_add_protocol_ctx *ctx = _ctx;
+
+	return efi_add_protocol(ctx->handle ?: efi_root, ctx->protocol, ctx->interface);
+}
+
+void efi_add_root_node_protocol_deferred(const efi_guid_t *protocol, const void *interface)
+{
+	struct efi_deferred_add_protocol *deferred = xzalloc(sizeof(*deferred));
+
+	deferred->base.cb = add_protocol;
+	deferred->base.data = &deferred->ctx;
+
+	list_add_tail(&deferred->base.list, &efi_deferred_cbs);
+}
+
+/**
+ * efi_init_obj_list() - Initialize and populate EFI object list
+ *
+ * Return:	status code
+ */
+efi_status_t efi_init_obj_list(void)
+{
+	struct efi_deferred_cb *deferred;
+	efi_status_t ret;
+
+	/* Initialize once only */
+	if (loaderBS)
+		return 0;
+
+	efi_loader_set_state(EFI_LOADER_BOOT);
+
+	/* Initialize root node */
+	ret = efi_root_node_register();
+	if (ret != EFI_SUCCESS)
+		goto err;
+
+	ret = efi_alloc_system_table();
+	if (ret != EFI_SUCCESS)
+		goto err;
+
+	list_for_each_entry(deferred, &efi_deferred_cbs, list)
+		deferred->cb(deferred->data);
+
+	/* Initialize system table */
+	ret = efi_initialize_system_table();
+	if (ret != EFI_SUCCESS)
+		goto err;
+
+	/* Indicate supported runtime services */
+	ret = efi_init_runtime_supported();
+	if (ret != EFI_SUCCESS)
+		goto err;
+
+	loaderBS = systab.boottime;
+	loaderRT = systab.runtime;
+
+	return 0;
+
+err:
+	efi_loader_set_state(EFI_LOADER_INACTIVE);
+	return ret;
+
+}
+
+struct device efidev = {
+	.name = "efi",
+	.id = DEVICE_ID_SINGLE,
+};
+
+static int loader_state;
+
+static const char *loader_state_names[] = {
+	[EFI_LOADER_INACTIVE] = "inactive",
+	[EFI_LOADER_BOOT] = "boot",
+	[EFI_LOADER_RUNTIME] = "runtime",
+};
+
+static int loader_state_set(struct param_d *param, void *data)
+{
+	switch (loader_state) {
+	case EFI_LOADER_INACTIVE:
+		return -EINVAL;
+	case EFI_LOADER_BOOT:
+		return -efi_errno(efi_init_obj_list());
+	case EFI_LOADER_RUNTIME:
+		return -EINVAL;
+	}
+	return 0;
+}
+
+static int efi_init_params(void)
+{
+	int ret;
+
+	if (efi_is_payload())
+		return 0;
+
+	ret = platform_device_register(&efidev);
+	if (ret)
+		return ret;
+
+	dev_add_param_enum(&efidev, "loader",
+			   loader_state_set, NULL, &loader_state,
+			   loader_state_names, ARRAY_SIZE(loader_state_names),
+			   NULL);
+
+	dev_add_param_fixed(&efidev, "payload_default_path",
+			    CONFIG_EFI_PAYLOAD_DEFAULT_PATH);
+
+	return 0;
+}
+late_initcall(efi_init_params);
+
+BAREBOX_MAGICVAR(efi.loader, "EFI loader state (inactive, boot, runtime)");
+BAREBOX_MAGICVAR(efi.payload_default_path, "The arch-specific removable media path");
+
+void efi_loader_set_state(enum efi_loader_state state)
+{
+	loader_state = state;
+}
+
+enum efi_loader_state efi_is_loader(void)
+{
+	return loader_state;
+}
diff --git a/include/efi/loader.h b/include/efi/loader.h
index 8a51cde0ee25..e1a3c1e298c5 100644
--- a/include/efi/loader.h
+++ b/include/efi/loader.h
@@ -62,4 +62,13 @@ void efi_update_table_header_crc32(struct efi_table_hdr *table);
 /* replacement function, returns EFI_UNSUPPORTED */
 efi_status_t __efi_runtime EFIAPI efi_unimplemented(void);
 
+enum efi_loader_state;
+
+void efi_loader_set_state(enum efi_loader_state);
+
+extern struct device efidev;
+
+void efi_register_deferred_init(efi_status_t (*init)(void *), void *);
+void efi_add_root_node_protocol_deferred(const efi_guid_t *protocol, const void *interface);
+
 #endif /* _EFI_LOADER_H */
diff --git a/include/efi/mode.h b/include/efi/mode.h
index f398d80d932f..d63c47e88dbb 100644
--- a/include/efi/mode.h
+++ b/include/efi/mode.h
@@ -9,23 +9,36 @@
 
 struct efi_boot_services;
 struct efi_runtime_services;
-extern struct efi_boot_services *BS;
-extern struct efi_runtime_services *RT;
+extern struct efi_boot_services *BS, *loaderBS;
+extern struct efi_runtime_services *RT, *loaderRT;
+
+enum efi_loader_state {
+	EFI_LOADER_INACTIVE = 0,
+	EFI_LOADER_BOOT,
+	EFI_LOADER_RUNTIME,
+};
 
 static inline bool efi_is_payload(void)
 {
 	return IS_ENABLED(CONFIG_EFI_PAYLOAD) && BS;
 }
 
-static inline bool efi_is_loader(void)
+#ifdef CONFIG_EFI_LOADER
+enum efi_loader_state efi_is_loader(void);
+#else
+static inline enum efi_loader_state efi_is_loader(void)
 {
-	return false;
+	return EFI_LOADER_INACTIVE;
 }
+#endif
+
 
 static inline struct efi_boot_services *efi_get_boot_services(void)
 {
 	if (efi_is_payload())
 		return BS;
+	if (efi_is_loader())
+		return loaderBS;
 
 	return NULL;
 }
@@ -34,6 +47,8 @@ static inline struct efi_runtime_services *efi_get_runtime_services(void)
 {
 	if (efi_is_payload())
 		return RT;
+	if (efi_is_loader())
+		return loaderRT;
 
 	return NULL;
 }
-- 
2.47.3



