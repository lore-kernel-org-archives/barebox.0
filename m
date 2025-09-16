Delivery-date: Tue, 16 Sep 2025 05:55:50 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyMnF-003YIQ-3C
	for lore@lore.pengutronix.de;
	Tue, 16 Sep 2025 05:55:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyMnF-0007Ac-4Y
	for lore@pengutronix.de; Tue, 16 Sep 2025 05:55:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sk6iN1Ic/qQXsGnK+Yh7rvgR5M30rhp9D8F5BjZFN60=; b=Ua4THYVZ+KUHQ+meIM6dRIfao3
	b2Aqsbww0nxZ2JHpqe7abx++VcTSgX2jRshKLvlLLgrgK+MVkm2JJSWoWv6VcdfJ7cmBNe14JdVFO
	mPCZOJM7R6PIVilnEJnc7kmncl9LchFQoLxJE/2T3dBwaamX3ZK4D7yUpsdT+XAd23A+KwJerjdZc
	AjibWx6MI74EIP3DN8l4uJ206NOLZJFa34FBloC6hMy4jGF3iJGSX0HgPd9shhBXDE4j2LG/rTtae
	EyRc+CH+WmOECn/VyQlcyOPxcuaTpNxae2SBSKAbtIIa/zmUD43DjrMfNmfURq02cZRcRj41tPyZK
	P9hDcXbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyMmk-00000006dVX-30lH;
	Tue, 16 Sep 2025 03:55:18 +0000
Received: from mail-wr1-x435.google.com ([2a00:1450:4864:20::435])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyMmi-00000006dSM-1pr7
	for barebox@lists.infradead.org;
	Tue, 16 Sep 2025 03:55:17 +0000
Received: by mail-wr1-x435.google.com with SMTP id ffacd0b85a97d-3ec4d6ba12eso291549f8f.1
        for <barebox@lists.infradead.org>; Mon, 15 Sep 2025 20:55:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757994915; x=1758599715; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sk6iN1Ic/qQXsGnK+Yh7rvgR5M30rhp9D8F5BjZFN60=;
        b=HSUGAQ1RhzqAkmyp7tMJDWkHF02Y6UhmoG9QsbmiTOuO/2vynEBsDf6TIfhsYbSX1L
         lD0PpBbA9VBQ8OxjJ796AfSOA7NdOUIZL1bnrkIzYn22FyR41Pk3FaS9szFWXRczN0J3
         U1DJWrl67NPR/UBtQg6SEEaQz0wd1dEqzSsG1SLksxBxSXDR2Pi85SWonnWRF0Za3dj/
         2sHgUVnOBZrRuGFzz0IklEF1sHrgGnzQrFULvtHBzAG7bbxnEe7RVFz0ygTgMdVlnRzn
         HhzV2c4/FIyTGfDYFCGf2wG5EUjy4aknheV9VBFkhkzgvXpq5kOi3+yyPDd3bNVzTiWz
         N74A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757994915; x=1758599715;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sk6iN1Ic/qQXsGnK+Yh7rvgR5M30rhp9D8F5BjZFN60=;
        b=O5J1WFxH2XYBtpGicQQFcu8T0TNiMVs8teZ4v78dMmaDVL3v1BBkEXnlS8uXA956R1
         YSFT3kPxWkwLyxPN6xlPwrb+LSZGmkkg+iUb5lR6e73XOoLbTUFdTlBoQrNgr1/OvDX3
         zN9So5yAfb0ckwgOgzePVQdnpjTepJObI4rxUceaXczymRXv4tZDZPXBUaq+prq7rtVW
         JBgsLOSSCaYZ6TPv3RgDuxUuAy1h3MWBqdB4lUyq1iSW+Ca7AdcYJ62SSmgNMhubPkTi
         Nvk+jQNs2B7Qvvy+ZKjOv5/urnZpixD3b5lVuSkxntyWa53uTurI4jbByc5IOskTgmcm
         ZbEg==
X-Gm-Message-State: AOJu0YwySJ/lGH7QxJwdee3hRkvoWHt2Nl3rRD3IU+iqPLgFpALwUO4E
	Z5YhqeRYZh5+MS7NNTxIGRUxOutVTjXfsr+XWw9wwTpKs6sdkdzJgaKNqxrfx/H9
X-Gm-Gg: ASbGncta+OzdDiquWQX9REVv+N6lnehmpTe2CueJyrYr/faNTDLmqFPvPxi12vofCV9
	wjc8X0wCItHwXO/lEklp9+rmFhZPBnaABdOg4melmqFMTunRudV9i8GBg+URRvBPHMcNQJYseWN
	WDZ6kKvQQQOptUu7Mo73A6KY4BkarNTnkhOdYYgyMCpWQh6ILLCaEoOF0Zp8jASK5+js5Lzvp3M
	5MFxedVjoAR+lI3EzpW6Ziqq5oFyunMNbB/dAB/fK1/nv+aQbngmtfvkwJWXw12AMrjnFlTTaAb
	ssfuAIRi/C5k03MNP26oBmsdcGSc5/2g5LQYIBkNI4oVhJntDEyxW28LVv3ijwHiZayYFGyMPSb
	tYxIvNLuYc1LRRxO+VU5OSNye3nxgOyvznJ1OALqJ5399FiWk4nCXY4s9jc8wlE04GAxh58+lRY
	xCto2yncAcR1crjtiSFqVh8Q==
X-Google-Smtp-Source: AGHT+IFqepICh90PWU1Tel1krrk0txtETXt9zENX/ybpyJPonCeyOjgMhrCjomcrhmjBAkynOMjPVQ==
X-Received: by 2002:a05:6000:26d2:b0:3ec:d78d:8fd2 with SMTP id ffacd0b85a97d-3ecd78d92d2mr86322f8f.14.1757994914671;
        Mon, 15 Sep 2025 20:55:14 -0700 (PDT)
Received: from Latitude-7490.ht.home ([178.132.106.74])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3e8237cfdddsm13496580f8f.60.2025.09.15.20.55.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Sep 2025 20:55:14 -0700 (PDT)
From: chalianis1@gmail.com
To: s.hauer@pengutronix.de,
	a.fatoum@barebox.org
Cc: barebox@lists.infradead.org,
	Chali Anis <chalianis1@gmail.com>
Date: Mon, 15 Sep 2025 23:54:37 -0400
Message-Id: <20250916035437.805046-10-chalianis1@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250916035437.805046-1-chalianis1@gmail.com>
References: <20250916035437.805046-1-chalianis1@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250915_205516_511875_C4ACFE5C 
X-CRM114-Status: GOOD (  17.67  )
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
Subject: [PATCH v2 10/10] efi: payload: bootm: add x86 efi stub boot support.
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



