Delivery-date: Mon, 15 Dec 2025 09:25:21 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vV3tR-00Bg08-2z
	for lore@lore.pengutronix.de;
	Mon, 15 Dec 2025 09:25:21 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vV3tP-0008R7-QT
	for lore@pengutronix.de; Mon, 15 Dec 2025 09:25:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iXPavzdNjYGsxHIbgRMq0bjmR74MhtUbDZLpkBJgInM=; b=H543xi5PrjWLiFSxL6gQxZSSk9
	iWukXlECNdeV+nFF3sOEA/8TYPQG6Womu76SbJBGEYMzDrC3DX/wo/3pTLbaqYbOxSA8/xlm1uWvn
	/L8l9g/V19CVxFHCc7nvzkk2zGf7/3kp5n7IhNdjZqxralyoqYQViF6B9I73/6b1wjNg4CNwXAR7I
	rKsUFsf89rZTJDlfDWbWsfboxweChmFTeemEB1hhcMit+y4ac0gd7vbaif9492xgXkMbpaGb3PTQv
	AxTjNxt/rgvAxbVafs9ChBU3v8t2+S8+88ZdpFOYq+sQWwTD6ehW1KTcwcmehs9VqcuKMF9r4C3A8
	jdw8hspw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV3sv-00000003G3k-3n36;
	Mon, 15 Dec 2025 08:24:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV3sr-00000003G1m-18j2
	for barebox@lists.infradead.org;
	Mon, 15 Dec 2025 08:24:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vV3sp-0008GF-IT; Mon, 15 Dec 2025 09:24:43 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vV3sp-005kUT-1D;
	Mon, 15 Dec 2025 09:24:43 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vV3sp-00000008IwD-1AQi;
	Mon, 15 Dec 2025 09:24:43 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 15 Dec 2025 09:24:39 +0100
Message-ID: <20251215082442.1977789-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251215082442.1977789-1-a.fatoum@pengutronix.de>
References: <20251215082442.1977789-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251215_002445_863558_DB3FDC9D 
X-CRM114-Status: GOOD (  28.57  )
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
Subject: [PATCH 3/3] lib: smbios: add support for populating SMBIOS table
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The System Management BIOS (SMBIOS) specification defines data
structures to read management information produced by the BIOS
of a computer. barebox can make use of this to report information
like its the board serial number, reset/wake reason, or whether
a hardware watchdog has been enabled.

This commit only adds the library functions to generate the table.
It will be passed in future via a table installed by the EFI loader on
UEFI-booting systems, but enablement for DT-only systems is underway
as well[1].

[1]: https://lore.kernel.org/all/20251022082129.138217-1-adriana@arista.com

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/Kconfig        |   3 +
 include/smbios.h      | 406 +++++++++++++++++++++++++++++++++++++++++
 include/smbios_def.h  | 226 +++++++++++++++++++++++
 include/tables_csum.h |  23 +++
 lib/Kconfig           |   9 +
 lib/Makefile          |   1 +
 lib/smbios.c          | 412 ++++++++++++++++++++++++++++++++++++++++++
 lib/tables_csum.c     |  18 ++
 net/Kconfig           |   2 +-
 9 files changed, 1099 insertions(+), 1 deletion(-)
 create mode 100644 include/smbios.h
 create mode 100644 include/smbios_def.h
 create mode 100644 include/tables_csum.h
 create mode 100644 lib/smbios.c
 create mode 100644 lib/tables_csum.c

diff --git a/common/Kconfig b/common/Kconfig
index 7442e24026e0..b765953ee32d 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -1258,6 +1258,9 @@ config MACHINE_ID
 	  Note: if no hashable information is available no machine id will be passed
 	  to the kernel.
 
+config MACHINE_ID_SPECIFIC
+	def_bool MACHINE_ID && HAVE_DIGEST_SHA256 && HAVE_DIGEST_HMAC
+
 config SERIAL_NUMBER_FIXUP_SYSTEMD_HOSTNAME
 	bool "append board serial number to systemd.hostname= fixup"
 	depends on FLEXIBLE_BOOTARGS
