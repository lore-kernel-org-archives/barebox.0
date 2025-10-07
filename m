Delivery-date: Tue, 07 Oct 2025 03:00:50 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v5w4Q-0054bs-1k
	for lore@lore.pengutronix.de;
	Tue, 07 Oct 2025 03:00:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v5w4P-00043H-8G
	for lore@pengutronix.de; Tue, 07 Oct 2025 03:00:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Pa9J9VCQ/NcLFfApvGJQE7f9BTZ456QRFG+yRJYmIYk=; b=OUOm9U1PyQmMjhlI4JcDIilNjN
	G/pfsbD9An1Phyv1pf6F1IObFke1f7kMDZg81o8i1TikCSUiILa9J+AyU2tliXxN5HtwLGnuhZVex
	mCOFT4l4eX1oajlaaQhO9Pz8F3Yy4EbERZ/cf1zGUf3a42CTnTaolFghmsoz0V2ZgolwrkncwiWUC
	oelpPXD55m2MpH3cmcTltpk8XZSR+AiZCZJ1zkKc+1wWbsMIK3GinUESO/RYl6N9bFyGAyywQVUSQ
	8y5UzFaUBgrSakcH+IanRMUFWY0iPTiSm3p7cp1Z4LpsCUF1bzb8rDaYVfd3Smwn7N1/dPlFPVSuT
	uyzVKxNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5w3l-0000000150R-24oe;
	Tue, 07 Oct 2025 01:00:09 +0000
