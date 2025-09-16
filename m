Delivery-date: Tue, 16 Sep 2025 06:03:01 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyMuD-003YbW-0B
	for lore@lore.pengutronix.de;
	Tue, 16 Sep 2025 06:03:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyMuA-0000WX-Gl
	for lore@pengutronix.de; Tue, 16 Sep 2025 06:03:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GiDFQtpbElp+Wl6KEsZdZObJNYnQXvAtA5+3YTgncTo=; b=fGxqLE4muRK8HWNgujx7bjmB8Q
	wi8w7PBRVa2kRRUrBmzOEbXpAxFkmiNErNElU43tduY0OHThchdyfQaQeiKEAeJxE+PKW7YVHEJv/
	1lxFtUu10fExk/EowsMTKkgwZZ3HI/jHgbUXMdw8gy/GNNj9bIOHOdrzT69/8RmwNTB7pAaBICt9F
	2KTQrzasSLpdn2VB5hOXQKQL8HGHyap69GCRC4WLHnDhYY0IgpMFHzydaNTdnLqyX4qMjhLhHBrbi
	MKtZkMYPK/tFD9+9L43TNgD5OG9WpoynckQB0qtd5f2ICQnjKzlEF/hSDrzRGClknmBZV5Vzfr4+i
	7zx6VsNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyMtb-00000006eao-3mKN;
	Tue, 16 Sep 2025 04:02:23 +0000
Received: from mail-wr1-x429.google.com ([2a00:1450:4864:20::429])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyMtY-00000006eX2-2rap
	for barebox@lists.infradead.org;
	Tue, 16 Sep 2025 04:02:22 +0000
Received: by mail-wr1-x429.google.com with SMTP id ffacd0b85a97d-3c68ac7e18aso3017202f8f.2
        for <barebox@lists.infradead.org>; Mon, 15 Sep 2025 21:02:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757995339; x=1758600139; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GiDFQtpbElp+Wl6KEsZdZObJNYnQXvAtA5+3YTgncTo=;
        b=O4HKZCUGqEOK3ZxiwspWlLurmgeGsQWeECI2SI0dOZ092M0A67DXWS0waX7h04Uu/e
         N+ewZh9yjvRNRd8Bwq1XDML+q9Yow7N1fd2uUHX1V6NzEbTMSQzsdOJJ7Ya8tvFhU3CP
         qBi+kSDUE63XAVGeKQAF3xoHK1nX3gENfJygzDhCfLnZ0wWr642R8HTBs96k/6ZNA0ei
         NwYRBuUizjjuJJroKkPaC5gKLdR95wZFSPWtOk9DebpyBX9GH9kypCfZwa+4S8xtLKDU
         FxMDL5tNfTzLpVXm7fbXFQs/I7LAkmTk2BWxPZXaokaUy03j2l4ji4PD+fAJVlJSyZvA
         0dNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757995339; x=1758600139;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GiDFQtpbElp+Wl6KEsZdZObJNYnQXvAtA5+3YTgncTo=;
        b=QTtR9ISqJe5xmMjnnAC4h+Nzb2/qaZhprSdu7px2ovUoEfU0/XE2yUSlQD3ph43sol
         Uh2BKHq5MvHrsx23qBWncpbTMvLnEgjdBlrV4RKkymK8JXvQG7+OpNRoVtMvYIOa9Zcd
         X1R3SLOqz1kpCJjvyUuA3mFyBceWYBE3ikd5zOn1vThQWSLHiACZPL8r6BVj40sf5Tnr
         svGGIeWXaMDB3zqb99hJgHeVyAUg4FKZCFJTs8WwW3fo/WNrimYbgU2TuNaWNik7fpA+
         qssePRXWOgk6fgWFCZF1/AIDedOCUU0p/ayvxh/Ba77AfDf/fzuBXoGXIb6dDyn9WzU0
         eAsQ==
X-Gm-Message-State: AOJu0YwImsqhNNbsRhntdPh/yAQCSAK4kzVQRR7thvQ5jaiqRzo4c9U5
	X8VXKJxG/m2eokXAuWYYLb3IoH8k9feZiymlN6PqzapCev4SfHcDxL0S
