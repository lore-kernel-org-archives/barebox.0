Delivery-date: Wed, 03 Jan 2024 20:47:01 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL7Cf-002V3v-1m
	for lore@lore.pengutronix.de;
	Wed, 03 Jan 2024 20:47:01 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL7Ce-00048N-Be
	for lore@pengutronix.de; Wed, 03 Jan 2024 20:47:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hwSSRbkAdYltw7TiP7egIxA70zaaQOim6Q1nF396uiY=; b=e3oYXpubiTvYmJYQNLpltKFAJe
	FaHxh0EP7kkgR8nXxYxl3G7yTq3b87FhhHLg10EzurYFbZb2X4BNjzSJDJ2dfutKToEKmXOUPTdVJ
	1C7zgYwOT9png7e1XuyUw5PFsfQZpYETo7OvYvVmKWIIGrg6DtOQIuYo6LgvIzJoGK4/uEbZZguSw
	22JDPLMlsldDU4Wh7q8BtdZLOjhAFFB8B3vWgrTqCj0poAiDPvduYRWLtbLmOSWeoLVLmO1dwGXS8
	TDHYiQH/+pF+4a2TgfnQYJVZYdQBYrtHJYMH5oz/OP5gCP/b9Gf5X8dYNH+XqPk2DNfJ8Z9vxVMxp
	ChQmug0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rL7BX-00Bw7u-2q;
	Wed, 03 Jan 2024 19:45:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL60z-00Bh1J-36
	for barebox@lists.infradead.org;
	Wed, 03 Jan 2024 18:31:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL60y-0001P5-Q9; Wed, 03 Jan 2024 19:30:52 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL60y-000AsY-DT; Wed, 03 Jan 2024 19:30:52 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL5k4-001j4X-1x;
	Wed, 03 Jan 2024 19:13:24 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  3 Jan 2024 19:12:41 +0100
Message-Id: <20240103181312.409668-82-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240103181312.409668-1-a.fatoum@pengutronix.de>
References: <20240103181312.409668-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240103_103054_014987_1BD10F92 
X-CRM114-Status: GOOD (  16.90  )
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 081/112] filetype: add new file types for EFI-enabled Linux images
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
index 6984f282be4d..6bbf7bd156d8 100644
--- a/arch/riscv/lib/bootm.c
+++ b/arch/riscv/lib/bootm.c
@@ -36,6 +36,12 @@ static struct image_handler riscv_linux_handler = {
         .filetype = filetype_riscv_linux_image,
 };
 
+static struct image_handler riscv_linux_efi_handler = {
+        .name = "RISC-V Linux/EFI image",
+        .bootm = do_bootm_linux,
+        .filetype = filetype_riscv_linux_efi_image,
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
index f726a933d245..5bf531b107ff 100644
--- a/common/filetype.c
+++ b/common/filetype.c
@@ -62,7 +62,9 @@ static const struct filetype_str filetype_str[] = {
 	[filetype_kwbimage_v1] = { "MVEBU kwbimage (v1)", "kwb1" },
 	[filetype_android_sparse] = { "Android sparse image", "sparse" },
 	[filetype_arm64_linux_image] = { "ARM aarch64 Linux image", "aarch64-linux" },
+	[filetype_arm64_efi_linux_image] = { "ARM aarch64 Linux/EFI image", "aarch64-efi-linux" },
 	[filetype_riscv_linux_image] = { "RISC-V Linux image", "riscv-linux" },
+	[filetype_riscv_efi_linux_image] = { "RISC-V Linux/EFI image", "riscv-efi-linux" },
 	[filetype_riscv_barebox_image] = { "RISC-V barebox image", "riscv-barebox" },
 	[filetype_elf] = { "ELF", "elf" },
 	[filetype_imx_image_v1] = { "i.MX image (v1)", "imx-image-v1" },
@@ -249,6 +251,11 @@ enum filetype file_detect_partition_table(const void *_buf, size_t bufsize)
 	return filetype_unknown;
 }
 
+static bool is_dos_exe(const u8 *buf8)
+{
+	return buf8[0] == 'M' && buf8[1] == 'Z';
+}
+
 #define CH_TOC_section_name     0x14
 
 enum filetype file_detect_type(const void *_buf, size_t bufsize)
@@ -311,9 +318,9 @@ enum filetype file_detect_type(const void *_buf, size_t bufsize)
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
@@ -367,7 +374,7 @@ enum filetype file_detect_type(const void *_buf, size_t bufsize)
 	if (buf[9] == 0x016f2818 || buf[9] == 0x18286f01)
 		return filetype_arm_zimage;
 
-	if (buf8[0] == 'M' && buf8[1] == 'Z')
+	if (is_dos_exe(buf8))
 		return filetype_exe;
 
 	if (bufsize < 256)
diff --git a/include/filetype.h b/include/filetype.h
index 4e646aec9d6f..125e81fee7f4 100644
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



