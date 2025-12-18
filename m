Delivery-date: Thu, 18 Dec 2025 12:40:35 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWCN0-00CoW1-3C
	for lore@lore.pengutronix.de;
	Thu, 18 Dec 2025 12:40:35 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWCMM-00029N-JG
	for lore@pengutronix.de; Thu, 18 Dec 2025 12:40:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pU3AEJeb14lCgUFhs0tSAspHyDaFXKMzsPUJoj7Q+H0=; b=UZ68c9mMjed+6Fy0Rx2Au2N4CS
	znaDnlg7Vt3O4BsNcW055zpghyAYoUCTkNVoKYjwif4yd9nG7kkfAfUN0spX2lPw26ASvypCE546x
	0atvGXu5Mr3uvsQ4jrUKAWh0c129ZXIl2dIUUCKsyjvCge4eaZwd7HDUgeDDl1S0oZOHz/wMEBluv
	Vs/si0/SwX1rHjXPKCYJnfONVN7NBOytgJftAt/SWbF28BOgc6Y1QLOo4MW2lQZiLWC6B61OkHaoE
	t59d0OgWVVz+A4NMRm/B1MGaT8UxGPXmB6/33jN9ZxUejSGM3k4iKuu7hY8RRbGU6/gD3H2tPAs2r
	ElFHcdPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWCK9-00000008LBK-2DSG;
	Thu, 18 Dec 2025 11:37:37 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWCJa-00000008KQL-1nYX
	for barebox@bombadil.infradead.org;
	Thu, 18 Dec 2025 11:37:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=pU3AEJeb14lCgUFhs0tSAspHyDaFXKMzsPUJoj7Q+H0=; b=kJV1u0mKGGc+05ulaRz6cwcNKO
	tDSWaGLQpakNFE+tV/WOvaz6At0+GZM8d+8U2PVV8I5r+FYOTO4PDis/zMvnU76YKKFp9WSU9NiL2
	ixw03j3Nvz4Sah71FmT+A0VM8pQ//IlG3KK7WNW/kiclJJKjgYPCmgW3jMjRUatOYO/UhX3xFz6kQ
	nA0if9V2JHKzxX+MdWgNuDb1E2ZXLQj150tODS985wKGeqBlEaGZgTjAHofzXTWHvGx6D/FiWdIRV
	gOYLNgpgaVkQ62naU2/gklzCVdWig/bDwh16nHMgCFjl45NK6JKW29g4mjviFINsf8tefKxIvpLSM
	e81x5PsQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWBS1-00000008fRg-3PcL
	for barebox@lists.infradead.org;
	Thu, 18 Dec 2025 10:41:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWCJO-0008Ee-DB; Thu, 18 Dec 2025 12:36:50 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWCJO-006GwU-0f;
	Thu, 18 Dec 2025 12:36:50 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWBw3-0000000AVre-3Ve8;
	Thu, 18 Dec 2025 12:12:43 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 18 Dec 2025 11:37:37 +0100
Message-ID: <20251218111242.1527495-18-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251218111242.1527495-1-a.fatoum@pengutronix.de>
References: <20251218111242.1527495-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251218_104142_989088_AA74C230 
X-CRM114-Status: GOOD (  31.38  )
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
Subject: [PATCH v1 17/54] efi: loader: add debug support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The EFI Debug Support Table provides an external debugger enough information
to determine loaded image information in a quiescent manner.

Add the necessary support to barebox, so the EFI boot time which will be
added in the follow-up commit can make use of it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 efi/loader/Kconfig         |   8 ++
 efi/loader/Makefile        |   1 +
 efi/loader/debug_support.c | 192 +++++++++++++++++++++++++++++++++++++
 include/efi/loader.h       |   2 +
 include/efi/loader/debug.h |  73 ++++++++++++++
 include/efi/services.h     |  16 ++++
 6 files changed, 292 insertions(+)
 create mode 100644 efi/loader/debug_support.c
 create mode 100644 include/efi/loader/debug.h

diff --git a/efi/loader/Kconfig b/efi/loader/Kconfig
index e7080d8d5093..43a80869cf8b 100644
--- a/efi/loader/Kconfig
+++ b/efi/loader/Kconfig
@@ -1,3 +1,11 @@
 # SPDX-License-Identifier: GPL-2.0-only
 # SPDX-Comment: Origin-URL: https://github.com/u-boot/u-boot/blob/a0fe8cedcbe8c76403a77e57eac228b8f778a3ae/lib/efi_loader/Kconfig
 
