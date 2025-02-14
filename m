Delivery-date: Fri, 14 Feb 2025 11:49:55 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1titGd-002EjA-2d
	for lore@lore.pengutronix.de;
	Fri, 14 Feb 2025 11:49:55 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1titGc-00059C-60
	for lore@pengutronix.de; Fri, 14 Feb 2025 11:49:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=igOOaI6GXXHbadV0FhB0fZ0nUHCL9DakYW93Ub+fwRA=; b=pF55eMUUQ4Y3GrufMHaq0uTd43
	O0m5H7eiacKjWd2ZvVg47hQ6iPkdmkuhQ+BEv57ujSpE9nYLFUaQWOkuSD4vLKTVjjUu9XicW7AI2
	Tzf4ze05eXag0aBqNGY2B8zBNrYca/U1jlByijnXw0ojI8XDl59/rFgce0r9BT+6qlfCcMT/x6Ihr
	/dqd0GLK1AyA74sazMKvQ7wgQSMmrkhYFG1U2Mi/+8cLaAxWSOrAYf8NpORnxLZ7ktsGmNjmRLylu
	chfIv2Mf9MRYbttwh9ULdrgU982JM0tqpVhmf/UwMB6i99kYOLePqY+HU1iwyOoQURlJImPMYAdh9
	UgWrrkUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1titG1-0000000EYLz-3cWN;
	Fri, 14 Feb 2025 10:49:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1titF8-0000000EYES-1AV3
	for barebox@lists.infradead.org;
	Fri, 14 Feb 2025 10:48:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1titF7-0004Uy-2B; Fri, 14 Feb 2025 11:48:21 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1titF6-000u3i-2k;
	Fri, 14 Feb 2025 11:48:20 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1titF6-00CVIo-2T;
	Fri, 14 Feb 2025 11:48:20 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 14 Feb 2025 11:48:16 +0100
Message-Id: <20250214104817.2975052-7-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250214104817.2975052-1-a.fatoum@pengutronix.de>
References: <20250214104817.2975052-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250214_024822_470757_A62E0489 
X-CRM114-Status: GOOD (  16.30  )
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
X-Spam-Status: No, score=-6.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 6/7] bootm: retire bootm_has_initrd
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

All what's done by bootm_has_initrd can be folded into bootm_load_initrd
by having it return a special value (NULL) to indicate that no initrd
is available.

The advantage of doing it in one function is that it simplifies
overriding the initrd in a follow-up commit

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/lib32/bootm.c | 18 ++++++++----------
 arch/kvx/lib/bootm.c   | 23 +++++++++++------------
 common/booti.c         | 10 +++++-----
 common/bootm.c         | 35 ++++++++++++++---------------------
 include/bootm.h        |  4 ++--
 5 files changed, 40 insertions(+), 50 deletions(-)

