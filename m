Delivery-date: Fri, 20 Sep 2024 11:52:11 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sraJ5-000XD7-0q
	for lore@lore.pengutronix.de;
	Fri, 20 Sep 2024 11:52:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sraJ5-0000ot-Oj
	for lore@pengutronix.de; Fri, 20 Sep 2024 11:52:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=VJKbmrXOtmXgLKqiI24vtC+vNrP9w0QmsA8X4LMYWtc=; b=MaLHPnJfzzCmeyL8SlqxfAZTNr
	BqVbtvI1fxMwR/6mNb7N5FLYN8+TG1Bc3dhjfYlzApzGv29uRyYFSU0F3PyxSfnK2TPUB/eGWVbcR
	Pw9Nj1qriasUrrYWleBnN7q5b1lH4Yh7GVUjVU71tHSiCtmYACcr1d/D5EtXP43yEpLNvOfa+kZPV
	+Dly5i/5T7twxrEZZaE/dRN7XLvLvWLL2F8lqtMoEkH1AdKfJPBe+MTiS1M+1M3nzln96Zwq7YGsx
	lJRHqO4LLvz4mSQrWD+D2bvF0LFs5zR9MB6L0SrQa+Df+vBxryQ+SkoQL2Ed2p6yjs27ra9JTCEmI
	Fc/D4eoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sraIQ-0000000Bxiv-2WYB;
	Fri, 20 Sep 2024 09:51:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sraHS-0000000Bxdg-36lJ
	for barebox@lists.infradead.org;
	Fri, 20 Sep 2024 09:50:27 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sraHP-0000fT-Kr; Fri, 20 Sep 2024 11:50:23 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sraHP-000Dtq-8O; Fri, 20 Sep 2024 11:50:23 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sraHP-007iFD-0Z;
	Fri, 20 Sep 2024 11:50:23 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 20 Sep 2024 11:49:01 +0200
Message-Id: <20240920094900.1838301-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240920_025026_801843_2B1FBFDB 
X-CRM114-Status: GOOD (  13.37  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] efi: payload: image use new CONFIG_ARM64 symbol
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

CONFIG_ARM64 was added as an alternative to CONFIG_CPU_V8 as encountering
the latter in generic code is confusing for users not familiar with ARM.

EFI payload support was one such generic place, so let's replace the
CONFIG_CPU_v8 instance there with the new symbol.

The if clause is moved to keep the order elsewhere in the file, where
x86 checks are done before those for ARM. Both can't be active at the
same time, so no functional change expected.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 efi/payload/image.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/efi/payload/image.c b/efi/payload/image.c
index 6a41338f2a2f..70b57360c99d 100644
--- a/efi/payload/image.c
+++ b/efi/payload/image.c
@@ -163,7 +163,7 @@ static bool is_linux_image(enum filetype filetype, const void *base)
 	    hdr->boot_flag == 0xAA55 && hdr->header == 0x53726448)
 		return true;
 
-	if (IS_ENABLED(CONFIG_CPU_V8) &&
+	if (IS_ENABLED(CONFIG_ARM64) &&
 	    filetype == filetype_arm64_efi_linux_image)
 		return true;
 
@@ -367,12 +367,12 @@ static int efi_register_image_handler(void)
 	register_image_handler(&efi_handle_tr);
 	binfmt_register(&binfmt_efi_hook);
 
-	if (IS_ENABLED(CONFIG_CPU_V8))
-		binfmt_register(&binfmt_arm64_efi_hook);
-
 	if (IS_ENABLED(CONFIG_X86))
 		register_image_handler(&non_efi_handle_linux_x86);
 
+	if (IS_ENABLED(CONFIG_ARM64))
+		binfmt_register(&binfmt_arm64_efi_hook);
+
 	return 0;
 }
 late_efi_initcall(efi_register_image_handler);
-- 
2.39.5



