Delivery-date: Sat, 20 Sep 2025 05:04:22 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uznte-0054xN-1h
	for lore@lore.pengutronix.de;
	Sat, 20 Sep 2025 05:04:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uznta-00050x-9r
	for lore@pengutronix.de; Sat, 20 Sep 2025 05:04:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3NydSgVuGXlWB4EgRvo+3b7yIpS20SMjWEnI9yIwqEI=; b=Vqxa9erzv1cR0ZWFCKi0SwdR/0
	F70dN4DT/JvZEj0E3JsfDhPtucN8gLjDO2MAiNgXn20ApnY74vJwHw+I7zrk45/hdIpvryR+LbMcW
	Hqonp6kboQbGova08PPTL7q4ifnsbKbohQ1X1zHrRbX7eFN9q7wSXilZGsYYQ7uYZXR7G9Dzq5yaI
	7S4rxO9mfmzwZ3yNTDTQqqY32HxEb/x7izDl9a66VCv0eYjDprQm1IvsTEmfhOcWtz1Wb8pOIRWN2
	BNsIj9btwk0KTHK4Mz4SzAyBbw9z67wyhZlL3mPdz6dUeUGnbHMnI3ZCxebTnfJxdMvuZT1O4YJ4x
	OPY9KZxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uznss-00000004bkv-3ylX;
	Sat, 20 Sep 2025 03:03:34 +0000
Received: from mail-wr1-x436.google.com ([2a00:1450:4864:20::436])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uznsq-00000004bjB-3Mv9
	for barebox@lists.infradead.org;
	Sat, 20 Sep 2025 03:03:33 +0000
Received: by mail-wr1-x436.google.com with SMTP id ffacd0b85a97d-3ee15b5435bso1208834f8f.0
        for <barebox@lists.infradead.org>; Fri, 19 Sep 2025 20:03:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758337411; x=1758942211; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3NydSgVuGXlWB4EgRvo+3b7yIpS20SMjWEnI9yIwqEI=;
        b=DJ7hNXpDknOtwalob8nYnpSvxobrUgapPFK/xp1+Ei7N3wPT9c2CRP5GYmrhSt/Jkq
         tGJNXB2ScT9fjzpbGtO0pYMO36PJiJzl75pdfAYxQgdPvQHIwQXIFgkYN/zszP7DQ2os
         uvIir7qq1lAXavBq9XYHvhlzw2sPpMt9iLR382pFvpW9O/4PDEqNDbhLo84AZDlZo55d
         qJ0XTePbsjy6u5K0i/9L8I3scFwIWaVLUFJYcPBrBTT6SV8pDDVCv9+7IVzH9aWaH3/k
         ApNf6C8pzjcqNr3nHR86AktSlKNTSqTSm7o2AI2AD2ibBX4TTimTcS9U8JLOnRwPAA8g
         uI9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758337411; x=1758942211;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3NydSgVuGXlWB4EgRvo+3b7yIpS20SMjWEnI9yIwqEI=;
        b=ITobIwMYjcfyGOm3mMmVfv+gjBZ8NFqz/A2Yh2+eVvjLdg0hi3rqn1SNo0wm5O4HhJ
         Lk51puG4LZNL0AS/tbkzCNc4IrU3O8q1jZx5IQPd1NaYRL/ZYh9bd0QiPxynXoKqewQi
         l/6yLiDZ4jplef3jTNLWz8FzDuKWjQrWGCcpn5ehy0Ks7KT7W6JQQzOqOo0i/zlydIw/
         WhBf181w+PhJ8vMLZ/m18tEJKKZIRRG2tn4hDZWR/x3kCycO3morAMVXLFvhB9Et2FH4
         Ovp/yNm6bBDwk9vSRP5g5v+W+SIF8wlJKNI+DhMro+2d44b3tMTgM8CrE24kxTU3feBB
         njyA==
X-Forwarded-Encrypted: i=1; AJvYcCXgWhSe5zimiR10PkFSF/dWf5kxQocCdrrEwLuCL019NiwCExSHa5qYrbzw19CKTVdRta1UTkZn@lists.infradead.org
X-Gm-Message-State: AOJu0Ywmm0/4FPbnyHAWB0PaRI0++rvdr3/WU+JP5eMxZkClCzL4h7Gc
	ruzv4uypSrXqEGKY1KY/LTNvpSxUGSvpxIZp55WoUaYiecYot3kKTFRy8wqXX2ks
X-Gm-Gg: ASbGnctPapNFMWjpJYinWpfHYK+QeMwDgiPiYhrabZv6cgpRMNUJZYVlVsLyjdlpcD9
	QLXu5fBXKQl7Z6h/Ig8gnumhjV11lq/KBeipcChvBqVpvlIYhTbg9RFv2MGL/J7bZZxb6eIiztu
	/JwolXQ6WYeY1VZfaYQeXAnv2oT6sB/N/L3rgQkxpqh1tp+00IF1q4D6H0NWzZdXADotNHjcvrU
	0RkMzYZ8Ra2GsGhBVKLTN9t+XzxefHAI8XkyR3oOJNV7RkkMrC1IcKi5AWVYW5H6EDJnsEy5Dci
	PxvPyNezpWqx5elGiIJcWl9utCSSj0dKnZ0Eo94TJTeY1hGYUoam1HJg0Kjcg+MUpBx9yDvcTGk
	0hFPtosYPgPdngHk1R7yEmHNwsY88shZTB2fTC6DfMZ0RPGNcxtUX1LuOpYC7pDu93OQwPWKHiv
	Dtn5iuJ1KF
X-Google-Smtp-Source: AGHT+IFoFyXCqqMtvE5qpSaIw5/4oVXpckRLQ+jclr6zD1GjFilN0lefVUrl50INMnHUpHcnWJpQpw==
X-Received: by 2002:a05:6000:2084:b0:3ee:1294:4783 with SMTP id ffacd0b85a97d-3ee84bf16e1mr3560664f8f.32.1758337410832;
        Fri, 19 Sep 2025 20:03:30 -0700 (PDT)
Received: from [127.0.1.1] ([143.244.56.164])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-464f64ad359sm128118415e9.22.2025.09.19.20.03.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Sep 2025 20:03:30 -0700 (PDT)
From: chalianis1@gmail.com
Date: Fri, 19 Sep 2025 23:03:12 -0400
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250919-efi-loader-v1-3-dd8cdafb9067@gmail.com>
References: <20250919-efi-loader-v1-0-dd8cdafb9067@gmail.com>
In-Reply-To: <20250919-efi-loader-v1-0-dd8cdafb9067@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Chali Anis <chalianis1@gmail.com>, Ahmad Fatoum <a.fatoum@barebox.org>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250919_200332_895779_56AFC80D 
X-CRM114-Status: GOOD (  19.82  )
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
Subject: [PATCH 03/15] efi: payload: add support for fit image
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
 efi/payload/bootm.c | 148 ++++++++++++++++++++++++++++++++++++++++++++--------
 1 file changed, 126 insertions(+), 22 deletions(-)

diff --git a/efi/payload/bootm.c b/efi/payload/bootm.c
index 6d6ecbf2e49ab7a47cfb9843418abf306b5c51db..ce225ab949c92cb0c52c1334c2395e30b309b781 100644
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



