Delivery-date: Tue, 07 Oct 2025 03:00:47 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v5w4N-0054aG-1U
	for lore@lore.pengutronix.de;
	Tue, 07 Oct 2025 03:00:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v5w4M-00041A-CL
	for lore@pengutronix.de; Tue, 07 Oct 2025 03:00:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=W3aP5V0RHnByp7LVaA9Ixtqd4pbgicUM7s04iecVdhs=; b=T/9Hinyo4QhNsbGUuZqpoNLOeS
	EsSgm7gRtcfo2RXMpW/Ugc+1Gsra8ResNECnwuUJdEn6lfZlQAm3eCouaC9ubLVxX0Dxrlz1nHY4M
	luCAlIcHthoRYnwBKrmQ8eIoecCSNue+0/d21OK28iecvznpoVEaI6Tl85l85Ee1FUFS6FXQ0PTW7
	O6IBvDO/SfJ12c/Raxe19Y6Jew3E3puTdURSC7yArtx7MbDUspboMj/43KyrPEUUkydGhI0lkap+5
	APmK0nYiaCmp49AzC7YjpsOqjAlR5F9TRSKIshFVL++0YzbcX2adCKxyoBlw3D+TBve4Ux3gqT7p6
	MX/n7sEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5w3i-000000014xu-2XFD;
	Tue, 07 Oct 2025 01:00:06 +0000
Received: from mail-qv1-xf29.google.com ([2607:f8b0:4864:20::f29])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5w3f-000000014wJ-3vTs
	for barebox@lists.infradead.org;
	Tue, 07 Oct 2025 01:00:05 +0000
Received: by mail-qv1-xf29.google.com with SMTP id 6a1803df08f44-78e4056623fso46974506d6.2
        for <barebox@lists.infradead.org>; Mon, 06 Oct 2025 18:00:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759798803; x=1760403603; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=W3aP5V0RHnByp7LVaA9Ixtqd4pbgicUM7s04iecVdhs=;
        b=AovUki+1RXMPBgswPYEjCJ+FngC0ATZHJe75tWK++uZ4sRcsJmzyZGWz0STyRc/Nco
         u6rpJbgX0UWEC7CqW1AV9/mEe+mErDVY6CGT+4WFiD3T9mNEU9i6lpZuqASzlJTpfs/n
         2aXOHLeMfp9/lBdflSj+IB0NciYIV/1qIFM32MkiQ8gQOy6bdUI33MxeVMz1rgZEP3yI
         XCz/5fjfpE49tECPuavFClp4zt1xd21Ta7S7FfKlJaZfMzl+ZqIXkzXTVrp8ER0/Ojje
         PV3qsHoCB5YXcAq3cbC1G3f7ribJu8Mai4jJROy5onoZwinWW4HuOC2EQmwQ2X57mmO2
         Nabg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759798803; x=1760403603;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=W3aP5V0RHnByp7LVaA9Ixtqd4pbgicUM7s04iecVdhs=;
        b=JgRSh3TIdpS3f32YWu9mGu9UEZ53NwlDicQXzRZeWrKP/waPwPF88+jwBArNhvQpN5
         ZzRvG6GcD94CQpfKLVKPyZpcmgMY8Gl52TcdrQAmwpKtHKW9YKV5KDcROQYpNAICtPrz
         YKPwd035v312IPM/XsW7cMQh9+AlcvqWyfL+T6jqxnwXw2qTKMSlG1S+r73v+W+Mbh9Q
         Cy12tUCa6BoBVP+pHOdvZT5OZJ+Ar9qC4Wy1foLi6+a4eLi3TYMVF+k+xr+/GwJ4O3wp
         j8kjq8PuXQCcu1wYXPdQ6UnqXKOEH8jeLxZsszlDGojGQUGJNfEBfkalLAfqthEE7AMR
         ZVEw==
X-Gm-Message-State: AOJu0YzTC4+zK3xFT0WZqcWZWrrufx204AYty/h9Iu4Ee/vcxmqYm784
	lZYPsXRseNWrpKHniFyYOGQgIsvl6vVcEpD5tR0g+NBonYrOYkDcrukq
