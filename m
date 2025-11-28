Delivery-date: Fri, 28 Nov 2025 18:22:34 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vP2B0-005rGx-1F
	for lore@lore.pengutronix.de;
	Fri, 28 Nov 2025 18:22:34 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vP2Az-0001kn-5w
	for lore@pengutronix.de; Fri, 28 Nov 2025 18:22:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Gjg7seqyGng5kiE/qLfuiA2bHr26zKh6kr6JvlPFx/g=; b=OgZhFCtLQ/8enBXJxuyiApz45y
	Gb3HKJV5WiQNxkBHTQRy5qtNARQmeclMfribGnlvR09hrqUdRmyqlx8y5XwZHOhPrNRfKDkaagkYk
	5Ztd/aGtQAwc+i4HIlNwRqETeeOoQAcbmqZSPhCwZRl9O1o3aAP6JoxdsBgsPm4C1icgGrhmWeywa
	xL+F406MCjND72Kaj+oD6pI5pBXNJfD9jPf3wl84HAbNV8AHrfsvFF29gN4GDc1IGAopkqKJnVOYc
	BtpLHctsjj6aBerDMG51GDgP3o5ITytlMQvcRGJbXGq9hIAn3fU5Xus38JEQ2VKM0/4DLRg8MiV+U
	LWNNI6PQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vP2AY-00000000j2M-46IB;
	Fri, 28 Nov 2025 17:22:06 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vP2AS-00000000ixg-2hxh
	for barebox@lists.infradead.org;
	Fri, 28 Nov 2025 17:22:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vP2AQ-0001Jn-WC; Fri, 28 Nov 2025 18:21:59 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vP2AQ-002zVP-2L;
	Fri, 28 Nov 2025 18:21:58 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vP2AQ-000000009Su-2ebe;
	Fri, 28 Nov 2025 18:21:58 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 28 Nov 2025 18:21:54 +0100
Message-ID: <20251128172158.36324-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251128172158.36324-1-a.fatoum@pengutronix.de>
References: <20251128172158.36324-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251128_092200_837080_00B85460 
X-CRM114-Status: GOOD (  18.57  )
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
Subject: [PATCH 2/3] efi: payload: fold setup_header.h into handover.c
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The x86_setup_header is only used for x86 handover, so move it there and
replace is_linux_image by a helper that doesn't depend on it.

No functional change expected.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/filetype.c          | 12 ++++++++
 efi/payload/bootm.c        |  1 -
 efi/payload/handover.c     | 57 +++++++++++++++++++++++++++++++++-
 efi/payload/image.c        | 15 +--------
 efi/payload/setup_header.h | 63 --------------------------------------
 include/filetype.h         |  1 +
 6 files changed, 70 insertions(+), 79 deletions(-)
 delete mode 100644 efi/payload/setup_header.h

diff --git a/common/filetype.c b/common/filetype.c
index a1807d285258..3e3e18dae0b3 100644
--- a/common/filetype.c
+++ b/common/filetype.c
@@ -586,3 +586,15 @@ bool filetype_is_barebox_image(enum filetype ft)
 		return false;
 	}
 }
+
+bool filetype_is_linux_efi_image(enum filetype ft)
+{
+	switch (ft) {
+	case filetype_arm64_efi_linux_image:
+	case filetype_riscv_efi_linux_image:
+	case filetype_x86_efi_linux_image:
+		return true;
+	default:
+		return false;
+	}
+}
diff --git a/efi/payload/bootm.c b/efi/payload/bootm.c
index 2e060762f238..c81211d896ad 100644
--- a/efi/payload/bootm.c
+++ b/efi/payload/bootm.c
@@ -33,7 +33,6 @@
 #include <efi/efi-device.h>
 
 #include "image.h"
