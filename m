Delivery-date: Tue, 16 Sep 2025 02:17:40 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyJO8-003V13-2P
	for lore@lore.pengutronix.de;
	Tue, 16 Sep 2025 02:17:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyJO7-00016G-N7
	for lore@pengutronix.de; Tue, 16 Sep 2025 02:17:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=A43DIRn0qAMn3zS8Q5GNaI7hskI4fR8j4LUrNjuUSIU=; b=1KhDd6QIgA9m3hUR6je72rKXKm
	doZ3tc5P1QhUqHX1gQU3+8oHbcJBnPe130eEHAAb+lrxOqmk63RdjY95A0lhNQCUIHwFZi8GuzwB4
	jo1KN/hCIfx1VFwdW5lurg6tLinvdmMkLfgjEQRb6gwqF6r3HBcbANO0JwF2XSbk51lO0o5TXCc37
	JQOV83ZFR3dndyamca71nsX8mp5Lu0L5+RQpFqb2eJhYUTbPG+7oiKIoiS1u+oxv1fH+A7Me+8p7F
	/sH9k8kXC2buTR2Fx2OuBCCkkqJe/lFMQjLaKOsAmTwIAB+AhvaP2zmkFH7g7K7PbKdbT+RJbt96Y
	siR62Qgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyJNW-00000005ySp-0qDI;
	Tue, 16 Sep 2025 00:17:02 +0000
Received: from mail-qt1-x82d.google.com ([2607:f8b0:4864:20::82d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyJNU-00000005yRL-2p7K
	for barebox@lists.infradead.org;
	Tue, 16 Sep 2025 00:17:01 +0000
Received: by mail-qt1-x82d.google.com with SMTP id d75a77b69052e-4b7a8ceace8so13644051cf.3
        for <barebox@lists.infradead.org>; Mon, 15 Sep 2025 17:17:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757981819; x=1758586619; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=A43DIRn0qAMn3zS8Q5GNaI7hskI4fR8j4LUrNjuUSIU=;
        b=BMq6H++KomRdS4KXTJoW5fkDsZqQ6ul6tEbmcxldXfDvhGy2LwWqApVXAeeNgvTHJY
         5nQKDKxvrCpxC4FiycZbLekQgkhrGqjYrS9U7QU5p2f+hL2UvqOkxKsjWuioo/cK9KEr
         il036vj5OvkRHppnbRRwqqTVtfOHG3+n3J8Rf+8Af25Hez2yeE9K2KOcFnVrsc2Ts+zd
         WLTn9qBXQokcGcjZEhpRI01S8HZgs8qERx7UDSpao3CRk+th6sR2K+JAxq6Wz97BnMC6
         7nA09gJJLNv9o8W2gFmgeqYYc+ttzl45txrg8X0IqjHiNbA2kl4uJmRJK1dfghSBowc7
         BOXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757981819; x=1758586619;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=A43DIRn0qAMn3zS8Q5GNaI7hskI4fR8j4LUrNjuUSIU=;
        b=ImfPgyVGNqbg3dv2jKYuc6SV+YUOeZBCArmAPL0r7z4ZN4sMyravGXnZ8XarGV+byT
         yAEnRPY/TobdKsKLSQhY3AoMSAus5DtOMvvqT8EGDk3Dzkes3S+ODPAjvlf2CB+aytAz
         9HdWVaZlHfQuuzjAmkAkiqLFB+DHb9BXv0kg0b1S+G+8LmsgQG7IVW4621yqkmy42MsN
         B4j9om3JT2tHP8TBNs8DBNVCj8xsQEGzUZGCNwzvsczWQrqxGn6TfxOdXIiLUtnZFcP4
         XyVUOFx93iEuKF6CJeNy65442ehIiFsK39T7NnFXMpNfu+lVQUz1mdj2qWBB3trJWVqB
         4m+g==
X-Gm-Message-State: AOJu0Yx2G783VhwPaidhQzf5dxBpXEzBMGRu4a3d6HcNuuIIhZgGDokK
	xQThVvxuKQZ1h6RGLFQH3aRM7gFeK1IL1HyuWxAJzyh1lkVcE7B9wlZM
X-Gm-Gg: ASbGncstP+quL31Zkxl0e4Nk+uhqoaL4I6y8DqPNei2B1Lyujrzh0XnVYYnmS7FfbvW
	qup4KP89LKSOvaZ8EmxzHwhvEYBvxwgJmpdtwY6CTwUoI2SbehCCp9hV/KBEp6oroXX7ykfQp2l
	0BPr1Ah86Lx01bmb2r5689yn9m+6JgqdKUzs+lZdNBaP+PzO+KJ/nuJwWqcCXDWPcI9KIi4HGlP
	d3fP3xr906enx26k5yaULAwilppBEoS996Hvxifg5kX5l5qunOou45l4mwgKbtqHcwCzvGsyMYo
	4MxTGZHv8P5ZGH4lcBserJGbWqf5B3jSC+Seg2U+SyJcJWZUN0XMOS8FhN2hbzBt0TKqo3TsCTa
	4pt4TCEaGwx5gTYsZcrjfzwRxrmKfyhNB/nBOkGKjX7NAYYojIpgkWTPduBzOwlJJNxeK5xSaQk
	DFu49n/HBQl3JL2opRdxA/heAsfw==
X-Google-Smtp-Source: AGHT+IH+YMRDYfppg9b2sOEgg7k0qqnidpTyxKDOekNNog53NqOmKw0MdbMIYtMZDouEnrExLN/f9A==
X-Received: by 2002:a05:622a:5e0d:b0:4b7:ac2e:4057 with SMTP id d75a77b69052e-4b7ac2e421bmr37092361cf.66.1757981818415;
        Mon, 15 Sep 2025 17:16:58 -0700 (PDT)
Received: from Latitude-7490.ht.home ([2607:fa49:8c41:2600:db10:d083:890b:6e1f])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4b639cb4212sm73732431cf.19.2025.09.15.17.16.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Sep 2025 17:16:57 -0700 (PDT)
From: chalianis1@gmail.com
To: s.hauer@pengutronix.de,
	a.fatoum@barebox.org
Cc: barebox@lists.infradead.org,
	Chali Anis <chalianis1@gmail.com>
Date: Mon, 15 Sep 2025 20:16:46 -0400
Message-Id: <20250916001649.591989-4-chalianis1@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250916001649.591989-1-chalianis1@gmail.com>
References: <20250916001649.591989-1-chalianis1@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250915_171700_733104_C7386BD8 
X-CRM114-Status: GOOD (  20.58  )
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
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 4/7] efi: payload: add support for fit image
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
 efi/payload/bootm.c | 148 +++++++++++++++++++++++++++++++++++++-------
 1 file changed, 126 insertions(+), 22 deletions(-)

diff --git a/efi/payload/bootm.c b/efi/payload/bootm.c
index 6d6ecbf2e49a..ce225ab949c9 100644
--- a/efi/payload/bootm.c
+++ b/efi/payload/bootm.c
@@ -25,6 +25,7 @@
 #include <libfile.h>
 #include <binfmt.h>
 #include <wchar.h>
+#include <image-fit.h>
 #include <efi/efi-payload.h>
 #include <efi/efi-device.h>
 
@@ -227,10 +228,93 @@ static int do_bootm_efi(struct image_data *data)
 	return 0;
 }
 
