Delivery-date: Thu, 18 Dec 2025 12:40:47 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWCND-00CoYT-2i
	for lore@lore.pengutronix.de;
	Thu, 18 Dec 2025 12:40:47 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWCMd-0002Jn-Na
	for lore@pengutronix.de; Thu, 18 Dec 2025 12:40:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bv+jOB4HjTK2nz2Zl2SZqfg3jyPWD3EOpUFRRQBBYDM=; b=hsB+2Ithl/bg/8rIlosv2lvA+P
	+LpSdajn4UkxcTTWT+7XNnL3Zi4dENw5JiL4+luJPGrhGfbJpf7VVc4NmgXvTvp9kgEfxGzPjq0wV
	qAVromkYYXnIbZNKSdD5WHP5kKxIT7O0pUIYHtWzhSg4tc/n6O2MtrwjGSNx2nXp7XsLbZ0MAdipi
	GcGe/lKeYjch9TA3+v+flSuAeiaxgFK2aJ9b2Jh4ptrnR5z9OSwUW+jTvL7s1y0vSoHofq5Rg6ZYe
	CjvaLf4eD/LBEGypQrB21PV9OWTIoktgk61oJefIMm0F07MN44FpIA3KyHXUC5mktq+NfmaN0WubF
	EkxM149A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWCKD-00000008LIo-2hXe;
	Thu, 18 Dec 2025 11:37:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWCJP-00000008KFV-4BJB
	for barebox@lists.infradead.org;
	Thu, 18 Dec 2025 11:37:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWCJO-0008Er-G6; Thu, 18 Dec 2025 12:36:50 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWCJO-006GwY-0w;
	Thu, 18 Dec 2025 12:36:50 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWBw4-0000000AVre-1PSC;
	Thu, 18 Dec 2025 12:12:44 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 18 Dec 2025 11:37:47 +0100
Message-ID: <20251218111242.1527495-28-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251218111242.1527495-1-a.fatoum@pengutronix.de>
References: <20251218111242.1527495-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251218_033652_213587_105BC620 
X-CRM114-Status: GOOD (  21.23  )
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
Subject: [PATCH v1 27/54] efi: loader: add EFI load option handling
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Import the load option utility functions from U-Boot, so barebox can
pass along the kernel command line.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 efi/loader/Makefile         |   1 +
 efi/loader/loadopts.c       | 181 ++++++++++++++++++++++++++++++++++++
 include/efi/loader/option.h |  36 +++++++
 3 files changed, 218 insertions(+)
 create mode 100644 efi/loader/loadopts.c
 create mode 100644 include/efi/loader/option.h

diff --git a/efi/loader/Makefile b/efi/loader/Makefile
index bb6aa05c3748..44ba3a86e4d4 100644
--- a/efi/loader/Makefile
+++ b/efi/loader/Makefile
@@ -11,3 +11,4 @@ obj-y += runtime.o
 obj-y += setup.o
 obj-y += watchdog.o
 obj-y += pe.o