-#include "setup_header.h"
 
 static bool ramdisk_is_fit(struct image_data *data)
 {
diff --git a/efi/payload/handover.c b/efi/payload/handover.c
index 8c6dd2896f47..68180d820e53 100644
--- a/efi/payload/handover.c
+++ b/efi/payload/handover.c
@@ -31,7 +31,62 @@
 #include <efi/efi-device.h>
 
 #include "image.h"
-#include "setup_header.h"
+
+struct x86_setup_header {
+	/* first sector of the image */
+	uint8_t code1[0x0020];
+	uint16_t cl_magic;		/**< Magic number 0xA33F */
+	uint16_t cl_offset;		/**< The offset of command line */
+	uint8_t code2[0x01F1 - 0x0020 - 2 - 2];
+	uint8_t setup_sects;		/**< The size of the setup in sectors */
+	uint16_t root_flags;		/**< If the root is mounted readonly */
+	uint16_t syssize;		/**< obsolete */
+	uint16_t swap_dev;		/**< obsolete */
+	uint16_t ram_size;		/**< obsolete */
+	uint16_t vid_mode;		/**< Video mode control */
+	uint16_t root_dev;		/**< Default root device number */
+	uint16_t boot_flag;		/**< 0xAA55 magic number */
+
+	/* second sector of the image */
+	uint16_t jump;			/**< Jump instruction (this is code!) */
+	uint32_t header;		/**< Magic signature "HdrS" */
+	uint16_t version;		/**< Boot protocol version supported */
+	uint32_t realmode_swtch;	/**< Boot loader hook */
+	uint16_t start_sys;		/**< The load-low segment (obsolete) */
+	uint16_t kernel_version;	/**< Points to kernel version string */
+	uint8_t type_of_loader;		/**< Boot loader identifier */
+	uint8_t loadflags;		/**< Boot protocol option flags */
+	uint16_t setup_move_size;	/**< Move to high memory size */
+	uint32_t code32_start;		/**< Boot loader hook */
+	uint32_t ramdisk_image;		/**< initrd load address */
+	uint32_t ramdisk_size;		/**< initrd size */
+	uint32_t bootsect_kludge;	/**< obsolete */
+	uint16_t heap_end_ptr;		/**< Free memory after setup end */
+	uint8_t ext_loader_ver;		/**< boot loader's extension of the version number */
+	uint8_t ext_loader_type;	/**< boot loader's extension of its type */
+	uint32_t cmd_line_ptr;		/**< Points to the kernel command line */
+	uint32_t initrd_addr_max;	/**< Highest address for initrd */
+	uint32_t kernel_alignment;	/**< Alignment unit required by the kernel */
+	uint8_t relocatable_kernel;	/** */
+	uint8_t min_alignment;		/** */
+	uint16_t xloadflags;		/** */
+	uint32_t cmdline_size;		/** */
+	uint32_t hardware_subarch;	/** */
+	uint64_t hardware_subarch_data;	/** */
+	uint32_t payload_offset;	/** */
+	uint32_t payload_length;	/** */
+	uint64_t setup_data;		/** */
+	uint64_t pref_address;		/** */
+	uint32_t init_size;		/** */
+	uint32_t handover_offset;	/** */
+} __attribute__ ((packed));
+
+static inline bool is_x86_setup_header(const void *base)
+{
+	const struct x86_setup_header *hdr = base;
+
+	return hdr->boot_flag == 0xAA55 && hdr->header == 0x53726448;
+}
 
 typedef void(*handover_fn)(void *image, struct efi_system_table *table,
 			   struct x86_setup_header *header);
diff --git a/efi/payload/image.c b/efi/payload/image.c
index 5e268ed0ce35..ed4307aab909 100644
--- a/efi/payload/image.c
+++ b/efi/payload/image.c
@@ -29,7 +29,6 @@
 #include <efi/efi-device.h>
 
 #include "image.h"
-#include "setup_header.h"
 
 static void *efi_read_file(const char *file, size_t *size)
 {
@@ -96,18 +95,6 @@ int efi_load_image(const char *file, struct efi_loaded_image **loaded_image,
 	return -efi_errno(efiret);
 }
 
-static bool is_linux_image(enum filetype filetype, const void *base)
-{
-	if (IS_ENABLED(CONFIG_X86) && is_x86_setup_header(base))
-		return true;
-
-	if (IS_ENABLED(CONFIG_ARM64) &&
-	    filetype == filetype_arm64_efi_linux_image)
-		return true;
-
-	return false;
-}
-
 int efi_execute_image(efi_handle_t handle,
 		      struct efi_loaded_image *loaded_image,
 		      enum filetype filetype)
@@ -119,7 +106,7 @@ int efi_execute_image(efi_handle_t handle,
 	is_driver = (loaded_image->image_code_type == EFI_BOOT_SERVICES_CODE) ||
 		(loaded_image->image_code_type == EFI_RUNTIME_SERVICES_CODE);
 
-	if (is_linux_image(filetype, loaded_image->image_base)) {
+	if (filetype_is_linux_efi_image(filetype)) {
 		options = linux_bootargs_get();
 		printf("Booting kernel via StartImage");
 		if (options) {
diff --git a/efi/payload/setup_header.h b/efi/payload/setup_header.h
deleted file mode 100644
index 4f094b844415..000000000000
--- a/efi/payload/setup_header.h
+++ /dev/null
@@ -1,63 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
-#ifndef __EFI_PAYLOAD_SETUP_HEADER_H__
-#define __EFI_PAYLOAD_SETUP_HEADER_H__
-
-#include <linux/types.h>
-
-struct x86_setup_header {
-	/* first sector of the image */
-	uint8_t code1[0x0020];
-	uint16_t cl_magic;		/**< Magic number 0xA33F */
-	uint16_t cl_offset;		/**< The offset of command line */
-	uint8_t code2[0x01F1 - 0x0020 - 2 - 2];
-	uint8_t setup_sects;		/**< The size of the setup in sectors */
-	uint16_t root_flags;		/**< If the root is mounted readonly */
-	uint16_t syssize;		/**< obsolete */
-	uint16_t swap_dev;		/**< obsolete */
-	uint16_t ram_size;		/**< obsolete */
-	uint16_t vid_mode;		/**< Video mode control */
-	uint16_t root_dev;		/**< Default root device number */
-	uint16_t boot_flag;		/**< 0xAA55 magic number */
-
-	/* second sector of the image */
-	uint16_t jump;			/**< Jump instruction (this is code!) */
-	uint32_t header;		/**< Magic signature "HdrS" */
-	uint16_t version;		/**< Boot protocol version supported */
-	uint32_t realmode_swtch;	/**< Boot loader hook */
-	uint16_t start_sys;		/**< The load-low segment (obsolete) */
-	uint16_t kernel_version;	/**< Points to kernel version string */
-	uint8_t type_of_loader;		/**< Boot loader identifier */
-	uint8_t loadflags;		/**< Boot protocol option flags */
-	uint16_t setup_move_size;	/**< Move to high memory size */
-	uint32_t code32_start;		/**< Boot loader hook */
-	uint32_t ramdisk_image;		/**< initrd load address */
-	uint32_t ramdisk_size;		/**< initrd size */
-	uint32_t bootsect_kludge;	/**< obsolete */
-	uint16_t heap_end_ptr;		/**< Free memory after setup end */
-	uint8_t ext_loader_ver;		/**< boot loader's extension of the version number */
-	uint8_t ext_loader_type;	/**< boot loader's extension of its type */
-	uint32_t cmd_line_ptr;		/**< Points to the kernel command line */
-	uint32_t initrd_addr_max;	/**< Highest address for initrd */
-	uint32_t kernel_alignment;	/**< Alignment unit required by the kernel */
-	uint8_t relocatable_kernel;	/** */
-	uint8_t min_alignment;		/** */
-	uint16_t xloadflags;		/** */
-	uint32_t cmdline_size;		/** */
-	uint32_t hardware_subarch;	/** */
-	uint64_t hardware_subarch_data;	/** */
-	uint32_t payload_offset;	/** */
-	uint32_t payload_length;	/** */
-	uint64_t setup_data;		/** */
-	uint64_t pref_address;		/** */
-	uint32_t init_size;		/** */
-	uint32_t handover_offset;	/** */
-} __attribute__ ((packed));
-
-static inline bool is_x86_setup_header(const void *base)
-{
-	const struct x86_setup_header *hdr = base;
-
-	return hdr->boot_flag == 0xAA55 && hdr->header == 0x53726448;
-}
-
-#endif
diff --git a/include/filetype.h b/include/filetype.h
index ecbbd5873b00..440eb95bfb0c 100644
--- a/include/filetype.h
+++ b/include/filetype.h
@@ -89,6 +89,7 @@ int cdev_detect_type(struct cdev *cdev, enum filetype *type);
 enum filetype is_fat_or_mbr(const unsigned char *sector, unsigned long *bootsec);
 int is_fat_boot_sector(const void *_buf);
 bool filetype_is_barebox_image(enum filetype ft);
+bool filetype_is_linux_efi_image(enum filetype ft);
 
 static inline bool file_is_compressed_file(enum filetype ft)
 {
-- 
2.47.3



