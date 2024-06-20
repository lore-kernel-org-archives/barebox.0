Delivery-date: Thu, 20 Jun 2024 09:17:06 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sKC2c-0097vU-0r
	for lore@lore.pengutronix.de;
	Thu, 20 Jun 2024 09:17:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sKC2b-0008QE-Ja
	for lore@pengutronix.de; Thu, 20 Jun 2024 09:17:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=f7CSIL1gyBwMK399OIj2IBR8CUyMVIM9Y36k3zynlO4=; b=427JWBt6EdvftTJrrF/2BNvIbl
	1m6u0jpxz0KKeELfYBPooojExOpZSIgFTNrsGx4lhVKF8H6CsrHNUPyfTMGQSlCBcqShq9Mh7Mddb
	BNacGzKlQqXUl9x5YWN8CdfyGEj1UyuPMI0voCYgzCV+decuraEgjtIsMc4zLVhTTv9LHWUjVhNvP
	YGHFwGhzpvlp76pKHiofFp2t9q9boj2CdeHwtYeppjwiz2eN4ou7QExbbZZo10RSezVHP7boQbE5G
	taPPZqmK5wrE1vzBJuoczYEgw39A0ju5jC/wkMyeQO3ZDR+xFsePupR2K6BqOWr49Zyi9+wWVMhQf
	Bfppg3Ig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKC22-00000003wp6-31Ne;
	Thu, 20 Jun 2024 07:16:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKC1z-00000003woH-3cYg
	for barebox@lists.infradead.org;
	Thu, 20 Jun 2024 07:16:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sKC1w-0008ND-J4; Thu, 20 Jun 2024 09:16:24 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sKC1w-003eKO-0b; Thu, 20 Jun 2024 09:16:24 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sKC1v-00DXl3-2z;
	Thu, 20 Jun 2024 09:16:23 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: cybin <info@arachnodroid.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 20 Jun 2024 09:16:16 +0200
Message-Id: <20240620071616.3228015-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240620_001627_924976_78588240 
X-CRM114-Status: GOOD (  12.19  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] efi: payload: inform users on attempt to boot non EFI-stubbed kernel
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Calling bootm on an x86 kernel image that lacks an EFI stub will result
in a "no image handler found for image type MBR sector", which can be
very confusing.

Improve upon this by directly suggesting that the kernel's
CONFIG_EFI_STUB option needs to be enabled, so the image has the
expected PE magic (and the EFI stub code that comes with it).

Cc: cybin <info@arachnodroid.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 efi/payload/image.c | 23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/efi/payload/image.c b/efi/payload/image.c
index 0795010cd9d2..6a41338f2a2f 100644
--- a/efi/payload/image.c
+++ b/efi/payload/image.c
@@ -337,6 +337,26 @@ static struct binfmt_hook binfmt_efi_hook = {
 	.hook = efi_execute,
 };
 
+static int do_bootm_mbr(struct image_data *data)
+{
+	/* On x86, Linux kernel images have a MBR magic at the end of
+	 * the first 512 byte sector and a PE magic if they're EFI-stubbed.
+	 * The PE magic has precedence over the MBR, so if we arrive in
+	 * this boot handler, the kernel has no EFI stub.
+	 *
+	 * Print a descriptive error message instead of "no image handler
+	 * found for image type MBR sector".
+	 */
+	pr_err("Can't boot MBR sector: Is CONFIG_EFI_STUB disabled in your Linux kernel config?\n");
+	return -ENOSYS;
+}
+
+static struct image_handler non_efi_handle_linux_x86 = {
+	.name = "non-EFI x86 Linux Image",
+	.bootm = do_bootm_mbr,
+	.filetype = filetype_mbr,
+};
+
 static struct binfmt_hook binfmt_arm64_efi_hook = {
 	.type = filetype_arm64_efi_linux_image,
 	.hook = efi_execute,
@@ -350,6 +370,9 @@ static int efi_register_image_handler(void)
 	if (IS_ENABLED(CONFIG_CPU_V8))
 		binfmt_register(&binfmt_arm64_efi_hook);
 
+	if (IS_ENABLED(CONFIG_X86))
+		register_image_handler(&non_efi_handle_linux_x86);
+
 	return 0;
 }
 late_efi_initcall(efi_register_image_handler);
-- 
2.39.2



