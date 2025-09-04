Delivery-date: Thu, 04 Sep 2025 04:12:49 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1utzT0-007s0P-1H
	for lore@lore.pengutronix.de;
	Thu, 04 Sep 2025 04:12:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1utzSz-0004qB-0A
	for lore@pengutronix.de; Thu, 04 Sep 2025 04:12:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=9BcT27+SauKHmQzX77oMJYnVnRR9k6MLD4Znggcab7Q=; b=Pbu1bvjYaSShPzP8EeWGO64z4s
	5lMuULbYiLzJ7yBIL6VrJyveJxvanngdSdcXPXpjWbnQ/TeRdlBJkKW/lWCE/Wgyc7UfPzdr4Z7Uu
	EW4x3GJ/RHMLxXfIggTH4k8AKz2CEvnhYcNMYCFPsSdBob7jyuuLPi4IhZ2yZGwOPMsdVtfK9MgJY
	qxPzmUnFkKhTHIAHAVagwPzngq51PldL9wB6imWYX7HCcnh0Ej9fhOzUJP5Au5BShbXiZfsy50Ofp
	k4CEN7tG59Ap99ZlCP9bz9sT3ztbDnlMsWagL8DFrhSriTrbk/UEw21PL+2aD4s52hgwC/21xJDrw
	VqBGRRKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utzSY-00000008INY-0m6l;
	Thu, 04 Sep 2025 02:12:22 +0000
Received: from mail-qk1-x736.google.com ([2607:f8b0:4864:20::736])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utyhD-000000083CJ-06HG
	for barebox@lists.infradead.org;
	Thu, 04 Sep 2025 01:23:28 +0000
Received: by mail-qk1-x736.google.com with SMTP id af79cd13be357-7fac0a7d2b1so56391385a.3
        for <barebox@lists.infradead.org>; Wed, 03 Sep 2025 18:23:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1756949006; x=1757553806; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=9BcT27+SauKHmQzX77oMJYnVnRR9k6MLD4Znggcab7Q=;
        b=MriEmMvhNsvjUphd+ADNZE+YTsGa+hgajaXs+2iQSfMTlEhVFQXJz19CbamLlm2Yqe
         lDBfDmflG48nfXFkg5g8k4ZhJse00qJcMeZ8iZ2P1HmOJ441EcsbHs4OiH3bZVPucs5p
         y0D426cPaOyrszCX9assyp5XnXd2v6v62z3qK3vY5mx8YWCxAd7J/uKwyH0fxqiboSEm
         OhDy1By7qjzz9pSKCdD+x+vPtrNE+LH1DEMnPvF0+Abo/hque2NV4DrYCzUSU6LoSiN8
         Rwt/PKrKY69uV0F7Sr7aoqKSQmRaeAA5HKIgfqqlkxgxcxxekHxOd30Rs+S/6xmr+oVP
         1yjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756949006; x=1757553806;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9BcT27+SauKHmQzX77oMJYnVnRR9k6MLD4Znggcab7Q=;
        b=XKpqYF2z8EFkPFtsxK2CJPc2VTocSbNEPfGTCgNxsMseWZs5k8btVJMZMvvRqEnZ6e
         CM08egdKDS/Mbxdvrt4SlfBDvCMVoMIYNq3+F5njJrbzhTH6cP88QLOoFBQ1tbyyuyhy
         b0Y0yX+SUY/5/vufFdIj7aquk3y13o1Z0EyMhCHNE89N3uVLIzr5LUtvkU3M1UBSYK8o
         peJw+6B/pILvnUSMAHKQ9smLvv8hguu1rXAokGfGPISb9FXimWBQDEAVkSOPD1D+trna
         CHA4eN+YVSrOl7ooIMqi+qDwa0QHaW2HK/DLdHCGjEVDkksWPzLb8GcK8DJeoqZm6aOg
         1DEg==
X-Gm-Message-State: AOJu0Yzbu1x7FiQcQANVvMuAbmLyNHQ8Z2Nltno6dcwjcX38mZcPaHTM
	JzNh1kjAHfYKhWF3cZX+l5Z1/W09yKzNv0pRSwUDh1jx8KLmNvOwXNQa
