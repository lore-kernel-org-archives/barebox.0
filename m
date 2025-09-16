Delivery-date: Tue, 16 Sep 2025 06:02:50 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyMu2-003YZO-0M
	for lore@lore.pengutronix.de;
	Tue, 16 Sep 2025 06:02:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyMtx-0000HK-OL
	for lore@pengutronix.de; Tue, 16 Sep 2025 06:02:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kfn+C3yppJ/kzQ0GyuFuaMKcVnZlst8Hh5fL/H3BNzw=; b=p4dEeROahXx6LqKBZ84OqpF1D7
	rLB78hUM4IhK56ScAb/J1LYI8aF9plLzWmX3+WPsId5sXd+VaG7y/hHhD8639jDz4Qlm1LQLSCCh1
	gAlM7DcgxBmbpWJ1PQqoDWTcpwf+6Da+HFZIZa+iCaWkmt4Y4XrVkDMKYY968OyFe7PqBfHz/Iogz
	znTvNG35ShaeF+YkOXTKiPklEO/IQu3nlNGBuWVoqGOlFOZ7g7iMR02c4LDHqHIKdqV9wNEEFPM3F
	87OXBTw4SVIXcpsju4vnj+foCThKZP+5JzPodq8OIyBhUZTpX2PamWOjDLfev5dYI5U5um++P27W5
	Xf59rJGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyMtQ-00000006eRx-2W33;
	Tue, 16 Sep 2025 04:02:12 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyMtN-00000006ePi-2BzQ
	for barebox@lists.infradead.org;
	Tue, 16 Sep 2025 04:02:10 +0000
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-45deccb2c1eso36201165e9.1
        for <barebox@lists.infradead.org>; Mon, 15 Sep 2025 21:02:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757995328; x=1758600128; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kfn+C3yppJ/kzQ0GyuFuaMKcVnZlst8Hh5fL/H3BNzw=;
        b=G2hftpMuImTkYG6ow3ssLoSCwJJL5hR3jL2Wlr+pQCA+jbfy/1xhj0qSM/nDk0s1mR
         tklC8iuo9fHxNptKIy4i+JDAcMZFr9fekMH5xfJLZy6ZgRoYrNklNTNS6xN4liTpqQwF
         OoE7IVXYFvQwEz0AtVEWvsfpKTZECiE/r3rlpmUNSbDuDYb+Uzj85AhuEhvAOo3v4sQD
         SaFSo3fqwrCcBZLGIXyIORGL0Gc08Y9XYCgU5zC5z44AAgwJ9EP7hoXtPixtgKH8Cy8M
         FANooN3o9VWGcqEqFrAc3l05eCnIv5B0HONaswGn7dXcETskUE3smarlb3y/BQYgGDMF
         +oPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757995328; x=1758600128;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kfn+C3yppJ/kzQ0GyuFuaMKcVnZlst8Hh5fL/H3BNzw=;
        b=HSe7uZJ1wrvdo3B2KBAs7YE5hpkLLydQRGLpVnUEKnsIt/iYKIKw/GPzcPHLK36NcG
         ElWtyr+p5WTpfZ8nP+cNUBHG0+T93Pj1HwT4mjDMLfZAkWOFvFrbJ9Rr49wQqZsQKrsA
         a7cEfWSgvELhsnuJog006AI1x0alaJYgO+MAAh5XFQieAD7wOzILMRgNLMCx/3wzHvpY
         MPEnyXCqaWz3TCykXVbD4ZJ61TeDTmzPIBzQE8qYewUYBsMY+zK2ulOjaCwwbgZR7erD
         fJLpxL26CPPZqs4KKy+h4gyz6La481vn+dkz3ev66vNJsoIOQaqfz3nTZuJP0MoLNXQF
         dChw==
X-Gm-Message-State: AOJu0Yy4z6pSLPeZUxyVE1tyTakUKjWe8LONUbPVeguQiY2K3sHZDSbP
	IS1BmmerX0g82Lngj+6hPx3CdKTOJji69ZUXyL6d0EbMettGfBeLlhY6
X-Gm-Gg: ASbGnctU6x55fVbhhLY47YFybdoLRRON2wEl+Et89t2WIdOVnQ7CFB1EQ3wsbcHpCDo
	QpmWDbCKwrL5fqeOCJQaR0AZPAVWypsdcxNJLfCHqA/7zfgPtz9KOlqc9d/+zoNN7DM8nZlVWxN
	iNR89ASo8b7MxBOtVRruwl+zxWSkuaryEWaN56/aDpqOPsS9RTQA9qeAA9Mn7mvBeRxdp9UX4LA
	mOOdwkEg2sgSHqLqtcO3p9GyRKUDTJfkmBLovnq++br21lPYaVTBQ0StpDPUXxQOKQvKJ46Qa9M
	mqZQDUcoJcn9Alfp5GZCt5RtY0ED3HYMrTuVnpDmCulu4WW5QN+1VibPhsxh+yMm4Am1cNqhFAJ
	LopZaWhnEuBRzKXP9zAkr6NaWfU/IqWKvmd5nDU/2fWNUGgJ79UjYEaOpCiRJI9wl1fUoSyze6I
	d0FSgc6y+ybNYXplZbm8Wa0w==
X-Google-Smtp-Source: AGHT+IEzrmYuCpMFmVMMlnP3XjyBzpZWj+JVT59BfGbuKops596H6Cg8MhdUlPGu6T5/eAL4wLmhmw==
X-Received: by 2002:a05:600c:1c9d:b0:45b:6275:42cc with SMTP id 5b1f17b1804b1-45f211ffafbmr115067555e9.28.1757995327491;
        Mon, 15 Sep 2025 21:02:07 -0700 (PDT)
Received: from Latitude-7490.ht.home ([178.132.106.74])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3e813eb46f3sm13594706f8f.23.2025.09.15.21.02.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Sep 2025 21:02:06 -0700 (PDT)
From: chalianis1@gmail.com
To: s.hauer@pengutronix.de,
	a.fatoum@barebox.org
Cc: barebox@lists.infradead.org,
	Chali Anis <chalianis1@gmail.com>
Date: Tue, 16 Sep 2025 00:01:47 -0400
Message-Id: <20250916040155.814159-3-chalianis1@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250916040155.814159-1-chalianis1@gmail.com>
References: <20250916040155.814159-1-chalianis1@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250915_210209_708638_F183016F 
X-CRM114-Status: GOOD (  29.45  )
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
Subject: [PATCH v3 03/11] efi: payload: add support for efi stub boot
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



