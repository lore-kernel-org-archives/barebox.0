Delivery-date: Tue, 16 Sep 2025 05:55:39 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyMn5-003YGS-1j
	for lore@lore.pengutronix.de;
	Tue, 16 Sep 2025 05:55:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyMn3-00075L-Uo
	for lore@pengutronix.de; Tue, 16 Sep 2025 05:55:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VVbgBhfz26bmFcP1BdeIchvRcwIBb5ASBESfKsJZi2Y=; b=XdjET+WAS4xS5CiL1WcQQ9bBML
	JBr5E62ITDtzOEw8mZEnZE0t0OxeeZOI4O+MRHnMkVPt4cL85wa8mrmwloGuRb4etgqsTroWjHT7S
	QRLDPl7oU7yLMQFgiE0x2Rz/sPi5Q0oSssV9jve2mc3pWL16oN6yeN5KmIEsfh+5ZqqiRR2lj5m29
	BS4yR/pruVvs7H/qlTFJZPTs6AsOvncjrXmu8XNmEWQ3ZfmUvZZ15EDUZUjQ+B5Oxwzb6y0+oiEif
	nV0rgOLN6gVAH82J8VwtvBHtGuShQLYSGQFtZEbbaFDvq3t62EQr8otcjeQnt8HEm0HpaaEm8eZ28
	IJhFtZjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyMmM-00000006dCw-2S1K;
	Tue, 16 Sep 2025 03:54:54 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyMmJ-00000006dC6-3zgT
	for barebox@lists.infradead.org;
	Tue, 16 Sep 2025 03:54:53 +0000
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-45ed646b656so40648165e9.3
        for <barebox@lists.infradead.org>; Mon, 15 Sep 2025 20:54:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757994890; x=1758599690; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VVbgBhfz26bmFcP1BdeIchvRcwIBb5ASBESfKsJZi2Y=;
        b=RdHhyej/iqfZku8KXjj4XBzFm1rlmJQ3bfdJivqN8+PUkVb17t8DSqywhwTBhHD+It
         Hxq/MN0GKQHo9U+uC4esCow6eBsdV0lcjA7MQ0d+J5QFsOQbT8JO5Tfq1/HUKy/KrAO7
         rELhIXG+95urutz9uNfRQo8Y6W1RnOK9a6Vo2s9rDbBGmRPdW0J82zdzLG0pZ6H7FbX9
         8aMVfuzo3z6hOwzXPrA8acMSp7Bvqzpt0YxykTZLYllEPnrdHH5YPKx59QYl8116NIn9
         VrsC4iR3B81kPSQNENwsESgYLtZ0oS65zfbWF0uKRZzO7Q7ZSUnbHkGXBzcleAr57+gW
         xR8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757994890; x=1758599690;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VVbgBhfz26bmFcP1BdeIchvRcwIBb5ASBESfKsJZi2Y=;
        b=uZYj5NhE62aurYdGsoBZ5W06NwLIlozUr9eestTAnIqCfpnMw6u5Sm4qM8xab1RE/C
         7ZO461khTaQyGoA5pSrjnasuYUquY0GO9SKqOLwvKYHxiDS40HAAafZnNq1jhbtA05mp
         daHisKovjenokFiUGYxEIo2uQs4pgn43kf1eXjF5ZDd4rBKN4sut33QMB+Yuf3bRijnK
         OPR/aLqibDYOfWFDo8AEdla2U2AotJwskr2BCmNL2FNZn1z8Hugid5ibwLMVPKUkz4AK
         bdMwgKhUYYQ0RwtT4H6vQNHiV9Td12kSs772k4nogs+G5UG7yHS9gVSrLHSYRQKpoH7z
         koMw==
X-Gm-Message-State: AOJu0YxBNb2lpoeZzBOqP13hRCknHWV8MywjdtwAlziz5uXDO0LbaB+8
	0ELdT5WgLqA+hkgzbgmzPEsRIbLflCqvqM2xHbMsqO0kJUAGM/bAQ1Px
X-Gm-Gg: ASbGncu+Tig2QVDM0OFY0dD7CjR5ryFj1I3bqIkCdhzSSVSqt+xstoi00mvQOumMIDa
	xnh8pOKSAdYGVQG/vj7+x46mea1HnvoLDOh+tlNyEoz1PLylFyLTiEqmrPhO8cdIPFfTGsuyN+K
	kDc7lxjGW/Fh1Jj91g5BVOQZKmotuqz5XupRSmDh4LhRWwtoUbTpiqT9F/6Q8GQvZyVW80VgUeo
	qbfaIXGOUl+day6DfFH/bEKYgehRSjtF6CFpFUKDCeu8NZNtH05BR+HU5RA88K3Q/3P5pnPoXMg
	zZlR9updEpkCaQWiF/ffGPmTwpR8PQ4XVtpdZ833jOkA92mpJ830MYIfn8IaVRhuCkwsX1ASjzJ
	MMx7nxTzTHvg1mAp0zO8qDmnk8Rtrxy1uLADu1bdscfIB+vv+TkhEKMYUvPbhbN+HMBlDTc8tlu
	oTaSKTQ+ACbX9uJR3z26Y+ag==
X-Google-Smtp-Source: AGHT+IE/UzULKMX+7JLE6H3DuIwWx7eWxeZE3aBGGIOuTgFGy9Kse6TmZ64bmuGrpeuWS5n1hsShAg==
X-Received: by 2002:a05:600c:6d45:b0:45b:47e1:ef6a with SMTP id 5b1f17b1804b1-45f21208baemr93174225e9.37.1757994889727;
        Mon, 15 Sep 2025 20:54:49 -0700 (PDT)
Received: from Latitude-7490.ht.home ([178.132.106.74])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3e8237cfdddsm13496580f8f.60.2025.09.15.20.54.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Sep 2025 20:54:49 -0700 (PDT)
From: chalianis1@gmail.com
To: s.hauer@pengutronix.de,
	a.fatoum@barebox.org
Cc: barebox@lists.infradead.org,
	Chali Anis <chalianis1@gmail.com>
Date: Mon, 15 Sep 2025 23:54:29 -0400
Message-Id: <20250916035437.805046-2-chalianis1@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250916035437.805046-1-chalianis1@gmail.com>
References: <20250916035437.805046-1-chalianis1@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250915_205452_154656_68B173E3 
X-CRM114-Status: GOOD (  26.52  )
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
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 02/10] efi: payload: split image handling from legacy handover boot support
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



