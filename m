Delivery-date: Mon, 04 Mar 2024 20:09:56 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhDhE-008dhE-03
	for lore@lore.pengutronix.de;
	Mon, 04 Mar 2024 20:09:56 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhDhD-0004vI-5S
	for lore@pengutronix.de; Mon, 04 Mar 2024 20:09:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/DOhdjgRrKUSJ5UfPbn81T99QK+lAhjkMzfWraDaNP4=; b=riZAIiQlOtUh7pvMA5ENKsr6cR
	Q8caiIbpxlV4/uHt2fZ0V05nTX3szRPzRQj+lRlx3OCd70Y07RSJC7zHFsx5DdmjWgzQKDiyihort
	aDdJLx0H/GW1WGtAtLFZ6ySvkvrtC9w8yz76+52F6g9yQ5W2v2g1hWbME9/MtB3Sp05aUkryYcrK1
	zeczr62UK3LtI1hjDJL0xRHqdEtkoXzLcSOGEpoi2LyVw790crJcmOIZcdc6rY+4Xxt+4An9QdUrb
	KvdAMYy5E7aPk1kievd3fiQhJPH8XECUdS5wSjM13Xb6mhQPFGDlR0pp/+4WDI9TeQM/dhmfMB/5a
	P8ufDLrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDgg-0000000AMns-2WIJ;
	Mon, 04 Mar 2024 19:09:22 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDab-0000000AIbH-2qvQ
	for barebox@bombadil.infradead.org;
	Mon, 04 Mar 2024 19:03:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=/DOhdjgRrKUSJ5UfPbn81T99QK+lAhjkMzfWraDaNP4=; b=Zr3ZzAle7JRrPepxtM29G1oy0f
	Q7T2NOMCAj09sp4v60XebcMxJvEpZ6kSFyU8mW1TasfOc/ruvfGA9auYjxPykbEuHmNwWCXsvYdCT
	rMm78NrqarJ33nRV+0jDgnjlBOyWmRIYTFT07x/Z+tLVvY1PjMXmvNgybCo2uoOYChfGG62zwTXXv
	EgsKcJzVwW7xaaAhbqIa6ZecM8U14gLd8hZHr4Kkh7UTul67851LZXQmaqFG6ZVPnklvlc0RXzEKI
	LkdenzYu0XSiVtzkrcv8Ea9EziKgK5wnCH3HhzytlXqZPJXP5C4kHvnZHHQ5lI8EQVT4gxPn0UlNo
	1vCKCsEw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDaU-000000051vY-0gTB
	for barebox@lists.infradead.org;
	Mon, 04 Mar 2024 19:03:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDaG-00069U-PS; Mon, 04 Mar 2024 20:02:44 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDaG-004PK1-9g; Mon, 04 Mar 2024 20:02:44 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDYM-00Ed9V-2O;
	Mon, 04 Mar 2024 20:00:47 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  4 Mar 2024 20:00:07 +0100
Message-Id: <20240304190038.3486881-83-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
References: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240304_190258_308853_D335A513 
X-CRM114-Status: GOOD (  15.04  )
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
Subject: [PATCH v2 082/113] efi: payload: register handler for EFI-stubbed ARM64 kernel
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



