Delivery-date: Mon, 12 Jun 2023 08:58:56 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8bVx-003WCP-Hs
	for lore@lore.pengutronix.de; Mon, 12 Jun 2023 08:58:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8bVv-0007Ah-8d
	for lore@pengutronix.de; Mon, 12 Jun 2023 08:58:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=xMVBRuUt4fRF9ajeGVMu9S/9IYP++slh+KP3U5W8x1k=; b=fgT3A/U0f7Bm0VFj8eiUhX+GwC
	JqYOiYg5uZ577443N2JlNwOvKADclB2+A72NC6/e7eL7TjeovTuHd4+TUw8k9i/xPnE6QHw4r+fGP
	2AWxpg6Q2fumWFS4duqEfwIQanLPDtNL8H/bMRDMBFX0PNVeDJHmY6ZvgwoAqwJF9ewF7v9dxRhIP
	POcuwYrQT8wVAeNtY6HAWB5HwkYkG2VsFdTPeY+UP1O3lRzpXy5FJBxo1t6EsiXKCTa2g/NUEie5R
	IMQ/YZbJiQucGFoIbzxxHciAbX2p3GU2UNu4UsLzwCTWAMe53jSr0Fgwzd9dQScGIQF0xAEiz9LDM
	eIRJCHzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8bUw-002pmq-03;
	Mon, 12 Jun 2023 06:57:54 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8bUt-002plu-1m
	for barebox@lists.infradead.org;
	Mon, 12 Jun 2023 06:57:53 +0000
X-GND-Sasl: ahmad@a3f.at
X-GND-Sasl: ahmad@a3f.at
Received: by mail.gandi.net (Postfix) with ESMTPSA id E8FC6FF807;
	Mon, 12 Jun 2023 06:57:46 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
Date: Mon, 12 Jun 2023 08:57:41 +0200
Message-Id: <20230612065741.407205-1-ahmad@a3f.at>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230611_235751_727304_3B2FC4C5 
X-CRM114-Status: UNSURE (   6.52  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] fixup! block: parse partition table on block device registration
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

efi: block: drop now unused variable definition

We now directly return blockdevice_register(...), so the ret variable is
unused.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 drivers/block/efi-block-io.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/block/efi-block-io.c b/drivers/block/efi-block-io.c
index 7162106ab8ea..79a62d53d30a 100644
--- a/drivers/block/efi-block-io.c
+++ b/drivers/block/efi-block-io.c
@@ -146,7 +146,6 @@ static bool is_bio_usbdev(struct efi_device *efidev)
 
 static int efi_bio_probe(struct efi_device *efidev)
 {
-	int ret;
 	int instance;
 	struct efi_bio_priv *priv;
 	struct efi_block_io_media *media;
-- 
2.40.1



