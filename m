Delivery-date: Tue, 16 Sep 2025 06:56:07 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyNjb-003ZM2-1Q
	for lore@lore.pengutronix.de;
	Tue, 16 Sep 2025 06:56:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyNja-0004t9-Iv
	for lore@pengutronix.de; Tue, 16 Sep 2025 06:56:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sk6iN1Ic/qQXsGnK+Yh7rvgR5M30rhp9D8F5BjZFN60=; b=ChHG3d/bLTtVH0o3XAIou+9ohl
	eeV614+G36EVa5OyE3vs28mZBljtUYFVLGQRNEVGWGG4plzHhNUX/hTGmspxrf1A2xYTzYMAa7qfK
	M7GcYB3roEJI6RObHUccJrrAzhzrwHtDWEVGntemZi7UX4CR8Vhlg33515AZ8HrLBQUMAjyQDddAF
	XXyCB9e/ofbdeP2Kxpj2hOEZdy7aFT4jVkSM/SZvo9gcNf188FpHW9Ic87diX3uWs0KK+rtDUngo4
	ZdNx+V7bC8KMJgCNjVLv4Nj7F9OWgP1TMtdSiuHXSzrA8td8cinij1lwN/j1LhohqDkvElVCBwHWX
	depdvSXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyNj6-00000006kgp-2Txv;
	Tue, 16 Sep 2025 04:55:36 +0000
Received: from mail-wr1-x436.google.com ([2a00:1450:4864:20::436])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyNj4-00000006kdE-2ILY
	for barebox@lists.infradead.org;
	Tue, 16 Sep 2025 04:55:35 +0000
Received: by mail-wr1-x436.google.com with SMTP id ffacd0b85a97d-3ebe8dc13a3so750967f8f.3
        for <barebox@lists.infradead.org>; Mon, 15 Sep 2025 21:55:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757998533; x=1758603333; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sk6iN1Ic/qQXsGnK+Yh7rvgR5M30rhp9D8F5BjZFN60=;
        b=mALtdQr6mU3SwYAziA1JGoW3Wxqak9GcCwM27MKwO4KrtDWZAhYnxpXfJfwRh+q6qA
         0iFjfXN3ckECT1fA+TkX6C9qzoengKzPYN+aUlNh/+bvCLOCaqcqGK395AgvJOxjNeJC
         Vp1y03PhYLfuOsjdQpbWCQABwU9pGbC/g7TRTJMCbjc1qJkFajEmomtWHqmDf9zg6IUw
         /ReqUroNA3FvoB6IDvS4PanrsoL22YJwpTxkJ3xkJ2sJMuR3EZDEwWCuKRiFx9ARVEwe
         FEaWJk0oTuH57KU6psEW/nR0AfeBm+5ZViL2TOOlz6z/2KbfnLNTFPRlv4T2M5+xga85
         7TLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757998533; x=1758603333;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sk6iN1Ic/qQXsGnK+Yh7rvgR5M30rhp9D8F5BjZFN60=;
        b=BNPUos+WIOM+psnPwIqV6eZJarE9eAWYropbhJhcTVhJ4gMPI998Rhkv8riUoE7eQ2
         G6AK3QabFGmZvjLSI4DbO4/QPGPV4YCR/anUkI+RTApNUirrQyTLcg0nfGry0cjCbE9I
         y5cSeeYW8fvlhdGDg+FMoMejmE2Z9ETxjPqHqZXwJg7N46bXJyCJKo5QhVL/ByE/mtDK
         9hVmpeE6N7nnhZTa9HqqVzAJ+WTxWOTHjuM/7+zreUM3YZ5eHrNliqmFBT6yWjRwNU9L
         3s6aYSWxZKYWlXo+SnVnGlCMFoqHSEv72JHsEFPG5gfmXz8XZ8qvjH2sb3EwapgXJIzb
         FnFw==
X-Gm-Message-State: AOJu0YwUrVYkoB9X521eN25UmjWAHwAbJ8w2hYU9bjU4r0C2RN+PSs1a
	4PpkYhgR4olCah57OHkU256iQcVt9S/DMIYI2XdZvfbBD1qxe8/oCy+Z
X-Gm-Gg: ASbGncuDbCa6xJ5nXsORDjcjVv+96pLgVzzepZDUy/i7UAhWN9TYfua6nKxbtuqed0U
	H50XaYGZs6bd8WB0+DZwOzu0cm4vmf8pDJUO93LnWkvZal1gElFf4ob+O/d0cUR8QeSTkKjl+uq
	cQntEOxKdM7nxK55D9MYiFsrh/u02hFpInVfHi3gP8qfH3w41CrQvRs8zSDxrvWL4wxEnuWtvNg
	qLW5/sWcUM5aAzRQYSE9FFpRAU3EsYFRYTZBL/1OzERNRmfiIl6MdBEZpLD3QSd+Rob7W/2SX/w
	m37t+Mrrwx3SAP1MMYLI1PkF/4RYHg4xht6vFY0OgXyiLOXY+9xcxQIcL1XkUrQe+k7dbS1P1Lb
	zEy5FxQzrBnVdQY6+1FO7yWhXxGuacyVvigT8pNMNROmo8qeY99uufadZl9ok/gLJeNesiusan/
	JWYwVVqjcWBYLUEgbOsV5vgg==
X-Google-Smtp-Source: AGHT+IF3DLiwfPP96tgR/0lvZFC9oRnB+TXa2Ta7qpKhazm0/rGO/Tj9AHCiYjhNZtZxtrYuId7SHQ==
X-Received: by 2002:a05:6000:2407:b0:3da:37de:a3c0 with SMTP id ffacd0b85a97d-3e7657972damr13403220f8f.15.1757998532816;
        Mon, 15 Sep 2025 21:55:32 -0700 (PDT)
