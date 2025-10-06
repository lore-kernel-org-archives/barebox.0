Delivery-date: Mon, 06 Oct 2025 06:16:14 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v5cdy-004lsb-2A
	for lore@lore.pengutronix.de;
	Mon, 06 Oct 2025 06:16:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v5cdx-0002t7-82
	for lore@pengutronix.de; Mon, 06 Oct 2025 06:16:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Ut6Q2UX3+2q5sIg5QFGAQje8spCVN4E/QsgwPzZUgvk=; b=PKxNbN4E/4zni1yFA2Lu02tTNo
	RQQv7iIzmLzTlqemVfSw49a+3lmCK83JWNagIOhohRzialKZNyEmR9VaS4SK3XUoh/QhFoSWKXeJd
	F2WsOA5JUwLUehggKeuEBgZrCn41mgHIEYJjhr6mPkUGE3Bx4kh0PBhLMgY4B8okSqtFpEL8jICeW
	CVBOPVLoLlYaFnMxsroF9zXKj2YEgBngbwEROpPApIEASekJLxUq5fklD1jLfitO7YIKQ5Hp6SknE
	WhNR8oV72gm/5uqXiRtlgegsvPYeSYr1+8GNXjKA5QXdo9YWo0V39rOHvtho/deFvciXNo2qvzQbe
	e5dFyqSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5cdF-0000000GuKe-1DRj;
	Mon, 06 Oct 2025 04:15:29 +0000
Received: from mail-qk1-x731.google.com ([2607:f8b0:4864:20::731])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5cdC-0000000GuId-3frh
	for barebox@lists.infradead.org;
	Mon, 06 Oct 2025 04:15:28 +0000
Received: by mail-qk1-x731.google.com with SMTP id af79cd13be357-86278558cdeso497726485a.1
        for <barebox@lists.infradead.org>; Sun, 05 Oct 2025 21:15:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759724126; x=1760328926; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ut6Q2UX3+2q5sIg5QFGAQje8spCVN4E/QsgwPzZUgvk=;
        b=SBiwKm6eG6UFU1lMZl1SSX4hmm7Lmdh+vlFKOFeOunpOPy8BEogut7N0kCA3qFofif
         bKiJAcQuSeGbZIFjZFoyqKc7AKyKtOpmVR5LpLKbALE+CEmRdiO3T3cN3yrYrfBMml6t
         wZcwQCJX4vlNwEBO639JF7NIawWkDfXFSq/7ldTDDQNX65RuZ08Iwz1Iwdpj+FNdAIWo
         4zWvSSfcPzCk9e+TgMcxSrBZRUDBduu6s6/zeEjGAH3tyzJLaPhSFnR6m/ZZjnFc656V
         TCQSyRQCUTBHqT+F80cq/29N1koEEQiiZbvfGhsdlh9NZ9vJCnb4xCnHvP/AtGW9dg/V
         UOSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759724126; x=1760328926;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ut6Q2UX3+2q5sIg5QFGAQje8spCVN4E/QsgwPzZUgvk=;
        b=TwTK9ulTujc/Q+j58bNxE6F5tDuLg+3eHWKs/XiInSVyBLC9kGQLjOUpY6zyarjX3+
         cz0WRxLl5uMIbFOZhcjA/tYzCQ4OaHRPyIEdUEvCRm1gYUEjuz8bwa2saWq4aCzreNfS
         NUd8BgNYSqVJp2iuU2l0d8on/P7ulaYXCN6rltzZ3bcC2y1sQfDr1wqpBjDaqdgh9Uok
         RsLOzCV4HHh6kF4XKGYaznoAM9puUrVKyQrPfyt5PdLV51t5VpF485TVmWuH2qru+pzS
         63wt4Rc0Bq0l2zfp4l5uFpwwkyJENfYqDIYib9d8UvSQRA2ejeSrWHPkreg6tr1FK6un
         lyMA==
