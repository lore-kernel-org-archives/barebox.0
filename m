Delivery-date: Tue, 16 Sep 2025 06:55:55 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyNjP-003ZIb-2d
	for lore@lore.pengutronix.de;
	Tue, 16 Sep 2025 06:55:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyNjO-0004jF-Qz
	for lore@pengutronix.de; Tue, 16 Sep 2025 06:55:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=A43DIRn0qAMn3zS8Q5GNaI7hskI4fR8j4LUrNjuUSIU=; b=kw8UvbHkqQRZ7jlCHY9ryLVGTi
	7UqrHhHKPjmuGdk7eL2Ih53ghiYW3EpMj/BpGZRKa0vZ0MnCWxvaBJH4wnnir1ZQcWxIJdcpOL7a7
	x6eD9tzKr6QRVhiddH+8Cd/2wwKG1+3CbFbb83ZQPpniC1CShIujmOE41oTG7qEV+Juqd/NfIqLnn
	cIpgmim1tEHg+FVmw7eS7PoBubZCrvJ6R07J+RvJQuuZyKiI7TiFkM8FN+ML45INM4pIJ7CvRfi/x
	RyC+wBMjKrIY5uxEEBXsEjN5SGEeTe5dLqHwiOkFk3eR/ZwBenCYOxu3TlLOA0KF2VYLNYVwxbjU5
	DUo2/mtw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyNiq-00000006kRk-34ui;
	Tue, 16 Sep 2025 04:55:20 +0000
Received: from mail-wr1-x435.google.com ([2a00:1450:4864:20::435])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyNin-00000006kPv-3FNQ
	for barebox@lists.infradead.org;
	Tue, 16 Sep 2025 04:55:18 +0000
Received: by mail-wr1-x435.google.com with SMTP id ffacd0b85a97d-3ea3e223ba2so1802563f8f.2
        for <barebox@lists.infradead.org>; Mon, 15 Sep 2025 21:55:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757998516; x=1758603316; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=A43DIRn0qAMn3zS8Q5GNaI7hskI4fR8j4LUrNjuUSIU=;
        b=e5u1r5a58f/TvodSI369MaIqjlku4lNNvMIa0izRjlFeAMjF75uPTvssGbYORm89jm
         /9S5jVYlGzfYuqqD0Xa4EiDsOO/5PlsBmu6O/oRVz6TS2jVt8hIGUzYHcQ5ba+pg0QBD
         1KVUS3Rf3kJ9KanrRvkT45nqZbeWnSusTQxaFc9Fx1kqZxFdgWL8DqVfPYotW17zaG9i
         3tyr2+JYaXnkMREei1yb9jI+Q8gnBsU4wx+nyjGP8wm0iuzis71/cWzEO8dsTVUaU5Gt
         dy9QzgnWD5N6rxYGvwMVYhKY5yXGeYpo2CrNdyKxJpSN+6lCxrOpLYq496+YUtoYVLyy
         d9CA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757998516; x=1758603316;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=A43DIRn0qAMn3zS8Q5GNaI7hskI4fR8j4LUrNjuUSIU=;
        b=Q9xIDovK0G6huXuIhLAB7hjsz4gwVYQJbQXIiqcFyYAEhY1LAWan17GF6n7m7+B3aJ
         AIX1TNiF2tcLYCjq80VqQAAUE3u2S8zEM8GZddM5CvBiqewyYIymz74cu7FcdOjHN4Pe
         2mcgdErg7RDalB6LxWQelWaTqIMCjQ1eqJzlQfYbcz9f2qhWu/rjLc6m6Vmxqmmo98Ks
         6q2ETeWmMTR8eo4MBtRDIlEiMTUHe0yPmX6rCJIueQysc0J+r+kwo4sOVb1kCo8Z498+
         f+eztr81pcfCDV/TkbKXxEKGf7CQq3MbXqMGfC9UwvC2jhwy2ZzL2WQ1aMhbQo754fFb
         1rHA==
X-Gm-Message-State: AOJu0YyA0DkgsghT6oxRFpAjgIjt9UPcvrUQntaN7H+9/z3PrgJ7X6tp
	u7AryljEuoBiqQttpOgzU81AZ44vlGwMrLEeyVf2awGBvgerIs9RIllC28Y+mCCq
X-Gm-Gg: ASbGncsKPCwqd9ff8z3TEEqsSw/x0eZ3p3lHeQmWb1F4gmrPA822dWQpsxF5AjzTgfG
	+kemSPJ9j//Jz3NRdfnu3t85AvzpmwJ9f2fQVAXjYHrX4QdOUOt4VTQNL7gx9Kmx11iSgweNqWF
	xTICp40wNzn+H0lI6//W3iZ9Tzq1OjE+hNwuX2IxHuhHK0oyd0hdrIeZ77CjNOKHcSCRBwgSI++
	X7cPLyhUsL5cLTNCdbClpiw2JJJKsfv6iMuIa/1uTQBXPpF9qcOFMzCzk0CA7bO3bjSdblQPkK/
	1HyHHdpwAqmdSBsDofFvGWrJU4UtmUd4VhYbdLNtDVXq2PcvOGcumBXg8AZrIU4/ylWD2l38X7k
	OsfIUfWyBvM5pPLCTpzcG66nPkflYTmwcfE6XqAXm+xGG1aGCUKBJbjSoFjM1cO4hJvxUBSjTfm
	8dcUyOVpVZ7Vu0O/Z0wpZHvg==
X-Google-Smtp-Source: AGHT+IFraQJ5R7DZ6zaFMV5NKFwsM3rC5UAoxvJEwxOXlhFpCmfHPtHZk9T2mQvKhAtJEclVA+ApMg==
X-Received: by 2002:a05:6000:4022:b0:3eb:60a6:3167 with SMTP id ffacd0b85a97d-3eb60a63420mr3239380f8f.32.1757998516033;
        Mon, 15 Sep 2025 21:55:16 -0700 (PDT)
Received: from Latitude-7490.ht.home ([178.132.106.74])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3e7607cd0a7sm20123525f8f.39.2025.09.15.21.55.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Sep 2025 21:55:14 -0700 (PDT)
From: chalianis1@gmail.com
To: s.hauer@pengutronix.de,
	a.fatoum@barebox.org
Cc: barebox@lists.infradead.org,
	Chali Anis <chalianis1@gmail.com>
Date: Tue, 16 Sep 2025 00:54:52 -0400
Message-Id: <20250916045500.907542-4-chalianis1@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250916045500.907542-1-chalianis1@gmail.com>
References: <20250916045500.907542-1-chalianis1@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250915_215517_833987_7A7CC3AF 
X-CRM114-Status: GOOD (  20.63  )
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
Subject: [PATCH v4 04/12] efi: payload: add support for fit image
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



