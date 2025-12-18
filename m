Delivery-date: Thu, 18 Dec 2025 12:38:11 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWCKh-00CoKR-03
	for lore@lore.pengutronix.de;
	Thu, 18 Dec 2025 12:38:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWCKI-0000XV-UC
	for lore@pengutronix.de; Thu, 18 Dec 2025 12:38:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5Y2fCnTGgQoFlbAIH7QM9+sRE56oLhmfr0bYTjpX0Ps=; b=behjr5gSTUEYSif0TniwrChQ4U
	6UDxSVw+nCIpHyRVa+T66O9a2tJnYGa/mwBsfwSpCXsh/647UKqGWVP7BNy3yqE+V1m1J1GWWqWbA
	mCcO7EtkF9Dx3jmOmYrxClss2H2UvgA0cEqXgMfIS7an548K3W6nAYlolUxI8VWQERfM6C5SGak0J
	DtY6kxIY703B4jeZQEVpIOWsUbQ9r0hniiVpBwNUnNuX/r2dnt9phpJ8dFpXWW8ibEVADVSYkz5kV
	rrf3oZOJms0jDTC1FxOkCm3ftoQy3QJ2b+e5hF9UNF11h8wlzHR8odDw2hckDPyFh1VJP1XfQohWw
	eqWd/bbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWCJR-00000008KHB-1zhk;
	Thu, 18 Dec 2025 11:36:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWCJN-00000008KB9-17lL
	for barebox@lists.infradead.org;
	Thu, 18 Dec 2025 11:36:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWCJL-000881-QX; Thu, 18 Dec 2025 12:36:47 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWCJL-006GuU-22;
	Thu, 18 Dec 2025 12:36:47 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWBw4-0000000AVre-31K7;
	Thu, 18 Dec 2025 12:12:44 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 18 Dec 2025 11:37:55 +0100
Message-ID: <20251218111242.1527495-36-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251218111242.1527495-1-a.fatoum@pengutronix.de>
References: <20251218111242.1527495-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251218_033649_305006_D7681D99 
X-CRM114-Status: GOOD (  18.67  )
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
Subject: [PATCH v1 35/54] efi: loader: protocol: add efi_device_path_to_text support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

For use by EFI payloads that don't want to convert device paths into
strings themselves, the loader can provide a protocol with access to its
own routines. device_path_to_str(), which we already in the EFI payload
can fill that role, so add a protocol that calls into it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 efi/loader/protocols/Kconfig               |   7 ++
 efi/loader/protocols/Makefile              |   1 +
 efi/loader/protocols/device_path_to_text.c | 130 +++++++++++++++++++++
 include/efi/protocol/devicepath.h          |  11 ++
 4 files changed, 149 insertions(+)
 create mode 100644 efi/loader/protocols/device_path_to_text.c

diff --git a/efi/loader/protocols/Kconfig b/efi/loader/protocols/Kconfig
index 3405de1acdfb..ba6f562b7585 100644
--- a/efi/loader/protocols/Kconfig
+++ b/efi/loader/protocols/Kconfig
@@ -39,6 +39,13 @@ config EFI_LOADER_RNG
 	  Provide a EFI_RNG_PROTOCOL implementation using the hardware random
 	  number generator of the platform.
 
+config EFI_LOADER_DEVICE_PATH_TO_TEXT
+	bool "Device path to text protocol"
+	default y
+	help
+	  The device path to text protocol converts device nodes and paths to
+	  human readable strings.
+
 config EFI_LOADER_DEVICE_PATH_UTIL
 	bool "Device path utilities protocol"
 	default y
diff --git a/efi/loader/protocols/Makefile b/efi/loader/protocols/Makefile
index b5ec5cf5dd46..a323927b89e3 100644
--- a/efi/loader/protocols/Makefile
+++ b/efi/loader/protocols/Makefile
@@ -8,3 +8,4 @@ obj-$(CONFIG_EFI_LOADER_HII) += hii.o hii_config.o
 obj-$(CONFIG_EFI_LOADER_UNICODE_COLLATION_PROTOCOL2) += unicode_collation.o
 obj-$(CONFIG_EFI_LOADER_RNG) += rng.o
 obj-$(CONFIG_EFI_LOADER_DEVICE_PATH_UTIL) += device_path_utilities.o