X-Gm-Message-State: AOJu0YyoOxApF5klK52aKQJWEDC83GX40oyN+igqURdhVCFKMO1Dckkh
	tKr3ZFSv7q0Fh3Eo0/GBP3oP7kINDnIdi2QlRvHryEoMTs4nDEhiOMsL
X-Gm-Gg: ASbGnctdcNgRigIkNfbDh8Qn1V7Zkm5sqO7Zucotw3thAMszG8dnWcucGYc0g6H4r8t
	/CP3RTL+oUl8DJW9DsTxA+7w2J+llkOAHITik99hoVfYUDUITZF0VdHUAdth9eWK1irGbkPBWea
	idGvNYc8bYGygb5mpsqjZGqfP9C0rYc3FAkTRUapa/Zhkc6QBjalRJt5GX/4YIX9wZWvy06YQdS
	AnGU0RYrN0VeHODH6pw8o3WoO1tspltjTNEoq2uxqZluGK+pWy5HnFFZWONXbWjo8luXfCTX7TM
	GHBVMSTEuLCINJIaxhoa+wHzsze1dGaMY4P71s1jUJjcPRjSPuzwam2lQUuURJSn9ROOHpixWdP
	5ffik0gYwj046o31NF/ls6WH0ZD3BM4xC4PNaKqh4PKeS12jRDUo46+t21TZgo5EXoANnfCVmUn
	k=
X-Google-Smtp-Source: AGHT+IGTM7D9TOIozZ6O4gwvRR3fuDtPjejZlFZ4Vp2pNhOb5W7/tjz+DXZR/Vm/RhMEUzYvUteSVA==
X-Received: by 2002:a05:620a:2805:b0:849:8fcc:748f with SMTP id af79cd13be357-87a38a3a96cmr1746551485a.73.1759724125573;
        Sun, 05 Oct 2025 21:15:25 -0700 (PDT)
Received: from Latitude-7490.ht.home ([2607:fa49:8c41:2600:1608:a712:ade2:2b30])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4e55cadcecdsm119506221cf.23.2025.10.05.21.15.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Oct 2025 21:15:25 -0700 (PDT)
From: chalianis1@gmail.com
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org,
	Chali Anis <chalianis1@gmail.com>,
	Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon,  6 Oct 2025 00:15:08 -0400
Message-Id: <20251006041512.1360284-7-chalianis1@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251006041512.1360284-1-chalianis1@gmail.com>
References: <20251006041512.1360284-1-chalianis1@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251005_211527_013294_FE175CBF 
X-CRM114-Status: GOOD (  26.78  )
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
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 07/11] efi: payload: split image handling from legacy handover boot
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Chali Anis <chalianis1@gmail.com>

The handover boot support is Linux-specific and can be disabled
with CONFIG_EFI_HANDOVER_PROTOCOL. In preparation for adding a compliant
boot method, move the handover-specific parts into their own file.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
Signed-off-by: Chali Anis <chalianis1@gmail.com>
---
 efi/payload/Kconfig        |   5 +
 efi/payload/Makefile       |   1 +
 efi/payload/handover.c     | 154 +++++++++++++++++++++++++++++
 efi/payload/image.c        | 192 +++++--------------------------------
 efi/payload/image.h        |  14 +++
 efi/payload/setup_header.h |  63 ++++++++++++
 6 files changed, 260 insertions(+), 169 deletions(-)
 create mode 100644 efi/payload/handover.c
 create mode 100644 efi/payload/image.h
 create mode 100644 efi/payload/setup_header.h

diff --git a/efi/payload/Kconfig b/efi/payload/Kconfig
index a403acc81a93..d0a46704a6b9 100644
--- a/efi/payload/Kconfig
+++ b/efi/payload/Kconfig
@@ -25,4 +25,9 @@ if EFI_PAYLOAD
 config EFI_STUB
 	def_bool HAVE_EFI_STUB
 
+config EFI_HANDOVER_PROTOCOL
+	bool "EFI Handover protocol"
+	default y
+	depends on X86
+
 endif
