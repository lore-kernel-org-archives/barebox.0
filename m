Delivery-date: Thu, 18 Dec 2025 12:40:27 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWCMt-00CoVX-1z
	for lore@lore.pengutronix.de;
	Thu, 18 Dec 2025 12:40:27 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWCM9-0001uO-U0
	for lore@pengutronix.de; Thu, 18 Dec 2025 12:40:27 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3PwjYQD7lU6dabdD7igdcvhViwfGij3AJOCpQ9Cwv1k=; b=wnjTNWA6W71FhS5cR6SxmzgLvf
	Y4Z8l2lxVMxKVRFJ3j6oIYlpk6k4/j8Se4OLkB8DnHfauWT5UoJY83XiDGLB0mPuyHoA2ADDRt2TX
	Etlfw6SH/IE5pPJgpdWh3/mpKYH8SRCsB/TFnAKM6yBmBQkaHg2qZ5t2ci9WVVIBnQeHRYo1Lev84
	Zxj4HX+q2dfrYxo/6gYYbJHR/q1bL+pRkGcNn/Y5OrrTnS0kCBZ1uwrgEp6uDCKv4GdsM0TYtLXDt
	FoHVilxpN4wLEuLKD2rz0ANV3/Cidb24LlzLjxqSM3I4Z56zUmRR6vR6bVZIE6F1ZS98Y+zm/+7EI
	iv8nsDsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWCK9-00000008LAd-0C1d;
	Thu, 18 Dec 2025 11:37:37 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWCJY-00000008KPh-2KMJ
	for barebox@bombadil.infradead.org;
	Thu, 18 Dec 2025 11:37:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=3PwjYQD7lU6dabdD7igdcvhViwfGij3AJOCpQ9Cwv1k=; b=M5I5VS8fX8R/7eXsqo6jlma8/d
	G/E3Dvve3no7LvKQpBMqxDI5YXGwTsc9DkVD6JdWSGUPLE72tncvqwVb9cbWqj72kH9bWvtrfan6x
	hE/sMkMFIDcsntZdnZdlJCWg2IXxWEsbDIOKiv3vC0OwpYGNSNh/bAKf0x10hTh18rQuYmBFIras/
	fBJ6+ObIMYyhXikdsxlxF+duRzTEFbtSqHhjcVUVJ/w6C8dZqeciMIgOIXM44ihgAPt7KHbToU/uq
	HhqXL+TxAJC4YDcy0y2iFvojGnKFuk7ckfX4Rko9BHASvLl77OKdrVNzv5XE50m/EmIm2/shM1dVf
	dbl88h8w==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWBS1-00000008fRM-1GNB
	for barebox@lists.infradead.org;
	Thu, 18 Dec 2025 10:41:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWCJM-0008An-Sp; Thu, 18 Dec 2025 12:36:48 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWCJM-006GvK-2E;
	Thu, 18 Dec 2025 12:36:48 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWBw3-0000000AVre-35Uc;
	Thu, 18 Dec 2025 12:12:43 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 18 Dec 2025 11:37:35 +0100
Message-ID: <20251218111242.1527495-16-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251218111242.1527495-1-a.fatoum@pengutronix.de>
References: <20251218111242.1527495-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251218_104141_585890_F157D8AA 
X-CRM114-Status: GOOD (  20.68  )
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
Subject: [PATCH v1 15/54] efi: loader: add object handling API
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add definitions and prototypes for the EFI object model.
The implementations will follow later, but we add this first here, so we
do not have to add everything in one big commit and can split it out
into separate parts.

The code using it can still be compiled, but it will only be linkable
with linker garbage collection enabled.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/efi/loader/object.h | 137 ++++++++++++++++++++++++++++++++++++
 1 file changed, 137 insertions(+)
 create mode 100644 include/efi/loader/object.h