X-Gm-Gg: ASbGncvzo1YUJZWF1aevxl/zYcNVafKAvCOox0TirRTBUBRbmWQbDWGKK+hF/+DI/2B
	ohBbh35Hl1EIqcuX7HoNZXNWkVbTqePjzzaRnH4Vh2SWJzBpYU/q1F5NDYnEgef5k/g2UE/MxlU
	xw0qQagBvam7snWwUtPEeNqkglWlprzgj2GRmKtiQGxcY6i4fsEMSz3gn2nWXSsnFmNT10zrWAP
	PVfJGUiJlPTLToFh8P49eAWWIzBK2n55UQE1JIh7Rbdja8yR1HW+zk5aaBKkiWwsbDdMnFVR2e7
	Tn9+o5F2k+8gUNuIvC27WBaYhQW5WG3ZUCiAqDHDyXqSiP/01LSw7rbvmPNKYYxRPMdOYK7hiPu
	vBLBMMOo5HimRuwTlX9R4StUb8mCKQJuULD2UOhVoBtyp6hHsoJ/HYCfx6nw2+TzR7ePqOM8NyV
	l/klW/XO4LDjwhdjyfsZLT28/LUQ==
X-Google-Smtp-Source: AGHT+IH6/cFN0YsLkGFTW7aoYDCwj1mV4WmnEbQ1bEK5YIOQMycZEd+AcrupvOiIKlReD8ooHmBsIA==
X-Received: by 2002:a05:620a:2915:b0:803:5cc7:df7a with SMTP id af79cd13be357-8035cc7e449mr1619637185a.73.1756949005544;
        Wed, 03 Sep 2025 18:23:25 -0700 (PDT)
Received: from Latitude-7490.ht.home ([2607:fa49:8c41:2600:7c75:e415:6dae:18ce])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-80aab789f9asm198439585a.47.2025.09.03.18.23.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Sep 2025 18:23:25 -0700 (PDT)
From: chalianis1@gmail.com
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org,
	Chali Anis <chalianis1@gmail.com>
Date: Wed,  3 Sep 2025 21:23:22 -0400
Message-Id: <20250904012322.340813-1-chalianis1@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250903_182327_066405_6B22F6CD 
X-CRM114-Status: GOOD (  13.69  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] efi: payload: image: fix many issues in the code.
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Chali Anis <chalianis1@gmail.com>

fix memory free missing.
fix unrechable code issue.
set the fdt memory to a fixed 128KB.
fix oftree_file exist check.

Signed-off-by: Chali Anis <chalianis1@gmail.com>
---
 efi/payload/image.c | 56 +++++++++++++++++++++++++++------------------
 1 file changed, 34 insertions(+), 22 deletions(-)

diff --git a/efi/payload/image.c b/efi/payload/image.c
index 38d52a32ea64..9fcc27ffaa78 100644
--- a/efi/payload/image.c
+++ b/efi/payload/image.c
@@ -132,6 +132,7 @@ static int efi_load_file_image(const char *file,
 	size_t size;
 	efi_handle_t handle;
 	efi_status_t efiret = EFI_SUCCESS;
+	int ret;
 
 	buf = read_file(file, &size);
 	if (!buf)
@@ -141,7 +142,8 @@ static int efi_load_file_image(const char *file,
 				 EFI_LOADER_CODE);
 	if (!exe) {
 		pr_err("Failed to allocate pages for image\n");
-		return -ENOMEM;
+		ret = -ENOMEM;
+		goto free_buf;
 	}
 
 	memcpy(exe, buf, size);
@@ -149,25 +151,32 @@ static int efi_load_file_image(const char *file,
 	efiret = BS->load_image(false, efi_parent_image, efi_device_path, exe,
 				size, &handle);
 	if (EFI_ERROR(efiret)) {
+		ret = -efi_errno(efiret);
 		pr_err("failed to LoadImage: %s\n", efi_strerror(efiret));
-		goto out;
-	};
+		goto free_mem;
+	}
 
 	efiret = BS->open_protocol(handle, &efi_loaded_image_protocol_guid,
 				   (void **)loaded_image, efi_parent_image,
 				   NULL, EFI_OPEN_PROTOCOL_GET_PROTOCOL);
 	if (EFI_ERROR(efiret)) {
+		ret = -efi_errno(efiret);
 		pr_err("failed to OpenProtocol: %s\n", efi_strerror(efiret));
 		BS->unload_image(handle);
-		goto out;
+		goto free_mem;
 	}
 
 	*h = handle;
+	free(buf);
 
 	return 0;
-out:
+
+free_mem:
 	efi_free_pages(exe, size);
-	return -efi_errno(efiret);
+free_buf:
+	free(buf);
+
+	return ret;
 }
 
 static bool is_linux_image(enum filetype filetype, const void *base)