diff --git a/efi/payload/Makefile b/efi/payload/Makefile
index 1250535302d3..d8b577bf3e23 100644
--- a/efi/payload/Makefile
+++ b/efi/payload/Makefile
@@ -2,6 +2,7 @@
 
 obj-y += init.o
 obj-y += image.o
+obj-$(CONFIG_EFI_HANDOVER_PROTOCOL) += handover.o
 obj-y += efi-initrd.o
 obj-$(CONFIG_OFTREE) += fdt.o
 bbenv-y += env-efi
diff --git a/efi/payload/handover.c b/efi/payload/handover.c
new file mode 100644
index 000000000000..82f4cb4f5286
--- /dev/null
+++ b/efi/payload/handover.c
@@ -0,0 +1,154 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * handover.c - legacy x86 EFI handover protocol
+ *
+ * Copyright (c) 2014 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
+ */
+
+#define pr_fmt(fmt) "efi-handover: " fmt
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
+static int efi_register_handover_handler(void)
+{
+	register_image_handler(&efi_handle_tr);
+	return 0;
+}
+late_efi_initcall(efi_register_handover_handler);
diff --git a/efi/payload/image.c b/efi/payload/image.c
index 33c5e18dac27..ae7678188d84 100644
--- a/efi/payload/image.c
+++ b/efi/payload/image.c
@@ -5,13 +5,12 @@
  * Copyright (c) 2014 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
  */
 
+#define pr_fmt(fmt) "efi-image: " fmt
+
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
@@ -19,7 +18,7 @@
 #include <malloc.h>
 #include <string.h>
 #include <linux/err.h>
-#include <boot.h>
+#include <bootargs.h>
 #include <bootm.h>
 #include <fs.h>
 #include <libfile.h>
@@ -28,54 +27,8 @@
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
@@ -85,10 +38,6 @@ static void *efi_read_file(const char *file, size_t *size)
 	char *buf;
 	ssize_t ret;
 
-	buf = read_file(file, size);
-	if (buf || errno != ENOMEM)
-		return buf;
-
 	ret = stat(file, &s);
 	if (ret)
 		return NULL;
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
@@ -216,110 +157,17 @@ static int efi_execute_image(enum filetype filetype, const char *file)
 	return -efi_errno(efiret);
 }
 
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
+static int efi_execute(struct binfmt_hook *b, char *file, int argc, char **argv)
 {
-	void *tmp;
-	void *initrd = NULL;
-	size_t size;
+	struct efi_loaded_image *loaded_image;
 	efi_handle_t handle;
 	int ret;
-	const char *options;
-	struct efi_loaded_image *loaded_image;
-	struct linux_kernel_header *image_header, *boot_header;
 
-	ret = efi_load_image(data->os_file, &loaded_image, &handle);
+	ret = efi_load_image(file, &loaded_image, &handle);
 	if (ret)
 		return ret;
 
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
+	return efi_execute_image(handle, loaded_image, b->type);
 }
 
 static struct binfmt_hook binfmt_efi_hook = {
@@ -352,13 +200,19 @@ static struct binfmt_hook binfmt_arm64_efi_hook = {
 	.hook = efi_execute,
 };
 
+static struct binfmt_hook binfmt_x86_efi_hook = {
+	.type = filetype_x86_linux_image,
+	.hook = efi_execute,
+};
+
 static int efi_register_image_handler(void)
 {
-	register_image_handler(&efi_handle_tr);
 	binfmt_register(&binfmt_efi_hook);
 
-	if (IS_ENABLED(CONFIG_X86))
+	if (IS_ENABLED(CONFIG_X86)) {
 		register_image_handler(&non_efi_handle_linux_x86);
+		binfmt_register(&binfmt_x86_efi_hook);
+	}
 
 	if (IS_ENABLED(CONFIG_ARM64))
 		binfmt_register(&binfmt_arm64_efi_hook);
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



