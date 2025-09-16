Delivery-date: Tue, 16 Sep 2025 06:56:01 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyNjV-003ZKP-1b
	for lore@lore.pengutronix.de;
	Tue, 16 Sep 2025 06:56:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyNjT-0004ng-U1
	for lore@pengutronix.de; Tue, 16 Sep 2025 06:56:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VVbgBhfz26bmFcP1BdeIchvRcwIBb5ASBESfKsJZi2Y=; b=JSNFubz8Vzqs2dKWBU8gSR8k7W
	cOfi51SQ2vfLAeNL4sVoADUWltJT4EJw0jHbUf7LsVf8HP8RdtSPlo8Y72soo77e/p/o/lNM//5hH
	f27bLjrCHvIeIfvwTgmfmGycXheTaGUzNEDwPfl1GgAjy314TQ8lEa9C06on+hoanr/sISqhHwDxs
	1xjeh8MDdZq4ZAE0kap5369A9jXz+Vq7Qw6VgAbyVNgtlJ0+R8fuAIOAMdc8ocL/0Lc5eQ7jQ5h7j
	927b7FpkSkQ6u0f1O8opVHmrRuxaU+e64M9HLYMZtQJM0omcD0+vVu51SltjbWvs3hP3p3Z04A+Xb
	tyRHXi5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyNik-00000006kOg-2jKV;
	Tue, 16 Sep 2025 04:55:14 +0000
Received: from mail-wr1-x435.google.com ([2a00:1450:4864:20::435])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyNih-00000006kMn-3GPu
	for barebox@lists.infradead.org;
	Tue, 16 Sep 2025 04:55:13 +0000
Received: by mail-wr1-x435.google.com with SMTP id ffacd0b85a97d-3dae49b117bso3799526f8f.1
        for <barebox@lists.infradead.org>; Mon, 15 Sep 2025 21:55:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757998510; x=1758603310; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VVbgBhfz26bmFcP1BdeIchvRcwIBb5ASBESfKsJZi2Y=;
        b=mHy6sF3BWbIkrzWhQi65cy2aw3f50cB9jPC9qtDWxawkSqoTg5ST6mt0Uv0nsI0iNJ
         ePGkUdNZ/gJ9rEdl0oeIPEAaUjJOSWJqQxvFEq3K4EsyIFkoFu6xOZ3qYokhqztbhPCn
         a5PGe7Sps3aqqOTw2hUE7pMkrQ5rbn3NlYrfC5qecVtmzakkgLjUSOMwRfpW5smiExNU
         mMgpa0DJcikQx+hTgrfqFY6i5CGjMpIVHkYEBf2xcNDMjBf7yP0OyPeEFQ9gg6osixQG
         5jPvI8k5+7tEZVe/5SoDjvRpFhFbF1j/GfzC1IHcOXCfKQejGhCCZPE41nQmegkHBFeb
         G+DA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757998510; x=1758603310;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VVbgBhfz26bmFcP1BdeIchvRcwIBb5ASBESfKsJZi2Y=;
        b=W+oVaK+TaBLMh/Vko5kgAH/ummh9mMhFTezpP8VVDsqQkCptt+U1SA/YZ4WGKkPv0K
         Uu/3wBqk9SQwp7MwbFVMcRPEKiXVKdL1c7CNURREvABJYlH0dipVs95zTUQFrpL6JhjC
         u5v6/IMVkWfyaIxom20NiF6Okm5ainD0TP9eLv+vo3MhVK7Zi8eFh9JNWfuAVJFCO/SR
         0ugSjdNiTy93filFJng7LtdU1iQjwXPDEmnUpF8wgThjqhBSG/oeNRVG0J5TDZJ3sXP8
         f/mP5tXC2FYd2AQV1G1ZNp8Kh3giqN/sNgJhi6O+q4CCuzIKKdMx8Wmk/98jDgpqfQ/e
         BWlg==
