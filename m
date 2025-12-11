Delivery-date: Thu, 11 Dec 2025 21:31:46 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTnKE-00AQBh-12
	for lore@lore.pengutronix.de;
	Thu, 11 Dec 2025 21:31:46 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTnKD-0006o6-7O
	for lore@pengutronix.de; Thu, 11 Dec 2025 21:31:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yggwFJlKGVcilr/Ojhdzne4e4A+UKpwg5IWWAAcy04g=; b=31UmaGP/dY2KsVcJOCJujlKpsz
	v/eCPIgI3yHMsJ2oW2fQ+5H/K1P076ewobyuiGR/ET/boH6IUEfr0T3UndMMYWUArjGZncPsUa6s9
	jf5QVHZ+N8jMXiZiWCVZCZy9F5EimXdBfreJ47RflLiUNJXK+wZOFZlfGAXJh5XW1hf1VCG9vcxpl
	Vxw0UqGQfAk+X/u+O07F+oc7GLlVv0KxVwD7mQN2tbQiZvk54cUxQaoU9ss7tpjpEqFfj9MTQ6S4J
	RfXWz3ifU9OAZIcfK33mHGZVvXX9M9B+MzLWQ6DbLSdvI0VAflUynN6AgBs0mFCuA4of6pK3U/8qm
	ORJinylA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTnJd-0000000HEA1-2dBp;
	Thu, 11 Dec 2025 20:31:09 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTnJZ-0000000HE6q-36e6
	for barebox@bombadil.infradead.org;
	Thu, 11 Dec 2025 20:31:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=yggwFJlKGVcilr/Ojhdzne4e4A+UKpwg5IWWAAcy04g=; b=n/hFqCoMkWvoMOjc/GI+/djQ5k
	NYVrQaxM8f2i+Xk+9KPKnc1WlYhIxdJrf4Rk3lJduJaItEt6kHcpwWkaaC20RKuDmPLDEF149ViWy
	i3Tbp99nv0X/yempkLJSWy0AF5qGucrPx3pnDPuGuONlHI1PxGrqeye2xmls0yhZfjA9cfSgPJKI0
	lvmlRzJZZvyhWYahj4ImGdOxraafuKdFNiAK30U4ITiWaslF7i1yXrt4Ke7IUILZAXO3Qd2NnSPOn
	4aS1JS7wQ7q0Nk+Sxj5gHyKB7tEMvC8ETM0GiqHmeFXqntjIO1cMwaYhoXiMkfVqSKldJledhiMw6
	ypGe135A==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTmS0-0000000FZ9V-1eSM
	for barebox@lists.infradead.org;
	Thu, 11 Dec 2025 19:35:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTnJR-0006JE-OW; Thu, 11 Dec 2025 21:30:57 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTnJR-005BQz-1c;
	Thu, 11 Dec 2025 21:30:57 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTnJR-00000008e20-1ci2;
	Thu, 11 Dec 2025 21:30:57 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 11 Dec 2025 21:29:55 +0100
Message-ID: <20251211203056.2014710-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251211203056.2014710-1-a.fatoum@pengutronix.de>
References: <20251211203056.2014710-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251211_193544_547949_18714BFE 
X-CRM114-Status: GOOD (  17.74  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 04/16] efi: payload: make EFI variable helpers usable for loader as well
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

These functions have nothing specific to the payload apart from
hardcoding RT. Make use of the new efi_get_runtime_services(), so the
code is equally usable from the upcoming loader support.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/efi/efi-device.c  |   1 +
 efi/Makefile              |   2 +-
 efi/efivar.c              | 130 ++++++++++++++++++++++++++++++++++++++
 efi/payload/handover.c    |   1 +
 efi/payload/image.c       |   1 +
 efi/payload/init.c        | 102 +-----------------------------
 include/efi/efi-mode.h    |   1 +
 include/efi/efi-payload.h |  13 +---
 include/efi/variable.h    |  23 +++++++
 9 files changed, 160 insertions(+), 114 deletions(-)
 create mode 100644 efi/efivar.c
 create mode 100644 include/efi/variable.h

diff --git a/drivers/efi/efi-device.c b/drivers/efi/efi-device.c
index 78f42a463400..1ddf01658ee9 100644
--- a/drivers/efi/efi-device.c
+++ b/drivers/efi/efi-device.c
@@ -18,6 +18,7 @@
 #include <efi.h>
 #include <efi/efi-payload.h>
 #include <efi/efi-device.h>
