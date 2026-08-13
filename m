Delivery-date: Thu, 13 Aug 2026 17:33:39 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wuXR4-002irU-2f
	for lore@lore.pengutronix.de;
	Thu, 13 Aug 2026 17:33:39 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 63547201ED5
	for <lore@pengutronix.de>; Thu, 13 Aug 2026 17:33:35 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=y7Kv1k0w;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=sD03eN67;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=r2NcAljOfIjQLHXXsf0HtVkm5myj8Spmxdf9K3SvnbE=; b=y7Kv1k0wslc/s5E8+6YaD3rhuz
	z03h+1ur0tgZZ4OTKzRjvZc3Xq6fTKkq67vrjPXDTJq92e1GiyRPJuNjYbjBszIRwIIBVch1d3Qc3
	VLOghRk4Ja6o74Y90beWVFLiOT2kACANtx9DiCacLfJG0JcRYcGOHE/xYI0hKpjOPmkp/Pv9VHXQP
	j/7etyeS8puLbQ6tK9aMiNekMYcrtzzqr7RYVeGGQRCZkzAXIYDsYA8af7Sx9YC4FIw20FXbmZK8F
	Al/2EDcsBk8PgP2d6DtQlV62jblcydnItjPsyfuoLT7N03An62uESTZBtn3P3aJLsOlhl8ADs+lbN
	vyobktSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuXKD-000000010Z5-0LMy;
	Thu, 13 Aug 2026 15:26:33 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuXK8-000000010TV-0OV1
	for barebox@lists.infradead.org;
	Thu, 13 Aug 2026 15:26:28 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id AAB244382D;
	Thu, 13 Aug 2026 15:26:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 90DB4C2BCF7;
	Thu, 13 Aug 2026 15:26:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786634786;
	bh=ocShD8/qTqdxAtbtV/r/sDHhciBRpKXd6t5zEUIEZjE=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=sD03eN67srCW9oyTAgEN4pHnCYI5NiONMDkWwnIRMQ+zCgpumRBhL0poYPTFX15Vg
	 xl0ChW9W7DpqUFbu9paxv+GO4/BSZB8UjqoEcfeLXSf4X3NIITmutH7mBUw2q3ZlsN
	 YZQOb0na7PKST9Ge6yFwIRxMc1PbnqxWCxvg8Wst2pjooE6EiX3AUVXjAbd/tw0tBd
	 Oi20oyZm0A3HxCmLVrtA8kexEBceHReENb7/htHwF+yEW8TgS9FE+fk1xoNeKakZQ2
	 lHlAqt+y+qjRtPSSmlIb/coXBfE8jtS9AxXJ3YKNiB+Ic1VqsipLe9iSk5j3APfh7c
	 0nzj0KVEhk2aQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7E959C5B572;
	Thu, 13 Aug 2026 15:26:26 +0000 (UTC)
From: Luca Lauro via B4 Relay <devnull+famlauro93l.gmail.com@kernel.org>
Date: Thu, 13 Aug 2026 17:26:28 +0200
Subject: [PATCH v4 08/14] usb: ehci: initialize periodic_queue_dma
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260813-rn102-rn104-series-v4-8-f932ac63efa0@gmail.com>
References: <20260813-rn102-rn104-series-v4-0-f932ac63efa0@gmail.com>
In-Reply-To: <20260813-rn102-rn104-series-v4-0-f932ac63efa0@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 "open list:BAREBOX" <barebox@lists.infradead.org>
Cc: Luca Lauro <famlauro93l@gmail.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1786634824; l=886;
 i=famlauro93l@gmail.com; s=20260723; h=from:subject:message-id;
 bh=I07P005oeTflIN7rJ7Zu0lr6XpKNNqIvnRvWet2vk98=;
 b=FqCLORTArGu3hPsJfvH3VBMNXTzGwTGl24GwQXkpKJ9rXy4ds4icSeDGqrVLQfLviqYinvqlh
 cm0LBn5YhP3CQv9NahIrQ+iJgOdXX1p3GMkeIZj/2ZOQrEewO21fsjg
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
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: 5hr1yxzzkfncqmtetrrpme3gsceabyh9
X-Spamd-Result: default: False [-7.91 / 15.00];
	DWL_DNSWL_MED(-4.00)[infradead.org:dkim,kernel.org:dkim];
	BAYES_HAM(-3.00)[99.99%];
	FREEMAIL_REPLYTO_NEQ_FROM(2.00)[];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,kernel.org:s=k20201202];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_ALL(0.00)[];
	FREEMAIL_REPLYTO(0.00)[gmail.com];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	FORGED_SENDER(0.00)[devnull@kernel.org,barebox-bounces@lists.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de,famlauro93l.gmail.com];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[devnull@kernel.org,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,kernel.org:+];
	RCPT_COUNT_THREE(0.00)[3];
	HAS_REPLYTO(0.00)[famlauro93l@gmail.com]
X-Rspamd-Queue-Id: 63547201ED5

From: Luca Lauro <famlauro93l@gmail.com>

Store the DMA address of the periodic queue head in
ehci->periodic_queue_dma. Without this initialization the periodic
schedule may reference an invalid address.

Signed-off-by: Luca Lauro <famlauro93l@gmail.com>
---
 drivers/usb/host/ehci-hcd.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/usb/host/ehci-hcd.c b/drivers/usb/host/ehci-hcd.c
index 51b9e52a4f..c060d09c64 100644
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

-- 
2.47.3