X-Gm-Message-State: AOJu0Yys+rp13l4nKmMjPENKC8Vjwy1bqtGXVRRoj543twg2O0TQyWha
	M3TyoK5eB0rumWFK0z0mHfQfVtkfguSvvWI4BVr8iVynjI60GPqt/nvf
X-Gm-Gg: ASbGncsskOf7r7rMTGh91yEjZFll886DQLgHW9gfAjzEWzCyzpp6NUPU3mfqwuhANGo
	cCvzAgfjp12LmwFnJrL25Q9nE09JM3HIc+7gZOccKvZUZ8MnibXPyUzKQUZMcyrbHw5A0RG++vV
	+Doo6BwyyigOn9w/j4J2g7WEkueutMVGf5VBQIe22Sq2rQnFYeR/nNxyVnE1P4LLXM7nJfE9eDz
	6k6MN3IKpk5hMoxom9UzKwFj0pQgkrB4xiuHprBXyRFCPj7+93MJO9aJ3vgnNaLCW7LxmkopPHn
	eEe+CImpFzQqYxQlfG4qb2Og6nBm0dp/dE23+VvnuT0y2wJMc2SyXZVJIY+AYUidVYrQl4H/tOm
	/xyls2GYHc7qezuAkhFi4xwB8vMDDqEWdLFP7Ei9xwG6RwIcIZ1Tbxw3DeU2b37pEnsI5RJJZyB
	QFdDeflO8ZZ5hEnig/KBuzEQ==
X-Google-Smtp-Source: AGHT+IFJMgTR22rgUisdsIuC/cw3MTSufNPeUiWoAeUzju3WfZLaBhFrH4wD8Nk9kvreZbfGFvusIA==
X-Received: by 2002:a05:6000:26c5:b0:3e7:5fbb:c541 with SMTP id ffacd0b85a97d-3e7657907f4mr10416958f8f.9.1757998509821;
        Mon, 15 Sep 2025 21:55:09 -0700 (PDT)
Received: from Latitude-7490.ht.home ([178.132.106.74])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3e7607cd0a7sm20123525f8f.39.2025.09.15.21.55.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Sep 2025 21:55:08 -0700 (PDT)
From: chalianis1@gmail.com
To: s.hauer@pengutronix.de,
	a.fatoum@barebox.org
Cc: barebox@lists.infradead.org,
	Chali Anis <chalianis1@gmail.com>
Date: Tue, 16 Sep 2025 00:54:50 -0400
Message-Id: <20250916045500.907542-2-chalianis1@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250916045500.907542-1-chalianis1@gmail.com>
References: <20250916045500.907542-1-chalianis1@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250915_215511_980068_BF666335 
X-CRM114-Status: GOOD (  26.45  )
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
Subject: [PATCH v4 02/12] efi: payload: split image handling from legacy handover boot support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@barebox.org>

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
Signed-off-by: Chali Anis <chalianis1@gmail.com>
---
 efi/Kconfig                |   4 +
 efi/payload/Kconfig        |   4 +
 efi/payload/Makefile       |   2 +
 efi/payload/handover.c     | 195 +++++++++++++++++++++++++++++++
 efi/payload/image.c        | 228 ++-----------------------------------
 efi/payload/image.h        |  14 +++
 efi/payload/setup_header.h |  63 ++++++++++
 7 files changed, 291 insertions(+), 219 deletions(-)
 create mode 100644 efi/payload/Kconfig
 create mode 100644 efi/payload/handover.c
 create mode 100644 efi/payload/image.h
 create mode 100644 efi/payload/setup_header.h

diff --git a/efi/Kconfig b/efi/Kconfig
index 84f670fd23d3..91dca949b5a3 100644
--- a/efi/Kconfig
+++ b/efi/Kconfig
@@ -18,6 +18,10 @@ config EFI_PAYLOAD
 	select PARTITION_DISK
 	select HW_HAS_PCI
 
+if EFI_PAYLOAD
+source "efi/payload/Kconfig"
+endif
+
 config EFI
 	bool
 