X-Gm-Gg: ASbGncuzzayvlvu539NN2/qTEjCyuLGxjviYqE3/l30ucG4Q1/DxB2q0Fa0GXyTjfdg
	/qYmJ4re2u+wQCYAokos2YpmorWAdvOqJTWIxPupcN/v9GOeRRE02Er/vQxG02edzl042BIgIsi
	79vZJIl89qCDH9fYczTGcUlluB3MT+PKAh4U62vCb/7WbiRvFQzT0LkR1htL/LOlMkOpxWQNX7u
	Y8YkFo1f+Uj1ioSsssCjKU2FdiBYPzOJRnjVwSlpAv9yDKpQi4Oqi2ausWqMmcsdm3n60UJB3g5
	sYKN6TDJZDS/gigvrTGc/66uLdx6iwUHvM9/UfyjGkSKkBA/zNHaY+4lu9qm1zEh6NnqwKgxohL
	CpCyZXPE5BLlvET2MZixas/OGeXRrbPltwqNMAMUSItZKLQgAEeWkTIb+y0hUiwba+bMoJdwMGT
	P2cXSDrelHyf21EnrvQJPBqQ==
X-Google-Smtp-Source: AGHT+IG+5N3CpRR1rd67uBfDOc/2+oDzgC1ByYCxC2s3J5cU+93lgfDuUwRi57aI2FYtceTMklnqRQ==
X-Received: by 2002:a05:6000:178b:b0:3ec:7ff4:23c5 with SMTP id ffacd0b85a97d-3ec7ff42654mr900204f8f.26.1757995338747;
        Mon, 15 Sep 2025 21:02:18 -0700 (PDT)
Received: from Latitude-7490.ht.home ([178.132.106.74])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3e813eb46f3sm13594706f8f.23.2025.09.15.21.02.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Sep 2025 21:02:18 -0700 (PDT)
From: chalianis1@gmail.com
To: s.hauer@pengutronix.de,
	a.fatoum@barebox.org
Cc: barebox@lists.infradead.org,
	Chali Anis <chalianis1@gmail.com>
Date: Tue, 16 Sep 2025 00:01:51 -0400
Message-Id: <20250916040155.814159-7-chalianis1@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250916040155.814159-1-chalianis1@gmail.com>
References: <20250916040155.814159-1-chalianis1@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250915_210220_750480_50A91155 
X-CRM114-Status: GOOD (  19.11  )
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
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v3 07/11] efi: payload: initrd: implement efi initrd media protocol.
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Chali Anis <chalianis1@gmail.com>

Add the ability to install an initrd media protocol from an initrd file
or a fitImage, support both the initrd media protocol or installing the
initramfs directly to efi like what linux do.

Signed-off-by: Chali Anis <chalianis1@gmail.com>
---
 efi/guid.c                |   7 +++
 efi/payload/efi-initrd.c  | 123 ++++++++++++++++++++++++++++++++++++++
 include/efi.h             |   4 ++
 include/efi/efi-payload.h |   3 +
 4 files changed, 137 insertions(+)
 create mode 100644 efi/payload/efi-initrd.c

diff --git a/efi/guid.c b/efi/guid.c
index ef230a2b2403..7b572acb768b 100644
--- a/efi/guid.c
+++ b/efi/guid.c
@@ -44,6 +44,7 @@ const efi_guid_t efi_load_file_protocol_guid = EFI_LOAD_FILE_PROTOCOL_GUID;
 const efi_guid_t efi_load_file2_protocol_guid = EFI_LOAD_FILE2_PROTOCOL_GUID;
 const efi_guid_t efi_device_path_utilities_protocol_guid =
 	EFI_DEVICE_PATH_UTILITIES_PROTOCOL_GUID;
+const efi_guid_t efi_linux_initrd_media_guid = EFI_LINUX_INITRD_MEDIA_GUID;
 
 #define EFI_GUID_STRING(guid, short, long) do {	\
 	if (!efi_guidcmp(guid, *g))		\