@@ -335,8 +344,8 @@ static bool ramdisk_is_fit(struct image_data *data)
 			return false;
 	}
 
-	return data->os_fit ? (bool)fit_has_image(data->os_fit,
-			data->fit_config, "ramdisk") : false;
+	return data->os_fit ? fit_has_image(data->os_fit,
+			data->fit_config, "ramdisk") > 0 : false;
 }
 
 static bool fdt_is_fit(struct image_data *data)
@@ -347,12 +356,12 @@ static bool fdt_is_fit(struct image_data *data)
 		return true;
 
 	if (data->oftree_file) {
-		if (!stat(data->initrd_file, &st) && st.st_size > 0)
+		if (!stat(data->oftree_file, &st) && st.st_size > 0)
 			return false;
 	}
 
-	return data->os_fit ? (bool)fit_has_image(data->os_fit,
-			data->fit_config, "fdt") : false;
+	return data->os_fit ? fit_has_image(data->os_fit,
+			data->fit_config, "fdt") > 0 : false;
 }
 
 static int efi_load_os(struct efi_image_data *e)
@@ -364,12 +373,15 @@ static int efi_load_os(struct efi_image_data *e)
 	void *vmem = NULL;
 	int ret = 0;
 
-	if (e->data->os_fit) {
-		image = (void *)e->data->fit_kernel;
-		image_size = e->data->fit_kernel_size;
-	} else if (e->data->os_file)
+	if (!e->data->os_fit)
 		return efi_load_file_image(e->data->os_file,
-				&e->loaded_image, &e->handle);
+			&e->loaded_image, &e->handle);
+
+	image = (void *)e->data->fit_kernel;
+	image_size = e->data->fit_kernel_size;
+
+	if (image_size <= 0 || !image)
+		return -EINVAL;
 
 	vmem = efi_allocate_pages(&mem, image_size, EFI_ALLOCATE_ANY_PAGES,
 				 EFI_LOADER_CODE);
@@ -565,13 +577,13 @@ static int efi_load_fdt(struct efi_image_data *e)
 		of_tree = tmp;
 	}
 
-	vmem = efi_allocate_pages(&mem, of_size + CONFIG_FDT_PADDING,
+	vmem = efi_allocate_pages(&mem, SZ_128K,
 				 EFI_ALLOCATE_ANY_PAGES,
 				 EFI_ACPI_RECLAIM_MEMORY);
 	if (!vmem) {
 		pr_err("Failed to allocate pages for FDT\n");
+		ret = -ENOMEM;
 		goto free_file;
-		return -ENOMEM;
 	}
 
 	memcpy(vmem, of_tree, of_size);
@@ -585,17 +597,17 @@ static int efi_load_fdt(struct efi_image_data *e)
 	}
 
 	e->oftree_res.base = mem;
-	e->oftree_res.size = of_size + CONFIG_FDT_PADDING;
+	e->oftree_res.size = SZ_128K;
 
-	if (!from_fit && tmp)
+	if (!from_fit)
 		free(tmp);
 
 	return 0;
 
 free_mem:
-	efi_free_pages(vmem, of_size);
+	efi_free_pages(vmem, SZ_128K);
 free_file:
-	if (!from_fit && tmp)
+	if (!from_fit)
 		free(tmp);
 
 	return ret;
-- 
2.34.1



