Delivery-date: Fri, 21 May 2021 18:36:25 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lk88P-0004pS-GH
	for lore@lore.pengutronix.de; Fri, 21 May 2021 18:36:25 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lk88O-0000q1-1j
	for lore@pengutronix.de; Fri, 21 May 2021 18:36:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5NGe9zal+SUDthJa63nkqugG3wJzjPA24NtRz86ZipE=; b=DdeNAXKFDV7MX4kO8IK2/NRFPr
	mKQgPuf+JOBzbYMzWTONpnYmQD+pm7uC2b2qa/TWFj4itHgl+5FRMVYQLSNwU7nFmu8J4eNlOS8+W
	iMGu5vz/d3sQK0Supwk6WLojQB5Qs++Xj10yitcwHGh5Hrx1Y+3XmkggJydNlTa8b/GxsjfNh/M1r
	A7SwK7DlPfNzofnkJcZDYty86z83s4aTJH1JcPEBtuHQdwMZbdAPIk/Rg97cIsNjt8OCpJTFLBO8g
	th4C0gUwp2Ooc2cl4UBg+rha/2p4V4rexwoo2WD6ns9299n5DXpaY3hVEH+RdtEX8HdWB3l4ReCYs
	j8rm/2yA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lk87O-000H3X-9x; Fri, 21 May 2021 16:35:22 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lk86r-000Guk-0V
 for barebox@desiato.infradead.org; Fri, 21 May 2021 16:34:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Sender:
 Reply-To:Cc:Content-Type:Content-ID:Content-Description;
 bh=mvcOPoB64DKssmH+kbHMEvODuQCWdECIM9htDrYpfS0=; b=YXUPLlDYeSbAm4sSJ4Aqp6GqHY
 fNC0nMRXjGkgp/jV6p3ynEZxWtKziYL8eF1yRBEQixvEwtQR2aomCvvOG6LIscJpdGAsJablajtz/
 h0pYIigdLasqLkw1Ya5WQ1QPTrsEoLthe+BfYR3QhIalSm/ToL2sdHBpUSjG8s05M5c1Lu4slyE9R
 sUvNMktXRMxk5uQb8VxC6efunNI20Q0r/Oya8uKwsgxsLX/Ku3SiK+vH7WVu9mJLy+V3ueOIRANqZ
 xPHBgYdZCHpu+QTIbrXl3BtNMvSy+MpqOYk1SRXmqRs+92Pawu524A/MRGKwQs4VsTkF0dG6AbXWu
 sJO7WNqQ==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lk86m-00HHUQ-Dm
 for barebox@lists.infradead.org; Fri, 21 May 2021 16:34:47 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1lk86g-0000MC-FP
 for barebox@lists.infradead.org; Fri, 21 May 2021 18:34:38 +0200
Received: from mfe by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1lk86g-0004XR-62
 for barebox@lists.infradead.org; Fri, 21 May 2021 18:34:38 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 21 May 2021 18:34:34 +0200
Message-Id: <20210521163435.17365-4-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210521163435.17365-1-m.felsch@pengutronix.de>
References: <20210521163435.17365-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210521_093444_674557_DA91DAB1 
X-CRM114-Status: GOOD (  16.28  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 3/4] common: bootm: replace printf by pr_err/info
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This allows us to control the output behaviour e.g. booting silently
to improve boot time. Furthermore it adds a 'ERROR:' prefixed output
in case of pr_err which is colored as well (depending on your
terminal). This helps us to identify unwanted behaviour.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 common/bootm.c | 88 +++++++++++++++++++++++++-------------------------
 1 file changed, 44 insertions(+), 44 deletions(-)