@@ -128,5 +129,11 @@ const char *efi_guid_string(efi_guid_t *g)
 	EFI_GUID_STRING(EFI_ISCSIDXE_INF_GUID, "IScsiDxe.inf", "EFI IScsiDxe.inf File GUID");
 	EFI_GUID_STRING(EFI_VLANCONFIGDXE_INF_GUID, "VlanConfigDxe.inf", "EFI VlanConfigDxe.inf File GUID");
 
+	/* FDT */
+	EFI_GUID_STRING(EFI_DEVICE_TREE_GUID, "DeviceTree", "EFI Device Tree GUID");
+
+	/* Ramdisk */
+	EFI_GUID_STRING(EFI_LINUX_INITRD_MEDIA_GUID, "Initrd Media", "EFI Linux Initrd Media GUID");
+
 	return "unknown";
 }
diff --git a/efi/payload/efi-initrd.c b/efi/payload/efi-initrd.c
new file mode 100644
index 000000000000..633fbc29c137
--- /dev/null
+++ b/efi/payload/efi-initrd.c
@@ -0,0 +1,123 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * efi-initrd.c - barebox EFI payload support
+ *
+ * Copyright (c) 2025 Anis Chali <chalianis1@gmail.com>
+ */
+#include <common.h>
+#include <driver.h>
+#include <init.h>
+#include <linux/hw_random.h>
+#include <efi.h>
+#include <efi/efi-device.h>
+#include <efi/device-path.h>
+#include <efi/efi-payload.h>
+
+static efi_status_t EFIAPI efi_initrd_load_file2(
+	struct efi_load_file_protocol *this, struct efi_device_path *file_path,
+	bool boot_policy, unsigned long *buffer_size, void *buffer);
+
+static const struct {
+	struct efi_device_path_vendor vendor;
+	struct efi_device_path end;
+} __packed initrd_dev_path = { { {
+					 DEVICE_PATH_TYPE_MEDIA_DEVICE,
+					 DEVICE_PATH_SUB_TYPE_VENDOR_PATH,
+					 sizeof(initrd_dev_path.vendor),
+				 },
+				 EFI_LINUX_INITRD_MEDIA_GUID },
+			       { DEVICE_PATH_TYPE_END, DEVICE_PATH_SUB_TYPE_END,
+				 DEVICE_PATH_END_LENGTH } };
+
+static struct efi_device_path_memory *initrd_dev;
+static efi_handle_t lf2_handle;
+static struct efi_load_file_protocol efi_lf2_p = {
+	.load_file = efi_initrd_load_file2
+};
+
+static efi_status_t EFIAPI efi_initrd_load_file2(
+	struct efi_load_file_protocol *this, struct efi_device_path *file_path,
+	bool boot_policy, unsigned long *buffer_size, void *buffer)
+{
+	size_t initrd_size;
+
+	if (!this || this != &efi_lf2_p || !buffer_size)
+		return EFI_INVALID_PARAMETER;
+
+	if (file_path->type != initrd_dev_path.end.type ||
+	    file_path->sub_type != initrd_dev_path.end.sub_type)
+		return EFI_INVALID_PARAMETER;
+
+	if (boot_policy)
+		return EFI_UNSUPPORTED;
+
+	initrd_size = initrd_dev->ending_address - initrd_dev->starting_address;
+	if (!buffer || *buffer_size < initrd_size) {
+		*buffer_size = initrd_size;
+		return EFI_BUFFER_TOO_SMALL;
+	}
+
+	else {
+		memcpy(buffer, (void *)(uintptr_t)initrd_dev->starting_address,
+		       initrd_size);
+		*buffer_size = initrd_size;
+	}
+
+	return EFI_SUCCESS;
+}
+
+int efi_initrd_register(void *initrd, size_t initrd_sz)
+{
+	efi_physical_addr_t mem;
+	efi_status_t efiret;
+	size_t sz;
+	int ret;
+
+	sz = sizeof(struct efi_device_path_memory) +
+	     sizeof(struct efi_device_path);
+	efiret = BS->allocate_pool(EFI_BOOT_SERVICES_DATA, sz, (void **)&mem);
+	if (EFI_ERROR(efiret)) {
+		pr_err("Failed to allocate memory for INITRD %s\n",
+		       efi_strerror(efiret));
+		ret = -efi_errno(efiret);
+		return ret;
+	}
+
+	initrd_dev = efi_phys_to_virt(mem);
+	initrd_dev->header.type = DEVICE_PATH_TYPE_HARDWARE_DEVICE;
+	initrd_dev->header.sub_type = DEVICE_PATH_SUB_TYPE_MEMORY;
+	initrd_dev->header.length = sizeof(struct efi_device_path_memory);
+	initrd_dev->memory_type = EFI_LOADER_DATA;
+	initrd_dev->starting_address = efi_virt_to_phys(initrd);
+	initrd_dev->ending_address = efi_virt_to_phys(initrd) + initrd_sz;
+
+	memcpy(&initrd_dev[1], &initrd_dev_path.end, DEVICE_PATH_END_LENGTH);
+
+	efiret = BS->install_multiple_protocol_interfaces(
+		&lf2_handle, &efi_load_file2_protocol_guid, &efi_lf2_p,
+		&efi_device_path_protocol_guid, &initrd_dev_path, NULL);
+	if (EFI_ERROR(efiret)) {
+		pr_err("Failed to install protocols for INITRD %s\n",
+		       efi_strerror(efiret));
+		ret = -efi_errno(efiret);
+		goto out;
+	}
+
+	return 0;
+out:
+	BS->free_pool(efi_phys_to_virt(mem));
+	return ret;
+}
+
+void efi_initrd_unregister(void)
+{
+	if (!initrd_dev)
+		return;
+
+	BS->uninstall_multiple_protocol_interfaces(
+		lf2_handle, &efi_device_path_protocol_guid, &initrd_dev_path,
+		&efi_load_file2_protocol_guid, &efi_lf2_p, NULL);
+
+	BS->free_pool(initrd_dev);
+	initrd_dev = NULL;
+}
diff --git a/include/efi.h b/include/efi.h
index 40b69fdb0188..bd339ea097c3 100644
--- a/include/efi.h
+++ b/include/efi.h
@@ -558,6 +558,9 @@ extern struct efi_runtime_services *RT;
 #define EFI_DRIVER_BINDING_PROTOCOL_GUID \
     EFI_GUID(0x18a031ab, 0xb443, 0x4d1a, 0xa5, 0xc0, 0x0c, 0x09, 0x26, 0x1e, 0x9f, 0x71)
 
