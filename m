Delivery-date: Tue, 16 Sep 2025 02:17:43 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyJOA-003V28-3A
	for lore@lore.pengutronix.de;
	Tue, 16 Sep 2025 02:17:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyJO9-00017e-KW
	for lore@pengutronix.de; Tue, 16 Sep 2025 02:17:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kfn+C3yppJ/kzQ0GyuFuaMKcVnZlst8Hh5fL/H3BNzw=; b=lmEp6SNcYV1zuBf8/X6775T8yX
	+hq0ZEv7cimG00CcJ/7vDazEPJJfxqiSN+WvlM8sMWZKcvGZGbpk/3P5DwKqkmbOTW7qUjLqoM5OW
	C8GDksezbe1G4KtAFMc2PVjxpkvqRDQqya7QUEVJEFr+DzfET5WILb+GwEfQ7pW7kfGL8vMaSz2Ir
	l7YI7WW3NiA97PI447j6wSuf6VVRyP2a8io1afbcYjiBrMqhmEjiHupQz3TGrX2/tofungZYDxLiE
	V96wltu3kJES6zvD2GbMvoXZpxrfbRS2x62XdcUwKQCGQMXYncnwpUTFGSUJKcSsB6mYA1B5Rrluy
	+Wp7I4hw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyJNV-00000005ySb-3pQM;
	Tue, 16 Sep 2025 00:17:01 +0000
Received: from mail-qt1-x829.google.com ([2607:f8b0:4864:20::829])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyJNS-00000005yQo-2phd
	for barebox@lists.infradead.org;
	Tue, 16 Sep 2025 00:16:59 +0000
Received: by mail-qt1-x829.google.com with SMTP id d75a77b69052e-4b7a8ceace8so13643831cf.3
        for <barebox@lists.infradead.org>; Mon, 15 Sep 2025 17:16:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757981817; x=1758586617; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kfn+C3yppJ/kzQ0GyuFuaMKcVnZlst8Hh5fL/H3BNzw=;
        b=h+U3J9PQYHAHPZW63xTNhgCgjG7rtcmpaOB6caXMwF4ehvoeFzaqaW9rQaX94x5NlX
         82SZPra3HLzAQZXDD+NSuZYtoCFBlmon6xuNUK6Fesw6UGGWCPO50jhKI6SE7hAv9QQC
         Qdz2yO2FMw2ZUAvCY44pW0FaeUjvZq9MZGBIh70N/QZsua58MqfaTasZEhWHcKIiNv6M
         FpvfkhmywJhBrSk00aPTDI19JrZJU4QckK7dZ+xY+e9xpbXnF+fmrZ0Mvhq0s9SbIOcG
         pz07L4lV/wvAU+q9mPwEnsflBgGjh/TaVw6s6YskY+DECy9Am3MAMtSB5+ApihOAvZT5
         eCow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757981817; x=1758586617;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kfn+C3yppJ/kzQ0GyuFuaMKcVnZlst8Hh5fL/H3BNzw=;
        b=T952DJ92os6/7Akcw38QxPxRn0T3z8ZEXvrH9IFRVgFxIJ5/S6iUMhDsbf+Mj5ui8A
         6hj/wXZYyTJZw2u3k5GncDhF7orHIhmMi56fTp9AQAsT5rP8XYiyEZESWTgAYlaaODJ4
         ZiiTENe8KhtmBAEQY8K1GIrCSmh+BFJ/2R7TbAePBwU0/wp+RhfsiDu8ZdsctPDoIKKu
         yGk4/sDyg8ufAVUYDZUGu9iSXCd8lh+vgNPWxrwBDBu8zdCVRTXhZ0b2NptRVL6oAZcd
         FH+SL6/HOX4EGR1odGJ/fpKqBwgW1WukayTqFPRUlhypDgi4v9dEN459wSSD4z6kXF9M
         Mklw==
X-Gm-Message-State: AOJu0YwkkFtStoLygL8VUuh9HCwBfofl+hymO5WcLSka7GUChz/J8GGZ
	/98v2hvu78aK5lkIvSuzpYaCquhGsXi3XdVsTe1zKTpXHp/RtVQWfSeLSAqDEyiXNN8dpQ==
