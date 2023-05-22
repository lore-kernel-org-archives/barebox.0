Delivery-date: Mon, 22 May 2023 07:38:22 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q0yFT-009JfO-Pa
	for lore@lore.pengutronix.de; Mon, 22 May 2023 07:38:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q0yFR-0004jK-9A
	for lore@pengutronix.de; Mon, 22 May 2023 07:38:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=8bDrrL5pl+o3VgL/Yh3rez+BBDl9K8910h+5FFVQZrU=; b=YNbmCPDqzW9hRB+q4KtU5Sq8P9
	uhdNr785+n92eBBcmZ7USNc+EhfU+xxlU1MHgeMsnrCS7oERe3Rn8SOL7C2OSoGk0w3nZ5zAM48I5
	aWsgwI9l+AJxAor2J+WH5kBgBhGQXoypSxncKKFBMob6WGi7gCVQQSKo2detIonczbdO8mRCKAG/F
	DGiszrIJEhIxz95jY62cQtoqvou2KJBVorhSWPKphPa780u2pp2Y4CcsYteAxzB7y0tFEhdmJCm9p
	2tsCS0na9rYUPeBXJl+siE4g4cRXoxtGL8ASy61+XYcrJTsNarFkETcMEx7RwzB7hlGwB+uwSUHG2
	gaCXVXSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q0yEg-005Qqn-1a;
	Mon, 22 May 2023 05:37:34 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q0yEd-005QpB-16
	for barebox@lists.infradead.org;
	Mon, 22 May 2023 05:37:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q0yEa-0004f8-Ra
	for barebox@lists.infradead.org; Mon, 22 May 2023 07:37:28 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q0yEa-001w06-68
	for barebox@lists.infradead.org; Mon, 22 May 2023 07:37:28 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q0yEZ-004NMv-Al
	for barebox@lists.infradead.org; Mon, 22 May 2023 07:37:27 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon, 22 May 2023 07:37:25 +0200
Message-Id: <20230522053725.1043129-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230521_223731_391625_E017FDEB 
X-CRM114-Status: UNSURE (   9.19  )
X-CRM114-Notice: Please train this message.
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH master] efi: don't skip default efi devinfo for old EFI block revisions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Ahmad Fatoum <ahmad@a3f.at>

We early exit to skip info that doesn't apply to older EFI block
protocol revisions. This also means we skip the default efi devinfo
callback, which may not want. Fix this.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 drivers/block/efi-block-io.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/block/efi-block-io.c b/drivers/block/efi-block-io.c
index a4365ac7c32b..eb4981e86298 100644
--- a/drivers/block/efi-block-io.c
+++ b/drivers/block/efi-block-io.c
@@ -121,7 +121,7 @@ static void efi_bio_print_info(struct device *dev)
 	printf("  last_block: 0x%016llx\n", media->last_block);
 
 	if (revision < EFI_BLOCK_IO_PROTOCOL_REVISION2)
-		return;
+		goto out;
 
 	printf("  lowest_aligned_lba: 0x%08llx\n",
 			media->lowest_aligned_lba);
@@ -129,11 +129,12 @@ static void efi_bio_print_info(struct device *dev)
 			media->logical_blocks_per_physical_block);
 
 	if (revision < EFI_BLOCK_IO_PROTOCOL_REVISION3)
-		return;
+		goto out;
 
 	printf("  optimal_transfer_length_granularity: 0x%08x\n",
 			media->optimal_transfer_length_granularity);
 
+out:
 	if (priv->efi_info)
 		priv->efi_info(dev);
 }
-- 
2.39.2