+obj-$(CONFIG_EFI_LOADER_DEVICE_PATH_TO_TEXT) += device_path_to_text.o
diff --git a/efi/loader/protocols/device_path_to_text.c b/efi/loader/protocols/device_path_to_text.c
new file mode 100644
index 000000000000..d2907915469c
--- /dev/null
+++ b/efi/loader/protocols/device_path_to_text.c
@@ -0,0 +1,130 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ *  EFI device path interface
+ *
+ *  Copyright (c) 2017 Heinrich Schuchardt
+ */
+
+#include <charset.h>
+#include <efi/devicepath.h>
+#include <efi/loader/devicepath.h>
+#include <efi/protocol/devicepath.h>
+#include <efi/loader/object.h>
+#include <efi/loader/trace.h>
+#include <efi/loader.h>
+#include <efi/guid.h>
+#include <efi/error.h>
+#include <init.h>
+
+/**
+ * efi_str_to_u16() - convert ASCII string to UTF-16
+ *
+ * A u16 buffer is allocated from pool. The ASCII string is copied to the u16
+ * buffer.
+ *
+ * @str:	ASCII string
+ * Return:	UTF-16 string. NULL if out of memory.
+ */
+static u16 *efi_str_to_u16(const char *str)
+{
+	size_t len;
+	u16 *out, *dst;
+	efi_status_t ret;
+
+	if (!str)
+		return NULL;
+
+	len = sizeof(u16) * (utf8_utf16_strlen(str) + 1);
+	ret = efi_allocate_pool(EFI_BOOT_SERVICES_DATA, len, (void **)&out, "DP");
+	if (ret != EFI_SUCCESS)
+		return NULL;
+	dst = out;
+	utf8_utf16_strcpy(&dst, str);
+	return out;
+}
+
+static uint16_t EFIAPI *__efi_convert_device_path_to_text(
+		const struct efi_device_path *dp,
+		bool all_nodes)
+{
+	char *str;
+	uint16_t *text;
+
+	if (!dp)
+		return NULL;
+
+	str = device_path_to_str(dp, all_nodes);
+	text = efi_str_to_u16(str);
+	free(str);
+
+	return text;
+}
+
+/*
+ * This function implements the ConvertDeviceNodeToText service of the
+ * EFI_DEVICE_PATH_TO_TEXT_PROTOCOL.
+ * See the Unified Extensible Firmware Interface (UEFI) specification
+ * for details.
+ *
+ * device_node		device node to be converted
+ * display_only		true if the shorter text representation shall be used
+ * allow_shortcuts	true if shortcut forms may be used
+ * Return:		text representation of the device path
+ *			NULL if out of memory of device_path is NULL
+ */
+static uint16_t EFIAPI *efi_convert_device_node_to_text(
+		const struct efi_device_path *device_node,
+		bool display_only,
+		bool allow_shortcuts)
+{
+	uint16_t *text;
+
+	EFI_ENTRY("%p, %d, %d", device_node, display_only, allow_shortcuts);
+
+	text = __efi_convert_device_path_to_text(device_node, false);
+
+	EFI_EXIT(EFI_SUCCESS);
+
+	return text;
+}
+
+/*
+ * This function implements the ConvertDevicePathToText service of the
+ * EFI_DEVICE_PATH_TO_TEXT_PROTOCOL.
+ * See the Unified Extensible Firmware Interface (UEFI) specification
+ * for details.
+ *
+ * device_path		device path to be converted
+ * display_only		true if the shorter text representation shall be used
+ * allow_shortcuts	true if shortcut forms may be used
+ * Return:		text representation of the device path
+ *			NULL if out of memory of device_path is NULL
+ */
+static uint16_t EFIAPI *efi_convert_device_path_to_text(
+		const struct efi_device_path *device_path,
+		bool display_only,
+		bool allow_shortcuts)
+{
+	uint16_t *text;
+
+	EFI_ENTRY("%p, %d, %d", device_path, display_only, allow_shortcuts);
+
+	text = __efi_convert_device_path_to_text(device_path, true);
+
+	EFI_EXIT(EFI_SUCCESS);
+
+	return text;
+}
+
+static const struct efi_device_path_to_text_protocol efi_device_path_to_text = {
+	.convert_device_node_to_text = efi_convert_device_node_to_text,
+	.convert_device_path_to_text = efi_convert_device_path_to_text,
+};
+
+static int efi_device_path_to_text_init(void)
+{
+	efi_add_root_node_protocol_deferred(&efi_device_path_to_text_protocol_guid,
+					    &efi_device_path_to_text);
+	return 0;
+}
+postcore_initcall(efi_device_path_to_text_init);
diff --git a/include/efi/protocol/devicepath.h b/include/efi/protocol/devicepath.h
index 19a35888f9cc..ca0cbd94d5ce 100644
--- a/include/efi/protocol/devicepath.h
+++ b/include/efi/protocol/devicepath.h
@@ -4,6 +4,17 @@
 
 #include <efi/types.h>
 
+struct efi_device_path_to_text_protocol {
+	uint16_t *(EFIAPI *convert_device_node_to_text)(
+			const struct efi_device_path *device_node,
+			bool display_only,
+			bool allow_shortcuts);
+	uint16_t *(EFIAPI *convert_device_path_to_text)(
+			const struct efi_device_path *device_path,
+			bool display_only,
+			bool allow_shortcuts);
+};
+
 struct efi_device_path_utilities_protocol {
 	size_t (EFIAPI *get_device_path_size)(
 		const struct efi_device_path *device_path);
-- 
2.47.3