Received: from Latitude-7490.ht.home ([178.132.106.74])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3e7607cd0a7sm20123525f8f.39.2025.09.15.21.55.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Sep 2025 21:55:32 -0700 (PDT)
From: chalianis1@gmail.com
To: s.hauer@pengutronix.de,
	a.fatoum@barebox.org
Cc: barebox@lists.infradead.org,
	Chali Anis <chalianis1@gmail.com>
Date: Tue, 16 Sep 2025 00:54:58 -0400
Message-Id: <20250916045500.907542-10-chalianis1@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250916045500.907542-1-chalianis1@gmail.com>
References: <20250916045500.907542-1-chalianis1@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250915_215534_629754_E774EE33 
X-CRM114-Status: GOOD (  17.60  )
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
Subject: [PATCH v4 10/12] efi: payload: bootm: add x86 efi stub boot support.
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Chali Anis <chalianis1@gmail.com>

implement the efi stub boot on x86, this code is tested on qemu,
and dell latitude 7490. the EFI_ALLOCATE_MAX_PAGES cause an xfuncs
issue on real hardware so I transformed it to allocate any pages.

Signed-off-by: Chali Anis <chalianis1@gmail.com>
---
 efi/payload/bootm.c | 143 +++++++++++++-------------------------------
 1 file changed, 40 insertions(+), 103 deletions(-)

diff --git a/efi/payload/bootm.c b/efi/payload/bootm.c
index ce225ab949c9..3d2eaf915f4c 100644
--- a/efi/payload/bootm.c
+++ b/efi/payload/bootm.c
@@ -133,101 +133,6 @@ static int efi_load_file_image(const char *file,
 	return ret;
 }
 
-typedef void(*handover_fn)(void *image, struct efi_system_table *table,
-		struct x86_setup_header *header);
-
-static inline void linux_efi_handover(efi_handle_t handle,
-		struct x86_setup_header *header)
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
-	struct x86_setup_header *image_header, *boot_header;
-
-	ret = efi_load_file_image(data->os_file, &loaded_image, &handle);
-	if (ret)
-		return ret;
-
-	image_header = (struct x86_setup_header *)loaded_image->image_base;
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
 static bool ramdisk_is_fit(struct image_data *data)
 {
 	struct stat st;
@@ -368,9 +273,9 @@ static int efi_load_ramdisk(struct efi_image_data *e)
 	}
 
 	vmem = efi_allocate_pages(&mem, initrd_size,
-				 EFI_ALLOCATE_MAX_ADDRESS, EFI_LOADER_DATA);
+				 EFI_ALLOCATE_ANY_PAGES, EFI_LOADER_DATA);
 	if (!vmem) {
-		pr_err("Failed to allocate pages for initrd data\n");
+		pr_err("Failed to allocate pages for initrd data: %s\n", strerror(errno));
 		ret = -ENOMEM;
 		goto free_pool;
 	}
@@ -498,6 +403,9 @@ static int efi_load_fdt(struct efi_image_data *e)
 
 static void efi_unload_fdt(struct efi_image_data *e)
 {
+	if (IS_ENABLED(CONFIG_EFI_FDT_FORCE))
+		return;
+	
 	BS->install_configuration_table(&efi_fdt_guid, NULL);
 
 	efi_free_pages(efi_phys_to_virt(e->oftree_res.base),
@@ -539,12 +447,33 @@ static int do_bootm_efi_stub(struct image_data *data)
 	return ret;
 }
 
-static struct image_handler efi_handle_tr = {
+static int efi_app_execute(struct image_data *data)
+{
+	int ret;
+	struct efi_image_data e = { .data = data };
+	enum filetype type;
+
+	ret = efi_load_file_image(data->os_file, &e.loaded_image, &e.handle);
+	if (ret)
+		return ret;
+
+	type = file_detect_type(e.loaded_image->image_base, PAGE_SIZE);
+	
+	return efi_execute_image(e.handle, e.loaded_image, type);
+}
+
+static struct image_handler efi_app_handle_tr = {
 	.name = "EFI Application",
-	.bootm = do_bootm_efi,
+	.bootm = efi_app_execute,
 	.filetype = filetype_exe,
 };
 
+static struct image_handler efi_x86_linux_handle_tr = {
+	.name = "EFI X86 Linux kernel",
+	.bootm = do_bootm_efi_stub,
+	.filetype = filetype_x86_efi_linux_image,
+};
+
 static struct image_handler efi_arm64_handle_tr = {
 	.name = "EFI ARM64 Linux kernel",
 	.bootm = do_bootm_efi_stub,
@@ -594,14 +523,22 @@ static struct binfmt_hook binfmt_arm64_efi_hook = {
 	.hook = efi_execute,
 };
 
+static struct binfmt_hook binfmt_x86_efi_hook = {
+	.type = filetype_x86_efi_linux_image,
+	.hook = efi_execute,
+};
+
 static int efi_register_image_handler(void)
 {
-	register_image_handler(&efi_handle_tr);
+	register_image_handler(&efi_app_handle_tr);
 	binfmt_register(&binfmt_efi_hook);
-
-	if (IS_ENABLED(CONFIG_X86))
+	
+	if (IS_ENABLED(CONFIG_X86)) {
 		register_image_handler(&non_efi_handle_linux_x86);
-
+		register_image_handler(&efi_x86_linux_handle_tr);
+		binfmt_register(&binfmt_x86_efi_hook);
+	}
+	
 	if (IS_ENABLED(CONFIG_ARM64)) {
 		register_image_handler(&efi_arm64_handle_tr);
 		binfmt_register(&binfmt_arm64_efi_hook);
-- 
2.34.1