X-Gm-Gg: ASbGncu1lxtPv2euyaKeQV0iQWK4u3EQPK+ojm5p2UofT5QcN2SYCGrWsiSSiXMTGGT
	ESV5qeVdvHURnoyMfNL+rQ17h5IHtEPV5wVTpDsheE9pdxs4ay1YLaBwBvvPMTsJcVQQKf5IDn4
	3E+wYzY3J4yGyV7HBkjlcNqdB0MOLJ+QqUb8FWOhQ9G2ISuBjbRWpNaltnKi+6SRXNH3hjoZZ+B
	4OZVXiaAYEDirK5BXGxvywnE17yUMpGvEXhaBURKuy2XP0MPl5cWIo2whvPw46cbMxRNugvkD4z
	trGI5J5KR0qe7IeG7b1sLCpDB6iB3r3CCv05JfKscywNNuwdauwCzzR69xmDwGoHjJ5cwKex3a2
	5eB8hIhgQELbvP8GPRndrp+yVe02yCmjSH0tStWHoIi0rn91wvmBnrXJD3TyU6Nx5
X-Google-Smtp-Source: AGHT+IGlIorWQER7TAGo1Eq/pcoyCjUqw5H8bxKNP8wD9VL60QXkVlqPGNCh6O4F3XFf0XSBZlXD4Q==
X-Received: by 2002:ad4:4ea8:0:b0:799:d62c:9328 with SMTP id 6a1803df08f44-879dc861482mr201625946d6.54.1759798802658;
        Mon, 06 Oct 2025 18:00:02 -0700 (PDT)
Received: from Latitude-7490.ht.home ([2607:fa49:8c41:2600:eb22:a82c:4a35:371d])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-878bb53badbsm129753166d6.21.2025.10.06.18.00.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Oct 2025 18:00:02 -0700 (PDT)
From: chalianis1@gmail.com
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org,
	Chali Anis <chalianis1@gmail.com>,
	Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon,  6 Oct 2025 20:59:49 -0400
Message-Id: <20251007005955.1427990-4-chalianis1@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251007005955.1427990-1-chalianis1@gmail.com>
References: <20251007005955.1427990-1-chalianis1@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251006_180003_997351_5B39B62A 
X-CRM114-Status: GOOD (  18.21  )
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
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 04/10] efi: payload: add support for EFI initrd media protocol
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Chali Anis <chalianis1@gmail.com>

Implement the EFI initrd media protocol, which allows registering an
initramfs data to be loaded by the linux after vi EFI Initrd Media
protocol.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
Signed-off-by: Chali Anis <chalianis1@gmail.com>
---
 efi/guid.c                |   4 ++
 efi/payload/Makefile      |   1 +
 efi/payload/efi-initrd.c  | 104 ++++++++++++++++++++++++++++++++++++++
 include/efi.h             |   4 ++
 include/efi/efi-payload.h |   3 ++
 5 files changed, 116 insertions(+)
 create mode 100644 efi/payload/efi-initrd.c

diff --git a/efi/guid.c b/efi/guid.c
index ef230a2b2403..46440c9f3328 100644
--- a/efi/guid.c
+++ b/efi/guid.c
@@ -44,6 +44,7 @@ const efi_guid_t efi_load_file_protocol_guid = EFI_LOAD_FILE_PROTOCOL_GUID;
 const efi_guid_t efi_load_file2_protocol_guid = EFI_LOAD_FILE2_PROTOCOL_GUID;
 const efi_guid_t efi_device_path_utilities_protocol_guid =
 	EFI_DEVICE_PATH_UTILITIES_PROTOCOL_GUID;
+const efi_guid_t efi_linux_initrd_media_guid = EFI_LINUX_INITRD_MEDIA_GUID;
 
 #define EFI_GUID_STRING(guid, short, long) do {	\
 	if (!efi_guidcmp(guid, *g))		\
@@ -128,5 +129,8 @@ const char *efi_guid_string(efi_guid_t *g)
 	EFI_GUID_STRING(EFI_ISCSIDXE_INF_GUID, "IScsiDxe.inf", "EFI IScsiDxe.inf File GUID");
 	EFI_GUID_STRING(EFI_VLANCONFIGDXE_INF_GUID, "VlanConfigDxe.inf", "EFI VlanConfigDxe.inf File GUID");
 