+static bool ramdisk_is_fit(struct image_data *data)
+{
+	struct stat st;
+
+	if (bootm_signed_images_are_forced())
+		return true;
+
+	if (data->initrd_file) {
+		if (!stat(data->initrd_file, &st) && st.st_size > 0)
+			return false;
+	}
+
+	return data->os_fit ? fit_has_image(data->os_fit,
+			data->fit_config, "ramdisk") > 0 : false;
+}
+
+static bool fdt_is_fit(struct image_data *data)
+{
+	struct stat st;
+
+	if (bootm_signed_images_are_forced())
+		return true;
+
+	if (data->oftree_file) {
+		if (!stat(data->oftree_file, &st) && st.st_size > 0)
+			return false;
+	}
+
+	return data->os_fit ? fit_has_image(data->os_fit,
+			data->fit_config, "fdt") > 0 : false;
+}
+
 static int efi_load_os(struct efi_image_data *e)
 {
-	return efi_load_file_image(e->data->os_file,
-		&e->loaded_image, &e->handle);
+	efi_status_t efiret = EFI_SUCCESS;
+	efi_physical_addr_t mem;
+	size_t image_size = 0;
+	void *image = NULL;
+	void *vmem = NULL;
+	int ret = 0;
+
+	if (!e->data->os_fit)
+		return efi_load_file_image(e->data->os_file,
+			&e->loaded_image, &e->handle);
+
+	image = (void *)e->data->fit_kernel;
+	image_size = e->data->fit_kernel_size;
+
+	if (image_size <= 0 || !image)
+		return -EINVAL;
+
+	vmem = efi_allocate_pages(&mem, image_size, EFI_ALLOCATE_ANY_PAGES,
+				 EFI_LOADER_CODE);
+	if (!vmem) {
+		pr_err("Failed to allocate pages for image\n");
+		return -ENOMEM;
+	}
+
+	memcpy(vmem, image, image_size);
+
+	efiret = BS->load_image(false, efi_parent_image, efi_device_path, image,
+				image_size, &e->handle);
+	if (EFI_ERROR(efiret)) {
+		ret = -efi_errno(efiret);
+		pr_err("failed to LoadImage: %s\n", efi_strerror(efiret));
+		goto out_mem;
+	};
+
+	efiret = BS->open_protocol(e->handle, &efi_loaded_image_protocol_guid,
+				   (void **)&e->loaded_image, efi_parent_image,
+				   NULL, EFI_OPEN_PROTOCOL_GET_PROTOCOL);
+	if (EFI_ERROR(efiret)) {
+		ret = -efi_errno(efiret);
+		pr_err("failed to OpenProtocol: %s\n", efi_strerror(efiret));
+		goto out_unload;
+	}
+
+	e->image_res.base = mem;
+	e->image_res.size = image_size;
+
+	return 0;
+
+out_mem:
+	efi_free_pages(vmem, image_size);
+out_unload:
+	BS->unload_image(e->handle);
+	return ret;
 }
 
 static void efi_unload_os(struct efi_image_data *e)
