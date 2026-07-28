Delivery-date: Tue, 28 Jul 2026 19:44:12 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wolqe-003rno-0S
	for lore@lore.pengutronix.de;
	Tue, 28 Jul 2026 19:44:12 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 295192021B3
	for <lore@pengutronix.de>; Tue, 28 Jul 2026 19:44:08 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=iQm6IQhe;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=DfZVbJAn;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lj3Io319ZP3mf06BVilk4khmsALrZtEWPEWfPGMFg94=; b=iQm6IQhe2mcWTPpln0CPAzNPio
	zxBOlDqeViY8IpoKZBQI6KiyKMjGG7mGs8QQZ4M165QySckfHC+HYR4VeKFumG9NgFajjhhLMKQWv
	U0knJKQ7TPRUv0W4jhkIFAqRujUQf6HNYzii31fxsl8zRF2cda6ldq4tnZBxJrug5Bpb7NQfJ6GdW
	PjkQ5wNj2tqVGNRemD0IpPN6uy4ysEq8vczbiSxf95D9+C/upu9a5KLCmMJijLUWu4C4zHOrb70oY
	59o9+XZE+axxQSZkzNbsiqV8qNods6QjRvdU0hBWdsoUrKdZyYMs6n+CEoN3S7FOFYbJz4P2tr4P/
	TMB5Ez3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wolpC-0000000614o-0dAO;
	Tue, 28 Jul 2026 17:42:42 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wolp8-0000000611w-2P6f
	for barebox@lists.infradead.org;
	Tue, 28 Jul 2026 17:42:38 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 082B260A5E;
	Tue, 28 Jul 2026 17:42:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2CD1C2BCF6;
	Tue, 28 Jul 2026 17:42:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785260557;
	bh=BmqaRxQGbuQgbz54NeX+SS6/sNMS389m5p9OESIVpSc=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=DfZVbJAnl6lanCE1hP/uabmhV+YBjjI2ICJBthS+Wmo958tzgGLGbKhugTIAF7BsV
	 iolqsKpO+YbCKAFLnb08tcRiijFhJVaWL4DO1mtHzfEli6u22CrWn1aXpnaaWZLOt3
	 D57XICRXosnpvq+pufhRvCs9CTeKWJs1K1urV0g85PiURYijflkps/YaGr2l9O7ybA
	 qRrlUfXOsBttugAnkyuz3jWgV6nvtY4OWQeazGhs1lEbbrhRVxK+RSjD0bz4KrIaTj
	 xB3vnQVLr8WMCM99LZDJG07fPEVFLdJoKFDBYLBb3iLOylisl+vgjHAAs77FIJbklz
	 Z9qSO1/uTmcdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4112C54F54;
	Tue, 28 Jul 2026 17:42:37 +0000 (UTC)
