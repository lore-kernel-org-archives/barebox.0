Delivery-date: Sat, 20 Sep 2025 05:04:21 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uzntd-0054wm-2J
	for lore@lore.pengutronix.de;
	Sat, 20 Sep 2025 05:04:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uznta-00050q-5I
	for lore@pengutronix.de; Sat, 20 Sep 2025 05:04:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vSA9xds06PStZ+idyIY2XT6Qr16m39XvzyrFSlYdt0g=; b=Us+Bk1SPnOB9GcvplGLMi7fNva
	v6ydwqMEcJbkFHCFnd2KhWqCxgd523I0jlfqPBEsXbVapeNRaWRWcjATTfvH5spZiIBTIu3itzaip
	aquPvmJ7YeLjMbRf1twZJvsJM2+tGhl49BBf0w9JSBj0xx/jUxhD9n+xcLqsbqYR8mJZfMMSiiMkt
	oRq9EXqsQQNTekC4/9u0pdqzGrlT5DXfrpluDiuspKpmZWdF98OFcFaenU77Ax7FZtj6Miia+okwN
	HGEgPMOb8Ok1o0WDOUdEGEoB1Z0GVf7AjJmxxBE/arNo/0goOY3W7cUvZjq1lDf2Tv6QjPXbQxGgw
	zJzUYY0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uznsy-00000004bpa-1bzS;
	Sat, 20 Sep 2025 03:03:40 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uznsw-00000004bnP-3VEy
	for barebox@lists.infradead.org;
	Sat, 20 Sep 2025 03:03:40 +0000
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-45dd7b15a64so24397125e9.0
        for <barebox@lists.infradead.org>; Fri, 19 Sep 2025 20:03:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758337417; x=1758942217; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vSA9xds06PStZ+idyIY2XT6Qr16m39XvzyrFSlYdt0g=;
        b=IWLMtjIP+OrzaEJn0M/eawlKzfBqQyHd1VjbcMiQb4i+nIRtrW/q5M7rgL6qQJI7Hf
         OZ+9BUNqgoVLjHRKq1dm+t9rmkIedMusuv2XrNf+wqKlgzikVmeAATVyKpzs4mcCKPMQ
         WVDgKSphFw3WC5G+YMsXmb1xqW61wF+rSgrNPmCkc9Rn/1+exr4QYDK8XZQhlv6NjaeK
         ZM9SXPGkO9iCt23llcGbO+pnLQrxxKm7Lqd3Sw1BN2eha/O1GyDYcoqcZol5WXNkzA3/
         NXb+yQ5i0BmphmY2u14q/2O6RgegdrLOdUSMck6VAobUIv2o1bwh35NCOmt/hEvuzIR0
         jhBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758337417; x=1758942217;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vSA9xds06PStZ+idyIY2XT6Qr16m39XvzyrFSlYdt0g=;
        b=Tj2U/ltsK/GeY82gX+b0qJ8sba0N93SlsQ12gu7DDObICxfnT0OcYk31DYiyS4YQFo
         3tqEgjiFVVu6q97Nf3Z9g9jDdKspF8ivTwUh3euZtSDp7TyqXAHRsownDGSmWUiS6lGi
         Ork0spaWMD60+CnxR/tTgzHSHRELhyoozLFGmme1xjp0BhFGG2eJOKWAfv8nWbqZmyQL
         gVVin5sojC9PtMCPbb15v6Z/OWpt9O6yxhUsgpbXzetI9/kuE7L+TeMNjjjLzgiSZbNB
         q1PgHJjUxHNu08SSO2SmE0L58Ep0TH0jqnjP4cGJsz1gwDvmXgzEi6BOKJWiG8ldG1RN
         D96g==
