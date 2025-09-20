Delivery-date: Sat, 20 Sep 2025 05:04:32 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uznto-00550x-1S
	for lore@lore.pengutronix.de;
	Sat, 20 Sep 2025 05:04:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uzntm-0005D0-Ve
	for lore@pengutronix.de; Sat, 20 Sep 2025 05:04:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+rEF7OC0DcYrXpJ8aUT60kV8Z7wYz9wfxRjPpUkQOdA=; b=dEGHpTTb6cFCvRKzkQ8NUfWfgT
	tXNkmHAqKDC/T2ZQPBLm+HLFIXtH4fHSKmN577AhW4ipS7jeC6tX97lEQhUSZbnHQzBbfmLqr0FNa
	/WZSsNLsGe4QQQ1DKx2l9BvPz4HwLfpPP8chBKTOW+XOKP5GnwWYKOMHFdKbBFFYXi8MnrJ+SuFrd
	c88lHXFdkrnAsFj2Cyq/RR39wL09ESuAioM1oRMJ0Ko/x0JfknZWtAz/fZ7o+rF0nTOSg4+voMifP
	Jjt+H05ZIwSsLA3Q8QTXHnWAOWa+xc1BIrT3agk9ukqi75vTruYR0n8EMZgyBzhzEzG1r1iPFXxJd
	2XU4GrwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uznt6-00000004bxI-2aZZ;
	Sat, 20 Sep 2025 03:03:48 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uznt1-00000004brg-3XWW
	for barebox@lists.infradead.org;
	Sat, 20 Sep 2025 03:03:46 +0000
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-46b303f7469so317195e9.1
        for <barebox@lists.infradead.org>; Fri, 19 Sep 2025 20:03:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758337422; x=1758942222; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+rEF7OC0DcYrXpJ8aUT60kV8Z7wYz9wfxRjPpUkQOdA=;
        b=aSKW5LXEUdKufCr59YuExzRTWGMB8NBz7H3AmLgqaQHG52CuhTIR1pYxpvq7o9v2Nw
         EqzTBixWLqUvmVNBJTjbOkin4fmVOIEYe2yJoH+WBYpC2ykoB9KYfkhQ2rR/I6qe30NZ
         hXlJlps+kYo8eDhcrAvppH3F7R8oto37U2oG8WWS53WqHnyz7hT+MyQDFKuXEUGICWDJ
         o4F4otdetYX4hPmBicC4KcFgN+XIhinKXoaySMSy4jnLFjp28gh8UeKE+mM8diLqgGd7
         LOhQRoBk/OAssh7fclv42k/n0xhYYnoQSP3jZAStSNStu/SrLngp2XIDAdwPPLKQWJs+
         R4Xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758337422; x=1758942222;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+rEF7OC0DcYrXpJ8aUT60kV8Z7wYz9wfxRjPpUkQOdA=;
        b=pUvGTSNheVaKBmyDp4RQA1BUN+7IyrTT/QlHn8Bb1FSB8ISmPc/faiEBiIb+matIRo
         87L2UjSZZ5o79w+ykw827hOZjFowCpGSuF+GLa+FDBepp34HeZrOh/l7WI5SCoIxzz/A
         VIVHHjnasS7k7Vrq5ys001c93tiTOxkCw84FdhsEHN2fWIKeLy0eIgbOvcZyzfrfkcVe
         UMRcIyYz37RFBOwBbQr9TH67NyZzN1HO69Ay6CQfN91E+5XkfzOnsrKFDEjNB3PqIIf+
         qMReKgSH1pjk4n+44duMVRqooSXoWH3ZqfgeklfG4QJpB4r2bkO4a4CFhz1euOnlRLtF
         3WoA==
