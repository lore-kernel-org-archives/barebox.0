Delivery-date: Tue, 16 Sep 2025 06:03:13 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyMuP-003Ycv-0H
	for lore@lore.pengutronix.de;
	Tue, 16 Sep 2025 06:03:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyMuN-0000ep-Gf
	for lore@pengutronix.de; Tue, 16 Sep 2025 06:03:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sk6iN1Ic/qQXsGnK+Yh7rvgR5M30rhp9D8F5BjZFN60=; b=qdPhOYwVXWyqFxTqVe03Of9psx
	vfqWYlI3G1D7kO/cMHW+H3oH62iTbEEA2yegykVaIYun3IW6MY47ko674PsKiBTjzQmnWUmBNEv/U
	vjmngRYeVH0POD4so3E6IxjvMu+Fl15Ms2hm9R2gmkjlEh4cOtdavBJJ8e/OuWB0UPsryTp2/0J0a
	ftj2+ni9xno4F3Pu3K3O7da2FDMUKnmIFdoQnOyM4drOaAU4eSQQNwUC50Q4pV+mOonOl+0LBx+K2
	1YqBraLqhYDeIFfHtIYJYYj1N/wXT+nvOU9y9aVkqFK1IPZPCuTksh0t2/6JFlfJrch6EOynZUp1J
	49lRND1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyMto-00000006elz-3Vvn;
	Tue, 16 Sep 2025 04:02:36 +0000
Received: from mail-wm1-x334.google.com ([2a00:1450:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyMtj-00000006egs-0yHy
	for barebox@lists.infradead.org;
	Tue, 16 Sep 2025 04:02:34 +0000
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-45f2a69d876so13043045e9.0
        for <barebox@lists.infradead.org>; Mon, 15 Sep 2025 21:02:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757995349; x=1758600149; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sk6iN1Ic/qQXsGnK+Yh7rvgR5M30rhp9D8F5BjZFN60=;
        b=fi6E2Z1YK9eK/9kWCcnC+e7CR73FCgAoadHf7YnqWJr40eg3YNygw4LZR8x8CBr42n
         VEPkTvmxe7PSh6WWsFWI4TD1N1faCJASC+d8lHys7T2VToPnbalGSq/dZCLpyJznjOrL
         a0FeAc86z/8HW/f1iMDZ54ZFofgkK0CDod5+a7T24Y6YUlJ8/EhRwLRUKb6NDz7+kIh4
         ITT5bfY4bPjSuBGoXYltlNgAf9oK1DKaashliWEwbxoflw5CL1cgW5q5WLVpx121bv8M
         ucgwZs8YzQ35pYxyiOdajlf7CpevXeNqoXMqXN1WTKV4+rjcPNq1UfFsEbVplAg0MoMx
         FdNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757995349; x=1758600149;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sk6iN1Ic/qQXsGnK+Yh7rvgR5M30rhp9D8F5BjZFN60=;
        b=PIwzpP779Bh4ueRHP6VbnXRBc6wFf1fhQ961FUQdgEekX4iRPU9GSDCm9zN88zwo6V
         a7TMuKNsTxzmcv5GzDhsYWNEAfxnUWwOrqGZxdeP2XWJIBSfqeYJI2IK4q4ROdVfP+BJ
         4wJBJqUndnCYmf/kR8rxnnW2b1tsLbny7yvl/xxIgk534WKEIhXNF6hVxQFHjcmy41Ot
         M70+TXqCAnLZA/q3g/1HzN54b9E9eJHfLQokdHD5ImMQWuge9osJO9PNVcqIlk1QL2Sv
         3wQLfqCcIC27QCme/u9qITJnGSu6IEGJ1lrlKCTgICRq8xkz5os8DTmzSQsQ3ESNtDiE
         zhIg==
X-Gm-Message-State: AOJu0YwUKp/cbiRGT+OUQ1NBe8/Ej26cQxKdekkNycCYZiscgIEw/3+n
	Q4bfk+JPrENI1RiK7k1EXHkRTX8b/dqLf4JhBjgwLvLuYT2ni4KDNTyl
X-Gm-Gg: ASbGnctjzWwW3W/w3K9E1YP8oAP7Eqa4hyLLrr57wuBtvQfStZvT8A+FljOz2lxMWfj
	/hmuY5e70LEDBJYIvQbc5IRY3cpHa8ar4Oyqndhfh6D+LOg+b3W8PzbbB9CGPgAENSUoS8B9+gR
	36p+NISaQSjyVYoGY0xX+bg/YycN1g7auNRuTlAm8jKimCHfbjHBEE18l/odg+CERWChSFU1JRt
	lvgZP5t8UQlak/m3OA3dWQH9rBzHnExrh+xKA8Lnkkp8e1qsLiOIuHCo5eEolhgb16m8D+anrsA
	kNWv/mZZesLMok6YKctxmVynfnK3vzetY8yy5woJRIbxwENbj92y+XZf8y89QZd8BpC1HCSuewI
	QRn7I4iRtiC28JIxT1sdx/O9twnXwmGAM08C58QOLj3z0AWRwZK9GfOIgL4qpiJpPn7epITEnDk
	IjZe6KUu9DnBO8XqmIwH+A8A==
X-Google-Smtp-Source: AGHT+IG3GiiCEtzDt0dPvDDjoyxuAEnA1NW+MpvINtOUhbFlGpOn7bfTF1jCI72U+ZliyiAfvV0Esw==
X-Received: by 2002:a05:600c:1c0b:b0:45d:2ac9:4240 with SMTP id 5b1f17b1804b1-45f211f7099mr159971645e9.17.1757995349501;
        Mon, 15 Sep 2025 21:02:29 -0700 (PDT)
Received: from Latitude-7490.ht.home ([178.132.106.74])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3e813eb46f3sm13594706f8f.23.2025.09.15.21.02.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Sep 2025 21:02:27 -0700 (PDT)
From: chalianis1@gmail.com
To: s.hauer@pengutronix.de,
	a.fatoum@barebox.org
Cc: barebox@lists.infradead.org,
	Chali Anis <chalianis1@gmail.com>
Date: Tue, 16 Sep 2025 00:01:54 -0400
Message-Id: <20250916040155.814159-10-chalianis1@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250916040155.814159-1-chalianis1@gmail.com>
References: <20250916040155.814159-1-chalianis1@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250915_210233_836452_C056CF05 
X-CRM114-Status: GOOD (  17.71  )
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
Subject: [PATCH v3 10/11] efi: payload: bootm: add x86 efi stub boot support.
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



