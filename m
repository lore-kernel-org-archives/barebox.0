Delivery-date: Wed, 03 Jan 2024 19:33:00 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL632-002Nc0-2v
	for lore@lore.pengutronix.de;
	Wed, 03 Jan 2024 19:33:00 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL62w-0003lL-Kq
	for lore@pengutronix.de; Wed, 03 Jan 2024 19:33:00 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=s8IZ8hTFB7PDmqT9NKawtFDDHfuKjtJWlyEADUTzyDg=; b=XBOxd3mtiVK6SExj/nKC375SqQ
	wzf+OBJSUR/HjvqkWgHX7S5+yAGTNyClyMTeEVui5FmfQ6Zkt7d9TmcAjY/XrSLpRuK6EF6Oz2+YF
	50sDIAsuNq0ubhGJdWbWWKCpWQMz3/ufMF+rRMgAbPfX7kdFy+SPw/Jk9B97zPUypIJYnMP6PiR8y
	pCOIei92ih8Zsuc63t51DppDzAanCNNZRTZLALDbpQZmg85CikczvF1DxGHR5cNnKgCLTxSIhoips
	RIheajFm83ABB1zAgEyKpiIcpIqVQ00hKdbB6lbB4fMH1eIzgTVF0grSbgOzVTrMnjvQdBI5i+tu3
	An8h+EKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rL61a-00Bhfq-0z;
	Wed, 03 Jan 2024 18:31:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([185.203.201.7])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL612-00Bh64-0R
	for barebox@lists.infradead.org;
	Wed, 03 Jan 2024 18:31:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL610-0001U4-F7; Wed, 03 Jan 2024 19:30:54 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL610-000AuE-2I; Wed, 03 Jan 2024 19:30:54 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL5k5-001j4X-2D;
	Wed, 03 Jan 2024 19:13:25 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  3 Jan 2024 19:13:05 +0100
Message-Id: <20240103181312.409668-106-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240103181312.409668-1-a.fatoum@pengutronix.de>
References: <20240103181312.409668-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240103_103056_323702_9872E285 
X-CRM114-Status: GOOD (  18.38  )
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
Subject: [PATCH 105/112] efi: devicepath: let compiler worry about unaligned unpacking
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Device path nodes are tightly packed and subsequent device nodes may
start at any boundary. To parse these, existing code allocated a new
buffer and unpacked device paths into it, so they are at a natural
boundary (chosen as 8 bytes with x86_64 in mind).

We can simplify this by using __packed and letting the compiler worry
about not generating unaligned accesses. This has the benefit of
simplifying the incoming EFI loader implementation and we now no longer
leak the unpacked EFI device path.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 efi/devicepath.c          | 56 -------------------------------
 include/efi/device-path.h | 70 +++++++++++++++++++--------------------
 2 files changed, 35 insertions(+), 91 deletions(-)

diff --git a/efi/devicepath.c b/efi/devicepath.c
index 229810d49bbc..0df43f222018 100644
--- a/efi/devicepath.c
+++ b/efi/devicepath.c
@@ -40,15 +40,11 @@ char *cprintf(struct string *str, const char *fmt, ...)
 	return NULL;
 }
 
-#define MIN_ALIGNMENT_SIZE  8	/* FIXME: X86_64 specific */
-#define ALIGN_SIZE(a)   ((a % MIN_ALIGNMENT_SIZE) ? MIN_ALIGNMENT_SIZE - (a % MIN_ALIGNMENT_SIZE) : 0)
-
 #define device_path_type(a)           ( ((a)->type) & DEVICE_PATH_TYPE_MASK )
 #define next_device_path_node(a)       ( (const struct efi_device_path *) ( ((u8 *) (a)) + (a)->length))
 #define is_device_path_end_type(a)      ( device_path_type(a) == DEVICE_PATH_TYPE_END )
 #define is_device_path_end_sub_type(a)   ( (a)->sub_type == DEVICE_PATH_SUB_TYPE_END )
 #define is_device_path_end(a)          ( is_device_path_end_type(a) && is_device_path_end_sub_type(a) )
-#define is_device_path_unpacked(a)     ( (a)->type & DEVICE_PATH_TYPE_UNPACKED )
 
 #define set_device_path_end_node(a)  {                      \
             (a)->type = DEVICE_PATH_TYPE_END;           \
@@ -90,50 +86,6 @@ device_path_from_handle(efi_handle_t Handle)
 	return NULL;
 }
 