X-Forwarded-Encrypted: i=1; AJvYcCVnn8b/I8nEvD7m53N+lLHoawZxSUHbSqZO6jHNYZFs4eZvDHXWC1yWDtSIZzEb5OLbkS1IF4PA@lists.infradead.org
X-Gm-Message-State: AOJu0YzaZfcLqrxgm1N5+R399+dgTqyic8r55+KOC436hd5VZY4lUQ8J
	YP4yBGht2FNU80i4sjxsyV/zrZou0tZNLzqgV4ekKvfZXDnJl17tuncw/5NT8FgR
X-Gm-Gg: ASbGncsXn1BCHz06cVwmoSGzgTDnFVRcNtyR2n19U95FAyrboST6kiGfPQ/s3WQYtQP
	cWUiLr2z7kSPl3I4slx5F2d4l2Tw5BxA1yqqhi/K4MvjEj1YoLIqcENhjIro2/u4gLL4afa8G8r
	0t/9dVPnG5cUPpBAHbXBNBnVaSBBzu/XtYK65ixBKJvA23GrOHOf8BpVvRYTts5GT5IbR880SNK
	FkbhA84qDwXFQCQjEV1jnGrlL+yq3rwYwPiqeqcaErZM3ae3L9jW2gEqbfg4kJre0iyexCi0OKN
	QKRTAjVxhK2kpp575JqVkoWbI1s5df+Lv0oOE57OZj0IZ5tH7N8yo62t6apD5yCX8rnP6bAn9TC
	Ui9XTnODf0W5Wa84HsIQapqDBGXISobMs7BoXp6X9IRopv+YttGXf2kWAaat+puhwgFl0sHf6ti
	yYF38gxb4o
X-Google-Smtp-Source: AGHT+IGGCnTnns0kWqQZBURMQ33a7a0ZPXE7xcZTnQLJDmv0zeelir+dBbUpQrw/oiTF9ls1nywIng==
X-Received: by 2002:a05:600c:3587:b0:45d:f7cb:8954 with SMTP id 5b1f17b1804b1-467e78caa1emr51048165e9.9.1758337421891;
        Fri, 19 Sep 2025 20:03:41 -0700 (PDT)
Received: from [127.0.1.1] ([143.244.56.164])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-464f64ad359sm128118415e9.22.2025.09.19.20.03.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Sep 2025 20:03:41 -0700 (PDT)
From: Chali Anis <chalianis1@gmail.com>
Date: Fri, 19 Sep 2025 23:03:18 -0400
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250919-efi-loader-v1-9-dd8cdafb9067@gmail.com>
References: <20250919-efi-loader-v1-0-dd8cdafb9067@gmail.com>
In-Reply-To: <20250919-efi-loader-v1-0-dd8cdafb9067@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Chali Anis <chalianis1@gmail.com>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250919_200345_358878_98592802 
X-CRM114-Status: GOOD (  17.16  )
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
Subject: [PATCH 09/15] efi: payload: bootm: add x86 efi stub boot support.
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

implement the efi stub boot on x86, this code is tested on qemu,
and dell latitude 7490. the EFI_ALLOCATE_MAX_PAGES cause an xfuncs
issue on real hardware so I transformed it to allocate any pages.

Signed-off-by: Chali Anis <chalianis1@gmail.com>
---
 efi/payload/bootm.c | 139 ++++++++++++++--------------------------------------
 1 file changed, 38 insertions(+), 101 deletions(-)

diff --git a/efi/payload/bootm.c b/efi/payload/bootm.c
index ce225ab949c92cb0c52c1334c2395e30b309b781..401aefe28188bb4335f73a8e259a16c605096626 100644
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
@@ -594,13 +523,21 @@ static struct binfmt_hook binfmt_arm64_efi_hook = {
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
 
-	if (IS_ENABLED(CONFIG_X86))
+	if (IS_ENABLED(CONFIG_X86)) {
 		register_image_handler(&non_efi_handle_linux_x86);
+		register_image_handler(&efi_x86_linux_handle_tr);
+		binfmt_register(&binfmt_x86_efi_hook);
+	}
 
 	if (IS_ENABLED(CONFIG_ARM64)) {
 		register_image_handler(&efi_arm64_handle_tr);

-- 
2.34.1