+obj-y += loadopts.o
diff --git a/efi/loader/loadopts.c b/efi/loader/loadopts.c
new file mode 100644
index 000000000000..388b8bf699c4
--- /dev/null
+++ b/efi/loader/loadopts.c
@@ -0,0 +1,181 @@
+// SPDX-License-Identifier: GPL-2.0+
+// SPDX-Comment: Origin-URL: https://github.com/u-boot/u-boot/blob/c38cb227d39f8ce9983df8051f31dcc8466f311e/lib/efi_loader/efi_load_options.c
+/*
+ *  EFI boot manager
+ *
+ *  Copyright (c) 2018 AKASHI Takahiro, et.al.
+ */
+
+#define pr_fmt(fmt) "efi-loader: loadopts: " fmt
+
+#include <charset.h>
+#include <malloc.h>
+#include <efi/loader.h>
+#include <efi/loader/object.h>
+#include <efi/loader/option.h>
+#include <efi/error.h>
+#include <efi/guid.h>
+#include <efi/devicepath.h>
+#include <asm/unaligned.h>
+
+/**
+ * efi_set_load_options() - set the load options of a loaded image
+ *
+ * @handle:		the image handle
+ * @load_options_size:	size of load options
+ * @load_options:	pointer to load options
+ * Return:		status code
+ */
+efi_status_t efi_set_load_options(efi_handle_t handle,
+				  efi_uintn_t load_options_size,
+				  void *load_options)
+{
+	struct efi_loaded_image *loaded_image_info;
+	struct efi_handler *handler;
+	efi_status_t ret;
+
+	ret = efi_search_protocol(handle, &efi_loaded_image_protocol_guid, &handler);
+	if (ret != EFI_SUCCESS)
+		return EFI_INVALID_PARAMETER;
+
+	loaded_image_info = handler->protocol_interface;
+	loaded_image_info->load_options = load_options;
+	loaded_image_info->load_options_size = load_options_size;
+
+	return EFI_SUCCESS;
+}
+
+/**
+ * efi_dp_check_length() - check length of a device path
+ *
+ * @dp:		pointer to device path
+ * @maxlen:	maximum length of the device path
+ * Return:
+ * * length of the device path if it is less or equal @maxlen
+ * * -1 if the device path is longer then @maxlen
+ * * -1 if a device path node has a length of less than 4
+ * * -EINVAL if maxlen exceeds SSIZE_MAX
+ */
+static ssize_t efi_dp_check_length(const struct efi_device_path *dp,
+				   const size_t maxlen)
+{
+	ssize_t ret = 0;
+	u16 len;
+
+	if (maxlen > SSIZE_MAX)
+		return -EINVAL;
+	for (;;) {
+		len = dp->length;
+		if (len < 4)
+			return -1;
+		ret += len;
+		if (ret > maxlen)
+			return -1;
+		if (dp->type == DEVICE_PATH_TYPE_END &&
+		    dp->sub_type == DEVICE_PATH_SUB_TYPE_END)
+			return ret;
+		dp = (const struct efi_device_path *)((const u8 *)dp + len);
+	}
+}
+
+/**
+ * efi_deserialize_load_option() - parse serialized data
+ *
+ * Parse serialized data describing a load option and transform it to the
+ * efi_load_option structure.
+ *
+ * @lo:		pointer to target
+ * @data:	serialized data
+ * @size:	size of the load option, on return size of the optional data
+ * Return:	status code
+ */
+efi_status_t efi_deserialize_load_option(struct efi_load_option_unpacked *lo, u8 *data,
+					 efi_uintn_t *size)
+{
+	efi_uintn_t len;
+
+	len = sizeof(u32);
+	if (*size < len + 2 * sizeof(u16))
+		return EFI_INVALID_PARAMETER;
+	lo->attributes = get_unaligned_le32(data);
+	data += len;
+	*size -= len;
+
+	len = sizeof(u16);
+	lo->file_path_length = get_unaligned_le16(data);
+	data += len;
+	*size -= len;
+
+	lo->label = (u16 *)data;
+	len = u16_strnlen(lo->label, *size / sizeof(u16) - 1);
+	if (lo->label[len])
+		return EFI_INVALID_PARAMETER;
+	len = (len + 1) * sizeof(u16);
+	if (*size < len)
+		return EFI_INVALID_PARAMETER;
+	data += len;
+	*size -= len;
+
+	len = lo->file_path_length;
+	if (*size < len)
+		return EFI_INVALID_PARAMETER;
+	lo->file_path = (struct efi_device_path *)data;
+	if (efi_dp_check_length(lo->file_path, len) < 0)
+		return EFI_INVALID_PARAMETER;
+	data += len;
+	*size -= len;
+
+	lo->optional_data = data;
+
+	return EFI_SUCCESS;
+}
+
+/**
+ * efi_serialize_load_option() - serialize load option
+ *
+ * Serialize efi_load_option structure into byte stream for BootXXXX.
+ *
+ * @data:	buffer for serialized data
+ * @lo:		load option
+ * Return:	size of allocated buffer
+ */
+size_t efi_serialize_load_option(struct efi_load_option_unpacked *lo, u8 **data)
+{
+	size_t label_len;
+	size_t size;
+	u8 *p;
+
+	label_len = u16_strsize(lo->label);
+
+	/* total size */
+	size = sizeof(lo->attributes);
+	size += sizeof(lo->file_path_length);
+	size += label_len;
+	size += lo->file_path_length;
+	if (lo->optional_data)
+		size += (utf8_utf16_strlen((const char *)lo->optional_data)
+					   + 1) * sizeof(u16);
+	p = malloc(size);
+	if (!p)
+		return 0;
+
+	/* copy data */
+	*data = p;
+	memcpy(p, &lo->attributes, sizeof(lo->attributes));
+	p += sizeof(lo->attributes);
+
+	memcpy(p, &lo->file_path_length, sizeof(lo->file_path_length));
+	p += sizeof(lo->file_path_length);
+
+	memcpy(p, lo->label, label_len);
+	p += label_len;
+
+	memcpy(p, lo->file_path, lo->file_path_length);
+	p += lo->file_path_length;
+
+	if (lo->optional_data) {
+		utf8_utf16_strcpy((u16 **)&p, (const char *)lo->optional_data);
+		p += sizeof(u16); /* size of trailing \0 */
+	}
+	return size;
+}
diff --git a/include/efi/loader/option.h b/include/efi/loader/option.h
new file mode 100644
index 000000000000..9efc62c20e0b
--- /dev/null
+++ b/include/efi/loader/option.h
@@ -0,0 +1,36 @@
+/* SPDX-License-Identifier: GPL-2.0+ */
+#ifndef __EFI_LOADER_OPTION_H__
+#define __EFI_LOADER_OPTION_H__
+
+#include <efi/types.h>
+
+/*
+ * See section 3.1.3 in the v2.7 UEFI spec for more details on
+ * the layout of EFI_LOAD_OPTION.  In short it is:
+ *
+ *    typedef struct _EFI_LOAD_OPTION {
+ *        UINT32 Attributes;
+ *        UINT16 FilePathListLength;
+ *        // CHAR16 Description[];   <-- variable length, NULL terminated
+ *        // EFI_DEVICE_PATH_PROTOCOL FilePathList[];
+ *						 <-- FilePathListLength bytes
+ *        // UINT8 OptionalData[];
+ *    } EFI_LOAD_OPTION;
+ */
+struct efi_load_option_unpacked {
+	u32 attributes;
+	u16 file_path_length;
+	u16 *label;
+	struct efi_device_path *file_path;
+	const u8 *optional_data;
+};
+
+efi_status_t efi_deserialize_load_option(struct efi_load_option_unpacked *lo,
+					 u8 *data, efi_uintn_t *size);
+size_t efi_serialize_load_option(struct efi_load_option_unpacked *lo,
+				 u8 **data);
+efi_status_t efi_set_load_options(efi_handle_t handle,
+				  efi_uintn_t load_options_size,
+				  void *load_options);
+
+#endif
-- 
2.47.3



