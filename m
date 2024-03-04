Delivery-date: Mon, 04 Mar 2024 20:09:52 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhDhA-008dgd-1w
	for lore@lore.pengutronix.de;
	Mon, 04 Mar 2024 20:09:52 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhDh9-0004qk-Ht
	for lore@pengutronix.de; Mon, 04 Mar 2024 20:09:52 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=X9VOuOGWctURpPY2pWXs1KmKLd8HldRoNCWJe+6N7Ic=; b=qzYLRDs7ib7kEH8ujG4QNeKdPc
	g4mejvo6yzjTdpkq1khhNrrEPDioJ7++EDUcjT7H3aXjgHJy4+UTUbDmObGAychhT5cVSdE0V32YV
	sIUQjlYF5a6LE9biu+rBqac+XH6IMso2cguDZa4tpaj90rjV3L7LQZcZHGlSJUNvT8k3+/266hGC/
	d6CljZXAjtxJvT8AVlf4RjZJ6+01rRmwZN2spWBeqaS0St1wJyUDOv3JT9HcKGkXS3CCQFkfSNB9D
	SupppbGDW19muY4jOCBPnr36O6GQzRG/QsKh3G592bYXoTFt3PMutoVxpwJHZ3IvE8mx7p/+bwldS
	2aVZAbew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDgc-0000000AMjS-2Tju;
	Mon, 04 Mar 2024 19:09:18 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDaa-0000000AIaa-367c
	for barebox@bombadil.infradead.org;
	Mon, 04 Mar 2024 19:03:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=X9VOuOGWctURpPY2pWXs1KmKLd8HldRoNCWJe+6N7Ic=; b=pRiFG/wGhRQ1Ue9mxHuMeo/Jfl
	X/G276p5xbXbTq7JPoHjPAn9oZ0BWRCKaVvyzU6A41LW4xsq2uPqvK8Tzf6EqvumSC1OYXoBd2lwY
	52WgyXm8WObdOXGmMUQ98Go4dke+G0FBkiDsk+LPiEo3Aj1xPMbGg6f3M/S6t1XCL74XPf4cHCqBB
	b0CQDNieTvvHLpQ69xOTHZfKFHTMTVAx35RGFnBzIlAOU6IkyMQZB2QqxC3VXegre5+ePD8pEbRWv
	W8u+sDnmgclKoVzIvcKQEiM9JFcaytWItk0U/kyRBh7zPU/qgPOASOfFy2rqJOn/b09DUr5RtEyZZ
	jj4QSF9g==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDaV-00000002BSo-0d9b
	for barebox@lists.infradead.org;
	Mon, 04 Mar 2024 19:03:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDaF-000665-P1; Mon, 04 Mar 2024 20:02:43 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDaF-004PJ0-A4; Mon, 04 Mar 2024 20:02:43 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDYM-00Ed9V-2G;
	Mon, 04 Mar 2024 20:00:47 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  4 Mar 2024 20:00:06 +0100
Message-Id: <20240304190038.3486881-82-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
References: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240304_190259_344747_2BB72D3D 
X-CRM114-Status: GOOD (  14.10  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 081/113] filetype: add new file types for EFI-enabled Linux images
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We currently detect EFI-stubbed Linux images for ARM64 and RISC-V as
normal kernel images and would boot them that way. As these images
additionally start with MZ like normal PE executables, lets have new
filetypes for them. No functional change yet, but we can use a different
bootm handler for them in the future when boot is configured to be
EFI-enabled.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - fix typo in RISC-V bootm code
---
 arch/arm/lib64/armlinux.c |  7 +++++++
 arch/riscv/lib/bootm.c    |  7 +++++++
 common/filetype.c         | 13 ++++++++++---
 include/filetype.h        |  2 ++
 4 files changed, 26 insertions(+), 3 deletions(-)

diff --git a/arch/arm/lib64/armlinux.c b/arch/arm/lib64/armlinux.c
index 8382ffdf1b04..40fea37f53a7 100644
--- a/arch/arm/lib64/armlinux.c
+++ b/arch/arm/lib64/armlinux.c
@@ -37,6 +37,12 @@ static struct image_handler aarch64_linux_handler = {
         .filetype = filetype_arm64_linux_image,
 };
 
