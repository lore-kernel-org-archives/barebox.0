Delivery-date: Thu, 23 Jul 2026 16:02:11 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wmu03-001zCE-0X
	for lore@lore.pengutronix.de;
	Thu, 23 Jul 2026 16:02:11 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 9CD7F2028A8
	for <lore@pengutronix.de>; Thu, 23 Jul 2026 16:02:11 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=3vsM+dWT;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=bnIhqRAM;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Dybd6Cnc60zZD9Ak8jeEdCuMW/72AVSjg6wUW7u5wJU=; b=3vsM+dWTobSMj27MwzvgyoTQ5M
	ttQ8qIBPABzawGlFLi91BC6bwxgBMGGG/1IIpL7vkXHE98Q8Z4Z2DJEVpx6vSj2nTrggJDyfPd7Na
	SmG5FsYA/LO6RayotbuhPd4US5OerDZ2gW4Kb+kf0XLH7EJRtnxSNtmJztll2ajnxbggMQLc5a1Er
	rj39CCw43BbYlCv9PjyNINy1vI/fTFRyC2MCfgOh0Fp6+0WPwR9QhR9sDj1wGZCDSNXz2GwT/hfyJ
	j3sYdYO4b7T3kc4eaxfNSPUCKvY29A2JzC0F8DMJnwXTqFVb0qrjeu7Z3CdUMJ9VTQJJXnPARNGRF
	phQy9l8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmtvD-0000000EQQ4-2OZK;
	Thu, 23 Jul 2026 13:57:11 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmtvA-0000000EQMJ-48da
	for barebox@lists.infradead.org;
	Thu, 23 Jul 2026 13:57:09 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 62B2460A7E;
	Thu, 23 Jul 2026 13:57:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 18502C2BCFA;
	Thu, 23 Jul 2026 13:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784815028;
	bh=amf+iQLtrevVJARITUc3Bo4MdOsAWMlGhkVfDM8BDqw=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=bnIhqRAMW8ZzmCDiGmtzjN6alCdzpjCRTC+MLhV8/XL+IM/BcC327iKjArwtwKn2H
	 5tuFEtVlqCwzX/qst8eZ4SyrZygvS3UIsebRXzF8zlcljkGWH78Pou6EJ8ZJO5fIrb
	 mgktMYMA7auZIwbPV4RqHk+1Rs3silWQwnRMLz8k0dE5cgEL8YBviVW15JWbbX2VnQ
	 3XobB8cJmrk9CQ0mLW+j18EMdqhYIdILGO9N5rtycvRQ2ANVA9jU6jnTymEX1QPwma
	 vm4vrjem0/fwB0G01oidxmng8yHPwY0zIpfLVzyrw1gNrgqJaf7VN4pUHoIDBLhlWL
	 b8TbA0GZoBJ/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 06F49C531F5;
	Thu, 23 Jul 2026 13:57:08 +0000 (UTC)
From: Luca Lauro via B4 Relay <devnull+famlauro93l.gmail.com@kernel.org>
Date: Thu, 23 Jul 2026 15:57:50 +0200
Subject: [PATCH 12/19] ARM: mvebu: rename PUTC_LL to MVEBU_PUTC_LL
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260723-rn102-rn104-series-v1-12-7698d25df866@gmail.com>
References: <20260723-rn102-rn104-series-v1-0-7698d25df866@gmail.com>
In-Reply-To: <20260723-rn102-rn104-series-v1-0-7698d25df866@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 "open list:BAREBOX" <barebox@lists.infradead.org>
Cc: Luca Lauro <famlauro93l@gmail.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1784815061; l=565;
 i=famlauro93l@gmail.com; s=20260723; h=from:subject:message-id;
 bh=pteQpJSBoykJa1rNZLISGCFm/a/BFP+67qxg280hkDg=;
 b=sPmE2HBKizIlO4yYPFWZMcTL2AYhGAOTLt4Mp+cDywC1zvP0obgR421rB4kewSXljumrHrXUV
 qLc7Snq9fbzBtW7AEm8yU3PNhanCTQQ9LQDVYHLg85ErmbQUTS8Z2iL
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
X-Rspamd-Queue-Id: 9CD7F2028A8
X-Rspamd-Server: mx1
X-Stat-Signature: esyrystbwuhesdbds4nt3pwmhyy3msd3

From: Luca Lauro <famlauro93l@gmail.com>

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