X-Forwarded-Encrypted: i=1; AJvYcCW1AKMXGuf3QoIbuZWWhzFjhCMpDNFTAu6B2BuVe8ndlRLccB8Xxf0TxM8hcMJknFCr8SajR5Zs@lists.infradead.org
X-Gm-Message-State: AOJu0YyN4g9jywS29nWeILvGQpKvY2vMTpsMJqxUakZGXRUhRg6yIEgY
	q2ACT5u03rF24pgXAkIPyww2dvBogMDCkfBxjjQk4b9waF+lRyiiuoUOErhVfMEb
X-Gm-Gg: ASbGncucbn6DTH3lUu/iS69F+k3KIenj5W8uMN+7LAFi80nRisb/4ns/7w8WsdHUs+F
	IKubjp5wm0xXi4UWP7CIj29A5s6zjp9e1QCXpkvOpdrRpMxy34sDNnLmkPlvpvgDunc5B3dDDWi
	XxY4h4U+zHCLNfqChJkjyCWfgOw2wzvoxVBs02Pr+UXVOerzZqH53HDKojZ6rZqoctWAru3KpUl
	0dvvfxz0i+sde00y+TeyVXmLmcSr33SsMlgn7/E21fwy7n692Br3LkRP5T5qOgb5K4pj5uGmqtY
	TgAi2fqBYALq2EDT+9mUlkXnim4TQMhrEwbUULTpY5yFfRLI5nFp8HzHkLBDCYm6apRrGG/jevA
	yvRlWtAmAjttn9KH4GN7PW45mBsxXJ4iycgSrxIjZVQlQ8QZ3HQdQYqIsmE6thhcZBQhkpwXkXU
	lS1PUOMgzF
X-Google-Smtp-Source: AGHT+IFy7LW3cy6eWGiosGu/la1ivJ8A2w1v/N+nQVli4OAfWRS1JRTVYR0truabShpcY59NCvFt1A==
X-Received: by 2002:a05:600c:8b4c:b0:45f:29eb:2148 with SMTP id 5b1f17b1804b1-467a7f111camr57880525e9.7.1758337417012;
        Fri, 19 Sep 2025 20:03:37 -0700 (PDT)
Received: from [127.0.1.1] ([143.244.56.164])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-464f64ad359sm128118415e9.22.2025.09.19.20.03.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Sep 2025 20:03:36 -0700 (PDT)
From: Chali Anis <chalianis1@gmail.com>
Date: Fri, 19 Sep 2025 23:03:15 -0400
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250919-efi-loader-v1-6-dd8cdafb9067@gmail.com>
References: <20250919-efi-loader-v1-0-dd8cdafb9067@gmail.com>
In-Reply-To: <20250919-efi-loader-v1-0-dd8cdafb9067@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Chali Anis <chalianis1@gmail.com>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250919_200338_919019_E0E93A07 
X-CRM114-Status: GOOD (  17.22  )
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
Subject: [PATCH 06/15] efi: payload: initrd: implement efi initrd media
 protocol.
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add the ability to install an initrd media protocol from an initrd file
or a fitImage, support both the initrd media protocol or installing the
initramfs directly to efi like what linux do.

Signed-off-by: Chali Anis <chalianis1@gmail.com>
---
 efi/guid.c                |   7 +++
 efi/payload/efi-initrd.c  | 123 ++++++++++++++++++++++++++++++++++++++++++++++
 include/efi.h             |   4 ++
 include/efi/efi-payload.h |   3 ++
 4 files changed, 137 insertions(+)

diff --git a/efi/guid.c b/efi/guid.c
index ef230a2b240321634544cb63f8bf93d28bb5f100..7b572acb768b5cc999dbf3eff390f48d8c226444 100644
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
index 0000000000000000000000000000000000000000..633fbc29c137bfc05a1da9fda05b332e5449e9f6
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
index 40b69fdb01889e074c8014a69db706159329d883..bd339ea097c311cbe607d2084f23967c62ab63aa 100644
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
index fe45864dd8a7fb6a4e73b640add56016d005262b..d8e66a187a870fcae9288d9c65984896e5196c31 100644
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