+#include <efi/variable.h>
 #include <efi/device-path.h>
 #include <linux/err.h>
 
diff --git a/efi/Makefile b/efi/Makefile
index 2b188bafa0a4..508c07c9b536 100644
--- a/efi/Makefile
+++ b/efi/Makefile
@@ -3,4 +3,4 @@
 obj-$(CONFIG_EFI_PAYLOAD)	+= payload/
 obj-$(CONFIG_EFI_GUID)		+= guid.o
 obj-$(CONFIG_EFI_DEVICEPATH)	+= devicepath.o
-obj-y				+= errno.o efivar-filename.o
+obj-y				+= errno.o efivar.o efivar-filename.o
diff --git a/efi/efivar.c b/efi/efivar.c
new file mode 100644
index 000000000000..a51f3b2d1d8e
--- /dev/null
+++ b/efi/efivar.c
@@ -0,0 +1,130 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * init.c - barebox EFI payload support
+ *
+ * Copyright (c) 2014 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
+ */
+
+#define pr_fmt(fmt) "efi-var: " fmt
+
+#include <efi/efi-mode.h>
+#include <efi/variable.h>
+#include <efi.h>
+#include <efi/efi-util.h>
+#include <efi/variable.h>
+#include <wchar.h>
+#include <xfuncs.h>
+#include <linux/sprintf.h>
+
+void *efi_get_variable(char *name, efi_guid_t *vendor, int *var_size)
+{
+	struct efi_runtime_services *rt = efi_get_runtime_services();
+	efi_status_t efiret;
+	void *buf;
+	size_t size = 0;
+	s16 *name16;
+
+	if (!rt)
+		return ERR_PTR(-ENODEV);
+
+	name16 = xstrdup_char_to_wchar(name);
+
+	efiret = rt->get_variable(name16, vendor, NULL, &size, NULL);
+
+	if (EFI_ERROR(efiret) && efiret != EFI_BUFFER_TOO_SMALL) {
+		buf = ERR_PTR(-efi_errno(efiret));
+		goto out;
+	}
+
+	buf = malloc(size);
+	if (!buf) {
+		buf = ERR_PTR(-ENOMEM);
+		goto out;
+	}
+
+	efiret = rt->get_variable(name16, vendor, NULL, &size, buf);
+	if (EFI_ERROR(efiret)) {
+		free(buf);
+		buf = ERR_PTR(-efi_errno(efiret));
+		goto out;
+	}
+
+	if (var_size)
+		*var_size = size;
+
+out:
+	free(name16);
+
+	return buf;
+}
+
+int efi_set_variable(char *name, efi_guid_t *vendor, uint32_t attributes,
+		     void *buf, size_t size)
+{
+	struct efi_runtime_services *rt = efi_get_runtime_services();
+	efi_status_t efiret = EFI_SUCCESS;
+	s16 *name16;
+
+	if (!rt)
+		return -ENODEV;
+
+	name16 = xstrdup_char_to_wchar(name);
+
+	efiret = rt->set_variable(name16, vendor, attributes, size, buf);
+
+	free(name16);
+
+	return -efi_errno(efiret);
+}
+
+int efi_set_variable_usec(char *name, efi_guid_t *vendor, uint64_t usec)
+{
+	char buf[20];
+	wchar_t buf16[40];
+
+	snprintf(buf, sizeof(buf), "%lld", usec);
+	strcpy_char_to_wchar(buf16, buf);
+
+	return efi_set_variable(name, vendor,
+				EFI_VARIABLE_BOOTSERVICE_ACCESS |
+				EFI_VARIABLE_RUNTIME_ACCESS, buf16,
+				(strlen(buf)+1) * sizeof(wchar_t));
+}
+
+int efi_set_variable_printf(char *name, efi_guid_t *vendor, const char *fmt, ...)
+{
+	va_list args;
+	char *buf;
+	wchar_t *buf16;
+
+	va_start(args, fmt);
+	buf = xvasprintf(fmt, args);
+	va_end(args);
+	buf16 = xstrdup_char_to_wchar(buf);
+
+	return efi_set_variable(name, vendor,
+				EFI_VARIABLE_BOOTSERVICE_ACCESS |
+				EFI_VARIABLE_RUNTIME_ACCESS, buf16,
+				(strlen(buf)+1) * sizeof(wchar_t));
+	free(buf);
+	free(buf16);
+}
+
+int efi_set_variable_uint64_le(char *name, efi_guid_t *vendor, uint64_t value)
+{
+	uint8_t buf[8];
+
+	buf[0] = (uint8_t)(value >> 0U & 0xFF);
+	buf[1] = (uint8_t)(value >> 8U & 0xFF);
+	buf[2] = (uint8_t)(value >> 16U & 0xFF);
+	buf[3] = (uint8_t)(value >> 24U & 0xFF);
+	buf[4] = (uint8_t)(value >> 32U & 0xFF);
+	buf[5] = (uint8_t)(value >> 40U & 0xFF);
+	buf[6] = (uint8_t)(value >> 48U & 0xFF);
+	buf[7] = (uint8_t)(value >> 56U & 0xFF);
+
+	return efi_set_variable(name, vendor,
+				EFI_VARIABLE_BOOTSERVICE_ACCESS |
+				EFI_VARIABLE_RUNTIME_ACCESS, buf,
+				sizeof(buf));
+}
diff --git a/efi/payload/handover.c b/efi/payload/handover.c
index 68180d820e53..0bbac598542d 100644
--- a/efi/payload/handover.c
+++ b/efi/payload/handover.c
@@ -29,6 +29,7 @@
 #include <wchar.h>
 #include <efi/efi-payload.h>
 #include <efi/efi-device.h>
