Delivery-date: Thu, 18 Dec 2025 12:40:50 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWCNG-00CoZB-2s
	for lore@lore.pengutronix.de;
	Thu, 18 Dec 2025 12:40:50 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWCMc-0002JZ-Hz
	for lore@pengutronix.de; Thu, 18 Dec 2025 12:40:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=39q4C5qKi2Qg+NTFT9sAX14pvTbf0eEe99S2DjW5q3U=; b=zKJ46X0ccgVyPJSQFt/nyyrkQQ
	IEnmIhOzWf2TJy8LWfiBwQ4+br8S2xaAZQkXPFMuA3WzTQnugxaN1wDuQQT7zlQrMAs+zaMVBSUGl
	qsM2d1EOMlBZ5YzR9iBKctv0LALK8X7XB5YnjbR4B/fOsaeehWyWAXTpAuHCqytIStHZNeOVC8aYm
	jHNH62x82/xCWqgOkI8ieIzCta7WCrlBNtYtTGh58IS4Ow9VEqDF/QNrJS7Ez6LP9cwR51dpweIr5
	k/G4CIeD05msClfZv6q94i3WAw5heQq+KngDhwyzHqeEswNIz4Px+LNdz2Y/GLBWGxoaZZ4mRW2oR
	lUdajL9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWCKC-00000008LHB-40yd;
	Thu, 18 Dec 2025 11:37:41 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWCJZ-00000008KQ6-2Man
	for barebox@bombadil.infradead.org;
	Thu, 18 Dec 2025 11:37:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=39q4C5qKi2Qg+NTFT9sAX14pvTbf0eEe99S2DjW5q3U=; b=cibeuAdww7nEYmVbb34965Kh/B
	CmqxgtvBuGN0Kr4lFDa/xXIejqJTxL+IeLJlfit7nDsMAcPm/TAB6/gtw+8EroAg6sZO308j85BpG
	SL96rignIqLGVapbzkEetoC5ZoVGQzjIb0vhRdD6W2gs1JYXx1593IbqGoLqjQZxc7vVdvRB32xAL
	cx/FygHWlrcHzgDpQkLnBP4tEmB+iBkfS+0rpONvomBzGK6StCdxYmRe783VjxvzEEV4EsFRMMAL9
	QctgHb2RG49fRWMEZOXxrwxRqWqhYrGuPLH/fHeZPki2mZ1j1Evl9rzNefZ3tP/EXOAHAeOeGwLLa
	eyR8cK4w==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWBRy-00000008fRS-1Mco
	for barebox@lists.infradead.org;
	Thu, 18 Dec 2025 10:41:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWCJN-0008C4-CH; Thu, 18 Dec 2025 12:36:49 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWCJN-006Gvi-0a;
	Thu, 18 Dec 2025 12:36:49 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWBw4-0000000AVre-22mj;
	Thu, 18 Dec 2025 12:12:44 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 18 Dec 2025 11:37:50 +0100
Message-ID: <20251218111242.1527495-31-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251218111242.1527495-1-a.fatoum@pengutronix.de>
References: <20251218111242.1527495-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251218_104141_525952_EF7FF404 
X-CRM114-Status: GOOD (  24.03  )
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
Subject: [PATCH v1 30/54] efi: loader: protocol: add HII support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Port from U-Boot its bare minium HII support, so the UEFI shell can be
run.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 efi/loader/Kconfig                |    2 +
 efi/loader/protocols/Kconfig      |   16 +
 efi/loader/protocols/Makefile     |    1 +
 efi/loader/protocols/hii.c        | 1100 +++++++++++++++++++++++++++++
 efi/loader/protocols/hii_config.c |  157 ++++
 include/efi/protocol/hii.h        |  428 +++++++++++
 6 files changed, 1704 insertions(+)
 create mode 100644 efi/loader/protocols/Kconfig
 create mode 100644 efi/loader/protocols/hii.c
 create mode 100644 efi/loader/protocols/hii_config.c
 create mode 100644 include/efi/protocol/hii.h

diff --git a/efi/loader/Kconfig b/efi/loader/Kconfig
index eaa5087b9ab8..d54783f9a084 100644
--- a/efi/loader/Kconfig
+++ b/efi/loader/Kconfig
@@ -29,3 +29,5 @@ config EFI_LOADER_SET_TIME
 	  can be used by an EFI application to adjust the real time clock.
 
 endmenu
+
+source "efi/loader/protocols/Kconfig"
diff --git a/efi/loader/protocols/Kconfig b/efi/loader/protocols/Kconfig
new file mode 100644
index 000000000000..4ed7499da4a2
--- /dev/null
+++ b/efi/loader/protocols/Kconfig
@@ -0,0 +1,16 @@
+# SPDX-License-Identifier: GPL-2.0
+
+menu "UEFI protocol support"
+
+config EFI_LOADER_HII
+	bool "HII protocols"
+	default y
+	help
+	  The Human Interface Infrastructure is a complicated framework that
+	  allows UEFI applications to draw fancy menus and hook strings using
+	  a translation framework.
+
+	  barebox implements enough of its features to be able to run the UEFI
+	  Shell, but not more than that.
+
+endmenu
diff --git a/efi/loader/protocols/Makefile b/efi/loader/protocols/Makefile
index 472dd54116c5..f4a9c0650fd9 100644
--- a/efi/loader/protocols/Makefile
+++ b/efi/loader/protocols/Makefile
@@ -4,3 +4,4 @@ obj-$(CONFIG_FS) += file.o
 obj-$(CONFIG_DISK) += disk.o
 obj-$(CONFIG_VIDEO) += gop.o
 obj-$(CONFIG_CONSOLE_FULL) += console.o
