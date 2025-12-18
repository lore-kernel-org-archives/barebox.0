Delivery-date: Thu, 18 Dec 2025 12:39:00 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWCLU-00CoPA-0S
	for lore@lore.pengutronix.de;
	Thu, 18 Dec 2025 12:39:00 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWCKs-0000z5-JV
	for lore@pengutronix.de; Thu, 18 Dec 2025 12:38:59 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LcK4gTB1wBpoCAcSxue9lwVtMbcr9XNCLxaRfNrFepE=; b=Ikg7EgQ5tOnxNT1mJPXI3oIfNn
	YREUMR60pUwJ+skgVYcSznaCMRpZZFYnUT05E+tNv4KylUvftA2jisbpZWCAbaYHyvyZbj2Le7vWm
	VXXP5gzyWKsH+SFrkPwIn/7jljX3Rq7XvPA2qvcDvBs/eChkTShKGFoM6DEjAm98UtMvKlQ6Z4fJd
	oi698xgP6etmzYLX/FMw6CZvDB/G7tDXrS2UIO2i6/zRHAnQzwfDvofzniqoPEviTbj/O2UaGuPf7
	55TXrbcByWkwjCR6RqUHiMgh/iNb6nsoOh3biCI8r1dexu070mp6JrSAI2sT0jFO4/8BB12ewYztU
	LQlZSBxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWCJb-00000008KSS-32OE;
	Thu, 18 Dec 2025 11:37:03 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWCJN-00000008KBE-3ByY
	for barebox@lists.infradead.org;
	Thu, 18 Dec 2025 11:36:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWCJM-000896-7S; Thu, 18 Dec 2025 12:36:48 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWCJM-006Gun-07;
	Thu, 18 Dec 2025 12:36:48 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWBw4-0000000AVre-2dRW;
	Thu, 18 Dec 2025 12:12:44 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 18 Dec 2025 11:37:53 +0100
Message-ID: <20251218111242.1527495-34-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251218111242.1527495-1-a.fatoum@pengutronix.de>
References: <20251218111242.1527495-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251218_033649_949878_2FF77BE4 
X-CRM114-Status: GOOD (  20.77  )
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
Subject: [PATCH v1 33/54] efi: loader: protocol: add device_path_utilities
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This protocol doesn't do much in barebox, but enough to be able to
execute the UEFI shell.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 efi/loader/protocols/Kconfig                 |   7 +
 efi/loader/protocols/Makefile                |   1 +
 efi/loader/protocols/device_path_utilities.c | 210 +++++++++++++++++++
 include/efi/protocol/devicepath.h            |  31 +++
 4 files changed, 249 insertions(+)
 create mode 100644 efi/loader/protocols/device_path_utilities.c
 create mode 100644 include/efi/protocol/devicepath.h

diff --git a/efi/loader/protocols/Kconfig b/efi/loader/protocols/Kconfig
index 7d5e203d121a..3405de1acdfb 100644
--- a/efi/loader/protocols/Kconfig
+++ b/efi/loader/protocols/Kconfig
@@ -39,4 +39,11 @@ config EFI_LOADER_RNG
 	  Provide a EFI_RNG_PROTOCOL implementation using the hardware random
 	  number generator of the platform.
 
+config EFI_LOADER_DEVICE_PATH_UTIL
+	bool "Device path utilities protocol"
+	default y
+	help
+	  The device path utilities protocol creates and manipulates device
+	  paths and device nodes. It is required to run the EFI Shell.
+
 endmenu
diff --git a/efi/loader/protocols/Makefile b/efi/loader/protocols/Makefile
index ecc0fc392856..b5ec5cf5dd46 100644
--- a/efi/loader/protocols/Makefile
+++ b/efi/loader/protocols/Makefile
@@ -7,3 +7,4 @@ obj-$(CONFIG_CONSOLE_FULL) += console.o
 obj-$(CONFIG_EFI_LOADER_HII) += hii.o hii_config.o
 obj-$(CONFIG_EFI_LOADER_UNICODE_COLLATION_PROTOCOL2) += unicode_collation.o
 obj-$(CONFIG_EFI_LOADER_RNG) += rng.o