-static struct efi_device_path *
-unpack_device_path(const struct efi_device_path *dev_path)
-{
-	const struct efi_device_path *Src;
-	struct efi_device_path *Dest, *new_path;
-	unsigned long Size;
-
-	/* Walk device path and round sizes to valid boundaries */
-
-	Src = dev_path;
-	Size = 0;
-	for (;;) {
-		Size += Src->length;
-		Size += ALIGN_SIZE(Size);
-
-		if (is_device_path_end(Src)) {
-			break;
-		}
-
-		Src = next_device_path_node(Src);
-	}
-
-	new_path = xzalloc(Size);
-
-	Src = dev_path;
-	Dest = new_path;
-	for (;;) {
-		Size = Src->length;
-		memcpy(Dest, Src, Size);
-		Size += ALIGN_SIZE(Size);
-		Dest->length = Size;
-		Dest->type |= DEVICE_PATH_TYPE_UNPACKED;
-		Dest =
-		    (struct efi_device_path *) (((u8 *) Dest) + Size);
-
-		if (is_device_path_end(Src))
-			break;
-
-		Src = next_device_path_node(Src);
-	}
-
-	return new_path;
-}
-
 static void
 dev_path_pci(struct string *str, const void *dev_path)
 {
@@ -727,8 +679,6 @@ static void __device_path_to_str(struct string *str,
 	void (*dump_node) (struct string *, const void *);
 	int i;
 
-	dev_path = unpack_device_path(dev_path);
-
 	dev_path_node = dev_path;
 	while (!is_device_path_end(dev_path_node)) {
 		dump_node = NULL;
@@ -804,7 +754,6 @@ u8 device_path_to_type(const struct efi_device_path *dev_path)
 {
 	const struct efi_device_path *dev_path_next;
 
-	dev_path = unpack_device_path(dev_path);
 	dev_path_next = next_device_path_node(dev_path);
 
 	while (!is_device_path_end(dev_path_next)) {
@@ -819,7 +768,6 @@ u8 device_path_to_subtype(const struct efi_device_path *dev_path)
 {
 	const struct efi_device_path *dev_path_next;
 
-	dev_path = unpack_device_path(dev_path);
 	dev_path_next = next_device_path_node(dev_path);
 
 	while (!is_device_path_end(dev_path_next)) {
@@ -851,8 +799,6 @@ device_path_next_compatible_node(const struct efi_device_path *dev_path,
 
 char *device_path_to_partuuid(const struct efi_device_path *dev_path)
 {
-	dev_path = unpack_device_path(dev_path);
-
 	while ((dev_path = device_path_next_compatible_node(dev_path,
 				 DEVICE_PATH_TYPE_MEDIA_DEVICE, DEVICE_PATH_SUB_TYPE_HARD_DRIVE_PATH))) {
 		struct efi_device_path_hard_drive_path *hd =
@@ -872,8 +818,6 @@ char *device_path_to_filepath(const struct efi_device_path *dev_path)
 	struct efi_device_path_file_path *fp = NULL;
 	char *path;
 
-	dev_path = unpack_device_path(dev_path);
-
 	while ((dev_path = device_path_next_compatible_node(dev_path,
 				 DEVICE_PATH_TYPE_MEDIA_DEVICE, DEVICE_PATH_SUB_TYPE_FILE_PATH))) {
 		fp = container_of(dev_path, struct efi_device_path_file_path, header);
diff --git a/include/efi/device-path.h b/include/efi/device-path.h
index 39221ca369de..f6f11672f5d6 100644
--- a/include/efi/device-path.h
+++ b/include/efi/device-path.h
@@ -2,6 +2,7 @@
 #define __EFI_DEVICE_PATH_H
 
 #include <efi/types.h>
+#include <linux/compiler.h>
 
 /*
  * Hardware Device Path (UEFI 2.4 specification, version 2.4 § 9.3.2.)
@@ -14,13 +15,13 @@ struct efi_device_path_pci {
 	struct efi_device_path header;
 	u8 Function;
 	u8 Device;
-};
+} __packed;
 
 #define DEVICE_PATH_SUB_TYPE_PCCARD                    0x02
 struct efi_device_path_pccard {
 	struct efi_device_path header;
 	u8 function_number;
-};
+} __packed;
 
 #define DEVICE_PATH_SUB_TYPE_MEMORY                    0x03
 struct efi_device_path_memory {
@@ -28,24 +29,24 @@ struct efi_device_path_memory {
 	u32 memory_type;
 	efi_physical_addr_t starting_address;
 	efi_physical_addr_t ending_address;
-};
+} __packed;
 
 #define DEVICE_PATH_SUB_TYPE_VENDOR                    0x04
 struct efi_device_path_vendor {
 	struct efi_device_path header;
 	efi_guid_t Guid;
-};
+} __packed;
 
 struct efi_device_path_unknown_device_vendor {
 	struct efi_device_path_vendor device_path;
 	u8 legacy_drive_letter;
-};
+} __packed;
 
 #define DEVICE_PATH_SUB_TYPE_CONTROLLER            0x05
 struct efi_device_path_controller {
 	struct efi_device_path header;
 	u32 Controller;
-};
+} __packed;
 
 /*
  * ACPI Device Path (UEFI 2.4 specification, version 2.4 § 9.3.3 and 9.3.4.)
@@ -57,7 +58,7 @@ struct efi_device_path_acpi_hid {
 	struct efi_device_path header;
 	u32 HID;
 	u32 UID;
-};
+} __packed;
 
 #define DEVICE_PATH_SUB_TYPE_EXPANDED_ACPI_DEVICE		0x02
 struct efi_device_path_expanded_acpi {
@@ -66,13 +67,13 @@ struct efi_device_path_expanded_acpi {
 	u32 UID;
 	u32 CID;
 	u8 hid_str[];
-};
+} __packed;
 
 #define DEVICE_PATH_SUB_TYPE_ACPI_ADR_DEVICE 3
 struct efi_device_path_acpi_adr {
 	struct efi_device_path header;
 	u32 ADR;
-};
+} __packed;
 
 /*
  * EISA ID Macro
@@ -99,14 +100,14 @@ struct efi_device_path_atapi {
 	u8 primary_secondary;
 	u8 slave_master;
 	u16 Lun;
-};
+} __packed;
 
 #define DEVICE_PATH_SUB_TYPE_MSG_SCSI                     0x02
 struct efi_device_path_scsi {
 	struct efi_device_path header;
 	u16 Pun;
 	u16 Lun;
-};
+} __packed;
 
 #define DEVICE_PATH_SUB_TYPE_MSG_FIBRECHANNEL             0x03
 struct efi_device_path_fibrechannel {
@@ -114,7 +115,7 @@ struct efi_device_path_fibrechannel {
 	u32 Reserved;
 	u64 WWN;
 	u64 Lun;
-};
+} __packed;
 
 /**
  * Fibre Channel Ex sub_type.
@@ -126,21 +127,21 @@ struct efi_device_path_fibrechannelex {
 	u32 Reserved;
 	u8 WWN[8];		/* World Wide Name */
 	u8 Lun[8];		/* Logical unit, T-10 SCSI Architecture Model 4 specification */
-};
+} __packed;
 
 #define DEVICE_PATH_SUB_TYPE_MSG_1394                     0x04
 struct efi_device_path_f1394 {
 	struct efi_device_path header;
 	u32 Reserved;
 	u64 Guid;
-};
+} __packed;
 
 #define DEVICE_PATH_SUB_TYPE_MSG_USB                      0x05
 struct efi_device_path_usb {
 	struct efi_device_path header;
 	u8 Port;
 	u8 Endpoint;
-};
+} __packed;
 
 /**
  * SATA Device Path sub_type.
@@ -152,7 +153,7 @@ struct efi_device_path_sata {
 	u16 HBAPort_number;
 	u16 port_multiplier_port_number;
 	u16 Lun;		/* Logical Unit Number */
-};
+} __packed;
 
 /**
  * USB WWID Device Path sub_type.
@@ -165,7 +166,7 @@ struct efi_device_path_usb_wwid {
 	u16 vendor_id;
 	u16 product_id;
 	s16 serial_number[];	/* UTF-16 characters of the USB serial number */
-};
+} __packed;
 
 /**
  * Device Logical Unit sub_type.
@@ -175,7 +176,7 @@ struct efi_device_path_usb_wwid {
 struct efi_device_path_logical_unit {
 	struct efi_device_path header;
 	u8 Lun;			/* Logical Unit Number */
-};
+} __packed;
 
 #define DEVICE_PATH_SUB_TYPE_MSG_USB_CLASS                0x0f
 struct efi_device_path_usb_class {
@@ -185,20 +186,20 @@ struct efi_device_path_usb_class {
 	u8 device_class;
 	u8 device_subclass;
 	u8 device_protocol;
-};
+} __packed;
 
 #define DEVICE_PATH_SUB_TYPE_MSG_I2_o                      0x06
 struct efi_device_path_i2_o {
 	struct efi_device_path header;
 	u32 Tid;
-};
+} __packed;
 
 #define DEVICE_PATH_SUB_TYPE_MSG_MAC_ADDR                 0x0b
 struct efi_device_path_mac_addr {
 	struct efi_device_path header;
 	struct efi_mac_address mac_address;
 	u8 if_type;
-};
+} __packed;
 
 #define DEVICE_PATH_SUB_TYPE_MSG_IPv4                     0x0c
 struct efi_device_path_ipv4 {
@@ -212,7 +213,7 @@ struct efi_device_path_ipv4 {
 	/* new from UEFI version 2, code must check length field in header */
 	struct efi_ipv4_address gateway_ip_address;
 	struct efi_ipv4_address subnet_mask;
-};
+} __packed;
 
 #define DEVICE_PATH_SUB_TYPE_MSG_IPv6                     0x0d
 struct efi_device_path_ipv6 {
@@ -226,7 +227,7 @@ struct efi_device_path_ipv6 {
 	/* new from UEFI version 2, code must check length field in header */
 	u8 prefix_length;
 	struct efi_ipv6_address gateway_ip_address;
-};
+} __packed;
 
 /**
  * Device Logical Unit sub_type.
@@ -236,7 +237,7 @@ struct efi_device_path_ipv6 {
 struct efi_device_path_vlan {
 	struct efi_device_path header;
 	u16 vlan_id;
-};
+} __packed;
 
 #define DEVICE_PATH_SUB_TYPE_MSG_INFINIBAND               0x09
 struct efi_device_path_infiniband {
@@ -246,7 +247,7 @@ struct efi_device_path_infiniband {
 	u64 service_id;
 	u64 target_port_id;
 	u64 device_id;
-};
+} __packed;
 
 #define DEVICE_PATH_SUB_TYPE_MSG_UART                     0x0e
 struct efi_device_path_uart {
@@ -256,7 +257,7 @@ struct efi_device_path_uart {
 	u8 data_bits;
 	u8 Parity;
 	u8 stop_bits;
-};
+} __packed;
 
 #define DEVICE_PATH_SUB_TYPE_MSG_VENDOR                   0x0a
 /* Use VENDOR_DEVICE_PATH struct */
