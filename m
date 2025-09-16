Delivery-date: Tue, 16 Sep 2025 05:55:37 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyMn3-003YFn-2R
	for lore@lore.pengutronix.de;
	Tue, 16 Sep 2025 05:55:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyMn2-00074X-Rm
	for lore@pengutronix.de; Tue, 16 Sep 2025 05:55:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=A43DIRn0qAMn3zS8Q5GNaI7hskI4fR8j4LUrNjuUSIU=; b=dTHjDeclFlfX+wx2M8IqK2DcQT
	Qnlr+DBNLrI9qEBDHjzApxbUvbt+IOJRmjax/2nCJ7pFDgU7K1lyOTFOsxwtEibU4UM59nDdeMOA/
	las72XUpnYJ/QrdaWrZfbfND88rpJCoPmUeT3lw4S/GNhLbL9uRMONk8FcqIpQbahLrt/ZozxyNQv
	Z7OL83Mgw9IuGdjlw44In2nv6tMCmPRfWRI2hhonlwfmyNTHeh6EzRB4B2/MtBm/+jAicdE3e+MV/
	iLceSA2wOX2EtGAXX9OVwzDrPtSXMzzDXlP5+GqUvfvi0E2Xt0tMTDAlgdhOIqOspnrYxuhqfX/em
	PDLQMecA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyMmT-00000006dH0-3Jem;
	Tue, 16 Sep 2025 03:55:01 +0000
Received: from mail-wr1-x42d.google.com ([2a00:1450:4864:20::42d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyMmQ-00000006dEr-48gP
	for barebox@lists.infradead.org;
	Tue, 16 Sep 2025 03:55:00 +0000
Received: by mail-wr1-x42d.google.com with SMTP id ffacd0b85a97d-3c68ac7e18aso3015412f8f.2
        for <barebox@lists.infradead.org>; Mon, 15 Sep 2025 20:54:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757994897; x=1758599697; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=A43DIRn0qAMn3zS8Q5GNaI7hskI4fR8j4LUrNjuUSIU=;
        b=UpB6MZKDRxx3B+yao8FoBPfU0gu3Z7xNECmsoflZA6wHwtQXEMY/HXJWE3WRYJl8Tt
         YOcvRr+y6p6HWmfiCS5UItD4FWRfGZ3Bc+O7M4Qru9gcGKaeB7QhsQSo/fYr5aWNqp/a
         mc/MdiNr3N2X81/LvQe9fe3cb73mlOvLMeyCQPINn2GGowezsYIsNdz3m0OzeMZwJbYZ
         RpQ36Vq4XUKw5WMBNw1pwwRS6iwO4wu4dsU/5fKv5EykbYgtWPYsd+e9jDqvtNIsd3G6
         PhlTUMt7o5yI8NVLhCk8yW5hIrFeoC5NNJwtH61a5NPqgMBEHFSnwz+WfudnhBjuS3JT
         8ICA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757994897; x=1758599697;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=A43DIRn0qAMn3zS8Q5GNaI7hskI4fR8j4LUrNjuUSIU=;
        b=vgqWYUeT/rX7T0KsUlYPGsItZGqJT2CWtklpT/yXMX7sDRTO+HKVRz3wK9C1RwvBb6
         8iLCwF68D9UX5mYgnDX+moFQQPvZLpj/TkGHYJCc94zG4axP0k22JNZkpB/W20IEF83g
         JbEhiXVjTCJh2kIng2tMrx3ZsR4ta/zL6gQ85HLRWv6mmpsyWWMPbE21biqqaSOEs42B
         Q/o7l0U+8MCyyF1R6cz7LrJQ4q31h/kivrOaD/Uogd76pDZ9efKwzwVqLOWcclQ+nw+7
         5lrnBKacF8K8Y1cMzfaLU7ugX3Er0mLY2p/MkVpL5RqyZzQJ92DHdEs734FfL2hOqyb8
         ULhA==
X-Gm-Message-State: AOJu0Yxb0dUaWtjobMBLfjAk6R+gaPZsgUOp04G8ncvuBebd/2KNoza+
	GNDsXYWmErUS0LC2VqwdcpXQ74XBd+pElKJFqCk7UeZMwiBSaJdpGuMidt8sxnjq
X-Gm-Gg: ASbGnctzdi4GhhnYLmVXFBdRQsAhknvZMZnj94ejBbFAvscnGqbm4+Sev2U5opgS+Ot
	UqWMfV8ea0JkH2Czx0xuWFMnIaYPDzutl0swia7Ri3WtdezQgzARMMf4o0+zSLhHEy0kkcOkj2W
	w5+S3XF2Luxf4+/g9GmN/iiboBDInqdMLoX+jpiay21RzmDY8GhnImz9wNxThkcTcXIa1UuVfFt
	oioLPo2nVMo46cIieyn31Ymh7jUh+urML4thmbibzE2itzCfJdsRJzmkLVjzyjef9OLKJPfdpKt
	WDAa+sqFOyByyZ63FE2BjVrWs2w5hfuEXbty5ScCQjEN5N33YOiVW32RNCLu32JJgjQ/1xo+9eK
	kQr6lluc3uzNND4sFGmvJ18bOEF+GlL0/2RStlbAxdGzy8iV/FuWAyUGkMBHJ6GOaCvbRHq45cv
	y7/vs1aX4WT3gzcq2uOjPDxA==
X-Google-Smtp-Source: AGHT+IGbXoY4xTcEIXnstiuzfQ+ENg8T925+f2J58vEy28Q7xGN3AMIus1MuNnrb+n9bDdJvAbNgLg==
X-Received: by 2002:a05:6000:2307:b0:3e9:ee54:af71 with SMTP id ffacd0b85a97d-3e9ee63fabamr5860370f8f.12.1757994897256;
        Mon, 15 Sep 2025 20:54:57 -0700 (PDT)
Received: from Latitude-7490.ht.home ([178.132.106.74])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3e8237cfdddsm13496580f8f.60.2025.09.15.20.54.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Sep 2025 20:54:55 -0700 (PDT)
From: chalianis1@gmail.com
To: s.hauer@pengutronix.de,
	a.fatoum@barebox.org
Cc: barebox@lists.infradead.org,
	Chali Anis <chalianis1@gmail.com>
Date: Mon, 15 Sep 2025 23:54:31 -0400
Message-Id: <20250916035437.805046-4-chalianis1@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250916035437.805046-1-chalianis1@gmail.com>
References: <20250916035437.805046-1-chalianis1@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250915_205459_056896_FF95BE4B 
X-CRM114-Status: GOOD (  20.80  )
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
Subject: [PATCH v2 04/10] efi: payload: add support for fit image
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



