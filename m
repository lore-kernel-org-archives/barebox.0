Delivery-date: Thu, 23 Jul 2026 16:02:12 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wmu03-001zCj-1O
	for lore@lore.pengutronix.de;
	Thu, 23 Jul 2026 16:02:12 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id DF6AE202771
	for <lore@pengutronix.de>; Thu, 23 Jul 2026 16:02:11 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=RNKNyo0Y;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=fdDUqgtP;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LFsPY1be6Hl9ajAryDMmmkPWz/brgT/s5xdPonj0yPM=; b=RNKNyo0YqNf7Ei/nqBJVmzX3OU
	KbqnRTbRQii9/IU/H4516gJ05IWk2HN0ReIkPM5yI/Rw+HJcXxpu6AAthjL1bMAETA3AWmPDssZgx
	C/p2fom35UyEKw24nJJ2JW0NUzCTdq9VmXvZSnQoh7qjWNjZDDGxlufvWAl29Vjjiqd0fakgDquGK
	wx7ADwtZ/tE8k7IEL9t836KObDTJk8/KWB7LiuAYuwu5DLW2jHucJxNobyfB8Kw4VYxOaprUI16+8
	ZCbvyomUt06tMwmQtQOQxGr3UEEFAj2c2iCUq5OiCr4FBJvgFZxw5juWRpyPiz0io2CdWFV/dKRDZ
	95CAIECQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmtvE-0000000EQQz-0pFu;
	Thu, 23 Jul 2026 13:57:12 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmtvA-0000000EQM5-4A5n
	for barebox@lists.infradead.org;
	Thu, 23 Jul 2026 13:57:09 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id CE17460A7F;
	Thu, 23 Jul 2026 13:57:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 830DFC2BCC9;
	Thu, 23 Jul 2026 13:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784815028;
	bh=pBjT/+hXsMoNea0nyGn9sQe0G9yUtX95wPAXiHMyu8s=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=fdDUqgtPzSSRpdjBxhMwsQPAp8gs3SOYiyR36D9mQT3Huz4LHHbsc+xeoZPPR2doR
	 G9D74h46DeBSFMqJQijr77zxv4okczV77CrAy94xuTzX25qeBJ7kVkEDwgzX/358s0
	 1MPClKP654fnjHePw3aHb0m5+zld8SBvN2kWxhMbZobq8D0Mlg9pd4BUE0/HnHjyks
	 f+cPgYmFzQ8I8rnYG67Rk7NkExnvtKmwjixALoO6ZU5O71tdPUHXhnYq4GnPXmFC4v
	 1/MTDrdQTj4gQqzzff8W1EG5KNEwo5NF8WhsROZJELm5v2YuMYh9uQM5u3yDfFLpIl
	 Ve0MkIyEe6DeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70FB2C531D4;
	Thu, 23 Jul 2026 13:57:08 +0000 (UTC)
From: Luca Lauro via B4 Relay <devnull+famlauro93l.gmail.com@kernel.org>
Date: Thu, 23 Jul 2026 15:57:55 +0200
Subject: [PATCH 17/19] usb: ehci: minor fixes for Marvell compatibility
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260723-rn102-rn104-series-v1-17-7698d25df866@gmail.com>
References: <20260723-rn102-rn104-series-v1-0-7698d25df866@gmail.com>
In-Reply-To: <20260723-rn102-rn104-series-v1-0-7698d25df866@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 "open list:BAREBOX" <barebox@lists.infradead.org>
Cc: Luca Lauro <famlauro93l@gmail.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1784815061; l=2998;
 i=famlauro93l@gmail.com; s=20260723; h=from:subject:message-id;
 bh=9aIAfTwznhBF1Q9v0NH1V3efCA0Uw6eq2ly05ERErKE=;
 b=m0hOskqM0fLUBEdDDpw6khgTra01k78kPoDN1t1JAtVWyjJz/k17/kza36H9z7pWjwoLTfqD6
 xq8TmXV9+BOBD9uvEBPGp0FBR2LCb5HuZrmmtNWewBnm5kNrnGByIfx
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
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	FORGED_SENDER(0.00)[devnull@kernel.org,barebox-bounces@lists.infradead.org];
	FREEMAIL_REPLYTO(0.00)[gmail.com];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	TO_DN_ALL(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[devnull@kernel.org,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de,famlauro93l.gmail.com];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,kernel.org:+];
	RCPT_COUNT_THREE(0.00)[3];
	HAS_REPLYTO(0.00)[famlauro93l@gmail.com]
