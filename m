Delivery-date: Thu, 13 Aug 2026 17:28:55 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wuXMV-002ilu-08
	for lore@lore.pengutronix.de;
	Thu, 13 Aug 2026 17:28:55 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 8DDD12020E5
	for <lore@pengutronix.de>; Thu, 13 Aug 2026 17:28:51 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=TbsxYkqd;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b="GQi/IjFs";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=famCJqTNMwM6sf7V4OQoKOM0UdjXpm6S7hjmBBuNYcI=; b=TbsxYkqdxXz2F3T4PHhTM0X5o5
	PFH4SjP3Pn2z7aYSOC4NFeFz+LdH9Sb0/mNUhdL5zX1pOfuomFLW4O3KtRotqwbLOkRR58+ogPevM
	oHiOASazZA8/gfkdJsi3l6nFxXyLWdl2/u0zmOcDeSA6Xz6iu3YNS+nuqf250JS24+MZT8Eu6imvW
	CvQa0mgmTsxmATV+F0YQ/6RKhU5QS4nclUuzbnpV7XOIzByNyL1NoThJGQRV9QGNuqqfwvP1CbTAd
	t4RUY2t4n6BP6JjXUYCDHrzj808zAmxWfZjIzNWtXCpWpIrDwMfAiR2z4uvoDUmN8dr8DJyEOM3jl
	ZRcX9a8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuXK9-000000010Va-1kfr;
	Thu, 13 Aug 2026 15:26:29 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuXK7-000000010TC-1wPb
	for barebox@lists.infradead.org;
	Thu, 13 Aug 2026 15:26:27 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id A974561890;
	Thu, 13 Aug 2026 15:26:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 618DDC2BCFB;
	Thu, 13 Aug 2026 15:26:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786634786;
	bh=8kdfkYmvc6Rba6DyBG3r+S/2TNVvMQlAhH+j+Go9Ps8=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=GQi/IjFsLV4fLxrlNsGV51SEuvJAVCMOG6g3l4gtrk1JXLue5AbLpcnn8wq1fe/v7
	 ZBjQ5pr9V94KB6GKtKNtnOxH3LapSguWStHyPFav78wFvMJX6svVmx0QFpb1EJbCU+
	 srkWZycyjz3YGfJ21NlaogF5qEifK/vOR2Y01KYAdL2k5Lo9NppuMrsoX3dT7E4BT+
	 4zuxB5wLoLSpnkB3IL4SpsI0pO1WfzHv/c6Z1aa5WqaWkQAo+koUWgRnlP2jeOcvQF
	 +1qo8r5zcZBAcFZRAusdsdD2oAeLlk3maFkaX0xakr0JG38Peczw9mTPR0Zm5zD8YY
	 M79cnAxi4pu/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4D665C5DF69;
	Thu, 13 Aug 2026 15:26:26 +0000 (UTC)
From: Luca Lauro via B4 Relay <devnull+famlauro93l.gmail.com@kernel.org>
Date: Thu, 13 Aug 2026 17:26:24 +0200
Subject: [PATCH v4 04/14] ARM: mvebu: rename PUTC_LL to MVEBU_PUTC_LL
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260813-rn102-rn104-series-v4-4-f932ac63efa0@gmail.com>
References: <20260813-rn102-rn104-series-v4-0-f932ac63efa0@gmail.com>
In-Reply-To: <20260813-rn102-rn104-series-v4-0-f932ac63efa0@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 "open list:BAREBOX" <barebox@lists.infradead.org>
Cc: Luca Lauro <famlauro93l@gmail.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1786634824; l=1088;
 i=famlauro93l@gmail.com; s=20260723; h=from:subject:message-id;
 bh=/5V7fuKugqpi3D+fGP52vhlNoamQA7hEofVWrbSmDoo=;
 b=h68BebOgptoQLNu5ww8ndbf6Wlp14kX0Om6T95Y2ONB8/p84KZAe21F11fR9fPzCRJ5X9AyZs
 PVUdCy5w7WKBZiBZwkJzuL5IYLfrnw6sn+MA9xIohop0t7aWaxzj3RU
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
X-Stat-Signature: 34zi8sjfwymfie1idbtcw54wdb1sirpb
X-Spamd-Result: default: False [-7.91 / 15.00];
	DWL_DNSWL_MED(-4.00)[kernel.org:dkim,infradead.org:dkim];
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
X-Rspamd-Queue-Id: 8DDD12020E5

From: Luca Lauro <famlauro93l@gmail.com>

The name PUTC_LL is used by multiple architectures in barebox for their
early low-level UART output helpers. Since these functions differ between
SoCs and are defined in architecture-specific debug_ll headers, using the
same global name can lead to collisions or accidental overrides when
including multiple debug_ll headers.

To avoid such namespace conflicts and to make the origin of the function
explicit, rename the mvebu-specific PUTC_LL to MVEBU_PUTC_LL.

Signed-off-by: Luca Lauro <famlauro93l@gmail.com>
---
 include/mach/mvebu/debug_ll.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/mach/mvebu/debug_ll.h b/include/mach/mvebu/debug_ll.h
index cf08776d4f..cd81b27e39 100644
--- a/include/mach/mvebu/debug_ll.h
+++ b/include/mach/mvebu/debug_ll.h
@@ -15,7 +15,7 @@
 
 #define EARLY_UART	UARTn_BASE(CONFIG_MVEBU_CONSOLE_UART)
 
-static inline void PUTC_LL(char c)
+static inline void MVEBU_PUTC_LL(char c)
 {
 	/* Wait until there is space in the FIFO */
 	while (!(readl(EARLY_UART + UART_LSR) & LSR_THRE))

-- 
2.47.3