+static struct image_handler aarch64_linux_efi_handler = {
+        .name = "ARM aarch64 Linux/EFI image",
+        .bootm = do_bootm_linux,
+        .filetype = filetype_arm64_efi_linux_image,
+};
+
 static struct image_handler aarch64_fit_handler = {
 	.name = "FIT image",
 	.bootm = do_bootm_linux,
@@ -83,6 +89,7 @@ static struct image_handler aarch64_barebox_handler = {
 
 static int aarch64_register_image_handler(void)
 {
+	register_image_handler(&aarch64_linux_efi_handler);
 	register_image_handler(&aarch64_linux_handler);
 	register_image_handler(&aarch64_barebox_handler);
 
diff --git a/arch/riscv/lib/bootm.c b/arch/riscv/lib/bootm.c
index 6984f282be4d..a6655b8aafb1 100644
--- a/arch/riscv/lib/bootm.c
+++ b/arch/riscv/lib/bootm.c
@@ -36,6 +36,12 @@ static struct image_handler riscv_linux_handler = {
         .filetype = filetype_riscv_linux_image,
 };
 
+static struct image_handler riscv_linux_efi_handler = {
+        .name = "RISC-V Linux/EFI image",
+        .bootm = do_bootm_linux,
+        .filetype = filetype_riscv_efi_linux_image,
+};
+
 static struct image_handler riscv_fit_handler = {
 	.name = "FIT image",
 	.bootm = do_bootm_linux,
@@ -51,6 +57,7 @@ static struct image_handler riscv_barebox_handler = {
 static int riscv_register_image_handler(void)
 {
 	register_image_handler(&riscv_linux_handler);
+	register_image_handler(&riscv_linux_efi_handler);
 	register_image_handler(&riscv_barebox_handler);
 
 	if (IS_ENABLED(CONFIG_FITIMAGE))
diff --git a/common/filetype.c b/common/filetype.c
index ba0f61e5d87e..f922494500d5 100644
--- a/common/filetype.c
+++ b/common/filetype.c
@@ -63,7 +63,9 @@ static const struct filetype_str filetype_str[] = {
 	[filetype_kwbimage_v1] = { "MVEBU kwbimage (v1)", "kwb1" },
 	[filetype_android_sparse] = { "Android sparse image", "sparse" },
 	[filetype_arm64_linux_image] = { "ARM aarch64 Linux image", "aarch64-linux" },
+	[filetype_arm64_efi_linux_image] = { "ARM aarch64 Linux/EFI image", "aarch64-efi-linux" },
 	[filetype_riscv_linux_image] = { "RISC-V Linux image", "riscv-linux" },
+	[filetype_riscv_efi_linux_image] = { "RISC-V Linux/EFI image", "riscv-efi-linux" },
 	[filetype_riscv_barebox_image] = { "RISC-V barebox image", "riscv-barebox" },
 	[filetype_elf] = { "ELF", "elf" },
 	[filetype_imx_image_v1] = { "i.MX image (v1)", "imx-image-v1" },
@@ -251,6 +253,11 @@ enum filetype file_detect_partition_table(const void *_buf, size_t bufsize)
 	return filetype_unknown;
 }
 
+static bool is_dos_exe(const u8 *buf8)
+{
+	return buf8[0] == 'M' && buf8[1] == 'Z';
+}
+
 #define CH_TOC_section_name     0x14
 
 enum filetype file_detect_type(const void *_buf, size_t bufsize)
@@ -313,9 +320,9 @@ enum filetype file_detect_type(const void *_buf, size_t bufsize)
 	if (buf[0] == be32_to_cpu(0x534F4659))
 		return filetype_bpk;
 	if (le32_to_cpu(buf[14]) == 0x644d5241)
-		return filetype_arm64_linux_image;
+		return is_dos_exe(buf8) ? filetype_arm64_efi_linux_image : filetype_arm64_linux_image;
 	if (le32_to_cpu(buf[14]) == 0x05435352)
-		return filetype_riscv_linux_image;
+		return is_dos_exe(buf8) ? filetype_riscv_efi_linux_image : filetype_riscv_linux_image;
 	if (le32_to_cpu(buf[14]) == 0x56435352 && !memcmp(&buf[12], "barebox", 8))
 		return filetype_riscv_barebox_image;
 	if (strncmp(buf8, "RKNS", 4) == 0)
@@ -373,7 +380,7 @@ enum filetype file_detect_type(const void *_buf, size_t bufsize)
 	if (buf[9] == 0x016f2818 || buf[9] == 0x18286f01)
 		return filetype_arm_zimage;
 
-	if (buf8[0] == 'M' && buf8[1] == 'Z')
+	if (is_dos_exe(buf8))
 		return filetype_exe;
 
 	if (bufsize < 256)
diff --git a/include/filetype.h b/include/filetype.h
index f73b2da61f5a..6425c9c8c5b9 100644
--- a/include/filetype.h
+++ b/include/filetype.h
@@ -44,7 +44,9 @@ enum filetype {
 	filetype_kwbimage_v1,
 	filetype_android_sparse,
 	filetype_arm64_linux_image,
+	filetype_arm64_efi_linux_image,
 	filetype_riscv_linux_image,
+	filetype_riscv_efi_linux_image,
 	filetype_riscv_barebox_image,
 	filetype_elf,
 	filetype_imx_image_v1,
-- 
2.39.2