diff --git a/arch/arm/lib32/bootm.c b/arch/arm/lib32/bootm.c
index aeb873a3a723..d3a4d99a5828 100644
--- a/arch/arm/lib32/bootm.c
+++ b/arch/arm/lib32/bootm.c
@@ -241,6 +241,7 @@ static int __do_bootm_linux(struct image_data *data, unsigned long free_mem,
 {
 	unsigned long kernel;
 	unsigned long initrd_start = 0, initrd_size = 0, initrd_end = 0;
+	const struct resource *initrd_res;
 	void *tee;
 	enum arm_security_state state = bootm_arm_security_state();
 	void *fdt_load_address = NULL;
@@ -259,16 +260,13 @@ static int __do_bootm_linux(struct image_data *data, unsigned long free_mem,
 		}
 	}
 
-	if (bootm_has_initrd(data)) {
-		ret = bootm_load_initrd(data, initrd_start);
-		if (ret)
-			return ret;
-	}
-
-	if (data->initrd_res) {
-		initrd_start = data->initrd_res->start;
-		initrd_end = data->initrd_res->end;
-		initrd_size = resource_size(data->initrd_res);
+	initrd_res = bootm_load_initrd(data, initrd_start);
+	if (IS_ERR(initrd_res)) {
+		return PTR_ERR(initrd_res);
+	} else if (initrd_res) {
+		initrd_start = initrd_res->start;
+		initrd_end = initrd_res->end;
+		initrd_size = resource_size(initrd_res);
 		free_mem = PAGE_ALIGN(initrd_end + 1);
 	}
 
diff --git a/arch/kvx/lib/bootm.c b/arch/kvx/lib/bootm.c
index 4c77f676ec0b..6c35b68f3d5d 100644
--- a/arch/kvx/lib/bootm.c
+++ b/arch/kvx/lib/bootm.c
@@ -54,6 +54,7 @@ static int do_boot_entry(struct image_data *data, boot_func_entry entry,
 
 static int do_boot_elf(struct image_data *data, struct elf_image *elf)
 {
+	const struct resource *initrd_res;
 	int ret;
 	void *fdt;
 	boot_func_entry entry;
@@ -61,21 +62,19 @@ static int do_boot_elf(struct image_data *data, struct elf_image *elf)
 
 	/* load initrd after the elf */
 	load_addr = PAGE_ALIGN((unsigned long) elf->high_addr);
-	if (bootm_has_initrd(data)) {
-		if (data->initrd_address != UIMAGE_INVALID_ADDRESS)
-			initrd_address = data->initrd_address;
-		else
-			initrd_address = load_addr;
+	if (data->initrd_address != UIMAGE_INVALID_ADDRESS)
+		initrd_address = data->initrd_address;
+	else
+		initrd_address = load_addr;
 
+	initrd_res = bootm_load_initrd(data, initrd_address);
+	if (IS_ERR(initrd_res)) {
+		printf("Failed to load initrd\n");
+		return ret;
+	} else if (initrd_res) {
 		printf("Loading initrd at 0x%lx\n", initrd_address);
-		ret = bootm_load_initrd(data, initrd_address);
-		if (ret) {
-			printf("Failed to load initrd\n");
-			return ret;
-		}
-
 		if (data->initrd_address == UIMAGE_INVALID_ADDRESS) {
-			load_addr += resource_size(data->initrd_res);
+			load_addr += resource_size(initrd_res);
 			load_addr = PAGE_ALIGN(load_addr);
 		}
 	}
diff --git a/common/booti.c b/common/booti.c
index e745ff696376..5efd4f97bbc2 100644
--- a/common/booti.c
+++ b/common/booti.c
@@ -58,12 +58,12 @@ void *booti_load_image(struct image_data *data, phys_addr_t *oftree)
 
 	if (oftree) {
 		unsigned long devicetree;
+		const struct resource *initrd_res;
 
-		if (bootm_has_initrd(data)) {
-			ret = bootm_load_initrd(data, image_end);
-			if (ret)
-				return ERR_PTR(ret);
-
+		initrd_res = bootm_load_initrd(data, image_end);
+		if (IS_ERR(initrd_res)) {
+			return ERR_CAST(initrd_res);
+		} else if (initrd_res) {
 			image_end += resource_size(data->initrd_res);
 			image_end = PAGE_ALIGN(image_end);
 		}
diff --git a/common/bootm.c b/common/bootm.c
index d24b18b41cb2..d2373f321c19 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -213,14 +213,6 @@ static bool fitconfig_has_ramdisk(struct image_data *data)
 	return fit_has_image(data->os_fit, data->fit_config, "ramdisk");
 }
 
-bool bootm_has_initrd(struct image_data *data)
-{
-	if (!IS_ENABLED(CONFIG_BOOTM_INITRD))
-		return false;
-
-	return fitconfig_has_ramdisk(data) || data->initrd_file;
-}
-
 static int bootm_open_initrd_uimage(struct image_data *data)
 {
 	int ret;
@@ -262,19 +254,17 @@ static int bootm_open_initrd_uimage(struct image_data *data)
  *
  * Return: 0 on success, negative error code otherwise
  */
-int bootm_load_initrd(struct image_data *data, unsigned long load_address)
+const struct resource *
+bootm_load_initrd(struct image_data *data, unsigned long load_address)
 {
 	enum filetype type;
 	int ret;
 
 	if (!IS_ENABLED(CONFIG_BOOTM_INITRD))
-		return -ENOSYS;
-
-	if (!bootm_has_initrd(data))
-		return -EINVAL;
+		return NULL;
 
 	if (data->initrd_res)
-		return 0;
+		return data->initrd_res;
 
 	if (fitconfig_has_ramdisk(data)) {
 		const void *initrd;
@@ -285,7 +275,7 @@ int bootm_load_initrd(struct image_data *data, unsigned long load_address)
 		if (ret) {
 			pr_err("Cannot open ramdisk image in FIT image: %s\n",
 					strerror(-ret));
-			return ret;
+			return ERR_PTR(ret);
 		}
 		data->initrd_res = request_sdram_region("initrd",
 				load_address,
@@ -295,17 +285,20 @@ int bootm_load_initrd(struct image_data *data, unsigned long load_address)
 					" 0x%08llx-0x%08llx\n",
 				(unsigned long long)load_address,
 				(unsigned long long)load_address + initrd_size - 1);
-			return -ENOMEM;
+			return ERR_PTR(-ENOMEM);
 		}
 		memcpy((void *)load_address, initrd, initrd_size);
 		pr_info("Loaded initrd from FIT image\n");
 		goto done1;
 	}
 
+	if (!data->initrd_file)
+		return NULL;
+
 	ret = file_name_detect_type(data->initrd_file, &type);
 	if (ret) {
 		pr_err("could not open initrd \"%s\": %s\n", data->initrd_file, strerror(-ret));
-		return ret;
+		return ERR_PTR(ret);
 	}
 
 	if (type == filetype_uimage) {
@@ -314,7 +307,7 @@ int bootm_load_initrd(struct image_data *data, unsigned long load_address)
 		if (ret) {
 			pr_err("loading initrd failed with %s\n",
 			       strerror(-ret));
-			return ret;
+			return ERR_PTR(ret);
 		}
 
 		num = uimage_part_num(data->initrd_part);
@@ -322,14 +315,14 @@ int bootm_load_initrd(struct image_data *data, unsigned long load_address)
 		data->initrd_res = uimage_load_to_sdram(data->initrd,
 			num, load_address);
 		if (!data->initrd_res)
-			return -ENOMEM;
+			return ERR_PTR(-ENOMEM);
 
 		goto done;
 	}
 
 	data->initrd_res = file_to_sdram(data->initrd_file, load_address);
 	if (!data->initrd_res)
-		return -ENOMEM;
+		return ERR_PTR(-ENOMEM);
 
 done:
 
@@ -343,7 +336,7 @@ int bootm_load_initrd(struct image_data *data, unsigned long load_address)
 		&data->initrd_res->start,
 		&data->initrd_res->end);
 
-	return 0;
+	return data->initrd_res;
 }
 
 static int bootm_open_oftree_uimage(struct image_data *data, size_t *size,
diff --git a/include/bootm.h b/include/bootm.h
index fdec137771f0..b86d06b0f55d 100644
--- a/include/bootm.h
+++ b/include/bootm.h
@@ -142,8 +142,8 @@ void bootm_data_restore_defaults(const struct bootm_data *data);
 
 int bootm_load_os(struct image_data *data, unsigned long load_address);
 
-bool bootm_has_initrd(struct image_data *data);
-int bootm_load_initrd(struct image_data *data, unsigned long load_address);
+const struct resource *
+bootm_load_initrd(struct image_data *data, unsigned long load_address);
 
 void *bootm_get_devicetree(struct image_data *data);
 int bootm_load_devicetree(struct image_data *data, void *fdt,
-- 
2.39.5