diff --git a/efi/payload/Kconfig b/efi/payload/Kconfig
new file mode 100644
index 000000000000..310f79c3d89f
--- /dev/null
+++ b/efi/payload/Kconfig
@@ -0,0 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
+config EFI_HANDOVER_PROTOCOL
+	def_bool y
diff --git a/efi/payload/Makefile b/efi/payload/Makefile
index a4a0332a8288..d8b577bf3e23 100644
--- a/efi/payload/Makefile
+++ b/efi/payload/Makefile
@@ -2,6 +2,8 @@
 
 obj-y += init.o
 obj-y += image.o
+obj-$(CONFIG_EFI_HANDOVER_PROTOCOL) += handover.o
+obj-y += efi-initrd.o
 obj-$(CONFIG_OFTREE) += fdt.o
 bbenv-y += env-efi
 obj-$(CONFIG_CMD_IOMEM) += iomem.o
diff --git a/efi/payload/handover.c b/efi/payload/handover.c
new file mode 100644
index 000000000000..7419d86cc997
--- /dev/null
+++ b/efi/payload/handover.c
@@ -0,0 +1,195 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * handover.c - legacy x86 EFI handover protocol
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
+static int efi_do_execute_image(enum filetype filetype, const char *file)
+{
+	efi_handle_t handle;
+	struct efi_loaded_image *loaded_image;
+	int ret;
+
+	ret = efi_load_image(file, &loaded_image, &handle);
+	if (ret)
+		return ret;
+
+	return efi_execute_image(handle, loaded_image, filetype);
+}
+
+typedef void(*handover_fn)(void *image, struct efi_system_table *table,
+			   struct x86_setup_header *header);
+
+static inline void linux_efi_handover(efi_handle_t handle,
+				      struct x86_setup_header *header)
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
+	ret = efi_load_image(data->os_file, &loaded_image, &handle);
+	if (ret)
+		return ret;
+
+	image_header = (struct x86_setup_header *)loaded_image->image_base;
+
+	if (!is_x86_setup_header(image_header) ||
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
+static struct image_handler efi_handle_tr = {
+	.name = "EFI Application",
+	.bootm = do_bootm_efi,
+	.filetype = filetype_exe,
+};
+
+static int efi_execute(struct binfmt_hook *b, char *file, int argc, char **argv)
+{
+	return efi_do_execute_image(b->type, file);
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
+	if (IS_ENABLED(CONFIG_ARM64))
+		binfmt_register(&binfmt_arm64_efi_hook);
+
+	return 0;
+}
+late_efi_initcall(efi_register_image_handler);
diff --git a/efi/payload/image.c b/efi/payload/image.c
index 33c5e18dac27..5b0a0ac199c0 100644
--- a/efi/payload/image.c
+++ b/efi/payload/image.c
@@ -8,10 +8,7 @@
 #include <clock.h>
 #include <common.h>
 #include <linux/sizes.h>
-#include <linux/ktime.h>
 #include <memory.h>
-#include <command.h>
-#include <magicvar.h>
 #include <init.h>
 #include <driver.h>
 #include <io.h>
@@ -19,63 +16,15 @@
 #include <malloc.h>
 #include <string.h>
 #include <linux/err.h>
-#include <boot.h>
-#include <bootm.h>
+#include <bootargs.h>
 #include <fs.h>
 #include <libfile.h>
-#include <binfmt.h>
 #include <wchar.h>
 #include <efi/efi-payload.h>
 #include <efi/efi-device.h>
 
-struct linux_kernel_header {
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
+#include "image.h"
+#include "setup_header.h"
 
 static void *efi_read_file(const char *file, size_t *size)
 {
@@ -122,8 +71,8 @@ static void efi_free_file(void *_mem, size_t size)
 		BS->free_pages(mem, DIV_ROUND_UP(size, EFI_PAGE_SIZE));
 }
 
-static int efi_load_image(const char *file, struct efi_loaded_image **loaded_image,
-		efi_handle_t *h)
+int efi_load_image(const char *file, struct efi_loaded_image **loaded_image,
+		   efi_handle_t *h)
 {
 	void *exe;
 	size_t size;
@@ -158,10 +107,7 @@ static int efi_load_image(const char *file, struct efi_loaded_image **loaded_ima
 
 static bool is_linux_image(enum filetype filetype, const void *base)
 {
-	const struct linux_kernel_header *hdr = base;
-
-	if (IS_ENABLED(CONFIG_X86) &&
-	    hdr->boot_flag == 0xAA55 && hdr->header == 0x53726448)
+	if (IS_ENABLED(CONFIG_X86) && is_x86_setup_header(base))
 		return true;
 
 	if (IS_ENABLED(CONFIG_ARM64) &&
@@ -171,18 +117,13 @@ static bool is_linux_image(enum filetype filetype, const void *base)
 	return false;
 }
 
-static int efi_execute_image(enum filetype filetype, const char *file)
+int efi_execute_image(efi_handle_t handle,
+		      struct efi_loaded_image *loaded_image,
+		      enum filetype filetype)
 {
-	efi_handle_t handle;
-	struct efi_loaded_image *loaded_image;
 	efi_status_t efiret;
 	const char *options;
 	bool is_driver;
-	int ret;
-
-	ret = efi_load_image(file, &loaded_image, &handle);
-	if (ret)
-		return ret;
 
 	is_driver = (loaded_image->image_code_type == EFI_BOOT_SERVICES_CODE) ||
 		(loaded_image->image_code_type == EFI_RUNTIME_SERVICES_CODE);
@@ -215,154 +156,3 @@ static int efi_execute_image(enum filetype filetype, const char *file)
 
 	return -efi_errno(efiret);
 }
-
-typedef void(*handover_fn)(void *image, struct efi_system_table *table,
-		struct linux_kernel_header *header);
-
-static inline void linux_efi_handover(efi_handle_t handle,
-		struct linux_kernel_header *header)
-{
-	handover_fn handover;
-	uintptr_t addr;
-
-	addr = header->code32_start + header->handover_offset;
-	if (IS_ENABLED(CONFIG_X86_64))
-		addr += 512;
-
-	handover = efi_phys_to_virt(addr);
-	handover(handle, efi_sys_table, header);
-}
-
-static int do_bootm_efi(struct image_data *data)
-{
-	void *tmp;
-	void *initrd = NULL;
-	size_t size;
-	efi_handle_t handle;
-	int ret;
-	const char *options;
-	struct efi_loaded_image *loaded_image;
-	struct linux_kernel_header *image_header, *boot_header;
-
-	ret = efi_load_image(data->os_file, &loaded_image, &handle);
-	if (ret)
-		return ret;
-
-	image_header = (struct linux_kernel_header *)loaded_image->image_base;
-
-	if (image_header->boot_flag != 0xAA55 ||
-	    image_header->header != 0x53726448 ||
-	    image_header->version < 0x20b ||
-	    !image_header->relocatable_kernel) {
-		pr_err("Not a valid kernel image!\n");
-		BS->unload_image(handle);
-		return -EINVAL;
-	}
-
-	boot_header = xmalloc(0x4000);
-	memset(boot_header, 0, 0x4000);
-	memcpy(boot_header, image_header, sizeof(*image_header));
-
-	/* Refer to Linux kernel commit a27e292b8a54
-	 * ("Documentation/x86/boot: Reserve type_of_loader=13 for barebox")
-	 */
-	boot_header->type_of_loader = 0x13;
-
-	if (data->initrd_file) {
-		tmp = read_file(data->initrd_file, &size);
-		initrd = xmemalign(PAGE_SIZE, PAGE_ALIGN(size));
-		memcpy(initrd, tmp, size);
-		memset(initrd + size, 0, PAGE_ALIGN(size) - size);
-		free(tmp);
-		boot_header->ramdisk_image = efi_virt_to_phys(initrd);
-		boot_header->ramdisk_size = PAGE_ALIGN(size);
-	}
-
-	options = linux_bootargs_get();
-	if (options) {
-		boot_header->cmd_line_ptr = efi_virt_to_phys(options);
-		boot_header->cmdline_size = strlen(options);
-	}
-
-	boot_header->code32_start = efi_virt_to_phys(loaded_image->image_base +
-			(image_header->setup_sects+1) * 512);
-
-	if (bootm_verbose(data)) {
-		printf("\nStarting kernel at 0x%p", loaded_image->image_base);
-		if (data->initrd_file)
-			printf(", initrd at 0x%08x",
-			       boot_header->ramdisk_image);
-		printf("...\n");
-	}
-
-	if (data->dryrun) {
-		BS->unload_image(handle);
-		free(boot_header);
-		free(initrd);
-		return 0;
-	}
-
-	efi_set_variable_usec("LoaderTimeExecUSec", &efi_systemd_vendor_guid,
-			      ktime_to_us(ktime_get()));
-
-	shutdown_barebox();
-	linux_efi_handover(handle, boot_header);
-
-	return 0;
-}
-
-static struct image_handler efi_handle_tr = {
-	.name = "EFI Application",
-	.bootm = do_bootm_efi,
-	.filetype = filetype_exe,
-};
-
-static int efi_execute(struct binfmt_hook *b, char *file, int argc, char **argv)
-{
-	return efi_execute_image(b->type, file);
-}
-
-static struct binfmt_hook binfmt_efi_hook = {
-	.type = filetype_exe,
-	.hook = efi_execute,
-};
-
-static int do_bootm_mbr(struct image_data *data)
-{
-	/* On x86, Linux kernel images have a MBR magic at the end of
-	 * the first 512 byte sector and a PE magic if they're EFI-stubbed.
-	 * The PE magic has precedence over the MBR, so if we arrive in
-	 * this boot handler, the kernel has no EFI stub.
-	 *
-	 * Print a descriptive error message instead of "no image handler
-	 * found for image type MBR sector".
-	 */
-	pr_err("Can't boot MBR sector: Is CONFIG_EFI_STUB disabled in your Linux kernel config?\n");
-	return -ENOSYS;
-}
-
-static struct image_handler non_efi_handle_linux_x86 = {
-	.name = "non-EFI x86 Linux Image",
-	.bootm = do_bootm_mbr,
-	.filetype = filetype_mbr,
-};
-
-static struct binfmt_hook binfmt_arm64_efi_hook = {
-	.type = filetype_arm64_efi_linux_image,
-	.hook = efi_execute,
-};
-
-static int efi_register_image_handler(void)
-{
-	register_image_handler(&efi_handle_tr);
-	binfmt_register(&binfmt_efi_hook);
-
-	if (IS_ENABLED(CONFIG_X86))
-		register_image_handler(&non_efi_handle_linux_x86);
-
-	if (IS_ENABLED(CONFIG_ARM64))
-		binfmt_register(&binfmt_arm64_efi_hook);
-
-	return 0;
-}
-late_efi_initcall(efi_register_image_handler);
diff --git a/efi/payload/image.h b/efi/payload/image.h
new file mode 100644
index 000000000000..673b21db839a
--- /dev/null
+++ b/efi/payload/image.h
@@ -0,0 +1,14 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+#ifndef __EFI_PAYLOAD_IMAGE_H__
+#define __EFI_PAYLOAD_IMAGE_H__
+
+#include <efi/types.h>
+
+int efi_load_image(const char *file, struct efi_loaded_image **loaded_image,
+		   efi_handle_t *h);
+
+int efi_execute_image(efi_handle_t handle,
+		      struct efi_loaded_image *loaded_image,
+		      enum filetype filetype);
+
+#endif
diff --git a/efi/payload/setup_header.h b/efi/payload/setup_header.h
new file mode 100644
index 000000000000..4f094b844415
--- /dev/null
+++ b/efi/payload/setup_header.h
@@ -0,0 +1,63 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+#ifndef __EFI_PAYLOAD_SETUP_HEADER_H__
+#define __EFI_PAYLOAD_SETUP_HEADER_H__
+
+#include <linux/types.h>
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
+
+#endif
-- 
2.34.1