+obj-$(CONFIG_EFI_LOADER_HII) += hii.o hii_config.o
diff --git a/efi/loader/protocols/hii.c b/efi/loader/protocols/hii.c
new file mode 100644
index 000000000000..f35489eba283
--- /dev/null
+++ b/efi/loader/protocols/hii.c
@@ -0,0 +1,1100 @@
+// SPDX-License-Identifier:     GPL-2.0+
+/*
+ *  EFI Human Interface Infrastructure ... database and packages
+ *
+ *  Copyright (c) 2017 Leif Lindholm
+ *  Copyright (c) 2018 AKASHI Takahiro, Linaro Limited
+ */
+
+#include <charset.h>
+#include <linux/printk.h>
+#include <efi/loader.h>
+#include <efi/guid.h>
+#include <efi/error.h>
+#include <efi/guid.h>
+#include <efi/loader/object.h>
+#include <efi/protocol/hii.h>
+#include <efi/loader/trace.h>
+#include <malloc.h>
+#include <wchar.h>
+#include <asm/unaligned.h>
+#include <init.h>
+
+static LIST_HEAD(efi_package_lists);
+static LIST_HEAD(efi_keyboard_layout_list);
+
+struct efi_hii_packagelist {
+	struct list_head link;
+	// TODO should there be an associated efi_object?
+	efi_handle_t driver_handle;
+	u32 max_string_id;
+	struct list_head string_tables;     /* list of efi_string_table */
+	struct list_head guid_list;
+	struct list_head keyboard_packages;
+
+	/* we could also track fonts, images, etc */
+};
+
+static inline struct efi_hii_string_block *
+efi_hii_sibt_string_ucs2_block_next(struct efi_hii_sibt_string_ucs2_block *blk)
+{
+	return ((void *)blk) + sizeof(*blk) +
+		(wcslen(blk->string_text) + 1) * 2;
+}
+
+static int efi_hii_packagelist_exists(efi_hii_handle_t package_list)
+{
+	struct efi_hii_packagelist *hii;
+	int found = 0;
+
+	list_for_each_entry(hii, &efi_package_lists, link) {
+		if (hii == package_list) {
+			found = 1;
+			break;
+		}
+	}
+
+	return found;
+}
+
+static u32 efi_hii_package_type(struct efi_hii_package_header *header)
+{
+	u32 fields;
+
+	fields = get_unaligned_le32(&header->fields);
+
+	return (fields >> __EFI_HII_PACKAGE_TYPE_SHIFT)
+		& __EFI_HII_PACKAGE_TYPE_MASK;
+}
+
+static u32 efi_hii_package_len(struct efi_hii_package_header *header)
+{
+	u32 fields;
+
+	fields = get_unaligned_le32(&header->fields);
+
+	return (fields >> __EFI_HII_PACKAGE_LEN_SHIFT)
+		& __EFI_HII_PACKAGE_LEN_MASK;
+}
+
+struct efi_string_info {
+	efi_string_t string;
+	/* we could also track font info, etc */
+};
+
+struct efi_string_table {
+	struct list_head link;
+	efi_string_id_t language_name;
+	char *language;
+	u32 nstrings;
+	/*
+	 * NOTE:
+	 *  string id starts at 1 so value is stbl->strings[id-1],
+	 *  and strings[] is a array of stbl->nstrings elements
+	 */
+	struct efi_string_info *strings;
+};
+
+struct efi_guid_data {
+	struct list_head link;
+	struct efi_hii_guid_package package;
+};
+
+struct efi_keyboard_layout_data {
+	struct list_head link;		/* in package */
+	struct list_head link_sys;	/* in global list */
+	struct efi_hii_keyboard_layout keyboard_layout;
+};
+
+struct efi_keyboard_package_data {
+	struct list_head link;		/* in package_list */
+	struct list_head keyboard_layout_list;
+};
+
+static void free_strings_table(struct efi_string_table *stbl)
+{
+	int i;
+
+	for (i = 0; i < stbl->nstrings; i++)
+		free(stbl->strings[i].string);
+	free(stbl->strings);
+	free(stbl->language);
+	free(stbl);
+}
+
+static void remove_strings_package(struct efi_hii_packagelist *hii)
+{
+	while (!list_empty(&hii->string_tables)) {
+		struct efi_string_table *stbl;
+
+		stbl = list_first_entry(&hii->string_tables,
+					struct efi_string_table, link);
+		list_del(&stbl->link);
+		free_strings_table(stbl);
+	}
+}
+
+static efi_status_t
+add_strings_package(struct efi_hii_packagelist *hii,
+		    struct efi_hii_strings_package *strings_package)
+{
+	struct efi_hii_string_block *block;
+	void *end;
+	u32 nstrings = 0, idx = 0;
+	struct efi_string_table *stbl = NULL;
+	efi_status_t ret;
+
+	EFI_PRINT("header_size: %08x\n",
+		  get_unaligned_le32(&strings_package->header_size));
+	EFI_PRINT("string_info_offset: %08x\n",
+		  get_unaligned_le32(&strings_package->string_info_offset));
+	EFI_PRINT("language_name: %u\n",
+		  get_unaligned_le16(&strings_package->language_name));
+	EFI_PRINT("language: %s\n", strings_package->language);
+
+	/* count # of string entries: */
+	end = ((void *)strings_package)
+			+ efi_hii_package_len(&strings_package->header);
+	block = ((void *)strings_package)
+		+ get_unaligned_le32(&strings_package->string_info_offset);
+
+	while ((void *)block < end) {
+		switch (block->block_type) {
+		case EFI_HII_SIBT_STRING_UCS2: {
+			struct efi_hii_sibt_string_ucs2_block *ucs2;
+
+			ucs2 = (void *)block;
+			nstrings++;
+			block = efi_hii_sibt_string_ucs2_block_next(ucs2);
+			break;
+		}
+		case EFI_HII_SIBT_END:
+			block = end;
+			break;
+		default:
+			EFI_PRINT("unknown HII string block type: %02x\n",
+				  block->block_type);
+			return EFI_INVALID_PARAMETER;
+		}
+	}
+
+	stbl = calloc(sizeof(*stbl), 1);
+	if (!stbl) {
+		ret = EFI_OUT_OF_RESOURCES;
+		goto error;
+	}
+	stbl->strings = calloc(sizeof(stbl->strings[0]), nstrings);
+	if (!stbl->strings) {
+		ret = EFI_OUT_OF_RESOURCES;
+		goto error;
+	}
+	stbl->language_name =
+			get_unaligned_le16(&strings_package->language_name);
+	stbl->language = strdup((char *)strings_package->language);
+	if (!stbl->language) {
+		ret = EFI_OUT_OF_RESOURCES;
+		goto error;
+	}
+	stbl->nstrings = nstrings;
+
+	/* and now parse string entries and populate efi_string_table */
+	block = ((void *)strings_package)
+		+ get_unaligned_le32(&strings_package->string_info_offset);
+
+	while ((void *)block < end) {
+		switch (block->block_type) {
+		case EFI_HII_SIBT_STRING_UCS2: {
+			struct efi_hii_sibt_string_ucs2_block *ucs2;
+
+			ucs2 = (void *)block;
+			EFI_PRINT("%4u: \"%ls\"\n", idx + 1, ucs2->string_text);
+			stbl->strings[idx].string =
+				u16_strdup(ucs2->string_text);
+			if (!stbl->strings[idx].string) {
+				ret = EFI_OUT_OF_RESOURCES;
+				goto error;
+			}
+			idx++;
+			/* FIXME: accessing u16 * here */
+			block = efi_hii_sibt_string_ucs2_block_next(ucs2);
+			break;
+		}
+		case EFI_HII_SIBT_END:
+			goto out;
+		default:
+			EFI_PRINT("unknown HII string block type: %02x\n",
+				  block->block_type);
+			ret = EFI_INVALID_PARAMETER;
+			goto error;
+		}
+	}
+
+out:
+	list_add(&stbl->link, &hii->string_tables);
+	if (hii->max_string_id < nstrings)
+		hii->max_string_id = nstrings;
+
+	return EFI_SUCCESS;
+
+error:
+	if (stbl) {
+		free(stbl->language);
+		while (idx > 0)
+			free(stbl->strings[--idx].string);
+		free(stbl->strings);
+	}
+	free(stbl);
+
+	return ret;
+}
+
+static void remove_guid_package(struct efi_hii_packagelist *hii)
+{
+	struct efi_guid_data *data;
+
+	while (!list_empty(&hii->guid_list)) {
+		data = list_first_entry(&hii->guid_list,
+					struct efi_guid_data, link);
+		list_del(&data->link);
+		free(data);
+	}
+}
+
+static efi_status_t
+add_guid_package(struct efi_hii_packagelist *hii,
+		 struct efi_hii_guid_package *package)
+{
+	struct efi_guid_data *data;
+
+	data = calloc(sizeof(*data), 1);
+	if (!data)
+		return EFI_OUT_OF_RESOURCES;
+
+	/* TODO: we don't know any about data field */
+	memcpy(&data->package, package, sizeof(*package));
+	list_add_tail(&data->link, &hii->guid_list);
+
+	return EFI_SUCCESS;
+}
+
+static void free_keyboard_layouts(struct efi_keyboard_package_data *package)
+{
+	struct efi_keyboard_layout_data *layout_data;
+
+	while (!list_empty(&package->keyboard_layout_list)) {
+		layout_data = list_first_entry(&package->keyboard_layout_list,
+					       struct efi_keyboard_layout_data,
+					       link);
+		list_del(&layout_data->link);
+		list_del(&layout_data->link_sys);
+		free(layout_data);
+	}
+}
+
+static void remove_keyboard_package(struct efi_hii_packagelist *hii)
+{
+	struct efi_keyboard_package_data *package;
+
+	while (!list_empty(&hii->keyboard_packages)) {
+		package = list_first_entry(&hii->keyboard_packages,
+					   struct efi_keyboard_package_data,
+					   link);
+		free_keyboard_layouts(package);
+		list_del(&package->link);
+		free(package);
+	}
+}
+
+static efi_status_t
+add_keyboard_package(struct efi_hii_packagelist *hii,
+		     struct efi_hii_keyboard_package *keyboard_package)
+{
+	struct efi_keyboard_package_data *package_data;
+	struct efi_hii_keyboard_layout *layout;
+	struct efi_keyboard_layout_data *layout_data;
+	u16 layout_count, layout_length;
+	int i;
+
+	package_data = malloc(sizeof(*package_data));
+	if (!package_data)
+		return EFI_OUT_OF_RESOURCES;
+	INIT_LIST_HEAD(&package_data->link);
+	INIT_LIST_HEAD(&package_data->keyboard_layout_list);
+
+	layout = &keyboard_package->layout[0];
+	layout_count = get_unaligned_le16(&keyboard_package->layout_count);
+	for (i = 0; i < layout_count; i++) {
+		layout_length = get_unaligned_le16(&layout->layout_length);
+		layout_data = malloc(sizeof(*layout_data) + layout_length);
+		if (!layout_data)
+			goto out;
+
+		memcpy(&layout_data->keyboard_layout, layout, layout_length);
+		list_add_tail(&layout_data->link,
+			      &package_data->keyboard_layout_list);
+		list_add_tail(&layout_data->link_sys,
+			      &efi_keyboard_layout_list);
+
+		layout += layout_length;
+	}
+
+	list_add_tail(&package_data->link, &hii->keyboard_packages);
+
+	return EFI_SUCCESS;
+
+out:
+	free_keyboard_layouts(package_data);
+	free(package_data);
+
+	return EFI_OUT_OF_RESOURCES;
+}
+
+static struct efi_hii_packagelist *new_packagelist(void)
+{
+	struct efi_hii_packagelist *hii;
+
+	hii = malloc(sizeof(*hii));
+	if (!hii)
+		return NULL;
+
+	list_add_tail(&hii->link, &efi_package_lists);
+	hii->max_string_id = 0;
+	INIT_LIST_HEAD(&hii->string_tables);
+	INIT_LIST_HEAD(&hii->guid_list);
+	INIT_LIST_HEAD(&hii->keyboard_packages);
+
+	return hii;
+}
+
+static void free_packagelist(struct efi_hii_packagelist *hii)
+{
+	remove_strings_package(hii);
+	remove_guid_package(hii);
+	remove_keyboard_package(hii);
+
+	list_del(&hii->link);
+	free(hii);
+}
+
+static efi_status_t
+add_packages(struct efi_hii_packagelist *hii,
+	     const struct efi_hii_package_list_header *package_list)
+{
+	struct efi_hii_package_header *package;
+	void *end;
+	efi_status_t ret = EFI_SUCCESS;
+
+	end = ((void *)package_list)
+		+ get_unaligned_le32(&package_list->package_length);
+
+	EFI_PRINT("package_list: %pUs (%u)\n", &package_list->package_list_guid,
+		  get_unaligned_le32(&package_list->package_length));
+
+	package = ((void *)package_list) + sizeof(*package_list);
+	while ((void *)package < end) {
+		EFI_PRINT("package=%p, package type=%x, length=%u\n", package,
+			  efi_hii_package_type(package),
+			  efi_hii_package_len(package));
+
+		switch (efi_hii_package_type(package)) {
+		case EFI_HII_PACKAGE_TYPE_GUID:
+			ret = add_guid_package(hii,
+				(struct efi_hii_guid_package *)package);
+			break;
+		case EFI_HII_PACKAGE_FORMS:
+			EFI_PRINT("Form package not supported\n");
+			ret = EFI_INVALID_PARAMETER;
+			break;
+		case EFI_HII_PACKAGE_STRINGS:
+			ret = add_strings_package(hii,
+				(struct efi_hii_strings_package *)package);
+			break;
+		case EFI_HII_PACKAGE_FONTS:
+			EFI_PRINT("Font package not supported\n");
+			ret = EFI_INVALID_PARAMETER;
+			break;
+		case EFI_HII_PACKAGE_IMAGES:
+			EFI_PRINT("Image package not supported\n");
+			ret = EFI_INVALID_PARAMETER;
+			break;
+		case EFI_HII_PACKAGE_SIMPLE_FONTS:
+			EFI_PRINT("Simple font package not supported\n");
+			ret = EFI_INVALID_PARAMETER;
+			break;
+		case EFI_HII_PACKAGE_DEVICE_PATH:
+			EFI_PRINT("Device path package not supported\n");
+			ret = EFI_INVALID_PARAMETER;
+			break;
+		case EFI_HII_PACKAGE_KEYBOARD_LAYOUT:
+			ret = add_keyboard_package(hii,
+				(struct efi_hii_keyboard_package *)package);
+			break;
+		case EFI_HII_PACKAGE_ANIMATIONS:
+			EFI_PRINT("Animation package not supported\n");
+			ret = EFI_INVALID_PARAMETER;
+			break;
+		case EFI_HII_PACKAGE_END:
+			goto out;
+		case EFI_HII_PACKAGE_TYPE_SYSTEM_BEGIN:
+		case EFI_HII_PACKAGE_TYPE_SYSTEM_END:
+		default:
+			break;
+		}
+
+		if (ret != EFI_SUCCESS)
+			return ret;
+
+		package = (void *)package + efi_hii_package_len(package);
+	}
+out:
+	// TODO in theory there is some notifications that should be sent..
+	return EFI_SUCCESS;
+}
+
+/*
+ * EFI_HII_DATABASE_PROTOCOL
+ */
+
+static efi_status_t EFIAPI
+new_package_list(const struct efi_hii_database_protocol *this,
+		 const struct efi_hii_package_list_header *package_list,
+		 const efi_handle_t driver_handle,
+		 efi_hii_handle_t *handle)
+{
+	struct efi_hii_packagelist *hii;
+	efi_status_t ret;
+
+	EFI_ENTRY("%p, %p, %p, %p", this, package_list, driver_handle, handle);
+
+	if (!package_list || !handle)
+		return EFI_EXIT(EFI_INVALID_PARAMETER);
+
+	hii = new_packagelist();
+	if (!hii)
+		return EFI_EXIT(EFI_OUT_OF_RESOURCES);
+
+	ret = add_packages(hii, package_list);
+	if (ret != EFI_SUCCESS) {
+		free_packagelist(hii);
+		return EFI_EXIT(ret);
+	}
+
+	hii->driver_handle = driver_handle;
+	*handle = hii;
+
+	return EFI_EXIT(EFI_SUCCESS);
+}
+
+static efi_status_t EFIAPI
+remove_package_list(const struct efi_hii_database_protocol *this,
+		    efi_hii_handle_t handle)
+{
+	struct efi_hii_packagelist *hii = handle;
+
+	EFI_ENTRY("%p, %p", this, handle);
+
+	if (!handle || !efi_hii_packagelist_exists(handle))
+		return EFI_EXIT(EFI_NOT_FOUND);
+
+	free_packagelist(hii);
+
+	return EFI_EXIT(EFI_SUCCESS);
+}
+
+static efi_status_t EFIAPI
+update_package_list(const struct efi_hii_database_protocol *this,
+		    efi_hii_handle_t handle,
+		    const struct efi_hii_package_list_header *package_list)
+{
+	struct efi_hii_packagelist *hii = handle;
+	struct efi_hii_package_header *package;
+	void *end;
+	efi_status_t ret = EFI_SUCCESS;
+
+	EFI_ENTRY("%p, %p, %p", this, handle, package_list);
+
+	if (!handle || !efi_hii_packagelist_exists(handle))
+		return EFI_EXIT(EFI_NOT_FOUND);
+
+	if (!package_list)
+		return EFI_EXIT(EFI_INVALID_PARAMETER);
+
+	EFI_PRINT("package_list: %pUs (%u)\n", &package_list->package_list_guid,
+		  get_unaligned_le32(&package_list->package_length));
+
+	package = ((void *)package_list) + sizeof(*package_list);
+	end = ((void *)package_list)
+		+ get_unaligned_le32(&package_list->package_length);
+
+	while ((void *)package < end) {
+		EFI_PRINT("package=%p, package type=%x, length=%u\n", package,
+			  efi_hii_package_type(package),
+			  efi_hii_package_len(package));
+
+		switch (efi_hii_package_type(package)) {
+		case EFI_HII_PACKAGE_TYPE_GUID:
+			remove_guid_package(hii);
+			break;
+		case EFI_HII_PACKAGE_FORMS:
+			EFI_PRINT("Form package not supported\n");
+			ret = EFI_INVALID_PARAMETER;
+			break;
+		case EFI_HII_PACKAGE_STRINGS:
+			remove_strings_package(hii);
+			break;
+		case EFI_HII_PACKAGE_FONTS:
+			EFI_PRINT("Font package not supported\n");
+			ret = EFI_INVALID_PARAMETER;
+			break;
+		case EFI_HII_PACKAGE_IMAGES:
+			EFI_PRINT("Image package not supported\n");
+			ret = EFI_INVALID_PARAMETER;
+			break;
+		case EFI_HII_PACKAGE_SIMPLE_FONTS:
+			EFI_PRINT("Simple font package not supported\n");
+			ret = EFI_INVALID_PARAMETER;
+			break;
+		case EFI_HII_PACKAGE_DEVICE_PATH:
+			EFI_PRINT("Device path package not supported\n");
+			ret = EFI_INVALID_PARAMETER;
+			break;
+		case EFI_HII_PACKAGE_KEYBOARD_LAYOUT:
+			remove_keyboard_package(hii);
+			break;
+		case EFI_HII_PACKAGE_ANIMATIONS:
+			EFI_PRINT("Animation package not supported\n");
+			ret = EFI_INVALID_PARAMETER;
+			break;
+		case EFI_HII_PACKAGE_END:
+			goto out;
+		case EFI_HII_PACKAGE_TYPE_SYSTEM_BEGIN:
+		case EFI_HII_PACKAGE_TYPE_SYSTEM_END:
+		default:
+			break;
+		}
+
+		/* TODO: already removed some packages */
+		if (ret != EFI_SUCCESS)
+			return EFI_EXIT(ret);
+
+		package = ((void *)package)
+			  + efi_hii_package_len(package);
+	}
+out:
+	ret = add_packages(hii, package_list);
+
+	return EFI_EXIT(ret);
+}
+
+static efi_status_t EFIAPI
+list_package_lists(const struct efi_hii_database_protocol *this,
+		   u8 package_type,
+		   const efi_guid_t *package_guid,
+		   efi_uintn_t *handle_buffer_length,
+		   efi_hii_handle_t *handle)
+{
+	struct efi_hii_packagelist *hii =
+				(struct efi_hii_packagelist *)handle;
+	int package_cnt, package_max;
+	efi_status_t ret = EFI_NOT_FOUND;
+
+	EFI_ENTRY("%p, %u, %pUs, %p, %p", this, package_type, package_guid,
+		  handle_buffer_length, handle);
+
+	if (!handle_buffer_length ||
+	    (*handle_buffer_length && !handle)) {
+		ret = EFI_INVALID_PARAMETER;
+		goto out;
+	}
+
+	if ((package_type != EFI_HII_PACKAGE_TYPE_GUID && package_guid) ||
+	    (package_type == EFI_HII_PACKAGE_TYPE_GUID && !package_guid)) {
+		ret = EFI_INVALID_PARAMETER;
+		goto out;
+	}
+
+	EFI_PRINT("package type=%x, guid=%pUs, length=%zu\n", (int)package_type,
+		  package_guid, *handle_buffer_length);
+
+	package_cnt = 0;
+	package_max = *handle_buffer_length / sizeof(*handle);
+	list_for_each_entry(hii, &efi_package_lists, link) {
+		switch (package_type) {
+		case EFI_HII_PACKAGE_TYPE_ALL:
+			break;
+		case EFI_HII_PACKAGE_TYPE_GUID:
+			if (!list_empty(&hii->guid_list))
+				break;
+			continue;
+		case EFI_HII_PACKAGE_STRINGS:
+			if (!list_empty(&hii->string_tables))
+				break;
+			continue;
+		case EFI_HII_PACKAGE_KEYBOARD_LAYOUT:
+			if (!list_empty(&hii->keyboard_packages))
+				break;
+			continue;
+		default:
+			continue;
+		}
+
+		package_cnt++;
+		if (package_cnt <= package_max) {
+			*handle++ = hii;
+			ret = EFI_SUCCESS;
+		} else {
+			ret = EFI_BUFFER_TOO_SMALL;
+		}
+	}
+	*handle_buffer_length = package_cnt * sizeof(*handle);
+out:
+	return EFI_EXIT(ret);
+}
+
+static efi_status_t EFIAPI
+export_package_lists(const struct efi_hii_database_protocol *this,
+		     efi_hii_handle_t handle,
+		     efi_uintn_t *buffer_size,
+		     struct efi_hii_package_list_header *buffer)
+{
+	EFI_ENTRY("%p, %p, %p, %p", this, handle, buffer_size, buffer);
+
+	if (!buffer_size || !buffer)
+		return EFI_EXIT(EFI_INVALID_PARAMETER);
+
+	return EFI_EXIT(EFI_NOT_FOUND);
+}
+
+static efi_status_t EFIAPI
+register_package_notify(const struct efi_hii_database_protocol *this,
+			u8 package_type,
+			const efi_guid_t *package_guid,
+			const void *package_notify_fn,
+			efi_uintn_t notify_type,
+			efi_handle_t *notify_handle)
+{
+	EFI_ENTRY("%p, %u, %pUs, %p, %zu, %p", this, package_type,
+		  package_guid, package_notify_fn, notify_type,
+		  notify_handle);
+
+	if (!notify_handle)
+		return EFI_EXIT(EFI_INVALID_PARAMETER);
+
+	if ((package_type != EFI_HII_PACKAGE_TYPE_GUID && package_guid) ||
+	    (package_type == EFI_HII_PACKAGE_TYPE_GUID && !package_guid))
+		return EFI_EXIT(EFI_INVALID_PARAMETER);
+
+	return EFI_EXIT(EFI_OUT_OF_RESOURCES);
+}
+
+static efi_status_t EFIAPI
+unregister_package_notify(const struct efi_hii_database_protocol *this,
+			  efi_handle_t notification_handle)
+{
+	EFI_ENTRY("%p, %p", this, notification_handle);
+
+	return EFI_EXIT(EFI_NOT_FOUND);
+}
+
+static efi_status_t EFIAPI
+find_keyboard_layouts(const struct efi_hii_database_protocol *this,
+		      u16 *key_guid_buffer_length,
+		      efi_guid_t *key_guid_buffer)
+{
+	struct efi_keyboard_layout_data *layout_data;
+	int package_cnt, package_max;
+	efi_status_t ret = EFI_SUCCESS;
+
+	EFI_ENTRY("%p, %p, %p", this, key_guid_buffer_length, key_guid_buffer);
+
+	if (!key_guid_buffer_length ||
+	    (*key_guid_buffer_length && !key_guid_buffer))
+		return EFI_EXIT(EFI_INVALID_PARAMETER);
+
+	package_cnt = 0;
+	package_max = *key_guid_buffer_length / sizeof(*key_guid_buffer);
+	list_for_each_entry(layout_data, &efi_keyboard_layout_list, link_sys) {
+		package_cnt++;
+		if (package_cnt <= package_max)
+			memcpy(key_guid_buffer++,
+			       &layout_data->keyboard_layout.guid,
+			       sizeof(*key_guid_buffer));
+		else
+			ret = EFI_BUFFER_TOO_SMALL;
+	}
+	*key_guid_buffer_length = package_cnt * sizeof(*key_guid_buffer);
+
+	return EFI_EXIT(ret);
+}
+
+static efi_status_t EFIAPI
+get_keyboard_layout(const struct efi_hii_database_protocol *this,
+		    efi_guid_t *key_guid,
+		    u16 *keyboard_layout_length,
+		    struct efi_hii_keyboard_layout *keyboard_layout)
+{
+	struct efi_keyboard_layout_data *layout_data;
+	u16 layout_length;
+
+	EFI_ENTRY("%p, %pUs, %p, %p", this, key_guid, keyboard_layout_length,
+		  keyboard_layout);
+
+	if (!keyboard_layout_length ||
+	    (*keyboard_layout_length && !keyboard_layout))
+		return EFI_EXIT(EFI_INVALID_PARAMETER);
+
+	/* TODO: no notion of current keyboard layout */
+	if (!key_guid)
+		return EFI_EXIT(EFI_INVALID_PARAMETER);
+
+	list_for_each_entry(layout_data, &efi_keyboard_layout_list, link_sys) {
+		if (!memcmp(layout_data->keyboard_layout.guid, key_guid,
+			    sizeof(efi_guid_t)))
+			goto found;
+	}
+
+	return EFI_EXIT(EFI_NOT_FOUND);
+
+found:
+	layout_length =
+		get_unaligned_le16(&layout_data->keyboard_layout.layout_length);
+	if (*keyboard_layout_length < layout_length) {
+		*keyboard_layout_length = layout_length;
+		return EFI_EXIT(EFI_BUFFER_TOO_SMALL);
+	}
+
+	memcpy(keyboard_layout, &layout_data->keyboard_layout, layout_length);
+
+	return EFI_EXIT(EFI_SUCCESS);
+}
+
+static efi_status_t EFIAPI
+set_keyboard_layout(const struct efi_hii_database_protocol *this,
+		    efi_guid_t *key_guid)
+{
+	EFI_ENTRY("%p, %pUs", this, key_guid);
+
+	if (!key_guid)
+		return EFI_EXIT(EFI_INVALID_PARAMETER);
+
+	return EFI_EXIT(EFI_NOT_FOUND);
+}
+
+static efi_status_t EFIAPI
+get_package_list_handle(const struct efi_hii_database_protocol *this,
+			efi_hii_handle_t package_list_handle,
+			efi_handle_t *driver_handle)
+{
+	struct efi_hii_packagelist *hii;
+
+	EFI_ENTRY("%p, %p, %p", this, package_list_handle, driver_handle);
+
+	if (!driver_handle)
+		return EFI_EXIT(EFI_INVALID_PARAMETER);
+
+	list_for_each_entry(hii, &efi_package_lists, link) {
+		if (hii == package_list_handle) {
+			*driver_handle = hii->driver_handle;
+			return EFI_EXIT(EFI_SUCCESS);
+		}
+	}
+
+	return EFI_EXIT(EFI_INVALID_PARAMETER);
+}
+
+const struct efi_hii_database_protocol efi_hii_database = {
+	.new_package_list = new_package_list,
+	.remove_package_list = remove_package_list,
+	.update_package_list = update_package_list,
+	.list_package_lists = list_package_lists,
+	.export_package_lists = export_package_lists,
+	.register_package_notify = register_package_notify,
+	.unregister_package_notify = unregister_package_notify,
+	.find_keyboard_layouts = find_keyboard_layouts,
+	.get_keyboard_layout = get_keyboard_layout,
+	.set_keyboard_layout = set_keyboard_layout,
+	.get_package_list_handle = get_package_list_handle
+};
+
+/*
+ * EFI_HII_STRING_PROTOCOL
+ */
+
+static bool language_match(char *language, char *languages)
+{
+	size_t n;
+
+	n = strlen(language);
+	/* match primary language? */
+	if (!strncasecmp(language, languages, n) &&
+	    (languages[n] == ';' || languages[n] == '\0'))
+		return true;
+
+	return false;
+}
+
+static efi_status_t EFIAPI
+new_string(const struct efi_hii_string_protocol *this,
+	   efi_hii_handle_t package_list,
+	   efi_string_id_t *string_id,
+	   const u8 *language,
+	   const u16 *language_name,
+	   const efi_string_t string,
+	   const struct efi_font_info *string_font_info)
+{
+	struct efi_hii_packagelist *hii = package_list;
+	struct efi_string_table *stbl;
+
+	EFI_ENTRY("%p, %p, %p, \"%s\", %p, \"%ls\", %p", this, package_list,
+		  string_id, language, language_name, string,
+		  string_font_info);
+
+	if (!package_list || !efi_hii_packagelist_exists(package_list))
+		return EFI_EXIT(EFI_NOT_FOUND);
+
+	if (!string_id || !language || !string)
+		return EFI_EXIT(EFI_INVALID_PARAMETER);
+
+	list_for_each_entry(stbl, &hii->string_tables, link) {
+		if (language_match((char *)language, stbl->language)) {
+			efi_string_id_t new_id;
+			void *buf;
+			efi_string_t str;
+
+			new_id = ++hii->max_string_id;
+			if (stbl->nstrings < new_id) {
+				buf = realloc(stbl->strings,
+					      sizeof(stbl->strings[0])
+						* new_id);
+				if (!buf)
+					return EFI_EXIT(EFI_OUT_OF_RESOURCES);
+
+				memset(&stbl->strings[stbl->nstrings], 0,
+				       (new_id - stbl->nstrings)
+					 * sizeof(stbl->strings[0]));
+				stbl->strings = buf;
+				stbl->nstrings = new_id;
+			}
+
+			str = u16_strdup(string);
+			if (!str)
+				return EFI_EXIT(EFI_OUT_OF_RESOURCES);
+
+			stbl->strings[new_id - 1].string = str;
+			*string_id = new_id;
+
+			return EFI_EXIT(EFI_SUCCESS);
+		}
+	}
+
+	return EFI_EXIT(EFI_NOT_FOUND);
+}
+
+static efi_status_t EFIAPI
+get_string(const struct efi_hii_string_protocol *this,
+	   const u8 *language,
+	   efi_hii_handle_t package_list,
+	   efi_string_id_t string_id,
+	   efi_string_t string,
+	   efi_uintn_t *string_size,
+	   struct efi_font_info **string_font_info)
+{
+	struct efi_hii_packagelist *hii = package_list;
+	struct efi_string_table *stbl;
+
+	EFI_ENTRY("%p, \"%s\", %p, %u, %p, %p, %p", this, language,
+		  package_list, string_id, string, string_size,
+		  string_font_info);
+
+	if (!package_list || !efi_hii_packagelist_exists(package_list))
+		return EFI_EXIT(EFI_NOT_FOUND);
+
+	list_for_each_entry(stbl, &hii->string_tables, link) {
+		if (language_match((char *)language, stbl->language)) {
+			efi_string_t str;
+			size_t len;
+
+			if (stbl->nstrings < string_id)
+				return EFI_EXIT(EFI_NOT_FOUND);
+
+			str = stbl->strings[string_id - 1].string;
+			if (str) {
+				len = u16_strsize(str);
+				if (*string_size < len) {
+					*string_size = len;
+
+					return EFI_EXIT(EFI_BUFFER_TOO_SMALL);
+				}
+				memcpy(string, str, len);
+				*string_size = len;
+			} else {
+				return EFI_EXIT(EFI_NOT_FOUND);
+			}
+
+			return EFI_EXIT(EFI_SUCCESS);
+		}
+	}
+
+	return EFI_EXIT(EFI_NOT_FOUND);
+}
+
+static efi_status_t EFIAPI
+set_string(const struct efi_hii_string_protocol *this,
+	   efi_hii_handle_t package_list,
+	   efi_string_id_t string_id,
+	   const u8 *language,
+	   const efi_string_t string,
+	   const struct efi_font_info *string_font_info)
+{
+	struct efi_hii_packagelist *hii = package_list;
+	struct efi_string_table *stbl;
+
+	EFI_ENTRY("%p, %p, %u, \"%s\", \"%ls\", %p", this, package_list,
+		  string_id, language, string, string_font_info);
+
+	if (!package_list || !efi_hii_packagelist_exists(package_list))
+		return EFI_EXIT(EFI_NOT_FOUND);
+
+	if (string_id > hii->max_string_id)
+		return EFI_EXIT(EFI_NOT_FOUND);
+
+	if (!string || !language)
+		return EFI_EXIT(EFI_INVALID_PARAMETER);
+
+	list_for_each_entry(stbl, &hii->string_tables, link) {
+		if (language_match((char *)language, stbl->language)) {
+			efi_string_t str;
+
+			if (hii->max_string_id < string_id)
+				return EFI_EXIT(EFI_NOT_FOUND);
+
+			if (stbl->nstrings < string_id) {
+				void *buf;
+
+				buf = realloc(stbl->strings,
+					      string_id
+						* sizeof(stbl->strings[0]));
+				if (!buf)
+					return EFI_EXIT(EFI_OUT_OF_RESOURCES);
+
+				memset(&stbl->strings[string_id - 1], 0,
+				       (string_id - stbl->nstrings)
+					 * sizeof(stbl->strings[0]));
+				stbl->strings = buf;
+			}
+
+			str = u16_strdup(string);
+			if (!str)
+				return EFI_EXIT(EFI_OUT_OF_RESOURCES);
+
+			free(stbl->strings[string_id - 1].string);
+			stbl->strings[string_id - 1].string = str;
+
+			return EFI_EXIT(EFI_SUCCESS);
+		}
+	}
+
+	return EFI_EXIT(EFI_NOT_FOUND);
+}
+
+static efi_status_t EFIAPI
+get_languages(const struct efi_hii_string_protocol *this,
+	      efi_hii_handle_t package_list,
+	      u8 *languages,
+	      efi_uintn_t *languages_size)
+{
+	struct efi_hii_packagelist *hii = package_list;
+	struct efi_string_table *stbl;
+	size_t len = 0;
+	char *p;
+
+	EFI_ENTRY("%p, %p, %p, %p", this, package_list, languages,
+		  languages_size);
+
+	if (!package_list || !efi_hii_packagelist_exists(package_list))
+		return EFI_EXIT(EFI_NOT_FOUND);
+
+	if (!languages_size ||
+	    (*languages_size && !languages))
+		return EFI_EXIT(EFI_INVALID_PARAMETER);
+
+	/* figure out required size: */
+	list_for_each_entry(stbl, &hii->string_tables, link) {
+		len += strlen((char *)stbl->language) + 1;
+	}
+
+	if (*languages_size < len) {
+		*languages_size = len;
+
+		return EFI_EXIT(EFI_BUFFER_TOO_SMALL);
+	}
+
+	p = (char *)languages;
+	list_for_each_entry(stbl, &hii->string_tables, link) {
+		if (p != (char *)languages)
+			*p++ = ';';
+		strcpy(p, stbl->language);
+		p += strlen((char *)stbl->language);
+	}
+	*p = '\0';
+
+	EFI_PRINT("languages: %s\n", languages);
+
+	return EFI_EXIT(EFI_SUCCESS);
+}
+
+static efi_status_t EFIAPI
+get_secondary_languages(const struct efi_hii_string_protocol *this,
+			efi_hii_handle_t package_list,
+			const u8 *primary_language,
+			u8 *secondary_languages,
+			efi_uintn_t *secondary_languages_size)
+{
+	struct efi_hii_packagelist *hii = package_list;
+	struct efi_string_table *stbl;
+	bool found = false;
+
+	EFI_ENTRY("%p, %p, \"%s\", %p, %p", this, package_list,
+		  primary_language, secondary_languages,
+		  secondary_languages_size);
+
+	if (!package_list || !efi_hii_packagelist_exists(package_list))
+		return EFI_EXIT(EFI_NOT_FOUND);
+
+	if (!secondary_languages_size ||
+	    (*secondary_languages_size && !secondary_languages))
+		return EFI_EXIT(EFI_INVALID_PARAMETER);
+
+	list_for_each_entry(stbl, &hii->string_tables, link) {
+		if (language_match((char *)primary_language, stbl->language)) {
+			found = true;
+			break;
+		}
+	}
+	if (!found)
+		return EFI_EXIT(EFI_INVALID_LANGUAGE);
+
+	/*
+	 * TODO: What is secondary language?
+	 * *secondary_languages = '\0';
+	 * *secondary_languages_size = 0;
+	 */
+
+	return EFI_EXIT(EFI_NOT_FOUND);
+}
+
+static const struct efi_hii_string_protocol efi_hii_string = {
+	.new_string = new_string,
+	.get_string = get_string,
+	.set_string = set_string,
+	.get_languages = get_languages,
+	.get_secondary_languages = get_secondary_languages
+};
+
+static int efi_hii_init(void)
+{
+	efi_add_root_node_protocol_deferred(&efi_guid_hii_string_protocol, &efi_hii_string);
+	efi_add_root_node_protocol_deferred(&efi_guid_hii_database_protocol, &efi_hii_database);
+	return 0;
+}
+device_initcall(efi_hii_init);
diff --git a/efi/loader/protocols/hii_config.c b/efi/loader/protocols/hii_config.c
new file mode 100644
index 000000000000..07dce2dae771
--- /dev/null
+++ b/efi/loader/protocols/hii_config.c
@@ -0,0 +1,157 @@
+// SPDX-License-Identifier:     GPL-2.0+
+/*
+ * EFI Human Interface Infrastructure ... Configuration
+ *
+ * Copyright (c) 2017 Leif Lindholm
+ * Copyright (c) 2018 AKASHI Takahiro, Linaro Limited
+ */
+
+#include <linux/printk.h>
+#include <efi/loader.h>
+#include <efi/protocol/hii.h>
+#include <efi/loader/object.h>
+#include <efi/loader/trace.h>
+#include <efi/error.h>
+#include <efi/guid.h>
+#include <init.h>
+
+/*
+ * EFI_HII_CONFIG_ROUTING_PROTOCOL
+ */
+
+static efi_status_t EFIAPI
+extract_config(const struct efi_hii_config_routing_protocol *this,
+	       const efi_string_t request,
+	       efi_string_t *progress,
+	       efi_string_t *results)
+{
+	EFI_ENTRY("%p, \"%ls\", %p, %p", this, request, progress, results);
+
+	return EFI_EXIT(EFI_OUT_OF_RESOURCES);
+}
+
+static efi_status_t EFIAPI
+export_config(const struct efi_hii_config_routing_protocol *this,
+	      efi_string_t *results)
+{
+	EFI_ENTRY("%p, %p", this, results);
+
+	return EFI_EXIT(EFI_OUT_OF_RESOURCES);
+}
+
+static efi_status_t EFIAPI
+route_config(const struct efi_hii_config_routing_protocol *this,
+	     const efi_string_t configuration,
+	     efi_string_t *progress)
+{
+	EFI_ENTRY("%p, \"%ls\", %p", this, configuration, progress);
+
+	return EFI_EXIT(EFI_OUT_OF_RESOURCES);
+}
+
+static efi_status_t EFIAPI
+block_to_config(const struct efi_hii_config_routing_protocol *this,
+		const efi_string_t config_request,
+		const u8 *block,
+		const efi_uintn_t block_size,
+		efi_string_t *config,
+		efi_string_t *progress)
+{
+	EFI_ENTRY("%p, \"%ls\", %p, %zu, %p, %p", this, config_request,
+		  block, block_size, config, progress);
+
+	return EFI_EXIT(EFI_OUT_OF_RESOURCES);
+}
+
+static efi_status_t EFIAPI
+config_to_block(const struct efi_hii_config_routing_protocol *this,
+		const efi_string_t config_resp,
+		const u8 *block,
+		const efi_uintn_t *block_size,
+		efi_string_t *progress)
+{
+	EFI_ENTRY("%p, \"%ls\", %p, %p, %p", this, config_resp,
+		  block, block_size, progress);
+
+	return EFI_EXIT(EFI_OUT_OF_RESOURCES);
+}
+
+static efi_status_t EFIAPI
+get_alt_config(const struct efi_hii_config_routing_protocol *this,
+	       const efi_string_t config_resp,
+	       const efi_guid_t *guid,
+	       const efi_string_t name,
+	       const struct efi_device_path *device_path,
+	       const efi_string_t alt_cfg_id,
+	       efi_string_t *alt_cfg_resp)
+{
+	EFI_ENTRY("%p, \"%ls\", %pUs, \"%ls\", %p, \"%ls\", %p",
+		  this, config_resp, guid, name, device_path,
+		  alt_cfg_id, alt_cfg_resp);
+
+	return EFI_EXIT(EFI_OUT_OF_RESOURCES);
+}
+
+/*
+ * EFI_HII_ACCESS_PROTOCOL
+ */
+
+static efi_status_t EFIAPI
+extract_config_access(const struct efi_hii_config_access_protocol *this,
+		      const efi_string_t request,
+		      efi_string_t *progress,
+		      efi_string_t *results)
+{
+	EFI_ENTRY("%p, \"%ls\", %p, %p", this, request, progress, results);
+
+	return EFI_EXIT(EFI_OUT_OF_RESOURCES);
+};
+
+static efi_status_t EFIAPI
+route_config_access(const struct efi_hii_config_access_protocol *this,
+		    const efi_string_t configuration,
+		    efi_string_t *progress)
+{
+	EFI_ENTRY("%p, \"%ls\", %p", this, configuration, progress);
+
+	return EFI_EXIT(EFI_OUT_OF_RESOURCES);
+};
+
+static efi_status_t EFIAPI
+form_callback(const struct efi_hii_config_access_protocol *this,
+	      efi_browser_action_t action,
+	      efi_question_id_t question_id,
+	      u8 type,
+	      union efi_ifr_type_value *value,
+	      efi_browser_action_request_t *action_request)
+{
+	EFI_ENTRY("%p, 0x%zx, 0x%x, 0x%x, %p, %p", this, action,
+		  question_id, type, value, action_request);
+
+	return EFI_EXIT(EFI_DEVICE_ERROR);
+};
+
+static const struct efi_hii_config_routing_protocol efi_hii_config_routing = {
+	.extract_config = extract_config,
+	.export_config = export_config,
+	.route_config = route_config,
+	.block_to_config = block_to_config,
+	.config_to_block = config_to_block,
+	.get_alt_config = get_alt_config
+};
+
+static const struct efi_hii_config_access_protocol efi_hii_config_access = {
+	.extract_config_access = extract_config_access,
+	.route_config_access = route_config_access,
+	.form_callback = form_callback
+};
+
+static int efi_hii_init(void)
+{
+	efi_add_root_node_protocol_deferred(&efi_guid_hii_config_routing_protocol,
+					    &efi_hii_config_routing);
+	efi_add_root_node_protocol_deferred(&efi_guid_hii_config_access_protocol,
+					    &efi_hii_config_access);
+	return 0;
+}
+device_initcall(efi_hii_init);
diff --git a/include/efi/protocol/hii.h b/include/efi/protocol/hii.h
new file mode 100644
index 000000000000..d047467a0855
--- /dev/null
+++ b/include/efi/protocol/hii.h
@@ -0,0 +1,428 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Human Interface Infrastructure (HII)
+ */
+
+#ifndef __EFI_PROTOCOL_HII_H_
+#define __EFI_PROTOCOL_HII_H_
+
+#include <efi/types.h>
+
+typedef void *efi_hii_handle_t;
+typedef u16 *efi_string_t;
+typedef u16 efi_string_id_t;
+typedef u32 efi_hii_font_style_t;
+typedef u16 efi_question_id_t;
+typedef u16 efi_image_id_t;
+typedef u16 efi_form_id_t;
+
+struct efi_hii_package_list_header {
+	efi_guid_t package_list_guid;
+	u32 package_length;
+} __packed;
+
+/**
+ * struct efi_hii_package_header - EFI HII package header
+ *
+ * @fields:	'fields' replaces the bit-fields defined in the EFI
+ *		specification to to avoid possible compiler incompatibilities::
+ *
+ *		    u32 length:24;
+ *		    u32 type:8;
+ */
+struct efi_hii_package_header {
+	u32 fields;
+} __packed;
+
+#define __EFI_HII_PACKAGE_LEN_SHIFT	0
+#define __EFI_HII_PACKAGE_TYPE_SHIFT	24
+#define __EFI_HII_PACKAGE_LEN_MASK	0xffffff
+#define __EFI_HII_PACKAGE_TYPE_MASK	0xff
+
+#define EFI_HII_PACKAGE_TYPE_ALL          0x00
+#define EFI_HII_PACKAGE_TYPE_GUID         0x01
+#define EFI_HII_PACKAGE_FORMS             0x02
+#define EFI_HII_PACKAGE_STRINGS           0x04
+#define EFI_HII_PACKAGE_FONTS             0x05
+#define EFI_HII_PACKAGE_IMAGES            0x06
+#define EFI_HII_PACKAGE_SIMPLE_FONTS      0x07
+#define EFI_HII_PACKAGE_DEVICE_PATH       0x08
+#define EFI_HII_PACKAGE_KEYBOARD_LAYOUT   0x09
+#define EFI_HII_PACKAGE_ANIMATIONS        0x0A
+#define EFI_HII_PACKAGE_END               0xDF
+#define EFI_HII_PACKAGE_TYPE_SYSTEM_BEGIN 0xE0
+#define EFI_HII_PACKAGE_TYPE_SYSTEM_END   0xFF
+
+/*
+ * HII GUID package
+ */
+struct efi_hii_guid_package {
+	struct efi_hii_package_header header;
+	efi_guid_t guid;
+	char data[];
+} __packed;
+
+/*
+ * HII string package
+ */
+struct efi_hii_strings_package {
+	struct efi_hii_package_header header;
+	u32 header_size;
+	u32 string_info_offset;
+	u16 language_window[16];
+	efi_string_id_t language_name;
+	u8  language[];
+} __packed;
+
+struct efi_hii_string_block {
+	u8 block_type;
+	/* u8 block_body[]; */
+} __packed;
+
+#define EFI_HII_SIBT_END               0x00
+#define EFI_HII_SIBT_STRING_SCSU       0x10
+#define EFI_HII_SIBT_STRING_SCSU_FONT  0x11
+#define EFI_HII_SIBT_STRINGS_SCSU      0x12
+#define EFI_HII_SIBT_STRINGS_SCSU_FONT 0x13
+#define EFI_HII_SIBT_STRING_UCS2       0x14
+#define EFI_HII_SIBT_STRING_UCS2_FONT  0x15
+#define EFI_HII_SIBT_STRINGS_UCS2      0x16
+#define EFI_HII_SIBT_STRINGS_UCS2_FONT 0x17
+#define EFI_HII_SIBT_DUPLICATE         0x20
+#define EFI_HII_SIBT_SKIP2             0x21
+#define EFI_HII_SIBT_SKIP1             0x22
+#define EFI_HII_SIBT_EXT1              0x30
+#define EFI_HII_SIBT_EXT2              0x31
+#define EFI_HII_SIBT_EXT4              0x32
+#define EFI_HII_SIBT_FONT              0x40
+
+struct efi_hii_sibt_string_ucs2_block {
+	struct efi_hii_string_block header;
+	u16 string_text[];
+} __packed;
+
+/*
+ * HII forms package
+ * TODO: full scope of definitions
+ */
+struct efi_hii_time {
+	u8 hour;
+	u8 minute;
+	u8 second;
+};
+
+struct efi_hii_date {
+	u16 year;
+	u8 month;
+	u8 day;
+};
+
+struct efi_hii_ref {
+	efi_question_id_t question_id;
+	efi_form_id_t form_id;
+	efi_guid_t form_set_guid;
+	efi_string_id_t device_path;
+};
+
+union efi_ifr_type_value {
+	u8 u8;				// EFI_IFR_TYPE_NUM_SIZE_8
+	u16 u16;			// EFI_IFR_TYPE_NUM_SIZE_16
+	u32 u32;			// EFI_IFR_TYPE_NUM_SIZE_32
+	u64 u64;			// EFI_IFR_TYPE_NUM_SIZE_64
+	bool b;				// EFI_IFR_TYPE_BOOLEAN
+	struct efi_hii_time time;	// EFI_IFR_TYPE_TIME
+	struct efi_hii_date date;	// EFI_IFR_TYPE_DATE
+	efi_string_id_t string;		// EFI_IFR_TYPE_STRING, EFI_IFR_TYPE_ACTION
+	struct efi_hii_ref ref;		// EFI_IFR_TYPE_REF
+	// u8 buffer[];			// EFI_IFR_TYPE_BUFFER
+};
+
+#define EFI_IFR_TYPE_NUM_SIZE_8		0x00
+#define EFI_IFR_TYPE_NUM_SIZE_16	0x01
+#define EFI_IFR_TYPE_NUM_SIZE_32	0x02
+#define EFI_IFR_TYPE_NUM_SIZE_64	0x03
+#define EFI_IFR_TYPE_BOOLEAN		0x04
+#define EFI_IFR_TYPE_TIME		0x05
+#define EFI_IFR_TYPE_DATE		0x06
+#define EFI_IFR_TYPE_STRING		0x07
+#define EFI_IFR_TYPE_OTHER		0x08
+#define EFI_IFR_TYPE_UNDEFINED		0x09
+#define EFI_IFR_TYPE_ACTION		0x0A
+#define EFI_IFR_TYPE_BUFFER		0x0B
+#define EFI_IFR_TYPE_REF		0x0C
+#define EFI_IFR_OPTION_DEFAULT		0x10
+#define EFI_IFR_OPTION_DEFAULT_MFG	0x20
+
+#define EFI_IFR_ONE_OF_OPTION_OP	0x09
+
+struct efi_ifr_op_header {
+	u8 opCode;
+	u8 length:7;
+	u8 scope:1;
+};
+
+struct efi_ifr_one_of_option {
+	struct efi_ifr_op_header header;
+	efi_string_id_t option;
+	u8 flags;
+	u8 type;
+	union efi_ifr_type_value value;
+};
+
+typedef efi_uintn_t efi_browser_action_t;
+
+#define EFI_BROWSER_ACTION_REQUEST_NONE			0
+#define EFI_BROWSER_ACTION_REQUEST_RESET		1
+#define EFI_BROWSER_ACTION_REQUEST_SUBMIT		2
+#define EFI_BROWSER_ACTION_REQUEST_EXIT			3
+#define EFI_BROWSER_ACTION_REQUEST_FORM_SUBMIT_EXIT	4
+#define EFI_BROWSER_ACTION_REQUEST_FORM_DISCARD_EXIT	5
+#define EFI_BROWSER_ACTION_REQUEST_FORM_APPLY		6
+#define EFI_BROWSER_ACTION_REQUEST_FORM_DISCARD		7
+#define EFI_BROWSER_ACTION_REQUEST_RECONNECT		8
+
+typedef efi_uintn_t efi_browser_action_request_t;
+
+#define EFI_BROWSER_ACTION_CHANGING			0
+#define EFI_BROWSER_ACTION_CHANGED			1
+#define EFI_BROWSER_ACTION_RETRIEVE			2
+#define EFI_BROWSER_ACTION_FORM_OPEN			3
+#define EFI_BROWSER_ACTION_FORM_CLOSE			4
+#define EFI_BROWSER_ACTION_SUBMITTED			5
+#define EFI_BROWSER_ACTION_DEFAULT_STANDARD		0x1000
+#define EFI_BROWSER_ACTION_DEFAULT_MANUFACTURING	0x1001
+#define EFI_BROWSER_ACTION_DEFAULT_SAFE			0x1002
+#define EFI_BROWSER_ACTION_DEFAULT_PLATFORM		0x2000
+#define EFI_BROWSER_ACTION_DEFAULT_HARDWARE		0x3000
+#define EFI_BROWSER_ACTION_DEFAULT_FIRMWARE		0x4000
+
+/*
+ * HII keyboard package
+ */
+typedef enum {
+	EFI_KEY_LCTRL, EFI_KEY_A0, EFI_KEY_LALT, EFI_KEY_SPACE_BAR,
+	EFI_KEY_A2, EFI_KEY_A3, EFI_KEY_A4, EFI_KEY_RCTRL, EFI_KEY_LEFT_ARROW,
+	EFI_KEY_DOWN_ARROW, EFI_KEY_RIGHT_ARROW, EFI_KEY_ZERO,
+	EFI_KEY_PERIOD, EFI_KEY_ENTER, EFI_KEY_LSHIFT, EFI_KEY_B0,
+	EFI_KEY_B1, EFI_KEY_B2, EFI_KEY_B3, EFI_KEY_B4, EFI_KEY_B5, EFI_KEY_B6,
+	EFI_KEY_B7, EFI_KEY_B8, EFI_KEY_B9, EFI_KEY_B10, EFI_KEY_RSHIFT,
+	EFI_KEY_UP_ARROW, EFI_KEY_ONE, EFI_KEY_TWO, EFI_KEY_THREE,
+	EFI_KEY_CAPS_LOCK, EFI_KEY_C1, EFI_KEY_C2, EFI_KEY_C3, EFI_KEY_C4,
+	EFI_KEY_C5, EFI_KEY_C6, EFI_KEY_C7, EFI_KEY_C8, EFI_KEY_C9,
+	EFI_KEY_C10, EFI_KEY_C11, EFI_KEY_C12, EFI_KEY_FOUR, EFI_KEY_FIVE,
+	EFI_KEY_SIX, EFI_KEY_PLUS, EFI_KEY_TAB, EFI_KEY_D1, EFI_KEY_D2,
+	EFI_KEY_D3, EFI_KEY_D4, EFI_KEY_D5, EFI_KEY_D6, EFI_KEY_D7, EFI_KEY_D8,
+	EFI_KEY_D9, EFI_KEY_D10, EFI_KEY_D11, EFI_KEY_D12, EFI_KEY_D13,
+	EFI_KEY_DEL, EFI_KEY_END, EFI_KEY_PG_DN, EFI_KEY_SEVEN, EFI_KEY_EIGHT,
+	EFI_KEY_NINE, EFI_KEY_E0, EFI_KEY_E1, EFI_KEY_E2, EFI_KEY_E3,
+	EFI_KEY_E4, EFI_KEY_E5, EFI_KEY_E6, EFI_KEY_E7, EFI_KEY_E8, EFI_KEY_E9,
+	EFI_KEY_E10, EFI_KEY_E11, EFI_KEY_E12, EFI_KEY_BACK_SPACE,
+	EFI_KEY_INS, EFI_KEY_HOME, EFI_KEY_PG_UP, EFI_KEY_NLCK, EFI_KEY_SLASH,
+	EFI_KEY_ASTERISK, EFI_KEY_MINUS, EFI_KEY_ESC, EFI_KEY_F1, EFI_KEY_F2,
+	EFI_KEY_F3, EFI_KEY_F4, EFI_KEY_F5, EFI_KEY_F6, EFI_KEY_F7, EFI_KEY_F8,
+	EFI_KEY_F9, EFI_KEY_F10, EFI_KEY_F11, EFI_KEY_F12, EFI_KEY_PRINT,
+	EFI_KEY_SLCK, EFI_KEY_PAUSE,
+} efi_key;
+
+struct efi_key_descriptor {
+	u32 key;
+	u16 unicode;
+	u16 shifted_unicode;
+	u16 alt_gr_unicode;
+	u16 shifted_alt_gr_unicode;
+	u16 modifier;
+	u16 affected_attribute;
+} __packed;
+
+struct efi_hii_keyboard_layout {
+	u16 layout_length;
+	/*
+	 * The EFI spec defines this as efi_guid_t.
+	 * clang and gcc both report alignment problems here.
+	 * clang with -Wunaligned-access
+	 * warning: field guid within 'struct efi_hii_keyboard_layout' is less
+	 * aligned than 'efi_guid_t' and is usually due to
+	 * 'struct efi_hii_keyboard_layout' being packed, which can lead to
+	 * unaligned accesses
+	 *
+	 * GCC with -Wpacked-not-aligned -Waddress-of-packed-member
+	 * 'efi_guid_t' offset 2 in 'struct efi_hii_keyboard_layout'
+	 * isn't aligned to 4
+	 *
+	 * Removing the alignment from efi_guid_t is not an option, since
+	 * it is also used in non-packed structs and that would break
+	 * calculations with offsetof
+	 *
+	 * This is the only place we get a report for. That happens because
+	 * all other declarations of efi_guid_t within a packed struct happens
+	 * to be 4-byte aligned.  i.e a u32, a u64 a 2 * u16 or any combination
+	 * that ends up landing efi_guid_t on a 4byte boundary precedes.
+	 *
+	 * Replace this with a 1-byte aligned counterpart of b[16].  This is a
+	 * packed struct so the memory  placement of efi_guid_t should not change
+	 *
+	 */
+	u8 guid[16];
+	u32 layout_descriptor_string_offset;
+	u8 descriptor_count;
+	/* struct efi_key_descriptor descriptors[]; follows here */
+} __packed;
+
+struct efi_hii_keyboard_package {
+	struct efi_hii_package_header header;
+	u16 layout_count;
+	struct efi_hii_keyboard_layout layout[];
+} __packed;
+
+struct efi_font_info {
+	efi_hii_font_style_t font_style;
+	u16 font_size;
+	u16 font_name[1];
+};
+
+struct efi_hii_string_protocol {
+	efi_status_t(EFIAPI *new_string)(
+		const struct efi_hii_string_protocol *this,
+		efi_hii_handle_t package_list,
+		efi_string_id_t *string_id,
+		const u8 *language,
+		const u16 *language_name,
+		const efi_string_t string,
+		const struct efi_font_info *string_font_info);
+	efi_status_t(EFIAPI *get_string)(
+		const struct efi_hii_string_protocol *this,
+		const u8 *language,
+		efi_hii_handle_t package_list,
+		efi_string_id_t string_id,
+		efi_string_t string,
+		efi_uintn_t *string_size,
+		struct efi_font_info **string_font_info);
+	efi_status_t(EFIAPI *set_string)(
+		const struct efi_hii_string_protocol *this,
+		efi_hii_handle_t package_list,
+		efi_string_id_t string_id,
+		const u8 *language,
+		const efi_string_t string,
+		const struct efi_font_info *string_font_info);
+	efi_status_t(EFIAPI *get_languages)(
+		const struct efi_hii_string_protocol *this,
+		efi_hii_handle_t package_list,
+		u8 *languages,
+		efi_uintn_t *languages_size);
+	efi_status_t(EFIAPI *get_secondary_languages)(
+		const struct efi_hii_string_protocol *this,
+		efi_hii_handle_t package_list,
+		const u8 *primary_language,
+		u8 *secondary_languages,
+		efi_uintn_t *secondary_languages_size);
+};
+
+struct efi_hii_database_protocol {
+	efi_status_t(EFIAPI *new_package_list)(
+		const struct efi_hii_database_protocol *this,
+		const struct efi_hii_package_list_header *package_list,
+		const efi_handle_t driver_handle,
+		efi_hii_handle_t *handle);
+	efi_status_t(EFIAPI *remove_package_list)(
+		const struct efi_hii_database_protocol *this,
+		efi_hii_handle_t handle);
+	efi_status_t(EFIAPI *update_package_list)(
+		const struct efi_hii_database_protocol *this,
+		efi_hii_handle_t handle,
+		const struct efi_hii_package_list_header *package_list);
+	efi_status_t(EFIAPI *list_package_lists)(
+		const struct efi_hii_database_protocol *this,
+		u8 package_type,
+		const efi_guid_t *package_guid,
+		efi_uintn_t *handle_buffer_length,
+		efi_hii_handle_t *handle);
+	efi_status_t(EFIAPI *export_package_lists)(
+		const struct efi_hii_database_protocol *this,
+		efi_hii_handle_t handle,
+		efi_uintn_t *buffer_size,
+		struct efi_hii_package_list_header *buffer);
+	efi_status_t(EFIAPI *register_package_notify)(
+		const struct efi_hii_database_protocol *this,
+		u8 package_type,
+		const efi_guid_t *package_guid,
+		const void *package_notify_fn,
+		efi_uintn_t notify_type,
+		efi_handle_t *notify_handle);
+	efi_status_t(EFIAPI *unregister_package_notify)(
+		const struct efi_hii_database_protocol *this,
+		efi_handle_t notification_handle
+		);
+	efi_status_t(EFIAPI *find_keyboard_layouts)(
+		const struct efi_hii_database_protocol *this,
+		u16 *key_guid_buffer_length,
+		efi_guid_t *key_guid_buffer);
+	efi_status_t(EFIAPI *get_keyboard_layout)(
+		const struct efi_hii_database_protocol *this,
+		efi_guid_t *key_guid,
+		u16 *keyboard_layout_length,
+		struct efi_hii_keyboard_layout *keyboard_layout);
+	efi_status_t(EFIAPI *set_keyboard_layout)(
+		const struct efi_hii_database_protocol *this,
+		efi_guid_t *key_guid);
+	efi_status_t(EFIAPI *get_package_list_handle)(
+		const struct efi_hii_database_protocol *this,
+		efi_hii_handle_t package_list_handle,
+		efi_handle_t *driver_handle);
+};
+
+struct efi_hii_config_routing_protocol {
+	efi_status_t(EFIAPI *extract_config)(
+		const struct efi_hii_config_routing_protocol *this,
+		const efi_string_t request,
+		efi_string_t *progress,
+		efi_string_t *results);
+	efi_status_t(EFIAPI *export_config)(
+		const struct efi_hii_config_routing_protocol *this,
+		efi_string_t *results);
+	efi_status_t(EFIAPI *route_config)(
+		const struct efi_hii_config_routing_protocol *this,
+		const efi_string_t configuration,
+		efi_string_t *progress);
+	efi_status_t(EFIAPI *block_to_config)(
+		const struct efi_hii_config_routing_protocol *this,
+		const efi_string_t config_request,
+		const uint8_t *block,
+		const efi_uintn_t block_size,
+		efi_string_t *config,
+		efi_string_t *progress);
+	efi_status_t(EFIAPI *config_to_block)(
+		const struct efi_hii_config_routing_protocol *this,
+		const efi_string_t config_resp,
+		const uint8_t *block,
+		const efi_uintn_t *block_size,
+		efi_string_t *progress);
+	efi_status_t(EFIAPI *get_alt_config)(
+		const struct efi_hii_config_routing_protocol *this,
+		const efi_string_t config_resp,
+		const efi_guid_t *guid,
+		const efi_string_t name,
+		const struct efi_device_path *device_path,
+		const efi_string_t alt_cfg_id,
+		efi_string_t *alt_cfg_resp);
+};
+
+struct efi_hii_config_access_protocol {
+	efi_status_t(EFIAPI *extract_config_access)(
+		const struct efi_hii_config_access_protocol *this,
+		const efi_string_t request,
+		efi_string_t *progress,
+		efi_string_t *results);
+	efi_status_t(EFIAPI *route_config_access)(
+		const struct efi_hii_config_access_protocol *this,
+		const efi_string_t configuration,
+		efi_string_t *progress);
+	efi_status_t(EFIAPI *form_callback)(
+		const struct efi_hii_config_access_protocol *this,
+		efi_browser_action_t action,
+		efi_question_id_t question_id,
+		u8 type,
+		union efi_ifr_type_value *value,
+		efi_browser_action_request_t *action_request);
+};
+
+#endif
-- 
2.47.3