X-Rspamd-Action: no action
X-Rspamd-Queue-Id: DF6AE202771
X-Rspamd-Server: mx1
X-Stat-Signature: 6i3yxgigws69r39ksfphwpditkj4ynyz

From: Luca Lauro <famlauro93l@gmail.com>

---
 drivers/usb/host/ehci-hcd.c | 22 +++++++++++-----------
 1 file changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/usb/host/ehci-hcd.c b/drivers/usb/host/ehci-hcd.c
index 51b9e52a4f..b72436b312 100644
--- a/drivers/usb/host/ehci-hcd.c
+++ b/drivers/usb/host/ehci-hcd.c
@@ -857,8 +857,6 @@ static int ehci_init(struct usb_host *host)
 	struct QH *periodic;
 	int i;
 
-	ehci_halt(ehci);
-
 	/* EHCI spec section 4.1 */
 	if (ehci_reset(ehci) != 0)
 		return -1;
@@ -870,16 +868,16 @@ static int ehci_init(struct usb_host *host)
 	}
 
 	ehci->qh_list[0].qh_link = cpu_to_hc32(ehci_qh_dma(ehci, &ehci->qh_list[1]) |
-					       QH_LINK_TYPE_QH);
+									QH_LINK_TYPE_QH);
 	ehci->qh_list[0].qh_endpt1 = cpu_to_hc32(QH_ENDPT1_H(1) |
-						 QH_ENDPT1_EPS(USB_SPEED_HIGH));
+									QH_ENDPT1_EPS(USB_SPEED_HIGH));
 	ehci->qh_list[0].qh_curtd = cpu_to_hc32(QT_NEXT_TERMINATE);
 	ehci->qh_list[0].qt_next = cpu_to_hc32(QT_NEXT_TERMINATE);
 	ehci->qh_list[0].qt_altnext = cpu_to_hc32(QT_NEXT_TERMINATE);
 	ehci->qh_list[0].qt_token = cpu_to_hc32(QT_TOKEN_STATUS_HALTED);
 
 	ehci->qh_list[1].qh_link = cpu_to_hc32(ehci_qh_dma(ehci,
-							   &ehci->qh_list[0]) |
+									&ehci->qh_list[0]) |
 					       QH_LINK_TYPE_QH);
 	ehci->qh_list[1].qt_altnext = cpu_to_hc32(QT_NEXT_TERMINATE);
 
@@ -897,6 +895,8 @@ static int ehci_init(struct usb_host *host)
 	periodic->qt_next = cpu_to_hc32(QT_NEXT_TERMINATE);
 	periodic->qt_altnext = cpu_to_hc32(QT_NEXT_TERMINATE);
 
+	ehci->periodic_queue_dma = ehci_qh_dma(ehci, periodic);
+
 	/*
 	 * Step 2: Setup frame-list: Every microframe, USB tries the same list.
 	 *         In particular, device specifications on polling frequency
@@ -906,23 +906,23 @@ static int ehci_init(struct usb_host *host)
 	 *         Split Transactions will be spread across microframes using
 	 *         S-mask and C-mask.
 	 */
-	if (ehci->periodic_list == NULL)
+	if (ehci->periodic_list == NULL) {
+		ehci->periodic_list = dma_alloc_coherent(DMA_DEVICE_BROKEN, 1024 * 4,
+								&ehci->periodic_list_dma);
 		/*
 		 * FIXME: this memory chunk have to be 4k aligned AND
 		 * reside in coherent memory. Current implementation of
 		 * dma_alloc_coherent() allocates PAGE_SIZE aligned memory chunks.
 		 * PAGE_SIZE less then 4k will break this code.
 		 */
-		ehci->periodic_list = dma_alloc_coherent(DMA_DEVICE_BROKEN, 1024 * 4,
-						&ehci->periodic_list_dma);
 	for (i = 0; i < 1024; i++) {
-		ehci->periodic_list[i] = cpu_to_hc32((unsigned long)ehci->periodic_queue_dma
-						| QH_LINK_TYPE_QH);
+		ehci->periodic_list[i] = cpu_to_hc32(ehci->periodic_queue_dma
+									| QH_LINK_TYPE_QH);
 	}
 
 	/* Set periodic list base address */
 	ehci_writel(&ehci->hcor->or_periodiclistbase,
-		    (uint32_t)ehci->periodic_list_dma);
+		    ehci->periodic_list_dma);
 
 	reg = ehci_readl(&ehci->hccr->cr_hcsparams);
 	descriptor.hub.bNbrPorts = HCS_N_PORTS(reg);

-- 
2.47.3




