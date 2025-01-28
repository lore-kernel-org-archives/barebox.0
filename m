Delivery-date: Tue, 28 Jan 2025 04:56:48 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tcciV-005MxC-2N
	for lore@lore.pengutronix.de;
	Tue, 28 Jan 2025 04:56:48 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tcciV-0000Az-Rs
	for lore@pengutronix.de; Tue, 28 Jan 2025 04:56:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=zbuYPXcSEt97dmjGodajpqc2Z/9g8i2LXrEKlJgGKAU=; b=SkCJiq6iUrOj/jip8qzbIlgFuw
	KNgGWrPa+ne2oQP29GKqgRVOf7e98E3OoG7mHywkGk1sGcgE3PHKeV9X4rLnb0gcXcalFYKoxm/vH
	tbqB6e1tTykQD/x0gUK3qUe5ZJTO3EPDmkCB+8OTjMMrjeqCOsqzP2B0A6+inqHFw8L6DqZRcD22X
	MmAx0/kO4cJYst3KPdkv1tz1DE6MeuT85Zkl0+TTxiyfyy/PK8+Xps3tBek/rzy5AVBsumPrB4gLZ
	4eNt7ySHMd1ada8vweeT1NRY/V4p8LXj1OHWC7e7SI0SJRD1AVY6TP+SoHnGnuDbC7GMk8r8XdzSd
	LfomoDcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tcchg-000000041dW-0w7n;
	Tue, 28 Jan 2025 03:55:56 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tcchd-000000041d4-0Ogu
	for barebox@lists.infradead.org;
	Tue, 28 Jan 2025 03:55:54 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id C80B4A4021F;
	Tue, 28 Jan 2025 03:54:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EDA52C4CED3;
	Tue, 28 Jan 2025 03:55:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738036551;
	bh=uCQSjBezEX9B+xRSh0PU5z9Wzgu3C1j9vl4Xh0r7FsI=;
	h=From:Date:Subject:To:Cc:Reply-To:From;
	b=jclD5R2OoCNIRUGkXTw+3vx2uvaQzuvQCQqoSxcgDwradbjeJX8rY1wuyfWEKPceo
	 a1jHnCpyEA8TfwXDD1lG0AMCcWOGoKpXwNyGzfV5kKMzUggebNt4Ijlhwt3JyGYGUk
	 u51glmDx3mKyXKm2Q/wAiFSSC0L17s3RlafVeQrtEkeRUesYwwNtUJepKoF+DiVUOA
	 6Cbbh/edrhsVKSZ08EFW/qsX3KN8f4s33JotzmQPAGRllZlS2yKNP2MHPnQ/ZsITsG
	 86zuUsuf9W6+Q42djakU0T690GzN3pvJVTgRg5srGNulrP36lxuMRIC9eyOKWHguVS
	 6OEF8g83XhRlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D595BC0218D;
	Tue, 28 Jan 2025 03:55:50 +0000 (UTC)
From: David Dgien via B4 Relay <devnull+dgienda125.gmail.com@kernel.org>
Date: Mon, 27 Jan 2025 23:16:18 -0500
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250127-fix-macb-send-v1-1-d9b6067dda86@gmail.com>
X-B4-Tracking: v=1; b=H4sIABFamGcC/x2MQQqAIBAAvyJ7bmEzsugr0cF0qz1koRCB+Pek4
 8DMZEgchRNMKkPkR5JcoULbKHCHDTuj+MqgSffUaoObvHhat2Li4LEzRMNIW+95hNrckavw/+a
 llA9/D1swXwAAAA==
X-Change-ID: 20250126-fix-macb-send-3600780f5de8
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Billy Gomez <william.james.gomez@gmail.com>, 
 David Dgien <dgienda125@gmail.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1738037790; l=1127;
 i=dgienda125@gmail.com; s=20250126; h=from:subject:message-id;
 bh=TOYs8c3poqqRPzuaB7uHXHWJwieavBQK6hgSIzXrSE4=;
 b=7et2K7QnCEirSrH4zAp0Y+iIl+0BZZQgR8FCgwc5FRF/kpMN0DPUJd5CQunY3sEB9bfgBHA78
 KS8p1A8GdECC7oHunRP1N83lJcRyyTbx/nWAVZArXauyMK9kwfDQOQ1
X-Developer-Key: i=dgienda125@gmail.com; a=ed25519;
 pk=zPhfl/eH2iShpaIksvU8MCg11Il6Dx2oW7WYAzpKbo0=
X-Endpoint-Received: by B4 Relay for dgienda125@gmail.com/20250126 with
 auth_id=332
X-Original-From: David Dgien <dgienda125@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250127_195553_209905_652ACDA8 
X-CRM114-Status: GOOD (  11.22  )
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
Reply-To: dgienda125@gmail.com
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-106.3 required=4.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,FREEMAIL_REPLYTO_END_DIGIT,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE,USER_IN_WELCOMELIST,
	USER_IN_WHITELIST autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] macb: Fix tx completion check
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: David Dgien <dgienda125@gmail.com>

Check the send completion bit for the current packet in the descriptor
ring, instead of just the first entry in the ring.

This fixes issues when sending multiple small packets in quick
succession, such as with netconsole.

Reported-by: Billy Gomez <william.james.gomez@gmail.com>
Signed-off-by: David Dgien <dgienda125@gmail.com>
Fixes: aa2095304a ("macb: fix tx ring size")
---
 drivers/net/macb.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/macb.c b/drivers/net/macb.c
index 28c2fc860e37853a91488a675af3716d9f3843df..205e3169f17b2b762ba51640248a2ea96db5c582 100644
--- a/drivers/net/macb.c
+++ b/drivers/net/macb.c
@@ -132,7 +132,7 @@ static int macb_send(struct eth_device *edev, void *packet,
 	start = get_time_ns();
 	ret = -ETIMEDOUT;
 	do {
-		ctrl = readl(&macb->tx_ring[0].ctrl);
+		ctrl = readl(&macb->tx_ring[tx_head].ctrl);
 		if (ctrl & MACB_BIT(TX_USED)) {
 			ret = 0;
 			break;

---
base-commit: 1a3be5bdf6329e4e691f1d39461f5157767c7e72
change-id: 20250126-fix-macb-send-3600780f5de8

Best regards,
-- 
David Dgien <dgienda125@gmail.com>




