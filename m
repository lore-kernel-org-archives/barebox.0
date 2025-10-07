Delivery-date: Tue, 07 Oct 2025 03:00:47 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v5w4N-0054aQ-1t
	for lore@lore.pengutronix.de;
	Tue, 07 Oct 2025 03:00:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v5w4M-00041D-I4
	for lore@pengutronix.de; Tue, 07 Oct 2025 03:00:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=r1y1SHWqCMMeKwHmiuTgysHb+0PiiA5opO1wORxzS8c=; b=47tb0wAbX+5h46svEzwvHvPQTk
	VPKq9eTNCCq2LqSWyCikaJDeCDldUtN92lrt25Ve8xL8BO2FoQt5zULnlDxO+1uRr5CBYXJD++/0c
	tebxfkrz9kpYZG8/yJiqw+TXeMnCys2qSgSqG9/5Z38mY5smvxMXkEOcOEAlE72d05nplqKvH12LY
	rBhfnCJjErYgsaGOg3Vr0sTeIG/WQIYoy0aeovMZ2sj/qcC1mn5u9FTjtLgHrDHEfDHqyrBBb/mqp
	8+hMuwI0T2kdBt8YWtzVaDUajf3lyptIxzfKeuD4sZr7jrpqh9IYew5hnALI0rr2jd0h0mH1L0Rom
	jVLEI/aA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5w3n-0000000152T-1jZy;
	Tue, 07 Oct 2025 01:00:11 +0000
Received: from mail-qv1-xf29.google.com ([2607:f8b0:4864:20::f29])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5w3k-000000014zH-2Z6P
	for barebox@lists.infradead.org;
	Tue, 07 Oct 2025 01:00:09 +0000
Received: by mail-qv1-xf29.google.com with SMTP id 6a1803df08f44-78f58f4230cso50058896d6.1
        for <barebox@lists.infradead.org>; Mon, 06 Oct 2025 18:00:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759798808; x=1760403608; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=r1y1SHWqCMMeKwHmiuTgysHb+0PiiA5opO1wORxzS8c=;
        b=QrLyaqxrVcBrumhW2HLH7hp03Fb/uzs4rmTqBTfmjzG8zgFCuGNOilG1IGEW5KlUVd
         8WG03TO+E0cha3flWbrhsotEdAyhbWzV3lYSOHfhFuoAuc+pjvZ3jvvOsLxlyFoA4Wp3
         4qaWmFEizEhfe55xIWdtD1Y91KJBpyokJ8oToqz8t6xtpPvw/pncwRktf5CZzOcv82lC
         iKBHotR6yF69eJkae3sWgRyTjxYCaAEhOLfj0JdMn20kDL5Z6xcV3qOvw02QjZMF9eS8
         ktKxh+ikjeU+Vwsi6eJyNJvvLE1S1QHoBkKBs5h9RQlrSb5QRx2rHygEk+YD5Ni4zvbo
         kgbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759798808; x=1760403608;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=r1y1SHWqCMMeKwHmiuTgysHb+0PiiA5opO1wORxzS8c=;
        b=c3uLvno2nb3oLHLhhaKajlCmGPuskw5r5aI39Msf65zfJ8xaacFrXLnG5IO56I2eYY
         +x6nBJwqYGKNl0EQ+grIAwTbjjLO3Gt4wiXAnUS3njkKrEYNQunnGNYVT73vqGOV0KgQ
         zCmX522JM8sQ0nFWQsRDMCOFDkr4rIFcYv+09j8YkN9vDSd5I2/9+7b6eY6r22848XZS
         V4DmPl2/Eu4dcwgLOAWFfT1YqSuXhV4AbLBTpRyCHmUPuZxujcP/m/ueiRpBS1KH1zpY
         gCJhCdk9d2+9+Cjulr5EAXRWQkk8j6yB5kRGw0DOABK/KitEHkBU5zEy/hJsVT+8denD
         CH7A==
