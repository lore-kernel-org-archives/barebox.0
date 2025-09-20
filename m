Delivery-date: Sat, 20 Sep 2025 05:04:36 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uznts-005528-2C
	for lore@lore.pengutronix.de;
	Sat, 20 Sep 2025 05:04:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uzntr-0005HF-0B
	for lore@pengutronix.de; Sat, 20 Sep 2025 05:04:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7KJEjENnqv/v94sUbMerxkWGt2WCd3Gsv1hrQNys9eA=; b=QhHaSvVMn5q+cf2K/s0zeE3w9b
	v7BqgMdxFeydGUWkxWTtvuKJcT3hXY+PEJpkFD+wuVbtl0GQZliNM/8I8cC0kd2+VE+4Tn8SuzdCG
	M4css1TOl2TmddUAljfDNIBOu3AV7f8ov8u89Xrns90yqCV9pw4ZHbTTxugFGAOoX2Xd1/2L1mPKi
	/uznolv4+/pxv4fKPw0rWC7tbI+3PqV8v+sYhxmVXWW4AIoqjzBjrSxGtJQlfySzmflTMe4QbaGC0
	betKw1dZ0hvZG893vLqYH+oF8khRu2x2hs0GDqZkIxmYwatocy5TfJaDnN3dc1xnj/lCaRgykmLDZ
	1B18+luQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzntF-00000004c9Z-1jMM;
	Sat, 20 Sep 2025 03:03:57 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzntB-00000004c3a-3vlg
	for barebox@lists.infradead.org;
	Sat, 20 Sep 2025 03:03:55 +0000
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-45dcff2f313so16961385e9.0
        for <barebox@lists.infradead.org>; Fri, 19 Sep 2025 20:03:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758337432; x=1758942232; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7KJEjENnqv/v94sUbMerxkWGt2WCd3Gsv1hrQNys9eA=;
        b=YrVrmlwS13wlvdREoJWh6rRraJda8ttFjVrTZzF1fUfPJwvr8tx6y6djmrcYcJa7m/
         xTq4ZVdnfYEsJ9jvPum+WULhhNkWvgczxtyoaBdHjOea3pa5w2BS2IBksG0uSgvPy/wb
         80vD8/ZoyNJjFV4fZFId3N8MpP+t1S0an7a1K6kPtUDB6T3lRV9JXcQkCXo+2eCg//Ob
         xIZAtLezcL4Qe0unUO6oGM55s9cTjGQQfVg6L75HCP18zQljSdO1hyjmkX9wNxml3nOB
         fteR+34/MI6mhlRJo8sKGr/xoAWeuF7wzmAhthVACujiZn7TInZt/53f+RUGj609j8z+
         dS5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758337432; x=1758942232;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7KJEjENnqv/v94sUbMerxkWGt2WCd3Gsv1hrQNys9eA=;
        b=X3p2I35xDGjpxPhKgAJ1ttaB4yWFEtsRmW/sdp55aAJran/x6SgNlBhDneXRHbsC6f
         dCLveD6w7SGsBm3pG0fpJPsFlCVEo9qbFCivePWikzmWI4Sdkhtonj9tKK9OTy0Z8Trm
         59zxl7ZoT775u2QKVPu38IslxeKlEHUnF0Qt0/EBM5VlBiGVD7g4bQ7gm+O6LoXOBar7
         klgF86kKhWfw3CYZVgvn6BSHTJ/fZ66w1O+fGfioQa1+EjPL0OOHzIBStSOKj7Mx0vPQ
         pDjSoUZ0wPu1b3XSTAmJ9pQHHd2W8ntR94x/Dq1U/3Ze3g3vyEq6yvGZIiLc0wXrV9pS
         dNkQ==
X-Forwarded-Encrypted: i=1; AJvYcCXbWzTNmDdGRUF68QTmcDmgCIOye/AWli/Gc/2/rUkrKjpqbktK6UpgpINnvZqvR8DyFK9vxJ1U@lists.infradead.org
X-Gm-Message-State: AOJu0YyEyrX1S1v/AIoPxlZmy6aMd0wHcS6nJKb6B2HhgmdAJSkLFTz+
	XwP0Nd/3qa4WDb69R71ZbyVinr/xutWbpZf+U7knnGEat+XJR3hZ2sRC