X-Gm-Gg: ASbGncu7d/31jqerttvs+y7JaFKtBMBqhFhJ/fyqQGOMe7grabxXNp+1RSPyhFeiRrb
	+uBLsF1JYgYj3qGlbOz/c0pW1XeqMfQfCNS/gOkZYuaeK/6a0BQOtoBUIFpx3LA9+NpnjLe+C5+
	b+yCvtNp3W9qIGbjthr+8pV2Q1gZqMNGqb5RfXhlz5it/6wPSMokdkbBOYzoprqPYIq+QfD8e9C
	bZl0I03pNgYZEdNsePrXzIU4zY5/W+ZV4pf9Ckr6AXbBXhSdItV9GTDqAKC95uKVHZ1gHiGvJ0e
	S6t9mCLCl0lw/qeuTenexYp0clzHA4fxU42hOay7qs+WH5rBSX3UpCbCi9ohu0N7Uv+WDnyxsY5
	1Cr2iujItT8txT3jET50otldhykftdvlRfMw8PE2gHAk2NiCObsDB9XkYuvI0jX4swYbh2qryYL
	GLEHQAW5xdBDQ+5bcCtpz6mMFe1ivlF+tgMOQbBoA+4chW7cs=
X-Google-Smtp-Source: AGHT+IGWzbV0wCxUI1FHQi3O1Lo1voSaT2X1NE9OijwiXNuNeGKhbAf5JnwFMtIG7nCpA28M8sCt+Q==
X-Received: by 2002:a05:622a:192a:b0:4b4:9489:8c9a with SMTP id d75a77b69052e-4b77d14e6a9mr162569271cf.61.1757981817384;
        Mon, 15 Sep 2025 17:16:57 -0700 (PDT)
Received: from Latitude-7490.ht.home ([2607:fa49:8c41:2600:db10:d083:890b:6e1f])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4b639cb4212sm73732431cf.19.2025.09.15.17.16.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Sep 2025 17:16:56 -0700 (PDT)
From: chalianis1@gmail.com
To: s.hauer@pengutronix.de,
	a.fatoum@barebox.org
Cc: barebox@lists.infradead.org,
	Chali Anis <chalianis1@gmail.com>
Date: Mon, 15 Sep 2025 20:16:45 -0400
Message-Id: <20250916001649.591989-3-chalianis1@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250916001649.591989-1-chalianis1@gmail.com>
References: <20250916001649.591989-1-chalianis1@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250915_171658_788879_05FB139B 
X-CRM114-Status: GOOD (  29.21  )
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
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 3/7] efi: payload: add support for efi stub boot
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@barebox.org>

This patch has more stock, between implementing EFI STUB boot, refactor to
reuse the code and finaly support the fit image format.
This code is tested on many qemu EFI compilations comming from ovmf ubuntu
package, tianocore efi for qemu, local edk2 build, and also tested on RPi3b
64 bit EFI from tianocore and a local build of edk2, more mchines will be
tested soon. the test was for a full boot chain on RPi3b booting a fit image
containing a kernel, an fdt, and a ramdisk with ostree initrd to mount an
ostree root filesystem. for contribution in short term,
1. it would be nice to test with more hardware,
2. linux global checkup of efivars, efi capsule update, efi runtime services
3. The state.dtb to support barebox state to manage multiple system boot
   and a recovery.
   the case would be sys1 = new ostree commit, sys2 = old commit (rollback)
   and a recovery boot system on readonly disk.
4. secure boot, PoC to check if there is a way to load TF-A from EFI
and then load the efi payload from it and launch optee??

Signed-off-by: Chali Anis <chalianis1@gmail.com>
---
 efi/Kconfig          |  17 ++
 efi/payload/Kconfig  |   5 +-
 efi/payload/Makefile |   1 +
 efi/payload/bootm.c  | 508 +++++++++++++++++++++++++++++++++++++++++++
 lib/Kconfig          |   4 +
 5 files changed, 534 insertions(+), 1 deletion(-)
 create mode 100644 efi/payload/bootm.c

diff --git a/efi/Kconfig b/efi/Kconfig
index 91dca949b5a3..5f4c6713d539 100644
--- a/efi/Kconfig
+++ b/efi/Kconfig
@@ -54,4 +54,21 @@ config EFI_PAYLOAD_DEFAULT_PATH
 
 endif
 
