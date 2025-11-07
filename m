Delivery-date: Fri, 07 Nov 2025 15:18:00 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vHNHs-00GK3q-0S
	for lore@lore.pengutronix.de;
	Fri, 07 Nov 2025 15:18:00 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vHNHr-0003kI-GK
	for lore@pengutronix.de; Fri, 07 Nov 2025 15:18:00 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=U0TBc9v4RpL7PVZ43LEqlwbcBVh/352UJ4e6hpUg+08=; b=3ppqLG/x+hfyBV2H62kEyiof7J
	L581YHsE5Wg9ywmCvZ4YXyXBn9Dv3oilZNeEYyGIzeKFrIVx590PV3JXPlWsluymim0W9URxuPIo4
	9NWg07aAowF9ImEZSI3XLQyYWc+dYJuyqPDu/HBwj/hJL872dn6AOfleqtcycAyCNN43w9wKMDdjx
	42yYBfE8Ru4ZY0+iMCl5jzYToI8I2sLlH/1HEOQK4+V92uj/OK0fvCmAtIgtkLnk5CFXxeWq1xdK+
	EX/mngharjsgOmd1WJDrHzToc0BJDDGRbuRngk+dkMO6MLM9vg4oZhnF9oTv7FzP7h578OC3hhfCn
	RBq8FDkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vHNHR-0000000HSQ1-21pG;
	Fri, 07 Nov 2025 14:17:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vHNHM-0000000HSN2-1LFa
	for barebox@lists.infradead.org;
	Fri, 07 Nov 2025 14:17:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vHNHK-0003OC-MU; Fri, 07 Nov 2025 15:17:26 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vHNHK-007Xiy-1b;
	Fri, 07 Nov 2025 15:17:26 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vHNHK-0000000ArvS-1ey3;
	Fri, 07 Nov 2025 15:17:26 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri,  7 Nov 2025 15:17:21 +0100
Message-ID: <20251107141725.2590394-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251107141725.2590394-1-a.fatoum@pengutronix.de>
References: <20251107141725.2590394-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251107_061728_372904_5959FD6E 
X-CRM114-Status: GOOD (  14.60  )
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
Subject: [PATCH master 4/5] efi: payload: reinstate error message when booting non-EFI stubbed kernel
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

With the introduction of filetype_x86_linux_image, we never detect a
filetype_mbr, but instead filetype_x86_linux_image.

Now that we have filetype_x86_efi_linux_image, we can fix this handler
by matching against the distinct filetype_x86_linux_image.

Fixes: 7b0cedb9ddb4 ("efi: payload: split image handling from legacy
                      handover boot and add linux x86 image filetype")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 efi/payload/image.c | 22 +++++++++++-----------
 1 file changed, 11 insertions(+), 11 deletions(-)

diff --git a/efi/payload/image.c b/efi/payload/image.c
index e4e2d26463da..ea6033edc363 100644
--- a/efi/payload/image.c
+++ b/efi/payload/image.c
@@ -165,24 +165,24 @@ static struct binfmt_hook binfmt_efi_hook = {
 	.hook = efi_execute,
 };
 
-static int do_bootm_mbr(struct image_data *data)
+static struct image_handler non_efi_handle_linux_x86;
+
+static int do_bootm_nonefi(struct image_data *data)
 {
-	/* On x86, Linux kernel images have a MBR magic at the end of
-	 * the first 512 byte sector and a PE magic if they're EFI-stubbed.
-	 * The PE magic has precedence over the MBR, so if we arrive in
-	 * this boot handler, the kernel has no EFI stub.
-	 *
-	 * Print a descriptive error message instead of "no image handler
-	 * found for image type MBR sector".
+	/* On x86, Linux kernel images have a bzImage header as well as
+	 * a PE magic if they're EFI-stubbed.
+	 * We have separate file types for x86 Linux images with and
+	 * without PE.
 	 */
-	pr_err("Can't boot MBR sector: Is CONFIG_EFI_STUB disabled in your Linux kernel config?\n");
+	pr_err("'%s' unsupported: CONFIG_EFI_STUB must be enabled in your Linux kernel config\n",
+	       non_efi_handle_linux_x86.name);
 	return -ENOSYS;
 }
 
 static struct image_handler non_efi_handle_linux_x86 = {
 	.name = "non-EFI x86 Linux Image",
-	.bootm = do_bootm_mbr,
-	.filetype = filetype_mbr,
+	.bootm = do_bootm_nonefi,
+	.filetype = filetype_x86_linux_image,
 };
 
 static struct binfmt_hook binfmt_arm64_efi_hook = {
-- 
2.47.3



