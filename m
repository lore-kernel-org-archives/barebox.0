Delivery-date: Fri, 07 Nov 2025 15:18:01 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vHNHs-00GK4Z-3A
	for lore@lore.pengutronix.de;
	Fri, 07 Nov 2025 15:18:00 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vHNHs-0003kj-BN
	for lore@pengutronix.de; Fri, 07 Nov 2025 15:18:00 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5SDtJhWgtaAd/rohFmXzhrCllSbsUbHJsc3E4VoFtwc=; b=iES2OtQENadAzBE0GOEFTcn7kP
	coOYwmb7wrRLlVOEzTN503/aTgJHKx4sgR87XgnTSG/lJ7pdEljIP5FB+6EAC7Zmto61BH5EVIDvr
	i5McRLMNmCiCQN5Y9h/vdeAWG8S1Tqge5g0OUjdIBvOrHTViDAa9JMGxh3THEq64CCwlH8QCr9ZC9
	5ADMK3iy3frnqxopt4RqTu2EerrTz+M27/xSFVIG5QmKDiL74FHp0DArjzSxm22IrubXdnqFAJo45
	s3THjRGnVqvfiRtUpEgJkuoq2/y52cde7dG88/Z8Nm5ZDCLoFmItTCZyh2uK43S1UmPjG7aL7tC+T
	jsazJlWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vHNHR-0000000HSPl-0ZMX;
	Fri, 07 Nov 2025 14:17:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vHNHM-0000000HSN1-1K91
	for barebox@lists.infradead.org;
	Fri, 07 Nov 2025 14:17:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vHNHK-0003OA-Iy; Fri, 07 Nov 2025 15:17:26 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vHNHK-007Xis-1H;
	Fri, 07 Nov 2025 15:17:26 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vHNHK-0000000ArvS-1HE5;
	Fri, 07 Nov 2025 15:17:26 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri,  7 Nov 2025 15:17:19 +0100
Message-ID: <20251107141725.2590394-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251107141725.2590394-1-a.fatoum@pengutronix.de>
References: <20251107141725.2590394-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251107_061728_361739_72224DA4 
X-CRM114-Status: GOOD (  13.71  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH master 2/5] filetype: introduce separate filetype_x86_efi_linux_image
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

I originally suggested adding only filetype_x86_linux_image during
review, because I was eyeing removal of the EFI types for the other
architectures in favor of handling the EFI stub differently.

I am not pursuing this further, so let's add filetype_x86_efi_linux_image
as it will simplify code at a number of places in following commits.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/filetype.c   | 3 ++-
 efi/payload/bootm.c | 2 +-
 efi/payload/image.c | 2 +-
 include/filetype.h  | 1 +
 4 files changed, 5 insertions(+), 3 deletions(-)

diff --git a/common/filetype.c b/common/filetype.c
index 72f84442cae9..a1807d285258 100644
--- a/common/filetype.c
+++ b/common/filetype.c
@@ -88,6 +88,7 @@ static const struct filetype_str filetype_str[] = {
 	[filetype_rockchip_rkss_image] = { "Rockchip signed boot image",
 					   "rk-image" },
 	[filetype_x86_linux_image] = { "x86 Linux image", "x86-linux" },
+	[filetype_x86_efi_linux_image] = { "x86 Linux/EFI image", "x86-efi-linux" },
 };
 
 static const char *file_type_to_nr_string(enum filetype f)
@@ -437,7 +438,7 @@ enum filetype file_detect_type(const void *_buf, size_t bufsize)
 	if (is_riscv_linux_bootimage(buf) && !memcmp(&buf[12], "barebox", 8))
 		return filetype_riscv_barebox_image;
 	if (bufsize > 0x206 && is_x86_linux_bootimage(buf))
-		return filetype_x86_linux_image;
+		return is_dos_exe(buf8) ? filetype_x86_efi_linux_image : filetype_x86_linux_image;
 
 	if (le32_to_cpu(buf[5]) == 0x504d5453)
 		return filetype_mxs_bootstream;
diff --git a/efi/payload/bootm.c b/efi/payload/bootm.c
index 3e9ccd42bf7f..e205664b3262 100644
--- a/efi/payload/bootm.c
+++ b/efi/payload/bootm.c
@@ -276,7 +276,7 @@ static struct image_handler efi_app_handle_tr = {
 static struct image_handler efi_x86_linux_handle_tr = {
 	.name = "EFI X86 Linux kernel",
 	.bootm = do_bootm_efi_stub,
-	.filetype = filetype_x86_linux_image,
+	.filetype = filetype_x86_efi_linux_image,
 };
 
 static struct image_handler efi_arm64_handle_tr = {
diff --git a/efi/payload/image.c b/efi/payload/image.c
index 5d20221a135e..e4e2d26463da 100644
--- a/efi/payload/image.c
+++ b/efi/payload/image.c
@@ -191,7 +191,7 @@ static struct binfmt_hook binfmt_arm64_efi_hook = {
 };
 
 static struct binfmt_hook binfmt_x86_efi_hook = {
-	.type = filetype_x86_linux_image,
+	.type = filetype_x86_efi_linux_image,
 	.hook = efi_execute,
 };
 
diff --git a/include/filetype.h b/include/filetype.h
index ff4d54ee3c45..ecbbd5873b00 100644
--- a/include/filetype.h
+++ b/include/filetype.h
@@ -68,6 +68,7 @@ enum filetype {
 	filetype_zstd_compressed,
 	filetype_rockchip_rkss_image,
 	filetype_x86_linux_image,
+	filetype_x86_efi_linux_image,
 	filetype_max,
 };
 
-- 
2.47.3



