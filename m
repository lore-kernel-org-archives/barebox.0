Delivery-date: Wed, 03 Jan 2024 19:35:11 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL659-002NyD-28
	for lore@lore.pengutronix.de;
	Wed, 03 Jan 2024 19:35:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL653-0006F4-BC
	for lore@pengutronix.de; Wed, 03 Jan 2024 19:35:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dpE1lQJXFAZKjzxi89cZ7SR+bs4/ucrqIsmZU7xVaiY=; b=UmcSbWZVZK6UIjMgB9PW4S0sbk
	QIbVUAtkB3VB0h3pJ6VfzYdOOOhSXtnuBW59Ep9L+ouYjeoTGE6OkfCE59/NtVSME+jYp/LaTlGtR
	oHcEjGke75wPHR4TRP1FOIw+hdceSXHAJgM5h6LjtjPAEnw+dfl4Y5A4bZwXauc3YNbC6Y8f0i26b
	xnEGwKFI+ZjzxCjQ4RKLQL6PpqrClbkT2quZxwA33kLYsEHRCqz5bHEwYIdnb2RL++hn1Ptb9OYwz
	RrRiq5tOhakqJ2nEFRMtJ95Pdgi1Deyc2OEiFe70R3lts2eUXmJSzI52WildgePzQBjBmZpm69CF4
	/A6FcMjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rL63C-00BjiX-33;
	Wed, 03 Jan 2024 18:33:10 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL61G-00BhKt-2U
	for barebox@bombadil.infradead.org;
	Wed, 03 Jan 2024 18:31:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=dpE1lQJXFAZKjzxi89cZ7SR+bs4/ucrqIsmZU7xVaiY=; b=ZouDA7sZPg81FJSEco47cLjxEz
	/GjkTXfD+8fdqoxQ0BJ1jrF1rir3LyS36h1qcuWSc2WEw/VuEaUwZzpuXxwoDBD8xh4zklKqM+VU2
	Zuwofl7hq0eIgjrcbG9OLSiAvQABJgXtZxrvGj7gUz3LyMa5yoEcCnWb5he53poj5yd6faXl5M3st
	27cL9JFO48Qr4344u+JfKyNuUoxWaHiVgsTsrgQcLHpqRq+UhpRNkkUk5hXhEOKqKyxay0UREMEj6
	zwvPLUGWV4UH9FZRBKZI0sUXeFrE1skeVegCrFxAyYieDatw1yd4NGEJPCRBGxlMQj7P/Z4K8E9ix
	oRi+97ng==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL617-005eBu-1s
	for barebox@lists.infradead.org;
	Wed, 03 Jan 2024 18:31:09 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL613-0001gT-Q6; Wed, 03 Jan 2024 19:30:57 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL613-000Axg-Dd; Wed, 03 Jan 2024 19:30:57 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL5k3-001j4X-0w;
	Wed, 03 Jan 2024 19:13:23 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  3 Jan 2024 19:12:12 +0100
Message-Id: <20240103181312.409668-53-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240103181312.409668-1-a.fatoum@pengutronix.de>
References: <20240103181312.409668-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240103_183102_355823_94C22E45 
X-CRM114-Status: GOOD (  23.98  )
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 052/112] efi: make headers self-contained
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

