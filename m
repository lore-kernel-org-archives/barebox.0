Delivery-date: Sun, 02 Aug 2026 15:17:41 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wqW4S-005XbD-1X
	for lore@lore.pengutronix.de;
	Sun, 02 Aug 2026 15:17:41 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id E3156201106
	for <lore@pengutronix.de>; Sun, 02 Aug 2026 15:17:40 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="Fb/kU834";
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=sjVwNjyx;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=famCJqTNMwM6sf7V4OQoKOM0UdjXpm6S7hjmBBuNYcI=; b=Fb/kU834s1KvwatioNSUSd8R3I
	5eshhdrytTjR73a2OxXTKI0rS5ygQ9+FSQgC+QWZZoyQSJF9OEGOTau8wecWbU0dgCrwKbl+BRLp9
	ynZD3/pGavwIpgquJq1mtLmhXkAq8dxqlyLGbwiE3XT81hSYZIWuOnzVh2bHESXOc2J2DQwd8/USm
	05uF1f2Aq+1xtaV2Kl24iNWncVfXRBXBSLqrqHJnqsVLZglxDkXpCb6nJLprZAo9moyQwAAdqAY5y
	Mo1w/sCcGd2QQfIvNjj4ZpxBe8coxtiY+9jp7jdxG7pHpo6C5tJ4nXG3oomGvW63o9F4tZg+WzGNA
	BXkSnSQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqW3A-0000000Feuv-1ofF;
	Sun, 02 Aug 2026 13:16:20 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqW39-0000000Fetp-2hmM
	for barebox@lists.infradead.org;
	Sun, 02 Aug 2026 13:16:19 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 305B143C80;
	Sun,  2 Aug 2026 13:16:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1377FC2BCFC;
	Sun,  2 Aug 2026 13:16:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785676579;
	bh=8kdfkYmvc6Rba6DyBG3r+S/2TNVvMQlAhH+j+Go9Ps8=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=sjVwNjyxF/LcGl6nLIShnQeAmj9X0FfvxpUAvHco6TUNj+69FBCYj8sy3SdxIuz8D
	 T9zsk5Ht2QKFxkUj2ov/doZ3PTQ20BCIfJyzC9zZGwkSnBMvMTMGaoaFMQvC+fubSC
	 TaEjnfasXhnbf33+AcirkpOm9N5wlhLBIPCKPd0ahc50GHyUnzEbTV9w8pelx5r6TE
	 /Ut6QKL4y9t9VX2GVh7ZsePPgTvjFq6qVMwlZCYpCmj78+PzWGSrZdiZXshF6oYOJ5
	 MCAef/TKy9VomHe/nL/s5Lu4o/qsEHALNEXP2qRsQRYqmHM8iy9Gp59kxuBQhLISEW
	 GZeAb8NJ6s/JA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F2ADDC55180;
	Sun,  2 Aug 2026 13:16:18 +0000 (UTC)
From: Luca Lauro via B4 Relay <devnull+famlauro93l.gmail.com@kernel.org>
Date: Sun, 02 Aug 2026 15:16:20 +0200
Subject: [PATCH v3 04/15] ARM: mvebu: rename PUTC_LL to MVEBU_PUTC_LL
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260802-rn102-rn104-series-v3-4-f7685a279fb5@gmail.com>
References: <20260802-rn102-rn104-series-v3-0-f7685a279fb5@gmail.com>
In-Reply-To: <20260802-rn102-rn104-series-v3-0-f7685a279fb5@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 "open list:BAREBOX" <barebox@lists.infradead.org>
Cc: Luca Lauro <famlauro93l@gmail.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1785676613; l=1088;
 i=famlauro93l@gmail.com; s=20260723; h=from:subject:message-id;
 bh=/5V7fuKugqpi3D+fGP52vhlNoamQA7hEofVWrbSmDoo=;
 b=fXiJsyOAfwyUScWz8NvaLVW0yuIxCc/+q3ZIp6HQaLaFT/V30qnKOO0XtbUzYpzAxzEXHZJyN
 myKAbb6qEXuBa56cgDV7MI/o3MJ2TB7QSRdOLodOJjWPFj3uQihHr8m
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
	DWL_DNSWL_MED(-4.00)[infradead.org:dkim,kernel.org:dkim];
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
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: E3156201106
X-Stat-Signature: fiwc1adpcj8s5sshxzygq3askpiisfbh

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