diff --git a/include/smbios.h b/include/smbios.h
new file mode 100644
index 000000000000..0b5d520a7516
--- /dev/null
+++ b/include/smbios.h
@@ -0,0 +1,406 @@
+/* SPDX-License-Identifier: GPL-2.0+ */
+/* SPDX-Comment: Origin-URL: https://github.com/u-boot/u-boot/blob/2d226a735e0e9df2c017259c72cfd569986db480/include/smbios.h */
+/* SPDX-Comment: Origin-URL: https://github.com/coreboot/coreboot/blob/main/src/include/smbios.h */
+/* SPDX-FileCopyrightText: 2015, Bin Meng <bmeng.cn@gmail.com> */
+
+#ifndef _SMBIOS_H_
+#define _SMBIOS_H_
+
+#include <linux/types.h>
+#include <smbios_def.h>
+
+/* SMBIOS spec version implemented */
+#define SMBIOS_MAJOR_VER	3
+#define SMBIOS_MINOR_VER	7
+
+enum {
+	SMBIOS_STR_MAX	= 64,	/* Maximum length allowed for a string */
+};
+
+/* SMBIOS structure types */
+enum {
+	SMBIOS_BIOS_INFORMATION = 0,
+	SMBIOS_SYSTEM_INFORMATION = 1,
+	SMBIOS_BOARD_INFORMATION = 2,
+	SMBIOS_SYSTEM_ENCLOSURE = 3,
+	SMBIOS_PROCESSOR_INFORMATION = 4,
+	SMBIOS_CACHE_INFORMATION = 7,
+	SMBIOS_SYSTEM_SLOTS = 9,
+	SMBIOS_PHYS_MEMORY_ARRAY = 16,
+	SMBIOS_MEMORY_DEVICE = 17,
+	SMBIOS_MEMORY_ARRAY_MAPPED_ADDRESS = 19,
+	SMBIOS_OEM_STRINGS = 11,
+	SMBIOS_SYSTEM_RESET = 23,
+	SMBIOS_SYSTEM_BOOT_INFORMATION = 32,
+	SMBIOS_END_OF_TABLE = 127
+};
+
+#define SMBIOS_INTERMEDIATE_OFFSET	16
+#define SMBIOS_STRUCT_EOS_BYTES		2
+
+struct str_lookup_table {
+	u16 idx;
+	const char *str;
+};
+
+struct __packed smbios_entry {
+	u8 anchor[4];
+	u8 checksum;
+	u8 length;
+	u8 major_ver;
+	u8 minor_ver;
+	u16 max_struct_size;
+	u8 entry_point_rev;
+	u8 formatted_area[5];
+	u8 intermediate_anchor[5];
+	u8 intermediate_checksum;
+	u16 struct_table_length;
+	u32 struct_table_address;
+	u16 struct_count;
+	u8 bcd_rev;
+};
+
+/**
+ * struct smbios3_entry - SMBIOS 3.0 (64-bit) Entry Point structure
+ */
+struct __packed smbios3_entry {
+	/** @anchor: anchor string */
+	u8 anchor[5];
+	/** @checksum: checksum of the entry point structure */
+	u8 checksum;
+	/** @length: length of the entry point structure */
+	u8 length;
+	/** @major_ver: major version of the SMBIOS specification */
+	u8 major_ver;
+	/** @minor_ver: minor version of the SMBIOS specification */
+	u8 minor_ver;
+	/** @docrev: revision of the SMBIOS specification */
+	u8 doc_rev;
+	/** @entry_point_rev: revision of the entry point structure */
+	u8 entry_point_rev;
+	/** @reserved: reserved */
+	u8 reserved;
+	/** maximum size of SMBIOS table */
+	u32 table_maximum_size;
+	/** @struct_table_address: 64-bit physical starting address */
+	u64 struct_table_address;
+};
+
+struct __packed smbios_header {
+	u8 type;
+	u8 length;
+	u16 handle;
+};
+
+struct __packed smbios_type0 {
+	struct smbios_header hdr;
+	u8 vendor;
+	u8 bios_ver;
+	u16 bios_start_segment;
+	u8 bios_release_date;
+	u8 bios_rom_size;
+	u64 bios_characteristics;
+	u8 bios_characteristics_ext1;
+	u8 bios_characteristics_ext2;
+	u8 bios_major_release;
+	u8 bios_minor_release;
+	u8 ec_major_release;
+	u8 ec_minor_release;
+	u16 extended_bios_rom_size;
+	char eos[SMBIOS_STRUCT_EOS_BYTES];
+};
+
+#define SMBIOS_TYPE1_LENGTH_V20		0x08
+#define SMBIOS_TYPE1_LENGTH_V21		0x19
+#define SMBIOS_TYPE1_LENGTH_V24		0x1b
+
+struct __packed smbios_type1 {
+	struct smbios_header hdr;
+	u8 manufacturer;
+	u8 product_name;
+	u8 version;
+	u8 serial_number;
+	u8 uuid[16];
+	u8 wakeup_type;
+	u8 sku_number;
+	u8 family;
+	char eos[SMBIOS_STRUCT_EOS_BYTES];
+};
+
+#define SMBIOS_TYPE2_CON_OBJ_HANDLE_SIZE sizeof(u16)
+
+struct __packed smbios_type2 {
+	struct smbios_header hdr;
+	u8 manufacturer;
+	u8 product_name;
+	u8 version;
+	u8 serial_number;
+	u8 asset_tag_number;
+	u8 feature_flags;
+	u8 chassis_location;
+	u16 chassis_handle;
+	u8 board_type;
+	u8 number_contained_objects;
+	/*
+	 * Dynamic bytes will be inserted here to store the objects.
+	 * length is equal to 'number_contained_objects'.
+	 */
+	char eos[SMBIOS_STRUCT_EOS_BYTES];
+};
+
+struct __packed smbios_type3 {
+	struct smbios_header hdr;
+	u8 manufacturer;
+	u8 chassis_type;
+	u8 version;
+	u8 serial_number;
+	u8 asset_tag_number;
+	u8 bootup_state;
+	u8 power_supply_state;
+	u8 thermal_state;
+	u8 security_status;
+	u32 oem_defined;
+	u8 height;
+	u8 number_of_power_cords;
+	u8 element_count;
+	u8 element_record_length;
+	/*
+	 * Dynamic bytes will be inserted here to store the elements.
+	 * length is equal to 'element_record_length' * 'element_record_length'
+	 */
+	u8 sku_number;
+	char eos[SMBIOS_STRUCT_EOS_BYTES];
+};
+
+struct __packed smbios_type4 {
+	struct smbios_header hdr;
+	u8 socket_design;
+	u8 processor_type;
+	u8 processor_family;
+	u8 processor_manufacturer;
+	u32 processor_id[2];
+	u8 processor_version;
+	u8 voltage;
+	u16 external_clock;
+	u16 max_speed;
+	u16 current_speed;
+	u8 status;
+	u8 processor_upgrade;
+	u16 l1_cache_handle;
+	u16 l2_cache_handle;
+	u16 l3_cache_handle;
+	u8 serial_number;
+	u8 asset_tag;
+	u8 part_number;
+	u8 core_count;
+	u8 core_enabled;
+	u8 thread_count;
+	u16 processor_characteristics;
+	u16 processor_family2;
+	u16 core_count2;
+	u16 core_enabled2;
+	u16 thread_count2;
+	u16 thread_enabled;
+	char eos[SMBIOS_STRUCT_EOS_BYTES];
+};
+
+union __packed cache_config {
+	struct {
+		u16 level:3;
+		u16 bsocketed:1;
+		u16 rsvd0:1;
+		u16 locate:2;
+		u16 benabled:1;
+		u16 opmode:2;
+		u16 rsvd1:6;
+	} fields;
+	u16 data;
+};
+
+union __packed cache_size_word {
+	struct {
+		u16 size:15;
+		u16 granu:1;
+	} fields;
+	u16 data;
+};
+
+union __packed cache_size_dword {
+	struct {
+		u32 size:31;
+		u32 granu:1;
+	} fields;
+	u32 data;
+};
+
+union __packed cache_sram_type {
+	struct {
+		u16 other:1;
+		u16 unknown:1;
+		u16 nonburst:1;
+		u16 burst:1;
+		u16 plburst:1;
+		u16 sync:1;
+		u16 async:1;
+		u16 rsvd:9;
+	} fields;
+	u16 data;
+};
+
+struct __packed smbios_type7 {
+	struct smbios_header hdr;
+	u8 socket_design;
+	union cache_config config;
+	union cache_size_word max_size;
+	union cache_size_word inst_size;
+	union cache_sram_type supp_sram_type;
+	union cache_sram_type curr_sram_type;
+	u8 speed;
+	u8 err_corr_type;
+	u8 sys_cache_type;
+	u8 associativity;
+	union cache_size_dword max_size2;
+	union cache_size_dword inst_size2;
+	char eos[SMBIOS_STRUCT_EOS_BYTES];
+};
+
+struct __packed smbios_type11 {
+	struct smbios_header hdr;
+	u8 string_count;
+	/*
+	 * Dynamic bytes will be inserted here to store the objects.
+	 * Count is equal to 'string_count'.
+	 */
+	char eos[SMBIOS_STRUCT_EOS_BYTES];
+};
+
+struct __packed smbios_type23 {
+	struct smbios_header hdr;
+	u8 capabilities;
+	u16 reset_count;
+	u16 reset_limit;
+	u16 timer_interval;
+	u16 timeout;
+	char eos[SMBIOS_STRUCT_EOS_BYTES];
+};
+
+struct __packed smbios_type32 {
+	u8 type;
+	u8 length;
+	u16 handle;
+	u8 reserved[6];
+	u8 boot_status;
+	char eos[SMBIOS_STRUCT_EOS_BYTES];
+};
+
+struct __packed smbios_type127 {
+	u8 type;
+	u8 length;
+	u16 handle;
+	char eos[SMBIOS_STRUCT_EOS_BYTES];
+};
+
+/**
+ * fill_smbios_header() - Fill the header of an SMBIOS table
+ *
+ * This fills the header of an SMBIOS table structure.
+ *
+ * @table:	start address of the structure
+ * @type:	the type of structure
+ * @length:	the length of the formatted area of the structure
+ * @handle:	the structure's handle, a unique 16-bit number
+ */
+static inline void fill_smbios_header(void *table, int type,
+				      int length, int handle)
+{
+	struct smbios_header *header = table;
+
+	header->type = type;
+	header->length = length - SMBIOS_STRUCT_EOS_BYTES;
+	header->handle = handle;
+}
+
+/**
+ * write_smbios_table() - Write SMBIOS table
+ *
+ * This writes SMBIOS table at a given address.
+ *
+ * @addr:	start address to write SMBIOS table, 16-byte-alignment
+ * recommended. Note that while the SMBIOS tables themself have no alignment
+ * requirement, some systems may requires alignment. For example x86 systems
+ * which put tables at f0000 require 16-byte alignment
+ *
+ * Return:	end address of SMBIOS table (and start address for next entry)
+ *		or NULL in case of an error
+ */
+void *write_smbios_table(void *addr);
+
+/**
+ * smbios_entry() - Get a valid struct smbios_entry pointer
+ *
+ * @address:   address where smbios tables is located
+ * @size:      size of smbios table
+ * @return:    NULL or a valid pointer to a struct smbios_entry
+ */
+const struct smbios_entry *smbios_entry(u64 address, u32 size);
+
+/**
+ * smbios_header() - Search for SMBIOS header type
+ *
+ * @entry:     pointer to a struct smbios_entry
+ * @type:      SMBIOS type
+ * @return:    NULL or a valid pointer to a struct smbios_header
+ */
+const struct smbios_header *smbios_header(const struct smbios_entry *entry, int type);
+
+/**
+ * smbios_string() - Return string from SMBIOS
+ *
+ * @header:    pointer to struct smbios_header
+ * @index:     string index
+ * @return:    NULL or a valid char pointer
+ */
+char *smbios_string(const struct smbios_header *header, int index);
+
+/**
+ * smbios_update_version() - Update the version string
+ *
+ * This can be called after the SMBIOS tables are written (e.g. after the U-Boot
+ * main loop has started) to update the BIOS version string (SMBIOS table 0).
+ *
+ * @version: New version string to use
+ * Return: 0 if OK, -ENOENT if no version string was previously written,
+ *	-ENOSPC if the new string is too large to fit
+ */
+int smbios_update_version(const char *version);
+
+/**
+ * smbios_update_version_full() - Update the version string
+ *
+ * This can be called after the SMBIOS tables are written (e.g. after the U-Boot
+ * main loop has started) to update the BIOS version string (SMBIOS table 0).
+ * It scans for the correct place to put the version, so does not need U-Boot
+ * to have actually written the tables itself (e.g. if a previous bootloader
+ * did it).
+ *
+ * @smbios_tab: Start of SMBIOS tables
+ * @version: New version string to use
+ * Return: 0 if OK, -ENOENT if no version string was previously written,
+ *	-ENOSPC if the new string is too large to fit
+ */
+int smbios_update_version_full(void *smbios_tab, const char *version);
+
+/**
+ * smbios_prepare_measurement() - Update smbios table for the measurement
+ *
+ * TCG specification requires to measure static configuration information.
+ * This function clear the device dependent parameters such as
+ * serial number for the measurement.
+ *
+ * @entry: pointer to a struct smbios3_entry
+ * @header: pointer to a struct smbios_header
+ */
+void smbios_prepare_measurement(const struct smbios3_entry *entry,
+				struct smbios_header *header);
+
+#endif /* _SMBIOS_H_ */
diff --git a/include/smbios_def.h b/include/smbios_def.h
new file mode 100644
index 000000000000..c8bc7d8bd1e9
--- /dev/null
+++ b/include/smbios_def.h
@@ -0,0 +1,226 @@
+/* SPDX-License-Identifier: GPL-2.0+ */
+/* SPDX-Comment: Origin-URL: https://github.com/u-boot/u-boot/blob/8aa5f8e02f7869d2d4131b04eb35b6ea948da80c/include/smbios_def.h */
+/*
+ * Copyright (c) 2024 Linaro Limited
+ * Author: Raymond Mao <raymond.mao@linaro.org>
+ */
+
+#ifndef _SMBIOS_DEF_H_
+#define _SMBIOS_DEF_H_
+
+/*
+ * BIOS characteristics
+ */
+
+#define BIOS_CHARACTERISTICS_PCI_SUPPORTED	0x80 /* BIT(7) */
+#define BIOS_CHARACTERISTICS_UPGRADEABLE	0x800 /* BIT(11) */
+#define BIOS_CHARACTERISTICS_SELECTABLE_BOOT	0x10000  /* BIT(16) */
+
+#define BIOS_CHARACTERISTICS_EXT1_ACPI		1 /* BIT(0) */
+#define BIOS_CHARACTERISTICS_EXT2_UEFI		8 /* BIT(3) */
+#define BIOS_CHARACTERISTICS_EXT2_TARGET	4 /* BIT(2) */
+
+/*
+ * System Information
+ */
+
+#define SMBIOS_WAKEUP_TYPE_RESERVED		0
+#define SMBIOS_WAKEUP_TYPE_OTHER		1
+#define SMBIOS_WAKEUP_TYPE_UNKNOWN		2
+#define SMBIOS_WAKEUP_TYPE_APM_TIMER		3
+#define SMBIOS_WAKEUP_TYPE_MODEM_RING		4
+#define SMBIOS_WAKEUP_TYPE_LAN_REMOTE		5
+#define SMBIOS_WAKEUP_TYPE_POWER_SWITCH		6
+#define SMBIOS_WAKEUP_TYPE_PCI_PME		7
+#define SMBIOS_WAKEUP_TYPE_AC_POWER_RESTORED	8
+
+/*
+ * Baseboard Information
+ */
+
+#define SMBIOS_BOARD_FEAT_HOST_BOARD		1 /* BIT(0) */
+#define SMBIOS_BOARD_FEAT_REQ_AUX		2 /* BIT(1) */
+#define SMBIOS_BOARD_FEAT_REMOVABLE		4 /* BIT(2) */
+#define SMBIOS_BOARD_FEAT_REPLACEABLE		8 /* BIT(3) */
+#define SMBIOS_BOARD_FEAT_HOT_SWAPPABLE		16 /* BIT(4) */
+
+#define SMBIOS_BOARD_TYPE_UNKNOWN		1
+#define SMBIOS_BOARD_TYPE_OTHER			2
+#define SMBIOS_BOARD_TYPE_SERVER_BLADE		3
+#define SMBIOS_BOARD_TYPE_CON_SWITCH		4
+#define SMBIOS_BOARD_TYPE_SM_MODULE		5
+#define SMBIOS_BOARD_TYPE_PROCESSOR_MODULE	6
+#define SMBIOS_BOARD_TYPE_IO_MODULE		7
+#define SMBIOS_BOARD_TYPE_MEM_MODULE		8
+#define SMBIOS_BOARD_TYPE_DAUGHTER_BOARD	9
+#define SMBIOS_BOARD_TYPE_MOTHERBOARD		10
+#define SMBIOS_BOARD_TYPE_PROC_MEM_MODULE	11
+#define SMBIOS_BOARD_TYPE_PROC_IO_MODULE	12
+#define SMBIOS_BOARD_TYPE_INTERCON		13
+
+/*
+ * System Enclosure or Chassis
+ */
+#define SMBIOS_ENCLOSURE_UNKNOWN	2
+#define SMBIOS_ENCLOSURE_DESKTOP	3
+
+#define SMBIOS_STATE_OTHER		1
+#define SMBIOS_STATE_UNKNOWN		2
+#define SMBIOS_STATE_SAFE		3
+#define SMBIOS_STATE_WARNING		4
+#define SMBIOS_STATE_CRITICAL		5
+#define SMBIOS_STATE_NONRECOVERABLE	6
+
+#define SMBIOS_SECURITY_OTHER		1
+#define SMBIOS_SECURITY_UNKNOWN		2
+#define SMBIOS_SECURITY_NONE		3
+#define SMBIOS_SECURITY_EXTINT_LOCK	4
+#define SMBIOS_SECURITY_EXTINT_EN	5
+
+#define SMBIOS_ENCLOSURE_OEM_UND	0
+#define SMBIOS_ENCLOSURE_HEIGHT_UND	0
+#define SMBIOS_POWCORD_NUM_UND		0
+#define SMBIOS_ELEMENT_TYPE_SELECT	0x80 /* BIT(7) */
+
+/*
+ * Processor Information
+ */
+
+#define SMBIOS_PROCESSOR_TYPE_OTHER	1
+#define SMBIOS_PROCESSOR_TYPE_UNKNOWN	2
+#define SMBIOS_PROCESSOR_TYPE_CENTRAL	3
+#define SMBIOS_PROCESSOR_TYPE_MATH	4
+#define SMBIOS_PROCESSOR_TYPE_DSP	5
+#define SMBIOS_PROCESSOR_TYPE_VIDEO	6
+
+#define SMBIOS_PROCESSOR_STATUS_UNKNOWN		0
+#define SMBIOS_PROCESSOR_STATUS_ENABLED		1
+#define SMBIOS_PROCESSOR_STATUS_DISABLED_USER	2
+#define SMBIOS_PROCESSOR_STATUS_DISABLED_BIOS	3
+#define SMBIOS_PROCESSOR_STATUS_IDLE		4
+#define SMBIOS_PROCESSOR_STATUS_OTHER		7
+
+#define SMBIOS_PROCESSOR_UPGRADE_OTHER		1
+#define SMBIOS_PROCESSOR_UPGRADE_UNKNOWN	2
+#define SMBIOS_PROCESSOR_UPGRADE_NONE		6
+
+#define SMBIOS_PROCESSOR_FAMILY_OTHER	1
+#define SMBIOS_PROCESSOR_FAMILY_UNKNOWN	2
+#define SMBIOS_PROCESSOR_FAMILY_RSVD	255
+#define SMBIOS_PROCESSOR_FAMILY_ARMV7	256
+#define SMBIOS_PROCESSOR_FAMILY_ARMV8	257
+#define SMBIOS_PROCESSOR_FAMILY_RV32	512
+#define SMBIOS_PROCESSOR_FAMILY_RV64	513
+
+#define SMBIOS_PROCESSOR_FAMILY_EXT	0xfe
+
+/* Processor Characteristics */
+#define SMBIOS_PROCESSOR_RSVD		1 /* BIT(0) */
+#define SMBIOS_PROCESSOR_UND		2 /* BIT(1) */
+#define SMBIOS_PROCESSOR_64BIT		4 /* BIT(2) */
+#define SMBIOS_PROCESSOR_MULTICORE	8 /* BIT(3) */
+#define SMBIOS_PROCESSOR_HWTHREAD	16 /* BIT(4) */
+#define SMBIOS_PROCESSOR_EXEC_PROT	32 /* BIT(5) */
+#define SMBIOS_PROCESSOR_ENH_VIRT	64 /* BIT(6) */
+#define SMBIOS_PROCESSOR_POW_CON	0x80 /* BIT(7) */
+#define SMBIOS_PROCESSOR_128BIT		0x100 /* BIT(8) */
+#define SMBIOS_PROCESSOR_ARM64_SOCID	0x200 /* BIT(9) */
+
+/*
+ * Cache Information
+ */
+
+#define SMBIOS_CACHE_SIZE_EXT_KB (2047 * 1024) /* 2047 MiB */
+#define SMBIOS_CACHE_HANDLE_NONE 0xffff
+
+/* System Cache Type */
+#define SMBIOS_CACHE_SYSCACHE_TYPE_OTHER	1
+#define SMBIOS_CACHE_SYSCACHE_TYPE_UNKNOWN	2
+#define SMBIOS_CACHE_SYSCACHE_TYPE_INST		3
+#define SMBIOS_CACHE_SYSCACHE_TYPE_DATA		4
+#define SMBIOS_CACHE_SYSCACHE_TYPE_UNIFIED	5
+
+/* Cache Speed */
+#define SMBIOS_CACHE_SPEED_UNKNOWN	0
+
+/* SRAM Type */
+#define SMBIOS_CACHE_SRAM_TYPE_UNKNOWN	2 /* BIT(1) */
+
+/* Error Correction Type */
+#define SMBIOS_CACHE_ERRCORR_OTHER	1
+#define SMBIOS_CACHE_ERRCORR_UNKNOWN	2
+#define SMBIOS_CACHE_ERRCORR_NONE	3
+#define SMBIOS_CACHE_ERRCORR_PARITY	4
+#define SMBIOS_CACHE_ERRCORR_SBITECC	5
+#define SMBIOS_CACHE_ERRCORR_MBITECC	6
+
+/* Cache Configuration */
+#define SMBIOS_CACHE_LEVEL_1	0
+#define SMBIOS_CACHE_LEVEL_2	1
+#define SMBIOS_CACHE_LEVEL_3	2
+#define SMBIOS_CACHE_LEVEL_4	3
+#define SMBIOS_CACHE_LEVEL_5	4
+#define SMBIOS_CACHE_LEVEL_6	5
+#define SMBIOS_CACHE_LEVEL_7	6
+#define SMBIOS_CACHE_LEVEL_8	7
+#define SMBIOS_CACHE_SOCKETED	8 /* BIT(3) */
+#define SMBIOS_CACHE_LOCATE_EXTERNAL	32 /* BIT(5) */
+#define SMBIOS_CACHE_LOCATE_RESERVED	64 /* BIT(6) */
+#define SMBIOS_CACHE_LOCATE_UNKNOWN	96 /* (BIT(5) | BIT(6)) */
+#define SMBIOS_CACHE_ENABLED	0x80 /* BIT(7) */
+#define SMBIOS_CACHE_OP_WB	0x100 /* BIT(8), Write Back */
+#define SMBIOS_CACHE_OP_VAR	0x200 /* BIT(9), Varies with Memory Address */
+#define SMBIOS_CACHE_OP_UND	0x300 /* (BIT(8) | BIT(9)), Unknown*/
+
+/* Cache Granularity */
+#define SMBIOS_CACHE_GRANU_1K	0
+#define SMBIOS_CACHE_GRANU_64K	1
+
+/* Cache Associativity */
+#define SMBIOS_CACHE_ASSOC_OTHER	1
+#define SMBIOS_CACHE_ASSOC_UNKNOWN	2
+#define SMBIOS_CACHE_ASSOC_DMAPPED	3
+#define SMBIOS_CACHE_ASSOC_2WAY		4
+#define SMBIOS_CACHE_ASSOC_4WAY		5
+#define SMBIOS_CACHE_ASSOC_FULLY	6
+#define SMBIOS_CACHE_ASSOC_8WAY		7
+#define SMBIOS_CACHE_ASSOC_16WAY	8
+#define SMBIOS_CACHE_ASSOC_12WAY	9
+#define SMBIOS_CACHE_ASSOC_24WAY	10
+#define SMBIOS_CACHE_ASSOC_32WAY	11
+#define SMBIOS_CACHE_ASSOC_48WAY	12
+#define SMBIOS_CACHE_ASSOC_64WAY	13
+#define SMBIOS_CACHE_ASSOC_20WAY	14
+
+/*
+ * System Reset Capabilities
+ */
+
+#define SMBIOS_SYSRESET_CAP_SYSRESET_ENABLED	(1 << 0)
+#define SMBIOS_SYSRESET_CAP_BOOTOPT_RESET_OS	(1 << 1)
+#define SMBIOS_SYSRESET_CAP_BOOTOPT_SYSUTIL	(2 << 1)
+#define SMBIOS_SYSRESET_CAP_BOOTOPT_NO_RESET	(3 << 1)
+#define SMBIOS_SYSRESET_CAP_BOOTLIMIT_RESET_OS	(1 << 3)
+#define SMBIOS_SYSRESET_CAP_BOOTLIMIT_SYSUTIL	(2 << 3)
+#define SMBIOS_SYSRESET_CAP_BOOTLIMIT_NO_RESET	(3 << 3)
+#define SMBIOS_SYSRESET_CAP_WATCHDOG		(1 << 5)
+
+/*
+ * Boot Status
+ */
+
+#define SMBIOS_BOOT_STATUS_NO_ERRORS		0
+#define SMBIOS_BOOT_STATUS_NO_BOOTABLE_MEDIA	1
+#define SMBIOS_BOOT_STATUS_NORMAL_OS_FAILED	2
+#define SMBIOS_BOOT_STATUS_FW_DETECTED_HWFAULT	3
+#define SMBIOS_BOOT_STATUS_OS_DETECTED_HWFAULT	4
+#define SMBIOS_BOOT_STATUS_USER_REQ_BOOT	5
+#define SMBIOS_BOOT_STATUS_SECURITY_VIOLATION	6
+#define SMBIOS_BOOT_STATUS_PREV_REQ_IMAGE	7
+#define SMBIOS_BOOT_STATUS_WATCHDOG_REBOOT	8
+#define SMBIOS_BOOT_STATUS_OEM_SPECIFIC_START	128
+#define SMBIOS_BOOT_STATUS_OEM_SPECIFIC_END	191
+#define SMBIOS_BOOT_STATUS_PROD_SPECIFIC_START	192
+#define SMBIOS_BOOT_STATUS_PROD_SPECIFIC_END	255
+
+#endif /* _SMBIOS_DEF_H_ */
diff --git a/include/tables_csum.h b/include/tables_csum.h
new file mode 100644
index 000000000000..6d047ea09a25
--- /dev/null
+++ b/include/tables_csum.h
@@ -0,0 +1,23 @@
+/* SPDX-License-Identifier: GPL-2.0+ */
+/* SPDX-Comment: Origin-URL: https://github.com/u-boot/u-boot/blob/e3db8d60becb9842eb382d78863dd6f3d3756009/include/tables_csum.h */
+/* SPDX-FileCopyrightText: 2015, Bin Meng <bmeng.cn@gmail.com> */
+
+#ifndef _TABLES_CSUM_H_
+#define _TABLES_CSUM_H_
+
+#include <linux/types.h>
+
+/**
+ * table_compute_checksum() - Compute a table checksum
+ *
+ * This computes an 8-bit checksum for the configuration table.
+ * All bytes in the configuration table, including checksum itself and
+ * reserved bytes must add up to zero.
+ *
+ * @v:		configuration table base address
+ * @len:	configuration table size
+ * @return:	the 8-bit checksum
+ */
+u8 table_compute_checksum(const void *v, const size_t len);
+
+#endif
diff --git a/lib/Kconfig b/lib/Kconfig
index c83589e2d9e4..3d4221246ea2 100644
--- a/lib/Kconfig
+++ b/lib/Kconfig
@@ -44,6 +44,15 @@ config XZ_DECOMPRESS
 	select XZ_DEC_SPARC
 	select XZ_DEC_ARM64
 
