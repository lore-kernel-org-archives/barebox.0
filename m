Delivery-date: Wed, 03 Jan 2024 19:34:45 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL64j-002NuV-2H
	for lore@lore.pengutronix.de;
	Wed, 03 Jan 2024 19:34:45 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL64c-0005lF-KY
	for lore@pengutronix.de; Wed, 03 Jan 2024 19:34:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/DOhdjgRrKUSJ5UfPbn81T99QK+lAhjkMzfWraDaNP4=; b=iM88M9f4nXuHDbTRE6U9ZZhzsT
	NFrAIWpWOo2yEgn33HlY8qNNvjLBNOU4aa+8UJabiVT04lfLO588YhXL8gSwKCMCLcO7oN3Azb4Ds
	1KJnABUKzz2TAI24V8+4eg6y4fhtJ24dOSLOhfKtdwqacilzrg/85PpuZnxfmmaRXLoLt3OpzcbPx
	gaDHMzmHPgllAv3sX2WlXoGlT/CILGsmQcmYf+p8REuOwS3uiKjne0vCzNp3vqqnfTN67Uc841Q6e
	0WgBTh2Wqq12wu4BSi8EmBl5jGNI0S0pAOWYvD1D4tVzfstbNtOhOCvFtUXNJin9Vg4BP741zE1yi
	KsLLAg8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rL62r-00Bj6p-1V;
	Wed, 03 Jan 2024 18:32:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL61B-00Bh1F-1W
	for barebox@lists.infradead.org;
	Wed, 03 Jan 2024 18:31:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL613-0001cF-2j; Wed, 03 Jan 2024 19:30:57 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL612-000Aws-J8; Wed, 03 Jan 2024 19:30:56 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL5k4-001j4X-26;
	Wed, 03 Jan 2024 19:13:24 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  3 Jan 2024 19:12:42 +0100
Message-Id: <20240103181312.409668-83-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240103181312.409668-1-a.fatoum@pengutronix.de>
References: <20240103181312.409668-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240103_103105_530016_5067FD46 
X-CRM114-Status: GOOD (  14.57  )
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
Subject: [PATCH 082/112] efi: payload: register handler for EFI-stubbed ARM64 kernel
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The normal DT-only ARM64 boot handlers are not registered when barebox
is running as EFI payload. Instead, barebox started via EFI should start
images via EFI as well. Add a suitable binfmt handlers that does just that.

We intentionally don't register a bootm handler just yet, because we
need to take care of initrd and boot arguments still.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 efi/payload/image.c | 32 ++++++++++++++++++++++++++------
 1 file changed, 26 insertions(+), 6 deletions(-)

diff --git a/efi/payload/image.c b/efi/payload/image.c
index b9cdb0e0562a..0795010cd9d2 100644
--- a/efi/payload/image.c
+++ b/efi/payload/image.c
@@ -155,12 +155,26 @@ static int efi_load_image(const char *file, struct efi_loaded_image **loaded_ima
 	return -efi_errno(efiret);
 }
 
-static int efi_execute_image(const char *file)
+static bool is_linux_image(enum filetype filetype, const void *base)
+{
+	const struct linux_kernel_header *hdr = base;
+
+	if (IS_ENABLED(CONFIG_X86) &&
+	    hdr->boot_flag == 0xAA55 && hdr->header == 0x53726448)
+		return true;
+
+	if (IS_ENABLED(CONFIG_CPU_V8) &&
+	    filetype == filetype_arm64_efi_linux_image)
+		return true;
+
+	return false;
+}
+
+static int efi_execute_image(enum filetype filetype, const char *file)
 {
 	efi_handle_t handle;
 	struct efi_loaded_image *loaded_image;
 	efi_status_t efiret;
-	struct linux_kernel_header *image_header;
 	const char *options;
 	bool is_driver;
 	int ret;
@@ -172,9 +186,7 @@ static int efi_execute_image(const char *file)
 	is_driver = (loaded_image->image_code_type == EFI_BOOT_SERVICES_CODE) ||
 		(loaded_image->image_code_type == EFI_RUNTIME_SERVICES_CODE);
 
-	image_header = (struct linux_kernel_header *)loaded_image->image_base;
-	if (image_header->boot_flag == 0xAA55 &&
-	    image_header->header == 0x53726448) {
+	if (is_linux_image(filetype, loaded_image->image_base)) {
 		pr_debug("Linux kernel detected. Adding bootargs.");
 		options = linux_bootargs_get();
 		pr_info("add linux options '%s'\n", options);
@@ -317,7 +329,7 @@ static struct image_handler efi_handle_tr = {
 
 static int efi_execute(struct binfmt_hook *b, char *file, int argc, char **argv)
 {
-	return efi_execute_image(file);
+	return efi_execute_image(b->type, file);
 }
 
 static struct binfmt_hook binfmt_efi_hook = {
@@ -325,11 +337,19 @@ static struct binfmt_hook binfmt_efi_hook = {
 	.hook = efi_execute,
 };
 
+static struct binfmt_hook binfmt_arm64_efi_hook = {
+	.type = filetype_arm64_efi_linux_image,
+	.hook = efi_execute,
+};
+
 static int efi_register_image_handler(void)
 {
 	register_image_handler(&efi_handle_tr);
 	binfmt_register(&binfmt_efi_hook);
 
+	if (IS_ENABLED(CONFIG_CPU_V8))
+		binfmt_register(&binfmt_arm64_efi_hook);
+
 	return 0;
 }
 late_efi_initcall(efi_register_image_handler);
-- 
2.39.2



