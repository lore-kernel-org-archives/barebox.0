Delivery-date: Mon, 07 Apr 2025 15:08:10 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u1mCw-009YcQ-0A
	for lore@lore.pengutronix.de;
	Mon, 07 Apr 2025 15:08:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u1mCv-0001n6-2k
	for lore@pengutronix.de; Mon, 07 Apr 2025 15:08:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0Fojq1JyGOWqeB16iil243ZsmhkF7uKD1uSZmj2qAp4=; b=xkK+dhWWo+9+zb8ztFMZxucKpL
	5INrgl7VK3DQDzSqgAT32QQwsUM4xMv+nU9HDfWzpKsHzbMO3pAci3wP5KXFmsBkBWt/ZqVewgqJJ
	RUFD36WN5pW9/giLlBeyd9LH8D1hzu3KG7QQqhp3KDz3h/47R2fn6ZkxLOXV4DVTpI9n0E63GY+qx
	QZvUF9vPW9PhhSbzVpjkTVr+V4dBt6VDbFxJdOxBO89UgG13Ajz0aJYKqJGytkCuAVMf7sYl+CEvm
	bQ9JA55TfDSvNBsC52NoxcAwI11IP65YRT8FgycjB2XdxKHtrYHhnaonWrqPD+v2D2vj70orYOVX1
	YKAagvcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u1mCM-00000000Q9X-34TN;
	Mon, 07 Apr 2025 13:07:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u1mCJ-00000000Q7k-3am5
	for barebox@lists.infradead.org;
	Mon, 07 Apr 2025 13:07:33 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u1mCI-0001bp-MD; Mon, 07 Apr 2025 15:07:30 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u1mCI-003lUt-1b;
	Mon, 07 Apr 2025 15:07:30 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u1mCI-00C7ku-1E;
	Mon, 07 Apr 2025 15:07:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon,  7 Apr 2025 15:07:29 +0200
Message-Id: <20250407130729.2889508-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250407130729.2889508-1-s.hauer@pengutronix.de>
References: <20250407130729.2889508-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250407_060732_051492_90C980D4 
X-CRM114-Status: GOOD (  19.00  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] bootm: create generic FIT image handler
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

So far every architecture registers its own image handler for handling
FIT images. FIT is a container format and as such we can create a
generic handler for it. To find the correct handler for the kernel we
then have to detect the OS file type from the kernel within the fit
image instead of the original image.

For the generic FIT handler repurpose the sandbox FIT image handler. The
code therein was bogus anyway as it tried to open the FIT image which
will already be opened by the generic code. Remove that stuff and just
print an error message.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/lib32/bootm.c    |  6 ------
 arch/arm/lib64/armlinux.c |  9 ---------
 arch/kvx/lib/bootm.c      | 28 +++++-----------------------
 arch/riscv/lib/bootm.c    |  9 ---------
 common/bootm.c            | 12 +++++-------
 common/image-fit.c        | 33 +++++++--------------------------
 6 files changed, 17 insertions(+), 80 deletions(-)