Received: from mail-qv1-xf2d.google.com ([2607:f8b0:4864:20::f2d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5w3j-000000014yT-23VM
	for barebox@lists.infradead.org;
	Tue, 07 Oct 2025 01:00:08 +0000
Received: by mail-qv1-xf2d.google.com with SMTP id 6a1803df08f44-7957e2f6ba8so56062936d6.3
        for <barebox@lists.infradead.org>; Mon, 06 Oct 2025 18:00:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759798806; x=1760403606; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Pa9J9VCQ/NcLFfApvGJQE7f9BTZ456QRFG+yRJYmIYk=;
        b=LcPxxu8zLBew2UB6qLufzsUdnPYLrHxW7+w7+UBgELUm/rnpkup3vSuCkSy8/ERj/w
         Mzo6rDKmqG7hCKoykeXBCTAGTEJuI/nujva9amjqxK0b0ucH9syD0Jl6pSvoXr8RHLnm
         dmcehr8NRWQiYR66PPv6T7f4ozGHyjGPvNXLv69szipEU5YodilqsQ3XpqM0hNXBWlp4
         tLCHIo/T/GJN1iP8Veb4NbU8P1JvdEeKINaIKl9ultiGPwL6sGir9hH2k5se3wAUX+yC
         BvxhdBFl7MDRzmaRbXH1LRdW2w6RWF4BrtgpUIo4J7goW60YBOIKLLtpNjRIOmELO/co
         dE+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759798806; x=1760403606;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Pa9J9VCQ/NcLFfApvGJQE7f9BTZ456QRFG+yRJYmIYk=;
        b=LKtyFO91Hs5ipzB677gt0kJpDhpHGgI14+4Uq5pT27ipEa5NqZIkhvSDHLEgNnnVI5
         JQuDchniiKWPsCTNDq0MZB/V7VJU8r3wXy/R4J7f/kOoXAZ5v2uc8VjihYq7VlMtQ0gZ
         6VuB5pbIdkAlWhhp/bPnLuWvxOdP+oxAexIguggLMT/onmEZBABkw5CxxVanVEJczIdm
         ByFLEf5RpTGLfX94ypuv5JcfWGClSYY72la57jNXow3NyEHSiGVcNTwoPu918oeBob3H
         8yi4OM/fx3nLPHbRUQSu5z/VxEYb68UX68HGHa4pdwUp/BtIdfLUuA9rlytnZfQXonq4
         7HaQ==
X-Gm-Message-State: AOJu0YzupBr63g5Wy1QVxThV33k8IuaLkRBL2YIZ9z0MncH6prGL2B1Q
	baAMXKBDI5Wy8G9ouVLtgQbNHNo7XdXO+a6TOmwaY1fBSZBJaqAegEPTmgzNy95h
X-Gm-Gg: ASbGncsvoQ4MqtGm8VhLvZw3u9vnJz7wB6320UfF+S3gvFysWd0sJ8Ah/ibYhdyZxdh
	4bXXAxmiosNhnRFxy/98510xLBDtYjFNtefbmorGndzQskVT5ASLCZxtoK6Y8fleW7mRX7BDUk1
	/4LvvttGX3U8fhk/AwmCUVWHlqT8DOqI9eKZM6O7xpjfhvHTM6QWvJwzMfpCv4pgwuaKR5fMJMy
	XllmuMQUlFitjNKxhcX9y2iVLQYLUAJqON/QQK2J1a4MeOvkNaxjGmv3gRHgfeR87+xw8laZT6w
	S0vdqjKmMVFndkADCGjAag5MiwkPZw0NbWjBskLCK+tfJEspNKPpKAVKOtPtDNtPeR3Cmr1VS6z
	197xm5kwWMg/AGFkcKt+QIW1BLsfSeiVbAW9Zv79Pl1c2WZ/kusuqbb8gXcdUKT6n
X-Google-Smtp-Source: AGHT+IHYBYGX5wauJsGrPWarWbgx/P+fT4+mZRmmuB3ztB8frtI5gWpz4p9GWW7/R1BhKtOtFITivw==
X-Received: by 2002:a05:6214:29ec:b0:7fa:ec09:6d38 with SMTP id 6a1803df08f44-879dc796402mr174306936d6.23.1759798806200;
        Mon, 06 Oct 2025 18:00:06 -0700 (PDT)
Received: from Latitude-7490.ht.home ([2607:fa49:8c41:2600:eb22:a82c:4a35:371d])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-878bb53badbsm129753166d6.21.2025.10.06.18.00.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Oct 2025 18:00:05 -0700 (PDT)
From: chalianis1@gmail.com
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org,
	Chali Anis <chalianis1@gmail.com>
Date: Mon,  6 Oct 2025 20:59:52 -0400
Message-Id: <20251007005955.1427990-7-chalianis1@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251007005955.1427990-1-chalianis1@gmail.com>
References: <20251007005955.1427990-1-chalianis1@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251006_180007_547009_97AE9E7F 
X-CRM114-Status: GOOD (  19.62  )
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
Subject: [PATCH v2 07/10] efi: payload: bootm: add support for efi stub boot
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Chali Anis <chalianis1@gmail.com>

Introduce support for booting Linux kernels with an EFI stub from the
barebox EFI payload. This includes:

- Loading the kernel image via EFI LoadImage/StartImage
- Installing the FDT into the EFI configuration table unless
  EFI_FDT_FORCE is enabled
- Providing the initrd either through the Initrd Media GUID or
  the initrd media protocol
- Registering image handlers for EFI applications, x86/ARM64 EFI
  Linux kernels, and a fallback handler for non-EFI x86 Linux images
- Adding Kconfig options to control FDT forcing and initrd installation

This enables barebox EFI payloads to directly boot Linux kernels with
EFI stubs in a way compatible with the Linux EFI boot flow.

Signed-off-by: Chali Anis <chalianis1@gmail.com>
---
 efi/payload/Kconfig  |   6 +-
 efi/payload/Makefile |   1 +
 efi/payload/bootm.c  | 219 +++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 225 insertions(+), 1 deletion(-)
 create mode 100644 efi/payload/bootm.c

diff --git a/efi/payload/Kconfig b/efi/payload/Kconfig
index d0a46704a6b9..e3a6a72d6a1c 100644
--- a/efi/payload/Kconfig
+++ b/efi/payload/Kconfig
@@ -27,7 +27,11 @@ config EFI_STUB
 
 config EFI_HANDOVER_PROTOCOL
 	bool "EFI Handover protocol"
-	default y
+	depends on !EFI_PAYLOAD_BOOTM
 	depends on X86
 
+config EFI_PAYLOAD_BOOTM
+	bool "EFI bootm protocol"
+	default !X86
+
 endif
diff --git a/efi/payload/Makefile b/efi/payload/Makefile
index d8b577bf3e23..083728c53cb4 100644
--- a/efi/payload/Makefile
+++ b/efi/payload/Makefile
@@ -3,6 +3,7 @@
 obj-y += init.o
 obj-y += image.o
 obj-$(CONFIG_EFI_HANDOVER_PROTOCOL) += handover.o
+obj-$(CONFIG_EFI_PAYLOAD_BOOTM) += bootm.o
 obj-y += efi-initrd.o
 obj-$(CONFIG_OFTREE) += fdt.o
 bbenv-y += env-efi
diff --git a/efi/payload/bootm.c b/efi/payload/bootm.c
new file mode 100644
index 000000000000..d0e995be5d7c
--- /dev/null
+++ b/efi/payload/bootm.c
@@ -0,0 +1,219 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * image.c - barebox EFI payload support
+ *
+ * Copyright (c) 2014 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
+ */
+
+#define pr_fmt(fmt) "efi-bootm: " fmt
+
+#include <clock.h>
+#include <common.h>
+#include <linux/sizes.h>
+#include <linux/ktime.h>
+#include <memory.h>
+#include <command.h>
+#include <magicvar.h>
+#include <init.h>
+#include <driver.h>
+#include <io.h>
+#include <efi.h>
+#include <malloc.h>
+#include <string.h>
+#include <linux/err.h>
+#include <boot.h>
+#include <bootm.h>
+#include <fs.h>
+#include <libfile.h>
+#include <binfmt.h>
+#include <wchar.h>
+#include <image-fit.h>
+#include <efi/efi-payload.h>
+#include <efi/efi-device.h>
+
+#include "image.h"
+#include "setup_header.h"
+
+static int efi_load_os(struct image_data *data,
+		       struct efi_loaded_image **loaded_image,
+		       efi_handle_t *handle)
+{
+	return efi_load_image(data->os_file, loaded_image, handle);
+}
+
+static int efi_load_ramdisk(struct image_data *data, void **initrd)
+{
+	unsigned long initrd_size;
+	void *initrd_mem;
+	int ret;
+
+	if (!data->initrd_file)
+		return 0;
+
+	pr_info("Loading ramdisk from '%s'\n", data->initrd_file);
+
+	initrd_mem = read_file(data->initrd_file, &initrd_size);
+	if (!initrd_mem) {
+		ret = -errno;
+		pr_err("Failed to read initrd from file '%s': %m\n",
+		       data->initrd_file);
+		return ret;
+	}
+
+	ret = efi_initrd_register(initrd_mem, initrd_size);
+	if (ret) {
+		pr_err("Failed to register initrd: %pe\n", ERR_PTR(ret));
+		goto free_mem;
+	}
+
+	*initrd = initrd_mem;
+
+	return 0;
+
+free_mem:
+	free(initrd);
+
+	return ret;
+}
+
+static int efi_load_fdt(struct image_data *data, void **fdt)
+{
+	efi_physical_addr_t mem;
+	efi_status_t efiret;
+	void *of_tree, *vmem;
+	unsigned long of_size;
+	int ret;
+
+	if (!data->oftree_file)
+		return 0;
+
+	pr_info("Loading devicetree from '%s'\n", data->oftree_file);
+
+	of_tree = read_file(data->oftree_file, &of_size);
+	if (!of_tree) {
+		ret = -errno;
+		pr_err("Failed to read oftree: %m\n");
+		return ret;
+	}
+
+	efiret = BS->allocate_pages(EFI_ALLOCATE_ANY_PAGES,
+				    EFI_ACPI_RECLAIM_MEMORY,
+				    DIV_ROUND_UP(SZ_2M, EFI_PAGE_SIZE), &mem);
+	if (EFI_ERROR(efiret)) {
+		pr_err("Failed to allocate pages for FDT: %s\n", efi_strerror(efiret));
+		goto free_mem;
+	}
+
+	vmem = efi_phys_to_virt(mem);
+	memcpy(vmem, of_tree, of_size);
+
+	efiret = BS->install_configuration_table(&efi_fdt_guid, vmem);
+	if (EFI_ERROR(efiret)) {
+		pr_err("Failed to install FDT: %s\n", efi_strerror(efiret));
+		goto free_efi_mem;
+	}
+
+	*fdt = vmem;
+	return 0;
+
+free_efi_mem:
+	BS->free_pages(mem, DIV_ROUND_UP(SZ_2M, EFI_PAGE_SIZE));
+free_mem:
+	free(of_tree);
+	return -efi_errno(efiret);
+}
+
+static void efi_unload_fdt(void *fdt)
+{
+	if (!fdt)
+		return;
+
+	BS->install_configuration_table(&efi_fdt_guid, NULL);
+	BS->free_pages(efi_virt_to_phys(fdt), SZ_2M);
+}
+
+static int do_bootm_efi_stub(struct image_data *data)
+{
+	struct efi_loaded_image *loaded_image;
+	void *fdt = NULL, *initrd = NULL;
+	efi_handle_t handle;
+	enum filetype type;
+	int ret;
+
+	ret = efi_load_os(data, &loaded_image, &handle);
+	if (ret)
+		return ret;
+
+	ret = efi_load_fdt(data, &fdt);
+	if (ret)
+		goto unload_os;
+
+	ret = efi_load_ramdisk(data, &initrd);
+	if (ret)
+		goto unload_oftree;
+
+	type = file_detect_type(loaded_image->image_base, PAGE_SIZE);
+	ret = efi_execute_image(handle, loaded_image, type);
+	if (ret)
+		goto unload_ramdisk;
+
+	return 0;
+
+unload_ramdisk:
+	if (initrd)
+		efi_initrd_unregister();
+unload_oftree:
+	efi_unload_fdt(fdt);
+unload_os:
+	BS->unload_image(handle);
+
+	return ret;
+}
+
+static int efi_app_execute(struct image_data *data)
+{
+	struct efi_loaded_image *loaded_image;
+	efi_handle_t handle;
+	enum filetype type;
+	int ret;
+
+	ret = efi_load_image(data->os_file, &loaded_image, &handle);
+	if (ret)
+		return ret;
+
+	type = file_detect_type(loaded_image->image_base, PAGE_SIZE);
+
+	return efi_execute_image(handle, loaded_image, type);
+}
+
+static struct image_handler efi_app_handle_tr = {
+	.name = "EFI Application",
+	.bootm = efi_app_execute,
+	.filetype = filetype_exe,
+};
+
+static struct image_handler efi_x86_linux_handle_tr = {
+	.name = "EFI X86 Linux kernel",
+	.bootm = do_bootm_efi_stub,
+	.filetype = filetype_x86_linux_image,
+};
+
+static struct image_handler efi_arm64_handle_tr = {
+	.name = "EFI ARM64 Linux kernel",
+	.bootm = do_bootm_efi_stub,
+	.filetype = filetype_arm64_efi_linux_image,
+};
+
+static int efi_register_bootm_handler(void)
+{
+	register_image_handler(&efi_app_handle_tr);
+
+	if (IS_ENABLED(CONFIG_X86))
+		register_image_handler(&efi_x86_linux_handle_tr);
+
+	if (IS_ENABLED(CONFIG_ARM64))
+		register_image_handler(&efi_arm64_handle_tr);
+
+	return 0;
+}
+late_efi_initcall(efi_register_bootm_handler);
-- 
2.34.1