X-Gm-Message-State: AOJu0YwF4ZVfZVUvd34YOmBZS4hNe1XfGpblmJdu8I8Jbx/0ou8vE+RO
	g8cI17mQwuyqnu6MvhcsmKFRyryK6jA2Dqe7zVk7L34gPnB+z/eaPOdh
X-Gm-Gg: ASbGncskJ4/ItMZEpgGiQbZyb0UQclhzTo/YMIml8/0lBLlP1Fu3eIvt6ApAmVuHNW+
	+7vE70gsfRLzxBC3PkoV8kAuymeLsUfEbSwdkopF6/jHKN6rvKJC7CS3pI9MFkEB09fCy6K1R2z
	JsqfaiBArwXABX7XB2Uoxv7/o225HDXzU4S5aGRNTrwV8gAiZwCcR9Ic1Bm2967hsA2xWRYwNUv
	0GuqgFYBFw/1E8D7HDgkfEbvxhxd36GD2vSGSdnfmzUX4KLdYz7bkOq3k6YgdmgdlE9tWbymOzU
	7nnCW7D1dDVqrd5jLPuWtrKGjKaJVcUpAO+vK53OZcm6QrcmwMkSy1gjFT+u0mj8EFugCNCbsu4
	sUbOUP8WCPaG5FAw09G9McBKZkhoe+aTDd+pD8tbvzmlqaomx9v4ke3iY2bUcM3PB
X-Google-Smtp-Source: AGHT+IHZBd12fhI87LWwmU0AmncqAHuF2UNSkgUzCDX+ofUP1vTECXmFUAob7+c5s9GnJn/KHFwzjg==
X-Received: by 2002:a05:6214:4108:b0:81c:b934:a01 with SMTP id 6a1803df08f44-879dc83ec30mr187714176d6.31.1759798807434;
        Mon, 06 Oct 2025 18:00:07 -0700 (PDT)
Received: from Latitude-7490.ht.home ([2607:fa49:8c41:2600:eb22:a82c:4a35:371d])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-878bb53badbsm129753166d6.21.2025.10.06.18.00.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Oct 2025 18:00:06 -0700 (PDT)
From: chalianis1@gmail.com
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org,
	Ahmad Fatoum <a.fatoum@barebox.org>,
	Chali Anis <chalianis1@gmail.com>
Date: Mon,  6 Oct 2025 20:59:53 -0400
Message-Id: <20251007005955.1427990-8-chalianis1@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251007005955.1427990-1-chalianis1@gmail.com>
References: <20251007005955.1427990-1-chalianis1@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251006_180008_662975_3158EB7D 
X-CRM114-Status: GOOD (  14.66  )
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
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 08/10] efi: payload: bootm: add support for fit image
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@barebox.org>

Extend the EFI payload boot flow to support loading kernel, initrd,
and devicetree directly from a FIT image. When a FIT is present,
the loader extracts the relevant subimages ("kernel", "ramdisk",
and "fdt") also support falling back to external files when possible.

Signed-off-by: Chali Anis <chalianis1@gmail.com>
---
 efi/payload/Kconfig |   1 +
 efi/payload/bootm.c | 125 ++++++++++++++++++++++++++++++++++++--------
 2 files changed, 104 insertions(+), 22 deletions(-)

diff --git a/efi/payload/Kconfig b/efi/payload/Kconfig
index e3a6a72d6a1c..4fb866210a69 100644
--- a/efi/payload/Kconfig
+++ b/efi/payload/Kconfig
@@ -32,6 +32,7 @@ config EFI_HANDOVER_PROTOCOL
 
 config EFI_PAYLOAD_BOOTM
 	bool "EFI bootm protocol"
+	select BOOTM_FITIMAGE
 	default !X86
 
 endif