+	/* Ramdisk */
+	EFI_GUID_STRING(EFI_LINUX_INITRD_MEDIA_GUID, "Initrd Media", "EFI Linux Initrd Media GUID");
+
 	return "unknown";
 }
diff --git a/efi/payload/Makefile b/efi/payload/Makefile
index a4a0332a8288..1250535302d3 100644
--- a/efi/payload/Makefile
+++ b/efi/payload/Makefile
@@ -2,6 +2,7 @@
 
 obj-y += init.o
 obj-y += image.o
+obj-y += efi-initrd.o
 obj-$(CONFIG_OFTREE) += fdt.o
 bbenv-y += env-efi
 obj-$(CONFIG_CMD_IOMEM) += iomem.o
diff --git a/efi/payload/efi-initrd.c b/efi/payload/efi-initrd.c
new file mode 100644
index 000000000000..7a9317fa070e
--- /dev/null
+++ b/efi/payload/efi-initrd.c
@@ -0,0 +1,104 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * efi-initrd.c - barebox EFI payload support
+ *
+ * Copyright (c) 2025 Anis Chali <chalianis1@gmail.com>
+ * Copyright (C) 2025 Ahmad Fatoum <a.fatoum@pengutronix.de>
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
+} __packed initrd_dev_path = {
+	{ {
+		  DEVICE_PATH_TYPE_MEDIA_DEVICE,
+		  DEVICE_PATH_SUB_TYPE_VENDOR_PATH,
+		  sizeof(initrd_dev_path.vendor),
+	  },
+	EFI_LINUX_INITRD_MEDIA_GUID },
+	{ DEVICE_PATH_TYPE_END, DEVICE_PATH_SUB_TYPE_END,
+		DEVICE_PATH_END_LENGTH }
+};
+
+static struct linux_initrd {
+	struct efi_load_file_protocol base;
+	void *start;
+	size_t size;
+	efi_handle_t lf2_handle;
+} initrd;
+
+#define to_linux_initrd(x) container_of(x, struct linux_initrd, base)
+
+static efi_status_t EFIAPI efi_initrd_load_file2(
+	struct efi_load_file_protocol *this, struct efi_device_path *file_path,
+	bool boot_policy, unsigned long *buffer_size, void *buffer)
+{
+
+	struct linux_initrd *initrd = to_linux_initrd(this);
+
+	if (!this || this != &initrd->base || !buffer_size)
+		return EFI_INVALID_PARAMETER;
+
+	if (file_path->type != initrd_dev_path.end.type ||
+	    file_path->sub_type != initrd_dev_path.end.sub_type)
+		return EFI_INVALID_PARAMETER;
+
+	if (boot_policy)
+		return EFI_UNSUPPORTED;
+
+	if (!buffer || *buffer_size < initrd->size) {
+		*buffer_size = initrd->size;
+		return EFI_BUFFER_TOO_SMALL;
+	} else {
+		memcpy(buffer, initrd->start, initrd->size);
+		*buffer_size = initrd->size;
+	}
+
+	return EFI_SUCCESS;
+}
+
+int efi_initrd_register(void *initrd_base, size_t initrd_sz)
+{
+	efi_status_t efiret;
+	int ret;
+
+	initrd.base.load_file = efi_initrd_load_file2;
+	initrd.start = initrd_base;
+	initrd.size = initrd_sz;
+
+	efiret = BS->install_multiple_protocol_interfaces(
+		&initrd.lf2_handle, &efi_load_file2_protocol_guid, &initrd.base,
+		&efi_device_path_protocol_guid, &initrd_dev_path, NULL);
+	if (EFI_ERROR(efiret)) {
+		pr_err("Failed to install protocols for INITRD %s\n",
+		       efi_strerror(efiret));
+		ret = -efi_errno(efiret);
+		return ret;
+	}
+
+	return 0;
+}
+
+void efi_initrd_unregister(void)
+{
+	if (!initrd.base.load_file)
+		return;
+
+	BS->uninstall_multiple_protocol_interfaces(
+		initrd.lf2_handle, &efi_device_path_protocol_guid, &initrd_dev_path,
+		&efi_load_file2_protocol_guid, &initrd.base, NULL);
+
+	initrd.base.load_file = NULL;
+}
\ No newline at end of file
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