+#include <efi/variable.h>
 
 #include "image.h"
 
diff --git a/efi/payload/image.c b/efi/payload/image.c
index ed4307aab909..2dd545fc0d79 100644
--- a/efi/payload/image.c
+++ b/efi/payload/image.c
@@ -27,6 +27,7 @@
 #include <wchar.h>
 #include <efi/efi-payload.h>
 #include <efi/efi-device.h>
+#include <efi/variable.h>
 
 #include "image.h"
 
diff --git a/efi/payload/init.c b/efi/payload/init.c
index 5b827c57ed1f..7e407991b4a0 100644
--- a/efi/payload/init.c
+++ b/efi/payload/init.c
@@ -36,6 +36,7 @@
 #include <envfs.h>
 #include <efi/efi-payload.h>
 #include <efi/efi-device.h>
+#include <efi/variable.h>
 #include <libfile.h>
 #include <state.h>
 #include <bbu.h>
@@ -48,107 +49,6 @@ efi_handle_t efi_parent_image;
 struct efi_device_path *efi_device_path;
 struct efi_loaded_image *efi_loaded_image;
 
-void *efi_get_variable(char *name, efi_guid_t *vendor, int *var_size)
-{
-	efi_status_t efiret;
-	void *buf;
-	size_t size = 0;
-	s16 *name16 = xstrdup_char_to_wchar(name);
-
-	efiret = RT->get_variable(name16, vendor, NULL, &size, NULL);
-
-	if (EFI_ERROR(efiret) && efiret != EFI_BUFFER_TOO_SMALL) {
-		buf = ERR_PTR(-efi_errno(efiret));
-		goto out;
-	}
-
-	buf = malloc(size);
-	if (!buf) {
-		buf = ERR_PTR(-ENOMEM);
-		goto out;
-	}
-
-	efiret = RT->get_variable(name16, vendor, NULL, &size, buf);
-	if (EFI_ERROR(efiret)) {
-		free(buf);
-		buf = ERR_PTR(-efi_errno(efiret));
-		goto out;
-	}
-
-	if (var_size)
-		*var_size = size;
-
-out:
-	free(name16);
-
-	return buf;
-}
-
-int efi_set_variable(char *name, efi_guid_t *vendor, uint32_t attributes,
-		     void *buf, size_t size)
-{
-	efi_status_t efiret = EFI_SUCCESS;
-	s16 *name16 = xstrdup_char_to_wchar(name);
-
-	efiret = RT->set_variable(name16, vendor, attributes, size, buf);
-
-	free(name16);
-
-	return -efi_errno(efiret);
-}
-
-int efi_set_variable_usec(char *name, efi_guid_t *vendor, uint64_t usec)
-{
-	char buf[20];
-	wchar_t buf16[40];
-
-	snprintf(buf, sizeof(buf), "%lld", usec);
-	strcpy_char_to_wchar(buf16, buf);
-
-	return efi_set_variable(name, vendor,
-				EFI_VARIABLE_BOOTSERVICE_ACCESS |
-				EFI_VARIABLE_RUNTIME_ACCESS, buf16,
-				(strlen(buf)+1) * sizeof(wchar_t));
-}
-
-static int efi_set_variable_printf(char *name, efi_guid_t *vendor, const char *fmt, ...)
-{
-	va_list args;
-	char *buf;
-	wchar_t *buf16;
-
-	va_start(args, fmt);
-	buf = xvasprintf(fmt, args);
-	va_end(args);
-	buf16 = xstrdup_char_to_wchar(buf);
-
-	return efi_set_variable(name, vendor,
-				EFI_VARIABLE_BOOTSERVICE_ACCESS |
-				EFI_VARIABLE_RUNTIME_ACCESS, buf16,
-				(strlen(buf)+1) * sizeof(wchar_t));
-	free(buf);
-	free(buf16);
-}
-
-static int efi_set_variable_uint64_le(char *name, efi_guid_t *vendor, uint64_t value)
-{
-	uint8_t buf[8];
-
-	buf[0] = (uint8_t)(value >> 0U & 0xFF);
-	buf[1] = (uint8_t)(value >> 8U & 0xFF);
-	buf[2] = (uint8_t)(value >> 16U & 0xFF);
-	buf[3] = (uint8_t)(value >> 24U & 0xFF);
-	buf[4] = (uint8_t)(value >> 32U & 0xFF);
-	buf[5] = (uint8_t)(value >> 40U & 0xFF);
-	buf[6] = (uint8_t)(value >> 48U & 0xFF);
-	buf[7] = (uint8_t)(value >> 56U & 0xFF);
-
-	return efi_set_variable(name, vendor,
-				EFI_VARIABLE_BOOTSERVICE_ACCESS |
-				EFI_VARIABLE_RUNTIME_ACCESS, buf,
-				sizeof(buf));
-}
-
 struct efi_boot {
 	u32 attributes;
 	u16 file_path_len;
diff --git a/include/efi/efi-mode.h b/include/efi/efi-mode.h
index 696ab78acd50..f398d80d932f 100644
--- a/include/efi/efi-mode.h
+++ b/include/efi/efi-mode.h
@@ -5,6 +5,7 @@
 
 #include <linux/stddef.h>
 #include <linux/types.h>
+#include <efi/types.h>
 
 struct efi_boot_services;
 struct efi_runtime_services;
diff --git a/include/efi/efi-payload.h b/include/efi/efi-payload.h
index 337471117d5a..644620062aad 100644
--- a/include/efi/efi-payload.h
+++ b/include/efi/efi-payload.h
@@ -5,6 +5,7 @@
 #include <efi/types.h>
 #include <efi/efi-util.h>
 #include <efi/memtype.h>
+#include <efi/variable.h>
 
 struct efi_system_table;
 struct efi_loaded_image;
@@ -19,18 +20,6 @@ extern efi_handle_t efi_parent_image;
 extern struct efi_device_path *efi_device_path;
 extern struct efi_loaded_image *efi_loaded_image;
 
-void *efi_get_variable(char *name, efi_guid_t *vendor, int *var_size);
-
-static inline void *efi_get_global_var(char *name, int *var_size)
-{
-	extern efi_guid_t efi_global_variable_guid;
-	return efi_get_variable(name, &efi_global_variable_guid, var_size);
-}
-
-int efi_set_variable(char *name, efi_guid_t *vendor, uint32_t attributes,
-		     void *buf, size_t size);
-int efi_set_variable_usec(char *name, efi_guid_t *vendor, uint64_t usec);
-
 void *efi_earlymem_alloc(const struct efi_system_table *sys_table,
 			 size_t memsize, enum efi_memory_type mem_type);
 
diff --git a/include/efi/variable.h b/include/efi/variable.h
new file mode 100644
index 000000000000..c53b295eefe8
--- /dev/null
+++ b/include/efi/variable.h
@@ -0,0 +1,23 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
+#ifndef __EFI_VARIABLE_H
+#define __EFI_VARIABLE_H
+
+#include <efi/types.h>
+
+void *efi_get_variable(char *name, efi_guid_t *vendor, int *var_size);
+
+int efi_set_variable(char *name, efi_guid_t *vendor, uint32_t attributes,
+		     void *buf, size_t size);
+
+int efi_set_variable_usec(char *name, efi_guid_t *vendor, uint64_t usec);
+int efi_set_variable_printf(char *name, efi_guid_t *vendor, const char *fmt, ...);
+int efi_set_variable_uint64_le(char *name, efi_guid_t *vendor, uint64_t value);
+
+static inline void *efi_get_global_var(char *name, int *var_size)
+{
+	extern efi_guid_t efi_global_variable_guid;
+	return efi_get_variable(name, &efi_global_variable_guid, var_size);
+}
+
+#endif
-- 
2.47.3