+#define EFI_LINUX_INITRD_MEDIA_GUID \
+	EFI_GUID(0x5568e427, 0x68fc, 0x4f3d,  0xac, 0x74, 0xca, 0x55, 0x52, 0x31, 0xcc, 0x68)
+
 struct efi_driver_binding_protocol {
 	efi_status_t (EFIAPI * supported)(
 			struct efi_driver_binding_protocol *this,
@@ -603,6 +606,7 @@ extern const efi_guid_t efi_guid_event_group_reset_system;
 extern const efi_guid_t efi_load_file_protocol_guid;
 extern const efi_guid_t efi_load_file2_protocol_guid;
 extern const efi_guid_t efi_device_path_utilities_protocol_guid;
+extern const efi_guid_t efi_linux_initrd_media_guid;
 
 struct efi_config_table {
 	efi_guid_t guid;
diff --git a/include/efi/efi-payload.h b/include/efi/efi-payload.h
index fe45864dd8a7..d8e66a187a87 100644
--- a/include/efi/efi-payload.h
+++ b/include/efi/efi-payload.h
@@ -34,4 +34,7 @@ int efi_set_variable_usec(char *name, efi_guid_t *vendor, uint64_t usec);
 void *efi_earlymem_alloc(const struct efi_system_table *sys_table,
 			 size_t *memsize, enum efi_memory_type mem_type);
 
+int efi_initrd_register(void *initrd, size_t initrd_size);
+void efi_initrd_unregister(void);
+
 #endif
-- 
2.34.1