From: Luca Lauro via B4 Relay <devnull+famlauro93l.gmail.com@kernel.org>
Date: Tue, 28 Jul 2026 19:43:21 +0200
Subject: [PATCH v2 09/10] usb: ehci: minor fixes for Marvell compatibility
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260728-rn102-rn104-series-v2-9-ae31f55b7bc8@gmail.com>
References: <20260728-rn102-rn104-series-v2-0-ae31f55b7bc8@gmail.com>
In-Reply-To: <20260728-rn102-rn104-series-v2-0-ae31f55b7bc8@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 "open list:BAREBOX" <barebox@lists.infradead.org>
Cc: Luca Lauro <famlauro93l@gmail.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1785260594; l=3961;
 i=famlauro93l@gmail.com; s=20260723; h=from:subject:message-id;
 bh=SJFrCS1AirmMyQw0TPPCEMJeimZIbSYRXN807jgLidE=;
 b=I+Dl1GwsWv/154AP/aNrogOTBOzNatJMVivENTDQf316/leaKjcxKTUqEnnEH0Y4oH/CdnwH0
 i08qRY6aWIhCgtwpXBsp0I9c99H3a/65v8HHhHA6wrtpn8uoHyLwBlN
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
X-Stat-Signature: ci1iahjpuq7h91barkda5c4eaf7hemjp
X-Spamd-Result: default: False [-6.91 / 15.00];
	DWL_DNSWL_MED(-4.00)[kernel.org:dkim,infradead.org:dkim];
	BAYES_HAM(-3.00)[99.99%];
	FREEMAIL_REPLYTO_NEQ_FROM(2.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_ALL(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[devnull@kernel.org,barebox-bounces@lists.infradead.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	FREEMAIL_REPLYTO(0.00)[gmail.com];
	TAGGED_FROM(0.00)[lore=pengutronix.de,famlauro93l.gmail.com];
	FREEMAIL_CC(0.00)[gmail.com];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[devnull@kernel.org,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,kernel.org:+];
	RCPT_COUNT_THREE(0.00)[3];
	HAS_REPLYTO(0.00)[famlauro93l@gmail.com]
X-Rspamd-Queue-Id: 295192021B3

From: Luca Lauro <famlauro93l@gmail.com>

The Marvell EHCI controller requires a slightly different initialization
sequence compared to generic EHCI implementations.

- Calling ehci_halt() before ehci_reset() can leave the controller in an
  inconsistent state on Marvell SoCs. U-Boot and Linux avoid halting the
  controller before issuing a reset, so drop the early ehci_halt() call.

- The periodic queue DMA address must be explicitly stored in
  ehci->periodic_queue_dma. Without this, the periodic schedule points to
  an uninitialized address, breaking interrupt polling and HID enumeration.

- Only allocate the periodic list when it is NULL. The previous code
  allocated a new list unconditionally, leaking memory and breaking
  reinitialization paths.

- Use ehci->periodic_list_dma directly without casting, as it already
  contains the correct dma_addr_t value.

Whitespace-only changes have been removed.

Signed-off-by: Luca Lauro <famlauro93l@gmail.com>
---
 drivers/usb/host/ehci-hcd.c | 23 ++++++++++++-----------
 1 file changed, 12 insertions(+), 11 deletions(-)

diff --git a/drivers/usb/host/ehci-hcd.c b/drivers/usb/host/ehci-hcd.c
index 51b9e52a4f..69b20b7487 100644
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
 
@@ -897,6 +895,7 @@ static int ehci_init(struct usb_host *host)
 	periodic->qt_next = cpu_to_hc32(QT_NEXT_TERMINATE);
 	periodic->qt_altnext = cpu_to_hc32(QT_NEXT_TERMINATE);
 
+	ehci->periodic_queue_dma = ehci_qh_dma(ehci, periodic);
 	/*
 	 * Step 2: Setup frame-list: Every microframe, USB tries the same list.
 	 *         In particular, device specifications on polling frequency
@@ -906,23 +905,25 @@ static int ehci_init(struct usb_host *host)
 	 *         Split Transactions will be spread across microframes using
 	 *         S-mask and C-mask.
 	 */
-	if (ehci->periodic_list == NULL)
+	if (ehci->periodic_list == NULL) {
+		ehci->periodic_list = dma_alloc_coherent(DMA_DEVICE_BROKEN,
+								1024 * 4,
+								&ehci->periodic_list_dma);
+	}
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
+		ehci->periodic_list[i] = cpu_to_hc32(ehci->periodic_queue_dma | 
+								QH_LINK_TYPE_QH);
 	}
 
 	/* Set periodic list base address */
 	ehci_writel(&ehci->hcor->or_periodiclistbase,
-		    (uint32_t)ehci->periodic_list_dma);
+		    	ehci->periodic_list_dma);
 
 	reg = ehci_readl(&ehci->hccr->cr_hcsparams);
 	descriptor.hub.bNbrPorts = HCS_N_PORTS(reg);

-- 
2.47.3