@@ -299,7 +300,7 @@ struct efi_device_path_hard_drive_path {
 	u8 signature[16];
 	u8 mbr_type;
 	u8 signature_type;
-};
+} __packed;
 
 #define MBR_TYPE_PCAT                       0x01
 #define MBR_TYPE_EFI_PARTITION_TABLE_HEADER 0x02
@@ -313,7 +314,7 @@ struct efi_device_path_cdrom_path {
 	u32 boot_entry;
 	u64 partition_start;
 	u64 partition_size;
-};
+} __packed;
 
 #define DEVICE_PATH_SUB_TYPE_VENDOR_PATH                 0x03
 /* Use VENDOR_DEVICE_PATH struct */
@@ -322,13 +323,13 @@ struct efi_device_path_cdrom_path {
 struct efi_device_path_file_path {
 	struct efi_device_path header;
 	s16 path_name[];
-};
+} __packed;
 
 #define DEVICE_PATH_SUB_TYPE_MEDIA_PROTOCOL               0x05
 struct efi_device_path_media_protocol {
 	struct efi_device_path header;
 	efi_guid_t Protocol;
-};
+} __packed;
 
 /**
  * PIWG Firmware File sub_type.
@@ -338,7 +339,7 @@ struct efi_device_path_media_protocol {
 struct efi_device_path_media_fw_vol_file_path {
 	struct efi_device_path header;
 	efi_guid_t fv_file_name;
-};
+} __packed;
 
 /**
  * PIWG Firmware Volume Device Path sub_type.
@@ -348,7 +349,7 @@ struct efi_device_path_media_fw_vol_file_path {
 struct efi_device_media_piwg_fw_vol {
 	struct efi_device_path header;
 	efi_guid_t fv_name;
-};
+} __packed;
 
 /**
  * Media relative offset range device path.
@@ -360,7 +361,7 @@ struct efi_device_media_relative_offset_range {
 	u32 Reserved;
 	u64 starting_offset;
 	u64 ending_offset;
-};
+} __packed;
 
 /*
  * BIOS Boot Specification Device Path (UEFI 2.4 specification, version 2.4 § 9.3.7.)
@@ -373,7 +374,7 @@ struct efi_device_path_bbs_bbs {
 	u16 device_type;
 	u16 status_flag;
 	s8 String[];
-};
+} __packed;
 
 /* device_type definitions - from BBS specification */
 #define BBS_TYPE_FLOPPY                 0x01
@@ -387,7 +388,6 @@ struct efi_device_path_bbs_bbs {
 
 
 #define DEVICE_PATH_TYPE_MASK			0x7f
-#define DEVICE_PATH_TYPE_UNPACKED		0x80
 
 #define DEVICE_PATH_TYPE_END			0x7f
 
-- 
2.39.2