diff --git a/arch/arm/lib32/bootm.c b/arch/arm/lib32/bootm.c
index 5be98b920b..485041a7eb 100644
--- a/arch/arm/lib32/bootm.c
+++ b/arch/arm/lib32/bootm.c
@@ -729,12 +729,6 @@ BAREBOX_MAGICVAR(aimage_noverwrite_bootargs, "Disable overwrite of the bootargs
 BAREBOX_MAGICVAR(aimage_noverwrite_tags, "Disable overwrite of the tags addr with the one present in aimage");
 #endif
 
-static struct image_handler arm_fit_handler = {
-        .name = "FIT image",
-        .bootm = do_bootm_linux,
-        .filetype = filetype_oftree,
-};
-
 static struct binfmt_hook binfmt_aimage_hook = {
 	.type = filetype_aimage,
 	.exec = "bootm",
diff --git a/arch/arm/lib64/armlinux.c b/arch/arm/lib64/armlinux.c
index 3b108b21cb..5feee9c24f 100644
--- a/arch/arm/lib64/armlinux.c
+++ b/arch/arm/lib64/armlinux.c
@@ -44,12 +44,6 @@ static struct image_handler aarch64_linux_efi_handler = {
         .filetype = filetype_arm64_efi_linux_image,
 };
 
-static struct image_handler aarch64_fit_handler = {
-	.name = "FIT image",
-	.bootm = do_bootm_linux,
-	.filetype = filetype_oftree,
-};
-
 static int do_bootm_barebox(struct image_data *data)
 {
 	void (*fn)(unsigned long x0, unsigned long x1, unsigned long x2,
@@ -97,9 +91,6 @@ static int aarch64_register_image_handler(void)
 	register_image_handler(&aarch64_linux_handler);
 	register_image_handler(&aarch64_barebox_handler);
 
-	if (IS_ENABLED(CONFIG_FITIMAGE))
-		register_image_handler(&aarch64_fit_handler);
-
 	return 0;
 }
 late_initcall(aarch64_register_image_handler);
diff --git a/arch/kvx/lib/bootm.c b/arch/kvx/lib/bootm.c
index 3cb2521842..968fc624dc 100644
--- a/arch/kvx/lib/bootm.c
+++ b/arch/kvx/lib/bootm.c
@@ -107,28 +107,16 @@ static int do_boot_elf(struct image_data *data, struct elf_image *elf)
 	return ret;
 }
 
-static int do_bootm_fit(struct image_data *data)
-{
-	int ret;
-	struct elf_image *elf;
-
-	elf = elf_open_binary((void *) data->fit_kernel);
-	if (IS_ERR(elf))
-		return PTR_ERR(data->elf);
-
-	ret = do_boot_elf(data, elf);
-
-	elf_close(elf);
-
-	return ret;
-}
-
 static int do_bootm_elf(struct image_data *data)
 {
 	struct elf_image *elf;
 	int ret;
 
-	elf = elf_open(data->os_file);
+	if (data->fit_kernel)
+		elf = elf_open_binary((void *) data->fit_kernel);
+	else
+		elf = elf_open(data->os_file);
+
 	if (IS_ERR(elf))
 		return PTR_ERR(elf);
 
@@ -145,12 +133,6 @@ static struct image_handler elf_handler = {
 	.filetype = filetype_elf,
 };
 
-static struct image_handler fit_handler = {
-	.name = "FIT",
-	.bootm = do_bootm_fit,
-	.filetype = filetype_oftree,
-};
-
 static struct binfmt_hook binfmt_elf_hook = {
 	.type = filetype_elf,
 	.exec = "bootm",
diff --git a/arch/riscv/lib/bootm.c b/arch/riscv/lib/bootm.c
index a6655b8aaf..23ce3873b1 100644
--- a/arch/riscv/lib/bootm.c
+++ b/arch/riscv/lib/bootm.c
@@ -42,12 +42,6 @@ static struct image_handler riscv_linux_efi_handler = {
         .filetype = filetype_riscv_efi_linux_image,
 };
 
-static struct image_handler riscv_fit_handler = {
-	.name = "FIT image",
-	.bootm = do_bootm_linux,
-	.filetype = filetype_oftree,
-};
-
 static struct image_handler riscv_barebox_handler = {
         .name = "RISC-V barebox image",
         .bootm = do_bootm_linux,
@@ -60,9 +54,6 @@ static int riscv_register_image_handler(void)
 	register_image_handler(&riscv_linux_efi_handler);
 	register_image_handler(&riscv_barebox_handler);
 
-	if (IS_ENABLED(CONFIG_FITIMAGE))
-		register_image_handler(&riscv_fit_handler);
-
 	return 0;
 }
 late_initcall(riscv_register_image_handler);
diff --git a/common/bootm.c b/common/bootm.c
index 69816cdf5b..3858569302 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -714,6 +714,7 @@ int bootm_boot(struct bootm_data *bootm_data)
 	int ret;
 	enum filetype os_type;
 	size_t size;
+	const char *os_type_str;
 
 	if (!bootm_data->os_file) {
 		pr_err("no image given\n");
@@ -769,9 +770,13 @@ int bootm_boot(struct bootm_data *bootm_data)
 		}
 	}
 
+	os_type_str = file_type_to_short_string(os_type);
+
 	switch (os_type) {
 	case filetype_oftree:
 		ret = bootm_open_fit(data);
+		os_type = file_detect_type(data->fit_kernel, data->fit_kernel_size);
+		os_type_str = "FIT";
 		break;
 	case filetype_uimage:
 		ret = bootm_open_os_uimage(data);
@@ -782,13 +787,6 @@ int bootm_boot(struct bootm_data *bootm_data)
 	}
 
 	if (ret) {
-		const char *os_type_str;
-
-		if (os_type == filetype_oftree)
-			os_type_str = "FIT";
-		else
-			os_type_str = file_type_to_short_string(os_type);
-
 		pr_err("Loading %s image failed with: %pe\n", os_type_str, ERR_PTR(ret));
 		goto err_out;
 	}
diff --git a/common/image-fit.c b/common/image-fit.c
index 6eda041935..05dfec8856 100644
--- a/common/image-fit.c
+++ b/common/image-fit.c
@@ -979,40 +979,21 @@ void fit_close(struct fit_handle *handle)
 	free(handle);
 }
 
-static int do_bootm_sandbox_fit(struct image_data *data)
+static int do_bootm_fit(struct image_data *data)
 {
-	struct fit_handle *handle;
-	void *config;
-	int ret;
-
-	handle = fit_open(data->os_file, data->verbose, BOOTM_VERIFY_NONE,
-			  FILESIZE_MAX);
-	if (IS_ERR(handle))
-		return PTR_ERR(handle);
-
-	config = fit_open_configuration(handle, data->os_part);
-	if (IS_ERR(config)) {
-		ret = PTR_ERR(config);
-		goto out;
-	}
-
-	ret = 0;
-out:
-	fit_close(handle);
+	pr_err("Cannot boot device tree binary blob\n");
 
-	return ret;
+	return -EINVAL;
 }
 
-static struct image_handler sandbox_fit_handler = {
+static struct image_handler fit_handler = {
 	.name = "FIT image",
-	.bootm = do_bootm_sandbox_fit,
+	.bootm = do_bootm_fit,
 	.filetype = filetype_oftree,
 };
 
-static __maybe_unused int sandbox_fit_register(void)
+static int sandbox_fit_register(void)
 {
-	return register_image_handler(&sandbox_fit_handler);
+	return register_image_handler(&fit_handler);
 }
-#ifdef CONFIG_SANDBOX
 late_initcall(sandbox_fit_register);
-#endif
-- 
2.39.5