diff --git a/efi/payload/bootm.c b/efi/payload/bootm.c
index d0e995be5d7c..3e9ccd42bf7f 100644
--- a/efi/payload/bootm.c
+++ b/efi/payload/bootm.c
@@ -34,11 +34,74 @@
 #include "image.h"
 #include "setup_header.h"
 
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
 static int efi_load_os(struct image_data *data,
 		       struct efi_loaded_image **loaded_image,
 		       efi_handle_t *handle)
 {
-	return efi_load_image(data->os_file, loaded_image, handle);
+	efi_status_t efiret;
+	efi_handle_t h;
+
+	if (!data->os_fit)
+		return efi_load_image(data->os_file, loaded_image, handle);
+
+	if (!data->fit_kernel)
+		return -ENOENT;
+
+	efiret = BS->load_image(false, efi_parent_image, efi_device_path,
+				(void *)data->fit_kernel, data->fit_kernel_size, &h);
+	if (EFI_ERROR(efiret)) {
+		pr_err("failed to LoadImage: %s\n", efi_strerror(efiret));
+		goto out_mem;
+	};
+
+	efiret = BS->open_protocol(h, &efi_loaded_image_protocol_guid,
+				   (void **)loaded_image, efi_parent_image,
+				   NULL, EFI_OPEN_PROTOCOL_GET_PROTOCOL);
+	if (EFI_ERROR(efiret)) {
+		pr_err("failed to OpenProtocol: %s\n", efi_strerror(efiret));
+		goto out_unload;
+	}
+
+	*handle = h;
+
+	return 0;
+
+out_unload:
+	BS->unload_image(h);
+out_mem:
+	return -efi_errno(efiret);
 }
 
 static int efi_load_ramdisk(struct image_data *data, void **initrd)
@@ -47,17 +110,26 @@ static int efi_load_ramdisk(struct image_data *data, void **initrd)
 	void *initrd_mem;
 	int ret;
 
-	if (!data->initrd_file)
-		return 0;
-
-	pr_info("Loading ramdisk from '%s'\n", data->initrd_file);
-
-	initrd_mem = read_file(data->initrd_file, &initrd_size);
-	if (!initrd_mem) {
-		ret = -errno;
-		pr_err("Failed to read initrd from file '%s': %m\n",
-		       data->initrd_file);
-		return ret;
+	if (ramdisk_is_fit(data)) {
+		ret = fit_open_image(data->os_fit, data->fit_config, "ramdisk",
+				     (const void **)&initrd_mem, &initrd_size);
+		if (ret) {
+			pr_err("Cannot open ramdisk image in FIT image: %m\n");
+			return ret;
+		}
+	} else {
+		if (!data->initrd_file)
+			return 0;
+
+		pr_info("Loading ramdisk from '%s'\n", data->initrd_file);
+
+		initrd_mem = read_file(data->initrd_file, &initrd_size);
+		if (!initrd_mem) {
+			ret = -errno;
+			pr_err("Failed to read initrd from file '%s': %m\n",
+			       data->initrd_file);
+			return ret;
+		}
 	}
 
 	ret = efi_initrd_register(initrd_mem, initrd_size);
@@ -84,16 +156,25 @@ static int efi_load_fdt(struct image_data *data, void **fdt)
 	unsigned long of_size;
 	int ret;
 
-	if (!data->oftree_file)
-		return 0;
-
-	pr_info("Loading devicetree from '%s'\n", data->oftree_file);
-
-	of_tree = read_file(data->oftree_file, &of_size);
-	if (!of_tree) {
-		ret = -errno;
-		pr_err("Failed to read oftree: %m\n");
-		return ret;
+	if (fdt_is_fit(data)) {
+		ret = fit_open_image(data->os_fit, data->fit_config, "fdt",
+				     (const void **)&of_tree, &of_size);
+		if (ret) {
+			pr_err("Cannot open FDT image in FIT image: %m\n");
+			return ret;
+		}
+	} else {
+		if (!data->oftree_file)
+			return 0;
+
+		pr_info("Loading devicetree from '%s'\n", data->oftree_file);
+
+		of_tree = read_file(data->oftree_file, &of_size);
+		if (!of_tree) {
+			ret = -errno;
+			pr_err("Failed to read oftree: %m\n");
+			return ret;
+		}
 	}
 
 	efiret = BS->allocate_pages(EFI_ALLOCATE_ANY_PAGES,
-- 
2.34.1