+obj-$(CONFIG_EFI_LOADER_DEVICE_PATH_UTIL) += device_path_utilities.o
diff --git a/efi/loader/protocols/device_path_utilities.c b/efi/loader/protocols/device_path_utilities.c
new file mode 100644
index 000000000000..ef88e2d647fb
--- /dev/null
+++ b/efi/loader/protocols/device_path_utilities.c
@@ -0,0 +1,210 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ *  EFI device path interface
+ *
+ *  Copyright (c) 2017 Leif Lindholm
+ */
+
+#include <efi/loader.h>
+#include <efi/devicepath.h>
+#include <efi/loader/devicepath.h>
+#include <efi/protocol/devicepath.h>
+#include <efi/loader/trace.h>
+#include <efi/loader/object.h>
+#include <efi/guid.h>
+#include <init.h>
+
+/*
+ * Get size of a device path.
+ *
+ * This function implements the GetDevicePathSize service of the device path
+ * utilities protocol. The device path length includes the end of path tag
+ * which may be an instance end.
+ *
+ * See the Unified Extensible Firmware Interface (UEFI) specification
+ * for details.
+ *
+ * @device_path		device path
+ * Return:		size in bytes
+ */
+static efi_uintn_t EFIAPI get_device_path_size(
+	const struct efi_device_path *device_path)
+{
+	efi_uintn_t sz = 0;
+
+	EFI_ENTRY("%pD", device_path);
+	/* size includes the END node: */
+	if (device_path)
+		sz = efi_dp_size(device_path) + sizeof(struct efi_device_path);
+	return EFI_EXIT(sz);
+}
+
+/*
+ * Duplicate a device path.
+ *
+ * This function implements the DuplicateDevicePath service of the device path
+ * utilities protocol.
+ *
+ * The UEFI spec does not indicate what happens to the end tag. We follow the
+ * EDK2 logic: In case the device path ends with an end of instance tag, the
+ * copy will also end with an end of instance tag.
+ *
+ * See the Unified Extensible Firmware Interface (UEFI) specification
+ * for details.
+ *
+ * @device_path		device path
+ * Return:		copy of the device path
+ */
+static struct efi_device_path * EFIAPI duplicate_device_path(
+	const struct efi_device_path *device_path)
+{
+	EFI_ENTRY("%pD", device_path);
+	return EFI_EXIT(efi_dp_dup(device_path));
+}
+
+/*
+ * Append device path.
+ *
+ * This function implements the AppendDevicePath service of the device path
+ * utilities protocol.
+ *
+ * See the Unified Extensible Firmware Interface (UEFI) specification
+ * for details.
+ *
+ * @src1		1st device path
+ * @src2		2nd device path
+ * Return:		concatenated device path
+ */
+static struct efi_device_path * EFIAPI append_device_path(
+	const struct efi_device_path *src1,
+	const struct efi_device_path *src2)
+{
+	EFI_ENTRY("%pD, %pD", src1, src2);
+	return EFI_EXIT(efi_dp_concat(src1, src2, 0));
+}
+
+/*
+ * Append device path node.
+ *
+ * This function implements the AppendDeviceNode service of the device path
+ * utilities protocol.
+ *
+ * See the Unified Extensible Firmware Interface (UEFI) specification
+ * for details.
+ *
+ * @device_path		device path
+ * @device_node		device node
+ * Return:		concatenated device path
+ */
+static struct efi_device_path * EFIAPI append_device_node(
+	const struct efi_device_path *device_path,
+	const struct efi_device_path *device_node)
+{
+	EFI_ENTRY("%pD, %p", device_path, device_node);
+	return EFI_EXIT(efi_dp_append_node(device_path, device_node));
+}
+
+/*
+ * Append device path instance.
+ *
+ * This function implements the AppendDevicePathInstance service of the device
+ * path utilities protocol.
+ *
+ * See the Unified Extensible Firmware Interface (UEFI) specification
+ * for details.
+ *
+ * @device_path			1st device path
+ * @device_path_instance	2nd device path
+ * Return:			concatenated device path
+ */
+static struct efi_device_path * EFIAPI append_device_path_instance(
+	const struct efi_device_path *device_path,
+	const struct efi_device_path *device_path_instance)
+{
+	EFI_ENTRY("%pD, %pD", device_path, device_path_instance);
+	return EFI_EXIT(efi_dp_append_instance(device_path,
+					       device_path_instance));
+}
+
+/*
+ * Get next device path instance.
+ *
+ * This function implements the GetNextDevicePathInstance service of the device
+ * path utilities protocol.
+ *
+ * See the Unified Extensible Firmware Interface (UEFI) specification
+ * for details.
+ *
+ * @device_path_instance	next device path instance
+ * @device_path_instance_size	size of the device path instance
+ * Return:			concatenated device path
+ */
+static struct efi_device_path * EFIAPI get_next_device_path_instance(
+	struct efi_device_path **device_path_instance,
+	efi_uintn_t *device_path_instance_size)
+{
+	EFI_ENTRY("%pD, %p", device_path_instance, device_path_instance_size);
+	return EFI_EXIT(efi_dp_get_next_instance(device_path_instance,
+						 device_path_instance_size));
+}
+
+/*
+ * Check if a device path contains more than one instance.
+ *
+ * This function implements the AppendDeviceNode service of the device path
+ * utilities protocol.
+ *
+ * See the Unified Extensible Firmware Interface (UEFI) specification
+ * for details.
+ *
+ * @device_path		device path
+ * @device_node		device node
+ * Return:		concatenated device path
+ */
+static bool EFIAPI is_device_path_multi_instance(
+	const struct efi_device_path *device_path)
+{
+	EFI_ENTRY("%pD", device_path);
+	return EFI_EXIT(efi_dp_is_multi_instance(device_path));
+}
+
+/*
+ * Create device node.
+ *
+ * This function implements the CreateDeviceNode service of the device path
+ * utilities protocol.
+ *
+ * See the Unified Extensible Firmware Interface (UEFI) specification
+ * for details.
+ *
+ * @node_type		node type
+ * @node_sub_type	node sub type
+ * @node_length		node length
+ * Return:		device path node
+ */
+static struct efi_device_path * EFIAPI create_device_node(
+	uint8_t node_type, uint8_t node_sub_type, uint16_t node_length)
+{
+	EFI_ENTRY("%u, %u, %u", node_type, node_sub_type, node_length);
+	return EFI_EXIT(efi_dp_create_device_node(node_type, node_sub_type,
+			node_length));
+}
+
+static const struct efi_device_path_utilities_protocol efi_device_path_utilities = {
+	.get_device_path_size = get_device_path_size,
+	.duplicate_device_path = duplicate_device_path,
+	.append_device_path = append_device_path,
+	.append_device_node = append_device_node,
+	.append_device_path_instance = append_device_path_instance,
+	.get_next_device_path_instance = get_next_device_path_instance,
+	.is_device_path_multi_instance = is_device_path_multi_instance,
+	.create_device_node = create_device_node,
+};
+
+static int efi_device_path_utilities_init(void)
+{
+	efi_add_root_node_protocol_deferred(&efi_device_path_utilities_protocol_guid,
+					    &efi_device_path_utilities);
+	return 0;
+}
+postcore_initcall(efi_device_path_utilities_init);
diff --git a/include/efi/protocol/devicepath.h b/include/efi/protocol/devicepath.h
new file mode 100644
index 000000000000..19a35888f9cc
--- /dev/null
+++ b/include/efi/protocol/devicepath.h
@@ -0,0 +1,31 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+#ifndef __EFI_PROTOCOL_DEVICE_PATH_H
+#define __EFI_PROTOCOL_DEVICE_PATH_H
+
+#include <efi/types.h>
+
+struct efi_device_path_utilities_protocol {
+	size_t (EFIAPI *get_device_path_size)(
+		const struct efi_device_path *device_path);
+	struct efi_device_path *(EFIAPI *duplicate_device_path)(
+		const struct efi_device_path *device_path);
+	struct efi_device_path *(EFIAPI *append_device_path)(
+		const struct efi_device_path *src1,
+		const struct efi_device_path *src2);
+	struct efi_device_path *(EFIAPI *append_device_node)(
+		const struct efi_device_path *device_path,
+		const struct efi_device_path *device_node);
+	struct efi_device_path *(EFIAPI *append_device_path_instance)(
+		const struct efi_device_path *device_path,
+		const struct efi_device_path *device_path_instance);
+	struct efi_device_path *(EFIAPI *get_next_device_path_instance)(
+		struct efi_device_path **device_path_instance,
+		size_t *device_path_instance_size);
+	bool (EFIAPI *is_device_path_multi_instance)(
+		const struct efi_device_path *device_path);
+	struct efi_device_path *(EFIAPI *create_device_node)(
+		uint8_t node_type,
+		uint8_t node_sub_type,
+		uint16_t node_length);
+};
+#endif
-- 
2.47.3