X-Gm-Gg: ASbGncsk9P3BWAWYRxQUoQJMGa1K9vUik97uTZKqWo5EjikD0L17skBmw3vsq61GKai
	UHYRR5tHHvxDSMuwfKcTmSaPRgg9oAPchnYcIJPQpNWn1jPP0H3oA560ihWabQqeswv9N39S1MW
	nKfaZ1MhlmlGB8tLCu0ltXuHov5T0zh+G7a1GuqU4WHoyYi/K8NUIJ7nTmO/DGbNAYzoieg34/D
	Qn02h7TuPNYHblvM1s1oopmIeppJJclc/GfNl67H2iHz1s8Wa2o5y7gcnN8TX0v4eCOE5+cbICy
	9fQ242BK6Q8Q0PrfykTAlp4aHc+wJPrVbd6gaBTnIAD7QbnkbW9sl2YSE+L+RdYcPsUEtLjSQ4o
	k8a6Yc4dlj/mdsa02gKrInGBTQtLef6+/QHFaYivk3hYI+QJqL33CkWlvg91yOBugK6ItT/y/Tk
	GNvuUr4P8o
X-Google-Smtp-Source: AGHT+IHjU6+oDVAgrmyw0hHCCjodppciFy+BpRdOG1HRebuqIIlbd2tzN4RZm2W+80asaH5J2eO5+A==
X-Received: by 2002:a05:600c:3b20:b0:45b:9912:9f30 with SMTP id 5b1f17b1804b1-467ead6730bmr43291395e9.6.1758337431980;
        Fri, 19 Sep 2025 20:03:51 -0700 (PDT)
Received: from [127.0.1.1] ([143.244.56.164])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-464f64ad359sm128118415e9.22.2025.09.19.20.03.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Sep 2025 20:03:51 -0700 (PDT)
From: Chali Anis <chalianis1@gmail.com>
Date: Fri, 19 Sep 2025 23:03:24 -0400
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250919-efi-loader-v1-15-dd8cdafb9067@gmail.com>
References: <20250919-efi-loader-v1-0-dd8cdafb9067@gmail.com>
In-Reply-To: <20250919-efi-loader-v1-0-dd8cdafb9067@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Chali Anis <chalianis1@gmail.com>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250919_200354_147647_D1D49BBC 
X-CRM114-Status: GOOD (  17.77  )
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
Subject: [PATCH 15/15] efi: payload: bootm: remove redundant reallocations
 in image loader
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The EFI payload loader used to copy OS images, initrds and FDTs into
freshly allocated EFI pages before handing them to LoadImage() or
installing configuration tables. This resulted in unnecessary memory
moves, extra allocations and longer boot times.

Rework the loader to:
  - pass buffers from read_file() or FIT images directly to
    BS->load_image() without intermediate memcpy
  - drop efi_allocate_pages()/efi_free_pages() wrappers where not needed
  - avoid duplicate allocations for initrd and FDT data
  - free only the original buffer after execution/unload

This eliminates redundant reallocations, simplifies the code, and
reduces boot overhead. Boot flow is now more deterministic with fewer
allocation failures possible on memory-constrained systems.

Signed-off-by: Chali Anis <chalianis1@gmail.com>
---
 efi/payload/bootm.c | 344 +++++++++++++++++++++-------------------------------
 1 file changed, 136 insertions(+), 208 deletions(-)

diff --git a/efi/payload/bootm.c b/efi/payload/bootm.c
index 401aefe28188bb4335f73a8e259a16c605096626..6dabce60845e85965147d5492b2b12091469726a 100644
--- a/efi/payload/bootm.c
+++ b/efi/payload/bootm.c
@@ -37,51 +37,10 @@ struct efi_mem_resource {
 	size_t size;
 } __attribute__ ((packed));
 