diff --git a/include/efi/loader/object.h b/include/efi/loader/object.h
new file mode 100644
index 000000000000..ba294d8ff4e3
--- /dev/null
+++ b/include/efi/loader/object.h
@@ -0,0 +1,137 @@
+/* SPDX-License-Identifier: GPL-2.0+ */
+/*
+ *  EFI application loader
+ *
+ *  Copyright (c) 2016 Alexander Graf
+ */
+
+#ifndef _EFI_LOADER_OBJECT_H
+#define _EFI_LOADER_OBJECT_H
+
+#include <efi/types.h>
+#include <efi/services.h>
+
+/**
+ * enum efi_object_type - type of EFI object
+ *
+ * In UnloadImage we must be able to identify if the handle relates to a
+ * started image.
+ */
+enum efi_object_type {
+	/** @EFI_OBJECT_TYPE_UNDEFINED: undefined image type */
+	EFI_OBJECT_TYPE_UNDEFINED = 0,
+	/** @EFI_OBJECT_TYPE_BAREBOX_FIRMWARE: barebox firmware */
+	EFI_OBJECT_TYPE_BAREBOX_FIRMWARE,
+	/** @EFI_OBJECT_TYPE_LOADED_IMAGE: loaded image (not started) */
+	EFI_OBJECT_TYPE_LOADED_IMAGE,
+	/** @EFI_OBJECT_TYPE_STARTED_IMAGE: started image */
+	EFI_OBJECT_TYPE_STARTED_IMAGE,
+};
+
+/**
+ * struct efi_object - dereferenced EFI handle
+ *
+ * @link:	pointers to put the handle into a linked list
+ * @protocols:	linked list with the protocol interfaces installed on this
+ *		handle
+ * @type:	image type if the handle relates to an image
+ *
+ * UEFI offers a flexible and expandable object model. The objects in the UEFI
+ * API are devices, drivers, and loaded images. struct efi_object is our storage
+ * structure for these objects.
+ *
+ * When including this structure into a larger structure always put it first so
+ * that when deleting a handle the whole encompassing structure can be freed.
+ *
+ * A pointer to this structure is referred to as a handle. Typedef efi_handle_t
+ * has been created for such pointers.
+ */
+struct efi_object {
+	/* Every UEFI object is part of a global object list */
+	struct list_head link;
+	/* The list of protocols */
+	struct list_head protocols;
+	enum efi_object_type type;
+};
+
+/**
+ * struct efi_open_protocol_info_item - open protocol info item
+ *
+ * When a protocol is opened a open protocol info entry is created.
+ * These are maintained in a list.
+ *
+ * @link:	link to the list of open protocol info entries of a protocol
+ * @info:	information about the opening of a protocol
+ */
+struct efi_open_protocol_info_item {
+	struct list_head link;
+	struct efi_open_protocol_information_entry info;
+};
+
+/**
+ * struct efi_handler - single protocol interface of a handle
+ *
+ * When the UEFI payload wants to open a protocol on an object to get its
+ * interface (usually a struct with callback functions), this struct maps the
+ * protocol GUID to the respective protocol interface
+ *
+ * @link:		link to the list of protocols of a handle
+ * @guid:		GUID of the protocol
+ * @protocol_interface:	protocol interface
+ * @open_infos:		link to the list of open protocol info items
+ */
+struct efi_handler {
+	struct list_head link;
+	efi_guid_t guid;
+	void *protocol_interface;
+	struct list_head open_infos;
+};
+
+/* This list contains all UEFI objects we know of */
+extern struct list_head efi_obj_list;
+
+/* Root node */
+extern efi_handle_t efi_root;
+
+/* Initialize efi execution environment */
+efi_status_t efi_init_obj_list(void);
+
+/* Add a new object to the object list. */
+void efi_add_handle(efi_handle_t obj);
+/* Create handle */
+efi_status_t efi_create_handle(efi_handle_t *handle);
+/* Delete handle */
+efi_status_t efi_delete_handle(efi_handle_t obj);
+/* Call this to validate a handle and find the EFI object for it */
+struct efi_object *efi_search_obj(const efi_handle_t handle);
+
+/* Find a protocol on a handle */
+efi_status_t efi_search_protocol(const efi_handle_t handle,
+				 const efi_guid_t *protocol_guid,
+				 struct efi_handler **handler);
+/* Install new protocol on a handle */
+efi_status_t efi_add_protocol(const efi_handle_t handle,
+			      const efi_guid_t *protocol,
+			      const void *protocol_interface);
+/* Open protocol */
+efi_status_t efi_protocol_open(struct efi_handler *handler,
+			       void **protocol_interface, void *agent_handle,
+			       void *controller_handle, uint32_t attributes);
+
+/* Install multiple protocol interfaces */
+efi_status_t EFIAPI
+efi_install_multiple_protocol_interfaces(efi_handle_t *handle, ...) __attribute__((sentinel));
+efi_status_t EFIAPI
+efi_uninstall_multiple_protocol_interfaces(efi_handle_t handle, ...)  __attribute__((sentinel));
+/* Get handles that support a given protocol */
+efi_status_t EFIAPI efi_locate_handle_buffer(
+			enum efi_locate_search_type search_type,
+			const efi_guid_t *protocol, void *search_key,
+			size_t *no_handles, efi_handle_t **buffer);
+/* Close an previously opened protocol interface */
+efi_status_t EFIAPI efi_close_protocol(efi_handle_t handle,
+				       const efi_guid_t *protocol,
+				       efi_handle_t agent_handle,
+				       efi_handle_t controller_handle);
+
+#endif /* _EFI_LOADER_OBJECT_H */
-- 
2.47.3