With the loader support, efi.h will grow quite a bit. To avoid having to
include it always, lets move the base definitions into a new
<efi/types.h> and make the different <efi/*.h> headers self contained.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/hw_random/efi-rng.c |  2 +-
 efi/devicepath.c            |  1 +
 efi/errno.c                 |  1 +
 efi/guid.c                  |  1 +
 efi/payload/fdt.c           |  1 +
 include/efi.h               | 72 ++-----------------------------------
 include/efi/device-path.h   |  2 ++
 include/efi/efi-device.h    |  4 +++
 include/efi/efi-payload.h   |  6 +++-
 include/efi/efi-stdio.h     |  7 +++-
 include/efi/efi-util.h      |  8 ++++-
 include/efi/types.h         | 66 ++++++++++++++++++++++++++++++++++
 12 files changed, 97 insertions(+), 74 deletions(-)
 create mode 100644 include/efi/types.h

diff --git a/drivers/hw_random/efi-rng.c b/drivers/hw_random/efi-rng.c
index b74075e3a4ac..61cb01caf647 100644
--- a/drivers/hw_random/efi-rng.c
+++ b/drivers/hw_random/efi-rng.c
@@ -3,7 +3,7 @@
 #include <driver.h>
 #include <init.h>
 #include <linux/hw_random.h>
-#include <efi/efi-util.h>
+#include <efi.h>
 #include <efi/efi-device.h>
 
 struct efi_rng_priv {
diff --git a/efi/devicepath.c b/efi/devicepath.c
index fad36c78a260..63b0ea61f0f9 100644
--- a/efi/devicepath.c
+++ b/efi/devicepath.c
@@ -2,6 +2,7 @@
 
 #include <common.h>
 #include <efi.h>
+#include <efi/efi-util.h>
 #include <malloc.h>
 #include <string.h>
 #include <wchar.h>
diff --git a/efi/errno.c b/efi/errno.c
index 3bb68e7781e6..ed14b1a8a6b0 100644
--- a/efi/errno.c
+++ b/efi/errno.c
@@ -1,6 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0-only
 
 #include <efi/efi-util.h>
+#include <efi.h>
 #include <errno.h>
 
 const char *efi_strerror(efi_status_t err)
diff --git a/efi/guid.c b/efi/guid.c
index ca16f4520ff2..8103b3d63114 100644
--- a/efi/guid.c
+++ b/efi/guid.c
@@ -2,6 +2,7 @@
 
 #include <common.h>
 #include <efi.h>
+#include <efi/efi-util.h>
 
 efi_guid_t efi_file_info_id = EFI_FILE_INFO_GUID;
 efi_guid_t efi_simple_file_system_protocol_guid = EFI_SIMPLE_FILE_SYSTEM_GUID;
diff --git a/efi/payload/fdt.c b/efi/payload/fdt.c
index faa7a5ad8d41..8dacaa8b524a 100644
--- a/efi/payload/fdt.c
+++ b/efi/payload/fdt.c
@@ -5,6 +5,7 @@
 #include <common.h>
 #include <init.h>
 #include <libfile.h>
+#include <efi.h>
 #include <efi/efi-payload.h>
 #include <efi/efi-device.h>
 
diff --git a/include/efi.h b/include/efi.h
index 10e22f1e9f99..2b248a17013d 100644
--- a/include/efi.h
+++ b/include/efi.h
@@ -14,15 +14,7 @@
  */
 #include <linux/string.h>
 #include <linux/types.h>
-#include <linux/uuid.h>
-
-#ifdef CONFIG_EFI_PAYLOAD
-#define EFIAPI __attribute__((ms_abi))
-#else
-#define EFIAPI
-#endif
-
-struct efi_device_path;
+#include <efi/types.h>
 
 /* Bit mask for EFI status code with error */
 #define EFI_ERROR_MASK (1UL << (BITS_PER_LONG-1))
@@ -62,33 +54,6 @@ struct efi_device_path;
 
 #define EFI_ERROR(a)	(((signed long) a) < 0)
 
-typedef unsigned long efi_status_t;
-typedef u16 efi_char16_t;		/* UNICODE character */
-typedef u64 efi_physical_addr_t;
-typedef void *efi_handle_t;
-
-/*
- * The UEFI spec and EDK2 reference implementation both define EFI_GUID as
- * struct { u32 a; u16; b; u16 c; u8 d[8]; }; and so the implied alignment
- * is 32 bits not 8 bits like our guid_t. In some cases (i.e., on 32-bit ARM),
- * this means that firmware services invoked by the kernel may assume that
- * efi_guid_t* arguments are 32-bit aligned, and use memory accessors that
- * do not tolerate misalignment. So let's set the minimum alignment to 32 bits.
- *
- * Note that the UEFI spec as well as some comments in the EDK2 code base
- * suggest that EFI_GUID should be 64-bit aligned, but this appears to be
- * a mistake, given that no code seems to exist that actually enforces that
- * or relies on it.
- */
-typedef guid_t efi_guid_t __aligned(__alignof__(u32));
-
-#define EFI_GUID(a, b, c, d0, d1, d2, d3, d4, d5, d6, d7) \
-((efi_guid_t) \
-{{ (a) & 0xff, ((a) >> 8) & 0xff, ((a) >> 16) & 0xff, ((a) >> 24) & 0xff, \
-  (b) & 0xff, ((b) >> 8) & 0xff, \
-  (c) & 0xff, ((c) >> 8) & 0xff, \
-  (d0), (d1), (d2), (d3), (d4), (d5), (d6), (d7) }})
-
 /*
  * Generic EFI table header
  */