-struct efi_image_data {
-	struct image_data *data;
-
-	efi_handle_t handle;
-	struct efi_loaded_image *loaded_image;
-
-	struct efi_mem_resource image_res;
-	struct efi_mem_resource oftree_res;
-	struct efi_mem_resource *initrd_res;
-};
-
-
-static void *efi_allocate_pages(efi_physical_addr_t *mem,
-				size_t size,
-				enum efi_allocate_type allocate_type,
-				enum efi_memory_type mem_type)
-{
-	efi_status_t efiret;
-
-	efiret = BS->allocate_pages(allocate_type, mem_type,
-				    DIV_ROUND_UP(size, EFI_PAGE_SIZE), mem);
-	if (EFI_ERROR(efiret)) {
-		errno = efi_errno(efiret);
-		return NULL;
-	}
-
-	return efi_phys_to_virt(*mem);
-}
-
-static void efi_free_pages(void *_mem, size_t size)
-{
-	efi_physical_addr_t mem = efi_virt_to_phys(_mem);
-
-	if (mem_malloc_start() <= mem && mem < mem_malloc_end())
-		free(_mem);
-	else
-		BS->free_pages(mem, DIV_ROUND_UP(size, EFI_PAGE_SIZE));
-}
-
-static int efi_load_file_image(const char *file,
-			       struct efi_loaded_image **loaded_image,
-			       efi_handle_t *h)
+static void *efi_load_file_image(const char *file,
+					 struct efi_loaded_image **loaded_image,
+					 efi_handle_t *h)
 {
-	efi_physical_addr_t mem;
-	void *exe;
 	char *buf;
 	size_t size;
 	efi_handle_t handle;
@@ -90,19 +49,9 @@ static int efi_load_file_image(const char *file,
 
 	buf = read_file(file, &size);
 	if (!buf)
-		return -ENOMEM;
-
-	exe = efi_allocate_pages(&mem, size, EFI_ALLOCATE_ANY_PAGES,
-				 EFI_LOADER_CODE);
-	if (!exe) {
-		pr_err("Failed to allocate pages for image\n");
-		ret = -ENOMEM;
-		goto free_buf;
-	}
-
-	memcpy(exe, buf, size);
+		return ERR_PTR(-ENOMEM);
 
-	efiret = BS->load_image(false, efi_parent_image, efi_device_path, exe,
+	efiret = BS->load_image(false, efi_parent_image, efi_device_path, buf,
 				size, &handle);
 	if (EFI_ERROR(efiret)) {
 		ret = -efi_errno(efiret);
@@ -121,16 +70,12 @@ static int efi_load_file_image(const char *file,
 	}
 
 	*h = handle;
-	free(buf);
 
-	return 0;
+	return buf;
 
 free_mem:
-	efi_free_pages(exe, size);
-free_buf:
 	free(buf);
-
-	return ret;
+	return ERR_PTR(ret);
 }
 
 static bool ramdisk_is_fit(struct image_data *data)
@@ -165,44 +110,31 @@ static bool fdt_is_fit(struct image_data *data)
 			data->fit_config, "fdt") > 0 : false;
 }
 
-static int efi_load_os(struct efi_image_data *e)
+static void *efi_load_os(struct image_data *data,
+			 struct efi_loaded_image **loaded_image,
+			 efi_handle_t *handle)
 {
 	efi_status_t efiret = EFI_SUCCESS;
-	efi_physical_addr_t mem;
-	size_t image_size = 0;
-	void *image = NULL;
-	void *vmem = NULL;
+	efi_handle_t h;
 	int ret = 0;
 
-	if (!e->data->os_fit)
-		return efi_load_file_image(e->data->os_file,
-			&e->loaded_image, &e->handle);
-
-	image = (void *)e->data->fit_kernel;
-	image_size = e->data->fit_kernel_size;
+	if (!data->os_fit)
+		return efi_load_file_image(data->os_file,
+			loaded_image, handle);
 
-	if (image_size <= 0 || !image)
-		return -EINVAL;
+	if (data->fit_kernel_size <= 0 || !data->fit_kernel)
+		return ERR_PTR(-EINVAL);
 
-	vmem = efi_allocate_pages(&mem, image_size, EFI_ALLOCATE_ANY_PAGES,
-				 EFI_LOADER_CODE);
-	if (!vmem) {
-		pr_err("Failed to allocate pages for image\n");
-		return -ENOMEM;
-	}
-
-	memcpy(vmem, image, image_size);
-
-	efiret = BS->load_image(false, efi_parent_image, efi_device_path, image,
-				image_size, &e->handle);
+	efiret = BS->load_image(false, efi_parent_image, efi_device_path,
+		(void *)data->fit_kernel, data->fit_kernel_size, &h);
 	if (EFI_ERROR(efiret)) {
 		ret = -efi_errno(efiret);
 		pr_err("failed to LoadImage: %s\n", efi_strerror(efiret));
 		goto out_mem;
 	};
 
-	efiret = BS->open_protocol(e->handle, &efi_loaded_image_protocol_guid,
-				   (void **)&e->loaded_image, efi_parent_image,
+	efiret = BS->open_protocol(h, &efi_loaded_image_protocol_guid,
+				   (void **)loaded_image, efi_parent_image,
 				   NULL, EFI_OPEN_PROTOCOL_GET_PROTOCOL);
 	if (EFI_ERROR(efiret)) {
 		ret = -efi_errno(efiret);
@@ -210,172 +142,156 @@ static int efi_load_os(struct efi_image_data *e)
 		goto out_unload;
 	}
 
-	e->image_res.base = mem;
-	e->image_res.size = image_size;
+	*handle = h;
 
-	return 0;
+	return (void *)data->fit_kernel;
 
-out_mem:
-	efi_free_pages(vmem, image_size);
 out_unload:
-	BS->unload_image(e->handle);
-	return ret;
+		BS->unload_image(h);
+out_mem:
+	return ERR_PTR(ret);
 }
 
-static void efi_unload_os(struct efi_image_data *e)
+static void efi_unload_os(struct image_data *data,
+			void *image, efi_handle_t handle)
 {
-	BS->close_protocol(e->handle, &efi_loaded_image_protocol_guid,
+	BS->close_protocol(handle, &efi_loaded_image_protocol_guid,
 				 efi_parent_image, NULL);
 
-	BS->unload_image(e->handle);
-	efi_free_pages(efi_phys_to_virt(e->image_res.base),
-				 e->image_res.size);
+	BS->unload_image(handle);
+
+	free(image);
 }
 
-static int efi_load_ramdisk(struct efi_image_data *e)
+static int efi_load_ramdisk(struct image_data *data,
+				 struct efi_mem_resource **initrd_res)
 {
-	void *vmem, *tmp = NULL;
-	efi_physical_addr_t mem;
+	struct efi_mem_resource *res;
 	efi_status_t efiret = EFI_SUCCESS;
-	const void *initrd;
 	unsigned long initrd_size;
+	void *initrd;
 	int ret;
 
-	if (ramdisk_is_fit(e->data)) {
-		ret = fit_open_image(e->data->os_fit, e->data->fit_config,
-				     "ramdisk", &initrd, &initrd_size);
+	if (ramdisk_is_fit(data)) {
+		ret = fit_open_image(data->os_fit, data->fit_config,
+			 "ramdisk", (const void **)&initrd, &initrd_size);
 		if (ret) {
-			pr_err("Cannot open ramdisk image in FIT image: %pe\n",
-			       ERR_PTR(ret));
+			pr_err("Cannot open ramdisk image in FIT image: %s\n",
+				strerror(ret));
 			return ret;
 		}
 	} else {
-		if (!e->data->initrd_file)
+		if (!data->initrd_file)
 			return 0;
 
-		pr_info("Loading ramdisk from '%s'\n", e->data->initrd_file);
-		tmp = read_file(e->data->initrd_file, &initrd_size);
-		if (!tmp || initrd_size <= 0) {
+		pr_info("Loading ramdisk from '%s'\n", data->initrd_file);
+		initrd = read_file(data->initrd_file, &initrd_size);
+		if (!initrd || initrd_size <= 0) {
 			pr_err("Failed to read initrd from file: %s\n",
-				e->data->initrd_file);
+					data->initrd_file);
 			return -EINVAL;
 		}
-		initrd = tmp;
 	}
 
 	efiret = BS->allocate_pool(EFI_LOADER_DATA,
 			sizeof(struct efi_mem_resource),
-			(void **)&e->initrd_res);
-	if (EFI_ERROR(efiret) || !e->initrd_res) {
+			(void **)&res);
+	if (EFI_ERROR(efiret) || !res) {
 		ret = -efi_errno(efiret);
 		pr_err("Failed to allocate initrd %s/n", efi_strerror(efiret));
 		goto free_mem;
 	}
 
-	vmem = efi_allocate_pages(&mem, initrd_size,
-				 EFI_ALLOCATE_ANY_PAGES, EFI_LOADER_DATA);
-	if (!vmem) {
-		pr_err("Failed to allocate pages for initrd data: %s\n", strerror(errno));
-		ret = -ENOMEM;
-		goto free_pool;
-	}
-
-	memcpy(vmem, (void *)initrd, initrd_size);
-	e->initrd_res->base = (uint64_t)mem;
-	e->initrd_res->size = (uint64_t)initrd_size;
+	res->base = (uint64_t)efi_virt_to_phys(initrd);
+	res->size = (uint64_t)initrd_size;
 
 	if (IS_ENABLED(CONFIG_EFI_INITRD_INSTALL)) {
 		efiret = BS->install_configuration_table(
 			&efi_linux_initrd_media_guid,
-			(void *)e->initrd_res);
+			(void *)res);
 		if (EFI_ERROR(efiret)) {
 			ret = -efi_errno(efiret);
 			pr_err("Failed to install INITRD %s/n",
 					efi_strerror(efiret));
-			goto free_pages;
+			goto free_pool;
 		}
 	} else {
-		ret = efi_initrd_register(vmem, initrd_size);
+		ret = efi_initrd_register(initrd, initrd_size);
 		if (ret) {
 			pr_err("Failed to register INITRD %s/n",
 				strerror(efiret));
-			goto free_pages;
+			goto free_pool;
 		}
 	}
 
-	free(tmp);
-
+	*initrd_res = res;
 	return 0;
 
-free_pages:
-	efi_free_pages(vmem, initrd_size);
 free_pool:
-	BS->free_pool(e->initrd_res);
+	BS->free_pool(res);
 free_mem:
-	free(tmp);
+	free(initrd);
 
 	return ret;
 }
 
-static void efi_unload_ramdisk(struct efi_image_data *e)
+static void efi_unload_ramdisk(struct image_data *data,
+				 struct efi_mem_resource *initrd_res)
 {
 
+	if (!initrd_res)
+		return;
+
 	if (IS_ENABLED(CONFIG_EFI_INITRD_INSTALL))
 		BS->install_configuration_table(
 			&efi_linux_initrd_media_guid, NULL);
 	else
 		efi_initrd_unregister();
 
-	efi_free_pages(efi_phys_to_virt(e->initrd_res->base),
-				 e->initrd_res->size);
-
-	BS->free_pool(e->initrd_res);
-	e->initrd_res = NULL;
+	free(efi_phys_to_virt(initrd_res->base));
+	BS->free_pool(initrd_res);
+	initrd_res = NULL;
 }
 
-static int efi_load_fdt(struct efi_image_data *e)
+static int efi_load_fdt(struct image_data *data, void **fdt)
 {
-	efi_status_t efiret = EFI_SUCCESS;
 	efi_physical_addr_t mem;
-	void *vmem, *tmp = NULL;
-	const void *of_tree;
+	efi_status_t efiret = EFI_SUCCESS;
+	void *of_tree, *vmem;
 	unsigned long of_size;
 	int ret;
 
-	if (IS_ENABLED(CONFIG_EFI_FDT_FORCE))
-		return 0;
-
-	if (fdt_is_fit(e->data)) {
-		ret = fit_open_image(e->data->os_fit, e->data->fit_config,
-				     "fdt", &of_tree, &of_size);
+	if (fdt_is_fit(data)) {
+		ret = fit_open_image(data->os_fit, data->fit_config,
+				     "fdt", (const void **)&of_tree, &of_size);
 		if (ret) {
-			pr_err("Cannot open FDT image in FIT image: %pe\n",
-			       ERR_PTR(ret));
+			pr_err("Cannot open FDT image in FIT image: %s\n",
+					strerror(ret));
 			return ret;
 		}
 	} else {
-		if (!e->data->oftree_file)
+		if (!data->oftree_file)
 			return 0;
 
-		pr_info("Loading devicetree from '%s'\n", e->data->oftree_file);
-		tmp = read_file(e->data->oftree_file, &of_size);
-		if (!tmp || of_size <= 0) {
+		pr_info("Loading devicetree from '%s'\n", data->oftree_file);
+		of_tree = read_file(data->oftree_file, &of_size);
+		if (!of_tree || of_size <= 0) {
 			pr_err("Failed to read initrd from file: %s\n",
-				e->data->initrd_file);
+					data->initrd_file);
 			return -EINVAL;
 		}
-		of_tree = tmp;
 	}
 
-	vmem = efi_allocate_pages(&mem, SZ_128K,
-				 EFI_ALLOCATE_ANY_PAGES,
-				 EFI_ACPI_RECLAIM_MEMORY);
-	if (!vmem) {
+	efiret = BS->allocate_pages(EFI_ALLOCATE_ANY_PAGES,
+				EFI_ACPI_RECLAIM_MEMORY,
+				DIV_ROUND_UP(SZ_2M, EFI_PAGE_SIZE), &mem);
+	if (EFI_ERROR(efiret)) {
+		ret = -efi_errno(efiret);
 		pr_err("Failed to allocate pages for FDT\n");
-		ret = -ENOMEM;
-		goto free_file;
+		goto free_mem;
 	}
 
+	vmem = efi_phys_to_virt(mem);
 	memcpy(vmem, of_tree, of_size);
 
 	efiret = BS->install_configuration_table(&efi_fdt_guid,
@@ -383,83 +299,87 @@ static int efi_load_fdt(struct efi_image_data *e)
 	if (EFI_ERROR(efiret)) {
 		pr_err("Failed to install FDT %s/n", efi_strerror(efiret));
 		ret = -efi_errno(efiret);
-		goto free_mem;
+		goto free_efi_mem;
 	}
 
-	e->oftree_res.base = mem;
-	e->oftree_res.size = SZ_128K;
-
-	free(tmp);
-
+	*fdt = vmem;
 	return 0;
 
+free_efi_mem:
+	BS->free_pages(mem, DIV_ROUND_UP(SZ_2M, EFI_PAGE_SIZE));
 free_mem:
-	efi_free_pages(vmem, SZ_128K);
-free_file:
-	free(tmp);
-
+	free(of_tree);
 	return ret;
 }
 
-static void efi_unload_fdt(struct efi_image_data *e)
+static void efi_unload_fdt(void *fdt)
 {
-	if (IS_ENABLED(CONFIG_EFI_FDT_FORCE))
+	if (IS_ENABLED(CONFIG_EFI_FDT_FORCE) || !fdt)
 		return;
 
 	BS->install_configuration_table(&efi_fdt_guid, NULL);
-
-	efi_free_pages(efi_phys_to_virt(e->oftree_res.base),
-				 e->oftree_res.size);
+	BS->free_pages(efi_virt_to_phys(fdt), SZ_2M);
 }
 
 static int do_bootm_efi_stub(struct image_data *data)
 {
-	struct efi_image_data e = { .data = data };
+	struct efi_mem_resource *initrd_res = NULL;
+	struct efi_loaded_image *loaded_image;
+	void *fdt = NULL, *image = NULL;
+	efi_handle_t handle;
 	enum filetype type;
 	int ret = 0;
 
-	ret = efi_load_os(&e);
-	if (ret)
-		return ret;
+	image = efi_load_os(data, &loaded_image, &handle);
+	if (IS_ERR_OR_NULL(image))
+		return PTR_ERR(image);
 
-	ret = efi_load_fdt(&e);
+	ret = efi_load_fdt(data, &fdt);
 	if (ret)
 		goto unload_os;
 
-	ret = efi_load_ramdisk(&e);
+	ret = efi_load_ramdisk(data, &initrd_res);
 	if (ret)
 		goto unload_oftree;
 
-	type = file_detect_type(e.loaded_image->image_base, PAGE_SIZE);
-	ret = efi_execute_image(e.handle, e.loaded_image, type);
+	type = file_detect_type(loaded_image->image_base, PAGE_SIZE);
+	ret = efi_execute_image(handle, loaded_image, type);
 	if (ret)
 		goto unload_ramdisk;
 
 	return 0;
 
 unload_ramdisk:
-	if (e.initrd_res)
-		efi_unload_ramdisk(&e);
+	efi_unload_ramdisk(data, initrd_res);
 unload_oftree:
-	efi_unload_fdt(&e);
+	efi_unload_fdt(fdt);
 unload_os:
-	efi_unload_os(&e);
+	efi_unload_os(data,  image, handle);
 	return ret;
 }
 
 static int efi_app_execute(struct image_data *data)
 {
-	int ret;
-	struct efi_image_data e = { .data = data };
+	struct efi_loaded_image *loaded_image;
+	efi_handle_t handle;
+	void *image;
 	enum filetype type;
+	int ret;
 
-	ret = efi_load_file_image(data->os_file, &e.loaded_image, &e.handle);
+	image = efi_load_file_image(data->os_file, &loaded_image, &handle);
+	if (IS_ERR_OR_NULL(image))
+		return PTR_ERR(image);
+
+	type = file_detect_type(loaded_image->image_base, PAGE_SIZE);
+	
+	ret = efi_execute_image(handle, loaded_image, type);
 	if (ret)
-		return ret;
+		pr_err("EFI Application failed with error: %s\n",
+			strerror(ret));
 
-	type = file_detect_type(e.loaded_image->image_base, PAGE_SIZE);
+	free(image);
 
-	return efi_execute_image(e.handle, e.loaded_image, type);
+	return ret;
 }
 
 static struct image_handler efi_app_handle_tr = {
@@ -482,15 +402,23 @@ static struct image_handler efi_arm64_handle_tr = {
 
 static int efi_execute(struct binfmt_hook *b, char *file, int argc, char **argv)
 {
-	int ret;
-	efi_handle_t handle;
 	struct efi_loaded_image *loaded_image;
+	efi_handle_t handle;
+	void *image;
+	int ret;
+
+	image = efi_load_file_image(file, &loaded_image, &handle);
+	if (IS_ERR_OR_NULL(image))
+		return PTR_ERR(image);
 
-	ret = efi_load_file_image(file, &loaded_image, &handle);
+	ret = efi_execute_image(handle, loaded_image, b->type);
 	if (ret)
-		return ret;
+		pr_err("EFI Application failed with error: %s\n",
+			strerror(ret));
 
-	return efi_execute_image(handle, loaded_image, b->type);
+	free(image);
+
+	return ret;
 }
 
 static struct binfmt_hook binfmt_efi_hook = {
@@ -532,13 +460,13 @@ static int efi_register_image_handler(void)
 {
 	register_image_handler(&efi_app_handle_tr);
 	binfmt_register(&binfmt_efi_hook);
-
+	
 	if (IS_ENABLED(CONFIG_X86)) {
 		register_image_handler(&non_efi_handle_linux_x86);
 		register_image_handler(&efi_x86_linux_handle_tr);
 		binfmt_register(&binfmt_x86_efi_hook);
 	}
-
+	
 	if (IS_ENABLED(CONFIG_ARM64)) {
 		register_image_handler(&efi_arm64_handle_tr);
 		binfmt_register(&binfmt_arm64_efi_hook);

-- 
2.34.1



