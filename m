Delivery-date: Mon, 06 Oct 2025 06:16:14 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v5cdy-004lsd-2g
	for lore@lore.pengutronix.de;
	Mon, 06 Oct 2025 06:16:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v5cdx-0002u5-UI
	for lore@pengutronix.de; Mon, 06 Oct 2025 06:16:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=r1y1SHWqCMMeKwHmiuTgysHb+0PiiA5opO1wORxzS8c=; b=oysaNvYz97yR8jCn6mEISbu3gK
	kbW7DP7asMpEXqXqFQD+LAmwT9LkQeEGzOTdmdNnCIAQbNbjMZ4YIRcRhXdXjKddBWbzV7Mm7DrbN
	4/zENlqTKBBEc+i5SBYaTUvzxQnIzDgpMIEsNOejPNyYwRE0puqXAXdgl46UswZ85JA6JoWA59mh4
	xevjpL6RKLuVO/dO3aOP8Bn2urSS/cLQCo3qHp7ZkSVevuagR7l74BB4MM9HaWR8AxP8S74rfjUl/
	Rz9KKPfy0nQY8+WBcWVI4Y+Sq2vUYPNvatWCzl7hdWXQLzSu4mku9DXD4w1NuNDBU4+du84gKELsm
	CAL1IFwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5cdM-0000000GuQB-0awy;
	Mon, 06 Oct 2025 04:15:36 +0000
Received: from mail-qv1-xf30.google.com ([2607:f8b0:4864:20::f30])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5cdG-0000000GuKp-0TNW
	for barebox@lists.infradead.org;
	Mon, 06 Oct 2025 04:15:32 +0000
Received: by mail-qv1-xf30.google.com with SMTP id 6a1803df08f44-86be8a110f5so46929966d6.3
        for <barebox@lists.infradead.org>; Sun, 05 Oct 2025 21:15:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759724128; x=1760328928; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=r1y1SHWqCMMeKwHmiuTgysHb+0PiiA5opO1wORxzS8c=;
        b=nVoy/YG638U5I7V7+Awf01x0XIo/DSfOHQVo+C+4+NdtB7fuC6xR6gZbbh3Wq6oTN7
         RRB7IQYoFTF9YkOpIxTvxyyocp6YMH6TWCa3Uu6AmVpWDC4F4y3TJm0HuM6Ssk+Isefx
         KmsxeH3vzDQYq4yPAar/XA1WesRoDE7TkXEyJpZWgAXZNOFWHCEo6EAl0vIrMIpgd8+n
         A9+2l1MiZljUw34xsYivE+i4dlimzrFBT9csm5+wdXBRywOxO4UzT4+RWcV0zj0hYHEf
         yzANbA2adnifp6YVg9mdx+wmsV6fELIOK4QyKRdvojmTaV6dLeRvUM1P5/OYelxqS9ok
         JdlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759724128; x=1760328928;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=r1y1SHWqCMMeKwHmiuTgysHb+0PiiA5opO1wORxzS8c=;
        b=gVIBdCTsZSk3kYDSzjtpoIGg5YDxikoDUx35JfAznFg4icjy2Z3ULZKyaMYasI4hyS
         7gKBQ0k49uGtr6d2/N8YLxTalVWmvYH7oBp/SVxRYSZfpiLwg0rfXFN5scaUoeZEX9ss
         1dIGvbI4BeU7fMhT/gqRzYbyMN1u6w6J/sDsWmMYt/ESlMtuSf/2hhnxxkmnMTTPuA2T
         r0G5x2U/uZ2mG5BVYm++Pc3GHVos8HTMjnDodV/NyIngjHQKSIXANeyqhAKvc7anNz+Y
         XshFARynA5FhEf2F4U5koh1x+LVnqOLu1zmOppMBk4M6roNLtcmZ9y8kNIi7RD6JtVih
         VdrQ==
X-Gm-Message-State: AOJu0Yy47YuQ9ldMBZOLgT/Xg4l7pYeej70UOer0XJSWxy8eS9hrV49X
	q3BhoN6F2lAE54fTmd6SUC88tNl1Bdj+qgjIvqmX7acrvbcR0tc93MCE
X-Gm-Gg: ASbGncvqH5l2eAS+6kvXGlBO7t99vMWHmmmnJJ2YBqPB/CTwEhT33gBg7TiY8IHtGaH
	7wfwTyA5Yc9E2Dsz/BhcOkRyUnidR2y740GPXa0KQz7ih/p24WLn+Q1ccBkmnWi5NiJVPylRLNE
	s9YHP+z6cFRVbzsRTQbcZ/SQGpwiVY98N/iEaYW1p6+TTAJjvaH7T2QXR06ZJVKDRqDwQjJlZ8N
	AjAw4q8tBdkAN7l9kLM4TUnuBMz8CZDikZ/YHfL2tTZGeUFFWRSF04FsBh6c+lHnFJxPbeNi+h9
	HP4tkpEVsd3IFspXTvRby4DgaURPx/SxsvJOlnlN+u/gp8dPiCnooqpZqYkZK/g701dXCTC4Lis
	bbgrAoJXh+1eGTu1EQO4DO32I1eMC+bsWNsidqNgtd//7j44j6dJNY/xuVcC+91PqPxfdLnAZ42
	I=
X-Google-Smtp-Source: AGHT+IGi1gd6Yw4fpyWHolMUa/enDLTobvCkK0nwjjWrUpk3MEHXNAmk6I5SkerdX4h1VB0YwnW3dQ==
X-Received: by 2002:ac8:5885:0:b0:4b5:fa2e:380f with SMTP id d75a77b69052e-4e576a40192mr165216711cf.27.1759724127688;
        Sun, 05 Oct 2025 21:15:27 -0700 (PDT)
Received: from Latitude-7490.ht.home ([2607:fa49:8c41:2600:1608:a712:ade2:2b30])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4e55cadcecdsm119506221cf.23.2025.10.05.21.15.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Oct 2025 21:15:27 -0700 (PDT)
From: chalianis1@gmail.com
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org,
	Ahmad Fatoum <a.fatoum@barebox.org>,
	Chali Anis <chalianis1@gmail.com>
Date: Mon,  6 Oct 2025 00:15:10 -0400
Message-Id: <20251006041512.1360284-9-chalianis1@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251006041512.1360284-1-chalianis1@gmail.com>
References: <20251006041512.1360284-1-chalianis1@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251005_211530_317792_E175EBD7 
X-CRM114-Status: GOOD (  14.27  )
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
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 09/11] efi: payload: bootm: add support for fit image
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