@@ -605,12 +570,6 @@ struct efi_loaded_image {
 	unsigned long unload;
 };
 
-static inline int
-efi_guidcmp (efi_guid_t left, efi_guid_t right)
-{
-	return memcmp(&left, &right, sizeof (efi_guid_t));
-}
-
 __attribute__((noreturn)) void efi_main(efi_handle_t, struct efi_system_table *);
 
 /*
@@ -637,12 +596,6 @@ __attribute__((noreturn)) void efi_main(efi_handle_t, struct efi_system_table *)
  */
 #define EFI_VARIABLE_GUID_LEN 36
 
-struct efi_device_path {
-	u8 type;
-	u8 sub_type;
-	u16 length;
-} __attribute ((packed));
-
 struct simple_text_output_mode {
 	s32 max_mode;
 	s32 mode;
@@ -670,10 +623,7 @@ struct efi_simple_text_output_protocol {
 	struct simple_text_output_mode *mode;
 };
 
-struct efi_input_key {
-	u16 scan_code;
-	s16 unicode_char;
-};
+struct efi_input_key;
 
 struct efi_simple_input_interface {
 	efi_status_t(EFIAPI *reset)(struct efi_simple_input_interface *this,
@@ -683,24 +633,6 @@ struct efi_simple_input_interface {
 	void *wait_for_key;
 };
 
-struct efi_mac_address {
-	uint8_t Addr[32];
-};
-
-struct efi_ipv4_address {
-	uint8_t Addr[4];
-};
-
-struct efi_ipv6_address {
-	uint8_t Addr[16];
-};
-
-union efi_ip_address {
-	uint32_t Addr[4];
-	struct efi_ipv4_address v4;
-	struct efi_ipv6_address v6;
-};
-
 struct efi_device_path *device_path_from_handle(efi_handle_t Handle);
 char *device_path_to_str(struct efi_device_path *dev_path);
 u8 device_path_to_type(struct efi_device_path *dev_path);
diff --git a/include/efi/device-path.h b/include/efi/device-path.h
index 2882b87d6831..4b97cadde4f1 100644
--- a/include/efi/device-path.h
+++ b/include/efi/device-path.h
@@ -1,6 +1,8 @@
 #ifndef __EFI_DEVICE_PATH_H
 #define __EFI_DEVICE_PATH_H
 
+#include <efi/types.h>
+
 /*
  * Hardware Device Path (UEFI 2.4 specification, version 2.4 § 9.3.2.)
  */
diff --git a/include/efi/efi-device.h b/include/efi/efi-device.h
index cb665edf657e..eaf89beb8ed1 100644
--- a/include/efi/efi-device.h
+++ b/include/efi/efi-device.h
@@ -2,6 +2,10 @@
 #ifndef __EFI_EFI_DEVICE_H
 #define __EFI_EFI_DEVICE_H
 
+#include <efi/types.h>
+#include <efi/efi-util.h>
+#include <driver.h>
+
 struct efi_device {
 	struct device dev;
 	efi_guid_t *guids;
diff --git a/include/efi/efi-payload.h b/include/efi/efi-payload.h
index cddd8c8ddd47..3713ef359228 100644
--- a/include/efi/efi-payload.h
+++ b/include/efi/efi-payload.h
@@ -2,9 +2,12 @@
 #ifndef __EFI_PAYLOAD_H
 #define __EFI_PAYLOAD_H
 
-#include <efi.h>
+#include <efi/types.h>
 #include <efi/efi-util.h>
 
+struct efi_system_table;
+struct efi_loaded_image;
+
 extern struct efi_system_table *efi_sys_table;
 extern efi_handle_t efi_parent_image;
 extern struct efi_device_path *efi_device_path;
@@ -14,6 +17,7 @@ void *efi_get_variable(char *name, efi_guid_t *vendor, int *var_size);
 
 static inline void *efi_get_global_var(char *name, int *var_size)
 {
+	extern efi_guid_t efi_global_variable_guid;
 	return efi_get_variable(name, &efi_global_variable_guid, var_size);
 }
 
diff --git a/include/efi/efi-stdio.h b/include/efi/efi-stdio.h
index e8af244bfcf6..623b42c10f19 100644
--- a/include/efi/efi-stdio.h
+++ b/include/efi/efi-stdio.h
@@ -2,7 +2,7 @@
 #ifndef EFI_STDIO_H_
 #define EFI_STDIO_H_
 
-#include <efi.h>
+#include <efi/types.h>
 
 struct efi_simple_text_input_ex_protocol;
 
@@ -16,6 +16,11 @@ struct efi_key_state {
 	u8 toggle_state;
 };
 
+struct efi_input_key {
+	u16 scan_code;
+	s16 unicode_char;
+};
+
 struct efi_key_data {
 	struct efi_input_key key;
 	struct efi_key_state state;
diff --git a/include/efi/efi-util.h b/include/efi/efi-util.h
index 78e352456ad1..c61f3a5b05d2 100644
--- a/include/efi/efi-util.h
+++ b/include/efi/efi-util.h
@@ -2,7 +2,7 @@
 #ifndef __EFI_UTIL_H
 #define __EFI_UTIL_H
 
-#include <efi.h>
+#include <efi/types.h>
 
 const char *efi_strerror(efi_status_t err);
 int efi_errno(efi_status_t err);
@@ -11,4 +11,10 @@ int __efivarfs_parse_filename(const char *filename, efi_guid_t *vendor,
 			      s16 *name, size_t *namelen);
 int efivarfs_parse_filename(const char *filename, efi_guid_t *vendor, s16 **name);
 
+static inline int
+efi_guidcmp (efi_guid_t left, efi_guid_t right)
+{
+	return memcmp(&left, &right, sizeof (efi_guid_t));
+}
+
 #endif
diff --git a/include/efi/types.h b/include/efi/types.h
new file mode 100644
index 000000000000..3d42948d2b62
--- /dev/null
+++ b/include/efi/types.h
@@ -0,0 +1,66 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+#ifndef _EFI_TYPES_H_
+#define _EFI_TYPES_H_
+
+#include <linux/types.h>
+#include <linux/compiler.h>
+#include <linux/uuid.h>
+
+typedef unsigned long efi_status_t;
+typedef u16 efi_char16_t;		/* UNICODE character */
+typedef u64 efi_physical_addr_t;
+typedef void *efi_handle_t;
+
+/*
+ * The UEFI spec and EDK2 reference implementation both define EFI_GUID as
+ * struct { u32 a; u16; b; u16 c; u8 d[8]; }; and so the implied alignment
+ * is 32 bits not 8 bits like our guid_t. In some cases (i.e., on 32-bit ARM),
+ * this means that firmware services invoked by the kernel may assume that
+ * efi_guid_t* arguments are 32-bit aligned, and use memory accessors that
+ * do not tolerate misalignment. So let's set the minimum alignment to 32 bits.
+ *
+ * Note that the UEFI spec as well as some comments in the EDK2 code base
+ * suggest that EFI_GUID should be 64-bit aligned, but this appears to be
+ * a mistake, given that no code seems to exist that actually enforces that
+ * or relies on it.
+ */
+typedef guid_t efi_guid_t __aligned(__alignof__(u32));
+
+#define EFI_GUID(a, b, c, d0, d1, d2, d3, d4, d5, d6, d7) \
+((efi_guid_t) \
+{{ (a) & 0xff, ((a) >> 8) & 0xff, ((a) >> 16) & 0xff, ((a) >> 24) & 0xff, \
+  (b) & 0xff, ((b) >> 8) & 0xff, \
+  (c) & 0xff, ((c) >> 8) & 0xff, \
+  (d0), (d1), (d2), (d3), (d4), (d5), (d6), (d7) }})
+
+#ifdef CONFIG_EFI_PAYLOAD
+#define EFIAPI __attribute__((ms_abi))
+#else
+#define EFIAPI
+#endif
+
+struct efi_device_path {
+	u8 type;
+	u8 sub_type;
+	u16 length;
+} __packed;
+
+struct efi_mac_address {
+	uint8_t Addr[32];
+};
+
+struct efi_ipv4_address {
+	uint8_t Addr[4];
+};
+
+struct efi_ipv6_address {
+	uint8_t Addr[16];
+};
+
+union efi_ip_address {
+	uint32_t Addr[4];
+	struct efi_ipv4_address v4;
+	struct efi_ipv6_address v6;
+};
+
+#endif
-- 
2.39.2