+config SMBIOS
+	bool "SMBIOS utility functions" if COMPILE_TEST
+	help
+	  The System Management BIOS (SMBIOS) specification defines data
+	  structures to read management information produced by the BIOS
+	  of a computer. barebox can make use of this to report information
+	  like its the board serial number, reset/wake reason, or whether
+	  a hardware watchdog has been enabled.
+
 config XZ_DEC_X86
 	bool
 
diff --git a/lib/Makefile b/lib/Makefile
index 38343fdbafcc..b9b0a59ebbee 100644
--- a/lib/Makefile
+++ b/lib/Makefile
@@ -37,6 +37,7 @@ obj-y			+= parser.o
 obj-y			+= iov_iter.o
 obj-y			+= math/
 obj-y			+= uuid.o
+obj-$(CONFIG_SMBIOS)	+= smbios.o tables_csum.o
 obj-$(CONFIG_XXHASH)	+= xxhash.o
 obj-$(CONFIG_BZLIB)	+= decompress_bunzip2.o
 obj-$(CONFIG_ZLIB)	+= decompress_inflate.o zlib_inflate/
diff --git a/lib/smbios.c b/lib/smbios.c
new file mode 100644
index 000000000000..c50fc907b255
--- /dev/null
+++ b/lib/smbios.c
@@ -0,0 +1,412 @@
+// SPDX-License-Identifier: GPL-2.0+
+// SPDX-FileCopyrightText: 2015, Bin Meng <bmeng.cn@gmail.com>
+// SPDX-Comment: Origin-URL: https://github.com/u-boot/u-boot/blob/8327aa9af4be32b4236dfd25c8cefe568e9b3641/lib/smbios.c
+// SPDX-Comment: Origin-URL: https://github.com/coreboot/coreboot/blob/main/src/arch/x86/smbios.c
+
+#include <linux/bitfield.h>
+#include <linux/stringify.h>
+#include <linux/printk.h>
+#include <linux/kstrtox.h>
+#include <linux/sprintf.h>
+#include <linux/minmax.h>
+#include <linux/align.h>
+#include <linux/array_size.h>
+#include <linux/uuid.h>
+#include <string.h>
+#include <smbios.h>
+#include <machine_id.h>
+#include <generated/version.h>
+#include <malloc.h>
+#include <efi/mode.h>
+#include <watchdog.h>
+#include <restart.h>
+#include <linux/reboot-mode.h>
+#include <barebox.h>
+#include <barebox-info.h>
+#include <tables_csum.h>
+#include <of.h>
+#include <reset_source.h>
+#include <asm/io.h>
+#include <linux/sizes.h>
+
+#define BAREBOX_VERSION_YEAR	FIELD_GET(0xFFFF0000u, LINUX_VERSION_CODE)
+#define BAREBOX_VERSION_MONTH	FIELD_GET(0x0000FF00u, LINUX_VERSION_CODE)
+#define BAREBOX_VERSION_PATCH	FIELD_GET(0x000000FFu, LINUX_VERSION_CODE)
+
+static char *smbios_version;
+
+static inline void *map_sysmem(void *addr, size_t len)
+{
+	return addr;
+}
+
+static inline void unmap_sysmem(void *addr) { }
+
+/**
+ * struct smbios_ctx - context for writing SMBIOS tables
+ *
+ * @eos:		end-of-string pointer for the table being processed.
+ *			This is set up when we start processing a table
+ * @next_ptr:		pointer to the start of the next string to be added.
+ *			When the table is not empty, this points to the byte
+ *			after the \0 of the previous string.
+ * @last_str:		points to the last string that was written to the table,
+ *			or NULL if none
+ */
+struct smbios_ctx {
+	char *eos;
+	char *next_ptr;
+	char *last_str;
+};
+
+/**
+ * Function prototype to write a specific type of SMBIOS structure
+ *
+ * @addr:	start address to write the structure
+ * @handle:	the structure's handle, a unique 16-bit number
+ * @ctx:	context for writing the tables
+ * Return:	size of the structure
+ */
+typedef int (*smbios_write_type)(void **addr, int handle,
+				 struct smbios_ctx *ctx);
+
+/**
+ * struct smbios_write_method - Information about a table-writing function
+ *
+ * @write: Function to call
+ */
+struct smbios_write_method {
+	smbios_write_type write;
+};
+
+/**
+ * smbios_add_string() - add a string to the string area
+ *
+ * This adds a string to the string area which is appended directly after
+ * the formatted portion of an SMBIOS structure.
+ *
+ * @ctx:	SMBIOS context
+ * @str:	string to add
+ * Return:	string number in the string area. 0 if str is NULL.
+ */
+static int smbios_add_string(struct smbios_ctx *ctx, const char *str)
+{
+	int i = 1;
+	char *p = ctx->eos;
+
+	if (!str)
+		return 0;
+
+	for (;;) {
+		if (!*p) {
+			ctx->last_str = p;
+			strcpy(p, str);
+			p += strlen(str);
+			*p++ = '\0';
+			ctx->next_ptr = p;
+			*p++ = '\0';
+
+			return i;
+		}
+
+		if (!strcmp(p, str)) {
+			ctx->last_str = p;
+			return i;
+		}
+
+		p += strlen(p) + 1;
+		i++;
+	}
+}
+
+static void smbios_set_eos(struct smbios_ctx *ctx, char *eos)
+{
+	ctx->eos = eos;
+	ctx->next_ptr = eos;
+	ctx->last_str = NULL;
+}
+
+int smbios_update_version(const char *version)
+{
+	char *ptr = smbios_version;
+	uint old_len, len;
+
+	if (!ptr)
+		return -ENOENT;
+
+	/*
+	 * This string is supposed to have at least enough bytes and is
+	 * padded with spaces. Update it, taking care not to move the
+	 * \0 terminator, so that other strings in the string table
+	 * are not disturbed. See smbios_add_string()
+	 */
+	old_len = strnlen(ptr, SMBIOS_STR_MAX);
+	len = strnlen(version, SMBIOS_STR_MAX);
+	if (len > old_len)
+		return -ENOSPC;
+
+	pr_debug("Replacing SMBIOS type 0 version string '%s'\n", ptr);
+	memcpy(ptr, version, len);
+
+	return 0;
+}
+
+/**
+ * smbios_string_table_len() - compute the string area size
+ *
+ * This computes the size of the string area including the string terminator.
+ *
+ * @ctx:	SMBIOS context
+ * Return:	string area size
+ */
+static int smbios_string_table_len(const struct smbios_ctx *ctx)
+{
+	/* In case no string is defined we have to return two \0 */
+	if (ctx->next_ptr == ctx->eos)
+		return 2;
+
+	/* Allow for the final \0 after all strings */
+	return (ctx->next_ptr + 1) - ctx->eos;
+}
+
+static int smbios_write_type0(void **current, int handle,
+			      struct smbios_ctx *ctx)
+{
+	char dmidate[sizeof("mm/dd/yyyy")];
+	struct smbios_type0 *t;
+	int len = sizeof(*t);
+
+	t = map_sysmem(*current, len);
+	memset(t, 0, len);
+	fill_smbios_header(t, SMBIOS_BIOS_INFORMATION, len, handle);
+	smbios_set_eos(ctx, t->eos);
+	t->vendor = smbios_add_string(ctx, "barebox");
+
+	t->bios_ver = smbios_add_string(ctx, version_string);
+	if (t->bios_ver)
+		smbios_version = ctx->last_str;
+
+	pr_debug("smbios_version = %p: '%s'\n", smbios_version,
+		  smbios_version);
+
+	scnprintf(dmidate, sizeof(dmidate), "%02d/01/%04d",
+		  BAREBOX_VERSION_MONTH, BAREBOX_VERSION_YEAR);
+
+	t->bios_release_date = smbios_add_string(ctx, dmidate);
+
+	t->bios_characteristics = BIOS_CHARACTERISTICS_PCI_SUPPORTED |
+				  BIOS_CHARACTERISTICS_SELECTABLE_BOOT |
+				  BIOS_CHARACTERISTICS_UPGRADEABLE;
+
+	if (efi_is_loader())
+		t->bios_characteristics_ext2 |= BIOS_CHARACTERISTICS_EXT2_UEFI;
+
+	t->bios_characteristics_ext2 |= BIOS_CHARACTERISTICS_EXT2_TARGET;
+
+	/* bios_major_release has only one byte, so drop century */
+	t->bios_major_release = BAREBOX_VERSION_YEAR % 100;
+	t->bios_minor_release = BAREBOX_VERSION_YEAR * 10 + min(BAREBOX_VERSION_PATCH, 9u);
+	t->ec_major_release = 0xff;
+	t->ec_minor_release = 0xff;
+
+	len = t->hdr.length + smbios_string_table_len(ctx);
+	*current += len;
+	unmap_sysmem(t);
+
+	return len;
+}
+
+static int smbios_write_type1(void **current, int handle,
+			      struct smbios_ctx *ctx)
+{
+	struct smbios_type1 *t;
+	int len = sizeof(*t);
+	char *vendor;
+
+	t = map_sysmem(*current, len);
+	memset(t, 0, len);
+	fill_smbios_header(t, SMBIOS_SYSTEM_INFORMATION, len, handle);
+	smbios_set_eos(ctx, t->eos);
+
+	vendor = of_get_machine_vendor();
+	t->manufacturer = smbios_add_string(ctx, vendor);
+	free(vendor);
+
+	t->product_name = smbios_add_string(ctx, barebox_get_model());
+	t->version = smbios_add_string(ctx, NULL);
+	t->serial_number = smbios_add_string(ctx, barebox_get_serial_number());
+
+	if (IS_ENABLED(CONFIG_MACHINE_ID_SPECIFIC)) {
+		uuid_t id;
+		int ret;
+
+		ret = machine_id_get_app_specific(&id, ARRAY_AND_SIZE("barebox-smbios"),
+						  NULL);
+		if (!ret)
+			export_uuid(t->uuid, &id);
+	}
+
+	if (reset_source_get() == RESET_WKE)
+		t->wakeup_type = SMBIOS_WAKEUP_TYPE_OTHER;
+	else
+		t->wakeup_type = SMBIOS_WAKEUP_TYPE_UNKNOWN;
+
+	t->sku_number = smbios_add_string(ctx, NULL);
+	t->family = smbios_add_string(ctx, NULL);
+
+	len = t->hdr.length + smbios_string_table_len(ctx);
+	*current += len;
+	unmap_sysmem(t);
+
+	return len;
+}
+
+static int smbios_write_type23(void **current, int handle,
+			       struct smbios_ctx *ctx)
+{
+	struct smbios_type23 *t;
+	int len = sizeof(*t);
+
+	t = map_sysmem(*current, len);
+	memset(t, 0, len);
+
+	t->capabilities =  0;
+
+	if (restart_handler_get_by_name(NULL, 0))
+		t->capabilities |= SMBIOS_SYSRESET_CAP_SYSRESET_ENABLED;
+
+	t->capabilities |= SMBIOS_SYSRESET_CAP_BOOTOPT_RESET_OS;
+	t->capabilities |= SMBIOS_SYSRESET_CAP_BOOTLIMIT_RESET_OS;
+
+	if (watchdog_get_default())
+		t->capabilities |= SMBIOS_SYSRESET_CAP_WATCHDOG;
+
+	t->reset_count = 0xffff;
+	t->reset_limit = 0xffff;
+
+	// TODO: we could pass actual info here, but how should we round
+	// a 30s watchdog timeout?
+	t->timer_interval = 0xffff;
+	t->timeout = 0xffff;
+
+	fill_smbios_header(t, SMBIOS_SYSTEM_RESET, len, handle);
+	smbios_set_eos(ctx, t->eos);
+
+	*current += len;
+	unmap_sysmem(t);
+
+	return len;
+}
+
+static u8 compute_boot_status(void)
+{
+	switch (reset_source_get()) {
+		case RESET_WDG:
+			return SMBIOS_BOOT_STATUS_WATCHDOG_REBOOT;
+		case RESET_THERM:
+		case RESET_BROWNOUT:
+			return SMBIOS_BOOT_STATUS_FW_DETECTED_HWFAULT;
+		default:
+			break;
+	}
+
+	switch (get_autoboot_state()) {
+		case AUTOBOOT_ABORT:
+		case AUTOBOOT_HALT:
+			return SMBIOS_BOOT_STATUS_USER_REQ_BOOT;
+		default:
+			break;
+	}
+
+	if (reboot_mode_get())
+		return SMBIOS_BOOT_STATUS_PREV_REQ_IMAGE;
+
+	return SMBIOS_BOOT_STATUS_NO_ERRORS;
+}
+
+static int smbios_write_type32(void **current, int handle,
+			       struct smbios_ctx *ctx)
+{
+	struct smbios_type32 *t;
+	int len = sizeof(*t);
+
+	t = map_sysmem(*current, len);
+	memset(t, 0, len);
+
+	t->boot_status = compute_boot_status();
+
+	fill_smbios_header(t, SMBIOS_SYSTEM_BOOT_INFORMATION, len, handle);
+	smbios_set_eos(ctx, t->eos);
+
+	*current += len;
+	unmap_sysmem(t);
+
+	return len;
+}
+
+static int smbios_write_type127(void **current, int handle,
+				struct smbios_ctx *ctx)
+{
+	struct smbios_type127 *t;
+	int len = sizeof(*t);
+
+	t = map_sysmem(*current, len);
+	memset(t, 0, len);
+	fill_smbios_header(t, SMBIOS_END_OF_TABLE, len, handle);
+
+	*current += len;
+	unmap_sysmem(t);
+
+	return len;
+}
+
+static struct smbios_write_method smbios_write_funcs[] = {
+	{ smbios_write_type0, },
+	{ smbios_write_type1, },
+	{ smbios_write_type23, },
+	{ smbios_write_type32, },
+	{ smbios_write_type127 },
+};
+
+void *write_smbios_table(void *addr)
+{
+	void *table_addr, *start_addr;
+	struct smbios3_entry *se;
+	struct smbios_ctx ctx;
+	void *tables;
+	int len = 0;
+	int handle = 0;
+	int i;
+
+	start_addr = addr;
+
+	/* move past the (so-far-unwritten) header to start writing structs */
+	addr = PTR_ALIGN(addr + sizeof(struct smbios3_entry), 16);
+	tables = addr;
+
+	/* populate minimum required tables */
+	for (i = 0; i < ARRAY_SIZE(smbios_write_funcs); i++) {
+		const struct smbios_write_method *method;
+
+		method = &smbios_write_funcs[i];
+		len += method->write(&addr, handle++, &ctx);
+	}
+
+	table_addr = map_sysmem(tables, 0);
+
+	/* now go back and write the SMBIOS3 header */
+	se = map_sysmem(start_addr, sizeof(struct smbios3_entry));
+	memset(se, '\0', sizeof(struct smbios3_entry));
+	memcpy(se->anchor, "_SM3_", 5);
+	se->length = sizeof(struct smbios3_entry);
+	se->major_ver = SMBIOS_MAJOR_VER;
+	se->minor_ver = SMBIOS_MINOR_VER;
+	se->doc_rev = 0;
+	se->entry_point_rev = 1;
+	se->table_maximum_size = len;
+	se->struct_table_address = virt_to_phys(table_addr);
+	se->checksum = table_compute_checksum(se, sizeof(struct smbios3_entry));
+	unmap_sysmem(se);
+
+	return addr;
+}
diff --git a/lib/tables_csum.c b/lib/tables_csum.c
new file mode 100644
index 000000000000..33958444e013
--- /dev/null
+++ b/lib/tables_csum.c
@@ -0,0 +1,18 @@
+// SPDX-License-Identifier: GPL-2.0+
+// SPDX-Comment: Origin-URL: https://github.com/u-boot/u-boot/blob/e3db8d60becb9842eb382d78863dd6f3d3756009/lib/tables_csum.c
+/* SPDX-FileCopyrightText: 2015, Bin Meng <bmeng.cn@gmail.com> */
+
+#include <linux/types.h>
+#include <tables_csum.h>
+
+u8 table_compute_checksum(const void *v, const size_t len)
+{
+	const u8 *bytes = v;
+	u8 checksum = 0;
+	int i;
+
+	for (i = 0; i < len; i++)
+		checksum -= bytes[i];
+
+	return checksum;
+}
diff --git a/net/Kconfig b/net/Kconfig
index a37eff60a12f..34cf9bcf4aa5 100644
--- a/net/Kconfig
+++ b/net/Kconfig
@@ -9,7 +9,7 @@ if NET
 config NET_ETHADDR_FROM_MACHINE_ID
 	bool
 	prompt "generate stable Ethernet address"
-	depends on MACHINE_ID && HAVE_DIGEST_SHA256 && HAVE_DIGEST_HMAC
+	depends on MACHINE_ID_SPECIFIC
 	help
 	  By default, barebox will generate random Ethernet addresses for
 	  interfaces that had no explicit Ethernet address set via
-- 
2.47.3