+config EFI_LOADER_DEBUG_SUPPORT
+	bool "EFI Debug Support"
+	default y
+	help
+	  Select this option if you want to setup the EFI Debug Support
+	  Table and the EFI_SYSTEM_TABLE_POINTER which is used by the debug
+	  agent or an external debugger to determine loaded image information
+	  in a quiescent manner.
diff --git a/efi/loader/Makefile b/efi/loader/Makefile
index c635b5b6a533..593d456f0d39 100644
--- a/efi/loader/Makefile
+++ b/efi/loader/Makefile
@@ -4,3 +4,4 @@ obj-y += memory.o pool_alloc.o
 obj-y += trace.o
 obj-y += table.o
 obj-y += devicepath.o
+obj-y += debug_support.o
diff --git a/efi/loader/debug_support.c b/efi/loader/debug_support.c
new file mode 100644
index 000000000000..8b5ee574bab6
--- /dev/null
+++ b/efi/loader/debug_support.c
@@ -0,0 +1,192 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+// SPDX-Comment: Origin-URL: https://github.com/u-boot/u-boot/blob/7e2506e3a247c787a9ad4b4db00bc8e6a348df90/lib/efi_loader/efi_debug_support.c
+/*
+ * EFI debug support
+ *
+ * Copyright (c) 2025 Ying-Chun Liu, Linaro Ltd. <paul.liu@linaro.org>
+ */
+
+#define pr_fmt(fmt) "efi-loader: debug: " fmt
+
+#include <linux/printk.h>
+#include <efi/loader.h>
+#include <efi/loader/debug.h>
+#include <efi/services.h>
+#include <efi/error.h>
+#include <linux/sizes.h>
+#include <crc.h>
+
+struct efi_system_table_pointer __efi_runtime_data *systab_pointer = NULL;
+
+struct efi_debug_image_info_table_header efi_m_debug_info_table_header = {
+	0,
+	0,
+	NULL
+};
+
+/* efi_m_max_table_entries is the maximum entries allocated for
+ * the efi_m_debug_info_table_header.efi_debug_image_info_table.
+ */
+static u32 efi_m_max_table_entries;
+
+#define EFI_DEBUG_TABLE_ENTRY_SIZE  (sizeof(union efi_debug_image_info))
+
+/**
+ * efi_initialize_system_table_pointer() - Initialize system table pointer
+ *
+ * Return:	status code
+ */
+efi_status_t efi_initialize_system_table_pointer(void)
+{
+	/* Allocate efi_system_table_pointer structure with 4MB alignment. */
+	systab_pointer = efi_alloc_aligned_pages(sizeof(struct efi_system_table_pointer),
+						 EFI_RUNTIME_SERVICES_DATA,
+						 SZ_4M, "debug");
+
+	if (!systab_pointer) {
+		pr_err("Installing EFI system table pointer failed\n");
+		return EFI_OUT_OF_RESOURCES;
+	}
+
+	systab_pointer->crc32 = 0;
+
+	systab_pointer->signature = EFI_SYSTEM_TABLE_SIGNATURE;
+	systab_pointer->efi_system_table_base = (uintptr_t)&systab;
+	systab_pointer->crc32 = crc32(0,
+				      (const unsigned char *)systab_pointer,
+				      sizeof(struct efi_system_table_pointer));
+
+	return EFI_SUCCESS;
+}
+
+/**
+ * efi_core_new_debug_image_info_entry() - Add a new efi_loaded_image structure to the
+ *                                         efi_debug_image_info table.
+ *
+ * @image_info_type: type of debug image information
+ * @loaded_image:    pointer to the loaded image protocol for the image
+ *                   being loaded
+ * @image_handle:    image handle for the image being loaded
+ *
+ * Re-Allocates the table if it's not large enough to accommodate another
+ * entry.
+ *
+ * Return: status code
+ **/
+efi_status_t efi_core_new_debug_image_info_entry(u32 image_info_type,
+						 struct efi_loaded_image *loaded_image,
+						 efi_handle_t image_handle)
+{
+	union efi_debug_image_info **table;
+	u32 index;
+	u32 table_size;
+	efi_status_t ret;
+
+	/* Set the flag indicating that we're in the process of updating
+	 * the table.
+	 */
+	efi_m_debug_info_table_header.update_status |=
+		EFI_DEBUG_IMAGE_INFO_UPDATE_IN_PROGRESS;
+
+	table = &efi_m_debug_info_table_header.efi_debug_image_info_table;
+
+	if (efi_m_debug_info_table_header.table_size >= efi_m_max_table_entries) {
+		/* table is full, re-allocate the buffer increasing the size
+		 * by 4 KiB.
+		 */
+		table_size = efi_m_max_table_entries * EFI_DEBUG_TABLE_ENTRY_SIZE;
+
+		ret = efi_realloc((void **)table, table_size + EFI_PAGE_SIZE,
+				  "debug_image");
+
+		if (ret != EFI_SUCCESS) {
+			efi_m_debug_info_table_header.update_status &=
+				~EFI_DEBUG_IMAGE_INFO_UPDATE_IN_PROGRESS;
+			return ret;
+		}
+
+		/* Enlarge the max table entries and set the first empty
+		 * entry index to be the original max table entries.
+		 */
+		efi_m_max_table_entries +=
+			EFI_PAGE_SIZE / EFI_DEBUG_TABLE_ENTRY_SIZE;
+	}
+
+	/* We always put the next entry at the end of the currently consumed
+	 * table (i.e. first free entry)
+	 */
+	index = efi_m_debug_info_table_header.table_size;
+
+	/* Allocate data for new entry. */
+	ret = efi_allocate_pool(EFI_BOOT_SERVICES_DATA,
+				sizeof(union efi_debug_image_info),
+				(void **)(&(*table)[index].normal_image),
+				"debug_image");
+	if (ret == EFI_SUCCESS && (*table)[index].normal_image) {
+		/* Update the entry. */
+		(*table)[index].normal_image->image_info_type = image_info_type;
+		(*table)[index].normal_image->loaded_image_protocol_instance =
+			loaded_image;
+		(*table)[index].normal_image->image_handle = image_handle;
+
+		/* Increase the number of EFI_DEBUG_IMAGE_INFO elements and
+		 * set the efi_m_debug_info_table_header in modified status.
+		 */
+		efi_m_debug_info_table_header.table_size++;
+		efi_m_debug_info_table_header.update_status |=
+			EFI_DEBUG_IMAGE_INFO_TABLE_MODIFIED;
+	} else {
+		pr_err("Adding new efi_debug_image_info failed\n");
+		return ret;
+	}
+
+	efi_m_debug_info_table_header.update_status &=
+		~EFI_DEBUG_IMAGE_INFO_UPDATE_IN_PROGRESS;
+
+	return EFI_SUCCESS;
+}
+
+/**
+ * efi_core_remove_debug_image_info_entry() - Remove an efi_debug_image_info entry.
+ *
+ * @image_handle:    image handle for the image being removed
+ **/
+void efi_core_remove_debug_image_info_entry(efi_handle_t image_handle)
+{
+	union efi_debug_image_info *table;
+	u32 index;
+
+	efi_m_debug_info_table_header.update_status |=
+		EFI_DEBUG_IMAGE_INFO_UPDATE_IN_PROGRESS;
+
+	table = efi_m_debug_info_table_header.efi_debug_image_info_table;
+
+	for (index = 0; index < efi_m_max_table_entries; index++) {
+		if (table[index].normal_image &&
+		    table[index].normal_image->image_handle == image_handle) {
+			/* Found a match. Free up the table entry.
+			 * Move the tail of the table one slot to the front.
+			 */
+			efi_free_pool(table[index].normal_image);
+
+			memmove(&table[index],
+				&table[index + 1],
+				(efi_m_debug_info_table_header.table_size -
+				 index - 1) * EFI_DEBUG_TABLE_ENTRY_SIZE);
+
+			/* Decrease the number of EFI_DEBUG_IMAGE_INFO
+			 * elements and set the efi_m_debug_info_table_header
+			 * in modified status.
+			 */
+			efi_m_debug_info_table_header.table_size--;
+			table[efi_m_debug_info_table_header.table_size].normal_image =
+				NULL;
+			efi_m_debug_info_table_header.update_status |=
+				EFI_DEBUG_IMAGE_INFO_TABLE_MODIFIED;
+			break;
+		}
+	}
+
+	efi_m_debug_info_table_header.update_status &=
+		~EFI_DEBUG_IMAGE_INFO_UPDATE_IN_PROGRESS;
+}
diff --git a/include/efi/loader.h b/include/efi/loader.h
index 47fdcf5c5114..f2ca32c578a2 100644
--- a/include/efi/loader.h
+++ b/include/efi/loader.h
@@ -19,6 +19,8 @@ struct efi_table_hdr;
 /* Key identifying current memory map */
 extern efi_uintn_t efi_memory_map_key;
 