@@ -252,17 +336,27 @@ static int efi_load_ramdisk(struct efi_image_data *e)
 	unsigned long initrd_size;
 	int ret;
 
-	if (!e->data->initrd_file)
-		return 0;
-
-	pr_info("Loading ramdisk from '%s'\n", e->data->initrd_file);
-	tmp = read_file(e->data->initrd_file, &initrd_size);
-	if (!tmp || initrd_size <= 0) {
-		pr_err("Failed to read initrd from file: %s\n",
-			e->data->initrd_file);
-		return -EINVAL;
+	if (ramdisk_is_fit(e->data)) {
+		ret = fit_open_image(e->data->os_fit, e->data->fit_config,
+				     "ramdisk", &initrd, &initrd_size);
+		if (ret) {
+			pr_err("Cannot open ramdisk image in FIT image: %pe\n",
+			       ERR_PTR(ret));
+			return ret;
+		}
+	} else {
+		if (!e->data->initrd_file)
+			return 0;
+
+		pr_info("Loading ramdisk from '%s'\n", e->data->initrd_file);
+		tmp = read_file(e->data->initrd_file, &initrd_size);
+		if (!tmp || initrd_size <= 0) {
+			pr_err("Failed to read initrd from file: %s\n",
+				e->data->initrd_file);
+			return -EINVAL;
+		}
+		initrd = tmp;
 	}
-	initrd = tmp;
 
 	efiret = BS->allocate_pool(EFI_LOADER_DATA,
 			sizeof(struct efi_mem_resource),
@@ -346,17 +440,27 @@ static int efi_load_fdt(struct efi_image_data *e)
 	if (IS_ENABLED(CONFIG_EFI_FDT_FORCE))
 		return 0;
 
-	if (!e->data->oftree_file)
-		return 0;
-
-	pr_info("Loading devicetree from '%s'\n", e->data->oftree_file);
-	tmp = read_file(e->data->oftree_file, &of_size);
-	if (!tmp || of_size <= 0) {
-		pr_err("Failed to read initrd from file: %s\n",
-			e->data->initrd_file);
-		return -EINVAL;
+	if (fdt_is_fit(e->data)) {
+		ret = fit_open_image(e->data->os_fit, e->data->fit_config,
+				     "fdt", &of_tree, &of_size);
+		if (ret) {
+			pr_err("Cannot open FDT image in FIT image: %pe\n",
+			       ERR_PTR(ret));
+			return ret;
+		}
+	} else {
+		if (!e->data->oftree_file)
+			return 0;
+
+		pr_info("Loading devicetree from '%s'\n", e->data->oftree_file);
+		tmp = read_file(e->data->oftree_file, &of_size);
+		if (!tmp || of_size <= 0) {
+			pr_err("Failed to read initrd from file: %s\n",
+				e->data->initrd_file);
+			return -EINVAL;
+		}
+		of_tree = tmp;
 	}
-	of_tree = tmp;
 
 	vmem = efi_allocate_pages(&mem, SZ_128K,
 				 EFI_ALLOCATE_ANY_PAGES,
-- 
2.34.1