+config EFI_FDT_FORCE
+	bool "Force EFI provided FDT"
+	default n
+	help
+	  with this options we keep the fdt passed by EFI in the
+	  system configuration table, EFI has to suppot FDT otherwise
+	  an empty fdt will be generated when linux boots by efi.
+
+config EFI_INITRD_INSTALL
+	bool "Install the initramfs by barebox"
+	default n
+	help
+	  with this option barebox will install the initrd to the
+	  system configuration table, same as what kernel do after
+	  calling read file2 boot services, in this case the initrd
+	  will be read directly by the kernel as an initramfs.
+
 endmenu
diff --git a/efi/payload/Kconfig b/efi/payload/Kconfig
index 310f79c3d89f..8f76b00744e7 100644
--- a/efi/payload/Kconfig
+++ b/efi/payload/Kconfig
@@ -1,4 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0-only
 
 config EFI_HANDOVER_PROTOCOL
-	def_bool y
+	def_bool X86
+
+config EFI_PAYLOAD_BOOTM
+	def_bool !EFI_HANDOVER_PROTOCOL
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
index 000000000000..6d6ecbf2e49a
--- /dev/null
+++ b/efi/payload/bootm.c
@@ -0,0 +1,508 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * image.c - barebox EFI payload support
+ *
+ * Copyright (c) 2014 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
+ */
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
+#include <efi/efi-payload.h>
+#include <efi/efi-device.h>
+
+#include "image.h"
+#include "setup_header.h"
+
+struct efi_mem_resource {
+	efi_physical_addr_t base;
+	size_t size;
+} __attribute__ ((packed));
+
+struct efi_image_data {
+	struct image_data *data;
+
+	efi_handle_t handle;
+	struct efi_loaded_image *loaded_image;
+
+	struct efi_mem_resource image_res;
+	struct efi_mem_resource oftree_res;
+	struct efi_mem_resource *initrd_res;
+};
+
+
+static void *efi_allocate_pages(efi_physical_addr_t *mem,
+				size_t size,
+				enum efi_allocate_type allocate_type,
+				enum efi_memory_type mem_type)
+{
+	efi_status_t efiret;
+
+	efiret = BS->allocate_pages(allocate_type, mem_type,
+				    DIV_ROUND_UP(size, EFI_PAGE_SIZE), mem);
+	if (EFI_ERROR(efiret)) {
+		errno = efi_errno(efiret);
+		return NULL;
+	}
+
+	return efi_phys_to_virt(*mem);
+}
+
+static void efi_free_pages(void *_mem, size_t size)
+{
+	efi_physical_addr_t mem = efi_virt_to_phys(_mem);
+
+	if (mem_malloc_start() <= mem && mem < mem_malloc_end())
+		free(_mem);
+	else
+		BS->free_pages(mem, DIV_ROUND_UP(size, EFI_PAGE_SIZE));
+}
+
+static int efi_load_file_image(const char *file,
+			       struct efi_loaded_image **loaded_image,
+			       efi_handle_t *h)
+{
+	efi_physical_addr_t mem;
+	void *exe;
+	char *buf;
+	size_t size;
+	efi_handle_t handle;
+	efi_status_t efiret = EFI_SUCCESS;
+	int ret;
+
+	buf = read_file(file, &size);
+	if (!buf)
+		return -ENOMEM;
+
+	exe = efi_allocate_pages(&mem, size, EFI_ALLOCATE_ANY_PAGES,
+				 EFI_LOADER_CODE);
+	if (!exe) {
+		pr_err("Failed to allocate pages for image\n");
+		ret = -ENOMEM;
+		goto free_buf;
+	}
+
+	memcpy(exe, buf, size);
+
+	efiret = BS->load_image(false, efi_parent_image, efi_device_path, exe,
+				size, &handle);
+	if (EFI_ERROR(efiret)) {
+		ret = -efi_errno(efiret);
+		pr_err("failed to LoadImage: %s\n", efi_strerror(efiret));
+		goto free_mem;
+	}
+
+	efiret = BS->open_protocol(handle, &efi_loaded_image_protocol_guid,
+				   (void **)loaded_image, efi_parent_image,
+				   NULL, EFI_OPEN_PROTOCOL_GET_PROTOCOL);
+	if (EFI_ERROR(efiret)) {
+		ret = -efi_errno(efiret);
+		pr_err("failed to OpenProtocol: %s\n", efi_strerror(efiret));
+		BS->unload_image(handle);
+		goto free_mem;
+	}
+
+	*h = handle;
+	free(buf);
+
+	return 0;
+
+free_mem:
+	efi_free_pages(exe, size);
+free_buf:
+	free(buf);
+
+	return ret;
+}
+
+typedef void(*handover_fn)(void *image, struct efi_system_table *table,
+		struct x86_setup_header *header);
+
+static inline void linux_efi_handover(efi_handle_t handle,
+		struct x86_setup_header *header)
+{
+	handover_fn handover;
+	uintptr_t addr;
+
+	addr = header->code32_start + header->handover_offset;
+	if (IS_ENABLED(CONFIG_X86_64))
+		addr += 512;
+
+	handover = efi_phys_to_virt(addr);
+	handover(handle, efi_sys_table, header);
+}
+
+static int do_bootm_efi(struct image_data *data)
+{
+	void *tmp;
+	void *initrd = NULL;
+	size_t size;
+	efi_handle_t handle;
+	int ret;
+	const char *options;
+	struct efi_loaded_image *loaded_image;
+	struct x86_setup_header *image_header, *boot_header;
+
+	ret = efi_load_file_image(data->os_file, &loaded_image, &handle);
+	if (ret)
+		return ret;
+
+	image_header = (struct x86_setup_header *)loaded_image->image_base;
+
+	if (image_header->boot_flag != 0xAA55 ||
+	    image_header->header != 0x53726448 ||
+	    image_header->version < 0x20b ||
+	    !image_header->relocatable_kernel) {
+		pr_err("Not a valid kernel image!\n");
+		BS->unload_image(handle);
+		return -EINVAL;
+	}
+
+	boot_header = xmalloc(0x4000);
+	memset(boot_header, 0, 0x4000);
+	memcpy(boot_header, image_header, sizeof(*image_header));
+
+	/* Refer to Linux kernel commit a27e292b8a54
+	 * ("Documentation/x86/boot: Reserve type_of_loader=13 for barebox")
+	 */
+	boot_header->type_of_loader = 0x13;
+
+	if (data->initrd_file) {
+		tmp = read_file(data->initrd_file, &size);
+		initrd = xmemalign(PAGE_SIZE, PAGE_ALIGN(size));
+		memcpy(initrd, tmp, size);
+		memset(initrd + size, 0, PAGE_ALIGN(size) - size);
+		free(tmp);
+		boot_header->ramdisk_image = efi_virt_to_phys(initrd);
+		boot_header->ramdisk_size = PAGE_ALIGN(size);
+	}
+
+	options = linux_bootargs_get();
+	if (options) {
+		boot_header->cmd_line_ptr = efi_virt_to_phys(options);
+		boot_header->cmdline_size = strlen(options);
+	}
+
+	boot_header->code32_start = efi_virt_to_phys(loaded_image->image_base +
+			(image_header->setup_sects+1) * 512);
+
+	if (bootm_verbose(data)) {
+		printf("\nStarting kernel at 0x%p", loaded_image->image_base);
+		if (data->initrd_file)
+			printf(", initrd at 0x%08x",
+			       boot_header->ramdisk_image);
+		printf("...\n");
+	}
+
+	if (data->dryrun) {
+		BS->unload_image(handle);
+		free(boot_header);
+		free(initrd);
+		return 0;
+	}
+
+	efi_set_variable_usec("LoaderTimeExecUSec", &efi_systemd_vendor_guid,
+			      ktime_to_us(ktime_get()));
+
+	shutdown_barebox();
+	linux_efi_handover(handle, boot_header);
+
+	return 0;
+}
+
+static int efi_load_os(struct efi_image_data *e)
+{
+	return efi_load_file_image(e->data->os_file,
+		&e->loaded_image, &e->handle);
+}
+
+static void efi_unload_os(struct efi_image_data *e)
+{
+	BS->close_protocol(e->handle, &efi_loaded_image_protocol_guid,
+				 efi_parent_image, NULL);
+
+	BS->unload_image(e->handle);
+	efi_free_pages(efi_phys_to_virt(e->image_res.base),
+				 e->image_res.size);
+}
+
+static int efi_load_ramdisk(struct efi_image_data *e)
+{
+	void *vmem, *tmp = NULL;
+	efi_physical_addr_t mem;
+	efi_status_t efiret = EFI_SUCCESS;
+	const void *initrd;
+	unsigned long initrd_size;
+	int ret;
+
+	if (!e->data->initrd_file)
+		return 0;
+
+	pr_info("Loading ramdisk from '%s'\n", e->data->initrd_file);
+	tmp = read_file(e->data->initrd_file, &initrd_size);
+	if (!tmp || initrd_size <= 0) {
+		pr_err("Failed to read initrd from file: %s\n",
+			e->data->initrd_file);
+		return -EINVAL;
+	}
+	initrd = tmp;
+
+	efiret = BS->allocate_pool(EFI_LOADER_DATA,
+			sizeof(struct efi_mem_resource),
+			(void **)&e->initrd_res);
+	if (EFI_ERROR(efiret) || !e->initrd_res) {
+		ret = -efi_errno(efiret);
+		pr_err("Failed to allocate initrd %s/n", efi_strerror(efiret));
+		goto free_mem;
+	}
+
+	vmem = efi_allocate_pages(&mem, initrd_size,
+				 EFI_ALLOCATE_MAX_ADDRESS, EFI_LOADER_DATA);
+	if (!vmem) {
+		pr_err("Failed to allocate pages for initrd data\n");
+		ret = -ENOMEM;
+		goto free_pool;
+	}
+
+	memcpy(vmem, (void *)initrd, initrd_size);
+	e->initrd_res->base = (uint64_t)mem;
+	e->initrd_res->size = (uint64_t)initrd_size;
+
+	if (IS_ENABLED(CONFIG_EFI_INITRD_INSTALL)) {
+		efiret = BS->install_configuration_table(
+			&efi_linux_initrd_media_guid,
+			(void *)e->initrd_res);
+		if (EFI_ERROR(efiret)) {
+			ret = -efi_errno(efiret);
+			pr_err("Failed to install INITRD %s/n",
+					efi_strerror(efiret));
+			goto free_pages;
+		}
+	} else {
+		ret = efi_initrd_register(vmem, initrd_size);
+		if (ret) {
+			pr_err("Failed to register INITRD %s/n",
+				strerror(efiret));
+			goto free_pages;
+		}
+	}
+
+	free(tmp);
+
+	return 0;
+
+free_pages:
+	efi_free_pages(vmem, initrd_size);
+free_pool:
+	BS->free_pool(e->initrd_res);
+free_mem:
+	free(tmp);
+
+	return ret;
+}
+
+static void efi_unload_ramdisk(struct efi_image_data *e)
+{
+
+	if (IS_ENABLED(CONFIG_EFI_INITRD_INSTALL))
+		BS->install_configuration_table(
+			&efi_linux_initrd_media_guid, NULL);
+	else
+		efi_initrd_unregister();
+
+	efi_free_pages(efi_phys_to_virt(e->initrd_res->base),
+				 e->initrd_res->size);
+
+	BS->free_pool(e->initrd_res);
+	e->initrd_res = NULL;
+}
+
+static int efi_load_fdt(struct efi_image_data *e)
+{
+	efi_status_t efiret = EFI_SUCCESS;
+	efi_physical_addr_t mem;
+	void *vmem, *tmp = NULL;
+	const void *of_tree;
+	unsigned long of_size;
+	int ret;
+
+	if (IS_ENABLED(CONFIG_EFI_FDT_FORCE))
+		return 0;
+
+	if (!e->data->oftree_file)
+		return 0;
+
+	pr_info("Loading devicetree from '%s'\n", e->data->oftree_file);
+	tmp = read_file(e->data->oftree_file, &of_size);
+	if (!tmp || of_size <= 0) {
+		pr_err("Failed to read initrd from file: %s\n",
+			e->data->initrd_file);
+		return -EINVAL;
+	}
+	of_tree = tmp;
+
+	vmem = efi_allocate_pages(&mem, SZ_128K,
+				 EFI_ALLOCATE_ANY_PAGES,
+				 EFI_ACPI_RECLAIM_MEMORY);
+	if (!vmem) {
+		pr_err("Failed to allocate pages for FDT\n");
+		ret = -ENOMEM;
+		goto free_file;
+	}
+
+	memcpy(vmem, of_tree, of_size);
+
+	efiret = BS->install_configuration_table(&efi_fdt_guid,
+			(void *)mem);
+	if (EFI_ERROR(efiret)) {
+		pr_err("Failed to install FDT %s/n", efi_strerror(efiret));
+		ret = -efi_errno(efiret);
+		goto free_mem;
+	}
+
+	e->oftree_res.base = mem;
+	e->oftree_res.size = SZ_128K;
+
+	free(tmp);
+
+	return 0;
+
+free_mem:
+	efi_free_pages(vmem, SZ_128K);
+free_file:
+	free(tmp);
+
+	return ret;
+}
+
+static void efi_unload_fdt(struct efi_image_data *e)
+{
+	BS->install_configuration_table(&efi_fdt_guid, NULL);
+
+	efi_free_pages(efi_phys_to_virt(e->oftree_res.base),
+				 e->oftree_res.size);
+}
+
+static int do_bootm_efi_stub(struct image_data *data)
+{
+	struct efi_image_data e = { .data = data };
+	enum filetype type;
+	int ret = 0;
+
+	ret = efi_load_os(&e);
+	if (ret)
+		return ret;
+
+	ret = efi_load_fdt(&e);
+	if (ret)
+		goto unload_os;
+
+	ret = efi_load_ramdisk(&e);
+	if (ret)
+		goto unload_oftree;
+
+	type = file_detect_type(e.loaded_image->image_base, PAGE_SIZE);
+	ret = efi_execute_image(e.handle, e.loaded_image, type);
+	if (ret)
+		goto unload_ramdisk;
+
+	return 0;
+
+unload_ramdisk:
+	if (e.initrd_res)
+		efi_unload_ramdisk(&e);
+unload_oftree:
+	efi_unload_fdt(&e);
+unload_os:
+	efi_unload_os(&e);
+	return ret;
+}
+
+static struct image_handler efi_handle_tr = {
+	.name = "EFI Application",
+	.bootm = do_bootm_efi,
+	.filetype = filetype_exe,
+};
+
+static struct image_handler efi_arm64_handle_tr = {
+	.name = "EFI ARM64 Linux kernel",
+	.bootm = do_bootm_efi_stub,
+	.filetype = filetype_arm64_efi_linux_image,
+};
+
+static int efi_execute(struct binfmt_hook *b, char *file, int argc, char **argv)
+{
+	int ret;
+	efi_handle_t handle;
+	struct efi_loaded_image *loaded_image;
+
+	ret = efi_load_file_image(file, &loaded_image, &handle);
+	if (ret)
+		return ret;
+
+	return efi_execute_image(handle, loaded_image, b->type);
+}
+
+static struct binfmt_hook binfmt_efi_hook = {
+	.type = filetype_exe,
+	.hook = efi_execute,
+};
+
+static int do_bootm_mbr(struct image_data *data)
+{
+	/* On x86, Linux kernel images have a MBR magic at the end of
+	 * the first 512 byte sector and a PE magic if they're EFI-stubbed.
+	 * The PE magic has precedence over the MBR, so if we arrive in
+	 * this boot handler, the kernel has no EFI stub.
+	 *
+	 * Print a descriptive error message instead of "no image handler
+	 * found for image type MBR sector".
+	 */
+	pr_err("Can't boot MBR sector: Is CONFIG_EFI_STUB disabled in your Linux kernel config?\n");
+	return -ENOSYS;
+}
+
+static struct image_handler non_efi_handle_linux_x86 = {
+	.name = "non-EFI x86 Linux Image",
+	.bootm = do_bootm_mbr,
+	.filetype = filetype_mbr,
+};
+
+static struct binfmt_hook binfmt_arm64_efi_hook = {
+	.type = filetype_arm64_efi_linux_image,
+	.hook = efi_execute,
+};
+
+static int efi_register_image_handler(void)
+{
+	register_image_handler(&efi_handle_tr);
+	binfmt_register(&binfmt_efi_hook);
+
+	if (IS_ENABLED(CONFIG_X86))
+		register_image_handler(&non_efi_handle_linux_x86);
+
+	if (IS_ENABLED(CONFIG_ARM64)) {
+		register_image_handler(&efi_arm64_handle_tr);
+		binfmt_register(&binfmt_arm64_efi_hook);
+	}
+
+	return 0;
+}
+late_efi_initcall(efi_register_image_handler);
diff --git a/lib/Kconfig b/lib/Kconfig
index d07e2f3b6959..89e95d202c2c 100644
--- a/lib/Kconfig
+++ b/lib/Kconfig
@@ -121,6 +121,10 @@ config FSL_QE_FIRMWARE
 	select CRC32
 	bool
 
+config FDT_PADDING
+	int "FDT padding size for fixups"
+	default 4096
+
 config LIBFDT
 	bool
 
-- 
2.34.1