diff --git a/common/bootm.c b/common/bootm.c
index 092116beb9..8948ddbca2 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -111,7 +111,7 @@ int bootm_load_os(struct image_data *data, unsigned long load_address)
 		data->os_res = request_sdram_region("kernel",
 				load_address, kernel_size);
 		if (!data->os_res) {
-			printf("unable to request SDRAM region for kernel at"
+			pr_err("unable to request SDRAM region for kernel at"
 					"0x%08llx-0x%08llx\n",
 				(unsigned long long)load_address,
 				(unsigned long long)load_address + kernel_size - 1);
@@ -175,7 +175,7 @@ static int bootm_open_initrd_uimage(struct image_data *data)
 		if (bootm_get_verify_mode() > BOOTM_VERIFY_NONE) {
 			ret = uimage_verify(data->initrd);
 			if (ret) {
-				printf("Checking data crc failed with %s\n",
+				pr_err("Checking data crc failed with %s\n",
 					strerror(-ret));
 				return ret;
 			}
@@ -231,21 +231,21 @@ int bootm_load_initrd(struct image_data *data, unsigned long load_address)
 				load_address,
 				initrd_size);
 		if (!data->initrd_res) {
-			printf("unable to request SDRAM region for initrd at"
+			pr_err("unable to request SDRAM region for initrd at"
 					"0x%08llx-0x%08llx\n",
 				(unsigned long long)load_address,
 				(unsigned long long)load_address + initrd_size - 1);
 			return -ENOMEM;
 		}
 		memcpy((void *)load_address, initrd, initrd_size);
-		printf("Loaded initrd from FIT image\n");
+		pr_info("Loaded initrd from FIT image\n");
 		goto done1;
 	}
 
 	type = file_name_detect_type(data->initrd_file);
 
 	if ((int)type < 0) {
-		printf("could not open %s: %s\n", data->initrd_file,
+		pr_err("could not open %s: %s\n", data->initrd_file,
 				strerror(-type));
 		return (int)type;
 	}
@@ -254,8 +254,8 @@ int bootm_load_initrd(struct image_data *data, unsigned long load_address)
 		int num;
 		ret = bootm_open_initrd_uimage(data);
 		if (ret) {
-			printf("loading initrd failed with %s\n",
-					strerror(-ret));
+			pr_err("loading initrd failed with %s\n",
+			       strerror(-ret));
 			return ret;
 		}
 
@@ -275,13 +275,13 @@ int bootm_load_initrd(struct image_data *data, unsigned long load_address)
 
 done:
 
-	printf("Loaded initrd %s '%s'", file_type_to_string(type),
+	pr_info("Loaded initrd %s '%s'", file_type_to_string(type),
 	       data->initrd_file);
 	if (type == filetype_uimage && data->initrd->header.ih_type == IH_TYPE_MULTI)
-		printf(", multifile image %s", data->initrd_part);
-	printf("\n");
+		pr_info(", multifile image %s", data->initrd_part);
+	pr_info("\n");
 done1:
-	printf("initrd is at %pa-%pa\n",
+	pr_info("initrd is at %pa-%pa\n",
 		&data->initrd_res->start,
 		&data->initrd_res->end);
 
@@ -297,7 +297,7 @@ static int bootm_open_oftree_uimage(struct image_data *data, size_t *size,
 	struct uimage_handle *of_handle;
 	int release = 0;
 
-	printf("Loading devicetree from '%s'@%d\n", oftree, num);
+	pr_info("Loading devicetree from '%s'@%d\n", oftree, num);
 
 	if (!IS_ENABLED(CONFIG_BOOTM_OFTREE_UIMAGE))
 		return -EINVAL;
@@ -321,7 +321,7 @@ static int bootm_open_oftree_uimage(struct image_data *data, size_t *size,
 
 	ft = file_detect_type(*fdt, *size);
 	if (ft != filetype_oftree) {
-		printf("%s is not an oftree but %s\n",
+		pr_err("%s is not an oftree but %s\n",
 			data->oftree_file, file_type_to_string(ft));
 		free(*fdt);
 		return -EINVAL;
@@ -367,8 +367,8 @@ void *bootm_get_devicetree(struct image_data *data)
 		type = file_name_detect_type(data->oftree_file);
 
 		if ((int)type < 0) {
-			printf("could not open %s: %s\n", data->oftree_file,
-					strerror(-type));
+			pr_err("could not open %s: %s\n", data->oftree_file,
+			       strerror(-type));
 			return ERR_PTR((int)type);
 		}
 
@@ -377,7 +377,7 @@ void *bootm_get_devicetree(struct image_data *data)
 			ret = bootm_open_oftree_uimage(data, &size, &oftree);
 			break;
 		case filetype_oftree:
-			printf("Loading devicetree from '%s'\n", data->oftree_file);
+			pr_info("Loading devicetree from '%s'\n", data->oftree_file);
 			ret = read_file_2(data->oftree_file, &size, (void *)&oftree,
 					  FILESIZE_MAX);
 			break;
@@ -448,7 +448,7 @@ int bootm_load_devicetree(struct image_data *data, void *fdt,
 	data->oftree_res = request_sdram_region("oftree", load_address,
 			fdt_size);
 	if (!data->oftree_res) {
-		printf("unable to request SDRAM region for device tree at"
+		pr_err("unable to request SDRAM region for device tree at"
 				"0x%08llx-0x%08llx\n",
 			(unsigned long long)load_address,
 			(unsigned long long)load_address + fdt_size - 1);
@@ -497,7 +497,7 @@ static int bootm_open_os_uimage(struct image_data *data)
 	if (bootm_get_verify_mode() > BOOTM_VERIFY_NONE) {
 		ret = uimage_verify(data->os);
 		if (ret) {
-			printf("Checking data crc failed with %s\n",
+			pr_err("Checking data crc failed with %s\n",
 					strerror(-ret));
 			return ret;
 		}
@@ -506,7 +506,7 @@ static int bootm_open_os_uimage(struct image_data *data)
 	uimage_print_contents(data->os);
 
 	if (IH_ARCH == IH_ARCH_INVALID || data->os->header.ih_arch != IH_ARCH) {
-		printf("Unsupported Architecture 0x%x\n",
+		pr_err("Unsupported Architecture 0x%x\n",
 		       data->os->header.ih_arch);
 		return -EINVAL;
 	}
@@ -526,7 +526,7 @@ static int bootm_open_elf(struct image_data *data)
 	if (IS_ERR(data->elf))
 		return PTR_ERR(data->elf);
 
-	printf("Entry Point:  %08llx\n", data->elf->entry);
+	pr_info("Entry Point:  %08llx\n", data->elf->entry);
 
 	data->os_address = data->elf->entry;
 
@@ -578,7 +578,7 @@ int bootm_boot(struct bootm_data *bootm_data)
 	size_t size;
 
 	if (!bootm_data->os_file) {
-		printf("no image given\n");
+		pr_err("no image given\n");
 		return -ENOENT;
 	}
 
@@ -599,7 +599,7 @@ int bootm_boot(struct bootm_data *bootm_data)
 
 	ret = read_file_2(data->os_file, &size, &data->os_header, PAGE_SIZE);
 	if (ret < 0 && ret != -EFBIG) {
-		printf("could not open %s: %s\n", data->os_file,
+		pr_err("could not open %s: %s\n", data->os_file,
 				strerror(-ret));
 		goto err_out;
 	}
@@ -609,7 +609,7 @@ int bootm_boot(struct bootm_data *bootm_data)
 	os_type = file_detect_type(data->os_header, PAGE_SIZE);
 
 	if (!data->force && os_type == filetype_unknown) {
-		printf("Unknown OS filetype (try -f)\n");
+		pr_err("Unknown OS filetype (try -f)\n");
 		ret = -EINVAL;
 		goto err_out;
 	}
@@ -625,7 +625,7 @@ int bootm_boot(struct bootm_data *bootm_data)
 		data->initrd_file = NULL;
 		data->tee_file = NULL;
 		if (os_type != filetype_oftree) {
-			printf("Signed boot and image is no FIT image, aborting\n");
+			pr_err("Signed boot and image is no FIT image, aborting\n");
 			ret = -EINVAL;
 			goto err_out;
 		}
@@ -637,7 +637,7 @@ int bootm_boot(struct bootm_data *bootm_data)
 
 		fit = fit_open(data->os_file, data->verbose, data->verify);
 		if (IS_ERR(fit)) {
-			printf("Loading FIT image %s failed with: %pe\n", data->os_file, fit);
+			pr_err("Loading FIT image %s failed with: %pe\n", data->os_file, fit);
 			ret = PTR_ERR(fit);
 			goto err_out;
 		}
@@ -647,7 +647,7 @@ int bootm_boot(struct bootm_data *bootm_data)
 		data->fit_config = fit_open_configuration(data->os_fit,
 							  data->os_part);
 		if (IS_ERR(data->fit_config)) {
-			printf("Cannot open FIT image configuration '%s'\n",
+			pr_err("Cannot open FIT image configuration '%s'\n",
 			       data->os_part ? data->os_part : "default");
 			ret = PTR_ERR(data->fit_config);
 			goto err_out;
@@ -663,8 +663,8 @@ int bootm_boot(struct bootm_data *bootm_data)
 						    kernel_img,
 						    "load", &data->os_address);
 			if (!ret)
-				printf("Load address from FIT '%s': 0x%lx\n",
-				       kernel_img, data->os_address);
+				pr_info("Load address from FIT '%s': 0x%lx\n",
+					kernel_img, data->os_address);
 			/* Note: Error case uses default value. */
 		}
 		if (data->os_entry == UIMAGE_SOME_ADDRESS) {
@@ -675,8 +675,8 @@ int bootm_boot(struct bootm_data *bootm_data)
 						    "entry", &entry);
 			if (!ret) {
 				data->os_entry = entry - data->os_address;
-				printf("Entry address from FIT '%s': 0x%lx\n",
-				       kernel_img, entry);
+				pr_info("Entry address from FIT '%s': 0x%lx\n",
+					kernel_img, entry);
 			}
 			/* Note: Error case uses default value. */
 		}
@@ -685,8 +685,8 @@ int bootm_boot(struct bootm_data *bootm_data)
 	if (os_type == filetype_uimage) {
 		ret = bootm_open_os_uimage(data);
 		if (ret) {
-			printf("Loading OS image failed with: %s\n",
-					strerror(-ret));
+			pr_err("Loading OS image failed with: %s\n",
+			       strerror(-ret));
 			goto err_out;
 		}
 	}
@@ -694,8 +694,8 @@ int bootm_boot(struct bootm_data *bootm_data)
 	if (os_type == filetype_elf) {
 		ret = bootm_open_elf(data);
 		if (ret) {
-			printf("Loading ELF image failed with: %s\n",
-					strerror(-ret));
+			pr_err("Loading ELF image failed with: %s\n",
+			       strerror(-ret));
 			data->elf = NULL;
 			goto err_out;
 		}
@@ -724,7 +724,7 @@ int bootm_boot(struct bootm_data *bootm_data)
 			rootarg = path_get_linux_rootarg(data->os_file);
 		}
 		if (!IS_ERR(rootarg)) {
-			printf("Adding \"%s\" to Kernel commandline\n", rootarg);
+			pr_info("Adding \"%s\" to Kernel commandline\n", rootarg);
 			globalvar_add_simple("linux.bootargs.bootm.appendroot",
 					     rootarg);
 			free(rootarg);
@@ -736,7 +736,7 @@ int bootm_boot(struct bootm_data *bootm_data)
 		char *machine_id_bootarg;
 
 		if (!machine_id) {
-			printf("Providing machine id is enabled but no machine id set\n");
+			pr_err("Providing machine id is enabled but no machine id set\n");
 			ret = -EINVAL;
 			goto err_out;
 		}
@@ -746,12 +746,12 @@ int bootm_boot(struct bootm_data *bootm_data)
 		free(machine_id_bootarg);
 	}
 
-	printf("\nLoading %s '%s'", file_type_to_string(os_type),
-			data->os_file);
+	pr_info("\nLoading %s '%s'", file_type_to_string(os_type),
+		data->os_file);
 	if (os_type == filetype_uimage &&
 			data->os->header.ih_type == IH_TYPE_MULTI)
-		printf(", multifile image %d", uimage_part_num(data->os_part));
-	printf("\n");
+		pr_info(", multifile image %d", uimage_part_num(data->os_part));
+	pr_info("\n");
 
 	if (data->os_address == UIMAGE_SOME_ADDRESS)
 		data->os_address = UIMAGE_INVALID_ADDRESS;
@@ -760,10 +760,10 @@ int bootm_boot(struct bootm_data *bootm_data)
 
 	handler = bootm_find_handler(os_type, data);
 	if (!handler) {
-		printf("no image handler found for image type %s\n",
-			file_type_to_string(os_type));
+		pr_err("no image handler found for image type %s\n",
+		       file_type_to_string(os_type));
 		if (os_type == filetype_uimage)
-			printf("and OS type: %d\n", data->os->header.ih_os);
+			pr_err("and OS type: %d\n", data->os->header.ih_os);
 		ret = -ENODEV;
 		goto err_out;
 	}
@@ -775,7 +775,7 @@ int bootm_boot(struct bootm_data *bootm_data)
 
 	ret = handler->bootm(data);
 	if (data->dryrun)
-		printf("Dryrun. Aborted\n");
+		pr_info("Dryrun. Aborted\n");
 
 err_out:
 	if (data->os_res)
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

