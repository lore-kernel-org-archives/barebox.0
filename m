Delivery-date: Sun, 02 Aug 2026 18:20:00 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wqYut-005aIy-2G
	for lore@lore.pengutronix.de;
	Sun, 02 Aug 2026 18:20:00 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id DC223201230
	for <lore@pengutronix.de>; Sun, 02 Aug 2026 18:19:59 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=G2PrjWLG;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b="AgKSc/E3";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mlupP76x0cPToXq2F4QohpJaIg91Zz+Egr+A2CxgRx8=; b=G2PrjWLG5HUoEJmyeYzTy7rGjv
	EOYjEZNxseKkwxaA+cctIepJm+87gagmlKpiPOIAVHzEgtY3oaKNXlKaDGZ4v8MXu8KSP7j5CCRqv
	sEML8pdigkJYnt/AkjxxTx50gDiLwt5aNQK+m6ybIsGaPSFVSwRSvj7yxPs6KMcmajiZSfIbuWVGd
	yiEXzTtJUYBAVz0HF+recgihwpkCj0h9So42r2n9wUGSj1f8xpyDOZLXPt+EMrypHSAo9AgaksQhD
	edqbxZHvMBL5Lf7uPaHtLBTUkQlHaHT02h2yFUrfz6GX1JG/N38gCnW5JQqKXnvGzzltAid3y7qKy
	AWckntpw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqW3B-0000000Feww-32GB;
	Sun, 02 Aug 2026 13:16:21 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqW3A-0000000FeuH-06F8
	for barebox@lists.infradead.org;
	Sun, 02 Aug 2026 13:16:20 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 7031943D88;
	Sun,  2 Aug 2026 13:16:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 4E9A7C2BCF4;
	Sun,  2 Aug 2026 13:16:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785676579;
	bh=RhkSodmScw6WxZGuhuHfwX7q/4dmU/klUUDNTdz2C/o=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=AgKSc/E3eUMsb/cyHnqXmBQwnge/jw2fIcz1QwbsokEfJ5ZFqG8wWlzw24VNAOjcA
	 9Dp7/J/wQuXX2/5AkIePgSK112QH/MAn1g//r6QMm9GtrggcLjblFnWUaPFCMlw90E
	 tbNIrSE+vFqY4O5a/GiqhcgH9+XDeFzsbnd2y2cNplhSeOtHPSwychLKEmFqDJzozp
	 Nop71Nc1tVFBPpJIfEB/u5MKFnLIZJcUKrvzcQOyUQVlh9XZr/H0TeTYAw2nLpnHba
	 Pv7ESJDbZAv+19v2CCe+WAkCUdHYuVeQZ3q0jUP/Ik19M0INJCdqz9KcDQ656GM63Y
	 ohoXhq9qOayHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3FFF5C55175;
	Sun,  2 Aug 2026 13:16:19 +0000 (UTC)
From: Luca Lauro via B4 Relay <devnull+famlauro93l.gmail.com@kernel.org>
Date: Sun, 02 Aug 2026 15:16:24 +0200
Subject: [PATCH v3 08/15] usb: ehci: initialize periodic_queue_dma
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260802-rn102-rn104-series-v3-8-f7685a279fb5@gmail.com>
References: <20260802-rn102-rn104-series-v3-0-f7685a279fb5@gmail.com>
In-Reply-To: <20260802-rn102-rn104-series-v3-0-f7685a279fb5@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 "open list:BAREBOX" <barebox@lists.infradead.org>
Cc: Luca Lauro <famlauro93l@gmail.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1785676613; l=1288;
 i=famlauro93l@gmail.com; s=20260723; h=from:subject:message-id;
 bh=LadACguLYd6pPy3mJPh6y+HI9qrWJWEg5Y0e7JJa35o=;
 b=DygitD0EtBcFXt7tKdC87mBxWVMjSirr6EbiMtWBFuIbnlH2VzNRTIAaYFVNo2cOlOtMdf6KR
 9tysw43bNrjB/KwmPtPBpm1D/lPg2Wqbb6CfQvMAbijdXta59+Zxmm+
X-Developer-Key: i=famlauro93l@gmail.com; a=ed25519;
 pk=OAJlcD69ugQCl99Vy6w+Aeu+ZUb1IVGcz1Ijxo6Ch78=
X-Endpoint-Received: by B4 Relay for famlauro93l@gmail.com/20260723 with
 auth_id=892
X-Original-From: Luca Lauro <famlauro93l@gmail.com>
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
Reply-To: famlauro93l@gmail.com
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-Spamd-Result: default: False [-6.91 / 15.00];
	DWL_DNSWL_MED(-4.00)[kernel.org:dkim,infradead.org:dkim];
	BAYES_HAM(-3.00)[99.99%];
	FREEMAIL_REPLYTO_NEQ_FROM(2.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,kernel.org:s=k20201202];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_ALL(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[devnull@kernel.org,barebox-bounces@lists.infradead.org];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	TAGGED_FROM(0.00)[lore=pengutronix.de,famlauro93l.gmail.com];
	FREEMAIL_CC(0.00)[gmail.com];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[devnull@kernel.org,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_REPLYTO(0.00)[gmail.com];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_THREE(0.00)[3];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	DKIM_TRACE(0.00)[lists.infradead.org:+,kernel.org:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[famlauro93l@gmail.com]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: DC223201230
X-Stat-Signature: nykuyc8qj18chrdmstpatubo1pp77m8j

From: Luca Lauro <famlauro93l@gmail.com>

Store the DMA address of the periodic queue head in
ehci->periodic_queue_dma. Without this initialization the periodic
schedule may reference an invalid address.

Signed-off-by: Luca Lauro <famlauro93l@gmail.com>
---
 drivers/usb/host/ehci-hcd.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/usb/host/ehci-hcd.c b/drivers/usb/host/ehci-hcd.c
index 51b9e52a4f..a4832bb3ff 100644
--- a/drivers/usb/host/ehci-hcd.c
+++ b/drivers/usb/host/ehci-hcd.c
@@ -897,6 +897,8 @@ static int ehci_init(struct usb_host *host)
 	periodic->qt_next = cpu_to_hc32(QT_NEXT_TERMINATE);
 	periodic->qt_altnext = cpu_to_hc32(QT_NEXT_TERMINATE);
 
+	ehci->periodic_queue_dma = ehci_qh_dma(ehci, periodic);
+
 	/*
 	 * Step 2: Setup frame-list: Every microframe, USB tries the same list.
 	 *         In particular, device specifications on polling frequency
@@ -1442,11 +1444,14 @@ static int ehci_probe(struct device *dev)
 	if (ret)
 		return ret;
 
-	ret = clk_bulk_get_all_enabled(dev, &clks);
+	ret = clk_bulk_get_all(dev, &clks);
 	if (ret < 0)
 		return ret;
 
 	num_clocks = ret;
+	ret = clk_bulk_enable(num_clocks, clks);
+	if (ret)
+		return ret;
 
 	iores = dev_request_mem_resource(dev, 0);
 	if (IS_ERR(iores))

-- 
2.47.3