+extern struct efi_system_table systab;
+
 /* Allocate boot service data pool memory */
 void *efi_alloc(size_t len, const char *name);
 /* Reallocate boot service data pool memory */
diff --git a/include/efi/loader/debug.h b/include/efi/loader/debug.h
new file mode 100644
index 000000000000..7b810c2218a7
--- /dev/null
+++ b/include/efi/loader/debug.h
@@ -0,0 +1,73 @@
+/* SPDX-License-Identifier: GPL-2.0+ */
+/* SPDX-SnippetCopyrightText: 2016 Alexander Graf */
+
+#ifndef _EFI_LOADER_DEBUG_H
+#define _EFI_LOADER_DEBUG_H
+
+#include <efi/types.h>
+
+struct efi_loaded_image;
+
+/* Called by bootefi to initialize debug */
+efi_status_t efi_initialize_system_table_pointer(void);
+/* Called by efi_load_image for register debug info */
+efi_status_t efi_core_new_debug_image_info_entry(u32 image_info_type,
+						 struct efi_loaded_image *loaded_image,
+						 efi_handle_t image_handle);
+void efi_core_remove_debug_image_info_entry(efi_handle_t image_handle);
+
+#define EFI_DEBUG_IMAGE_INFO_UPDATE_IN_PROGRESS 0x01
+#define EFI_DEBUG_IMAGE_INFO_TABLE_MODIFIED     0x02
+
+#define EFI_DEBUG_IMAGE_INFO_TYPE_NORMAL  0x01
+
+/**
+ * struct efi_debug_image_info_normal - Store Debug Information for normal
+ * image.
+ * @image_info_type: the type of image info.
+ * @loaded_image_protocol_instance: the pointer to struct efi_loaded_image.
+ * @image_handle: the EFI handle of the image.
+ *
+ * This struct is created by efi_load_image() and store the information
+ * for debugging an normal image.
+ */
+struct efi_debug_image_info_normal {
+	u32 image_info_type;
+	struct efi_loaded_image *loaded_image_protocol_instance;
+	efi_handle_t image_handle;
+};
+
+/**
+ * union efi_debug_image_info - The union to store a pointer for EFI
+ * DEBUG IMAGE INFO.
+ * @image_info_type: the type of the image_info if it is not a normal image.
+ * @normal_image: The pointer to a normal image.
+ *
+ * This union is for a pointer that can point to the struct of normal_image.
+ * Or it points to an image_info_type.
+ */
+union efi_debug_image_info {
+	u32 *image_info_type;
+	struct efi_debug_image_info_normal *normal_image;
+};
+
+/**
+ * struct efi_debug_image_info_table_header - store the array of
+ * struct efi_debug_image_info.
+ * @update_status: Status to notify this struct is ready to use or not.
+ * @table_size: The number of elements of efi_debug_image_info_table.
+ * @efi_debug_image_info_table: The array of efi_debug_image_info.
+ *
+ * This struct stores the array of efi_debug_image_info. The
+ * number of elements is table_size.
+ */
+struct efi_debug_image_info_table_header {
+	volatile u32 update_status;
+	u32 table_size;
+	union efi_debug_image_info *efi_debug_image_info_table;
+};
+
+/* structure for EFI_DEBUG_SUPPORT_PROTOCOL */
+extern struct efi_debug_image_info_table_header efi_m_debug_info_table_header;
+
+#endif
diff --git a/include/efi/services.h b/include/efi/services.h
index c0dbac8743cc..f6fd268b2923 100644
--- a/include/efi/services.h
+++ b/include/efi/services.h
@@ -259,6 +259,22 @@ struct efi_loaded_image {
 	efi_status_t (EFIAPI *unload)(efi_handle_t image_handle);
 };
 
+/**
+ * struct efi_system_table_pointer - struct to store the pointer of system
+ * table.
+ * @signature: The signature of this struct.
+ * @efi_system_table_base: The physical address of System Table.
+ * @crc32: CRC32 checksum
+ *
+ * This struct is design for hardware debugger to search through memory to
+ * get the address of EFI System Table.
+ */
+struct efi_system_table_pointer {
+	u64 signature;
+	efi_physical_addr_t efi_system_table_base;
+	u32 crc32;
+};
+
 enum efi_locate_search_type;
 
 int __efi_locate_handle(struct efi_boot_services *bs,
-- 
2.47.3



