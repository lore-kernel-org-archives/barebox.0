Delivery-date: Sun, 02 Aug 2026 15:17:41 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wqW4T-005XbS-0p
	for lore@lore.pengutronix.de;
	Sun, 02 Aug 2026 15:17:41 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id ADC39201106
	for <lore@pengutronix.de>; Sun, 02 Aug 2026 15:17:41 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=fzs95aYF;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=HzORTD4f;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VPDsNj6XiPKA446dtosnC4UTj4tkSUhTx6cCgdT2sao=; b=fzs95aYFAxs7FRDVOWvvKHyxeE
	ztkm+u8LoTzs6ecQPQmZ5DIO9RO+pB/+5Ntsda3N8oInG7AqhN+HUuO4KhYLFTlUQz+hONNyX+red
	bhGwrC+bDsFyy6AhaljWoWuQmbCxbZBj26eWvDBBn4/E5sxeMJMxsX4NPD+aQg/FRXKW+ZTphv4pg
	pvSA1rLJloJczTa5FSKKayBDY0wFY0PWYXnAXz/g+aLBkqMZaYQd2a+9nqPdkKtMav71mvu3qJb35
	KMHYZyZ3KUJXelpfHesRJwOH0/mU4ADRMv2YRKK8CE0uOhQL4VfACH0IbwV5RbHOYpTVW2tEhG5zL
	kb1Bl+mw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqW3A-0000000FevH-29Tw;
	Sun, 02 Aug 2026 13:16:20 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqW39-0000000Fetn-2qsb
	for barebox@lists.infradead.org;
	Sun, 02 Aug 2026 13:16:19 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 1B7BC43489;
	Sun,  2 Aug 2026 13:16:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F22D2C2BCF4;
	Sun,  2 Aug 2026 13:16:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785676579;
	bh=Cq9SkQIQbVcxA021WRQOa2zvZ/VuUKoKZ/LI+cZZ0Jc=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=HzORTD4fQPG49cL+YSOVlBHJqp+iknr98KplE5uW2Q2kZSQ1MIqujEg4GOYctYtRa
	 L5bbQXEvZXGuDQ/9Pd/oC5ir+vKXmV8NXF1EVIIs0br4RfbT/0ATipe/chOGDDydwu
	 yotlngeRt5W0ifha/8qzoLVx6ufncKMgsrsXbQc/UqTc1CIiXKzgEkuec0WEU6JmWe
	 rS3Fw2vGpPq/+mx3XIphw5DgjsRoKF9BAAQ3iqorPpr/pE/Vry4qpnRihXpK55vQKq
	 xSTwKXIxoCluE68S5EiPmpJlHGG9EJq7+C4ZwTTX6YNRxhUmDOrec1BEF4pzrToZLf
	 CCOR5gFaABq4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D5938C55177;
	Sun,  2 Aug 2026 13:16:18 +0000 (UTC)
From: Luca Lauro via B4 Relay <devnull+famlauro93l.gmail.com@kernel.org>
Date: Sun, 02 Aug 2026 15:16:18 +0200
Subject: [PATCH v3 02/15] ARM: mvebu: enable RN102 in mvebu_defconfig
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260802-rn102-rn104-series-v3-2-f7685a279fb5@gmail.com>
References: <20260802-rn102-rn104-series-v3-0-f7685a279fb5@gmail.com>
In-Reply-To: <20260802-rn102-rn104-series-v3-0-f7685a279fb5@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 "open list:BAREBOX" <barebox@lists.infradead.org>
Cc: Luca Lauro <famlauro93l@gmail.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1785676613; l=550;
 i=famlauro93l@gmail.com; s=20260723; h=from:subject:message-id;
 bh=seD/gFydukKnJDD7V1GwLtTGZdYR6KcS8BRuLYyWVbU=;
 b=4aLvGBLtDFVmg0qtiFJyr6YGxtMMourr2aCGkgMhYB/Ibk68k3DHsTLMspPcgkLodlQ1udgYa
 UzRP2XdsDc9D+YvURvdS5DR5dHBtjQ6o3ddg0My3TN+McO8wn7aSaXl
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
	BAYES_HAM(-3.00)[100.00%];
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
X-Rspamd-Queue-Id: ADC39201106
X-Stat-Signature: 1om8zq6noj8hcszkbmhn9h7pcytykx4d

From: Luca Lauro <famlauro93l@gmail.com>

Signed-off-by: Luca Lauro <famlauro93l@gmail.com>
---
 arch/arm/configs/mvebu_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/configs/mvebu_defconfig b/arch/arm/configs/mvebu_defconfig
index 91dd23e1c8..a13b153f9f 100644
--- a/arch/arm/configs/mvebu_defconfig
+++ b/arch/arm/configs/mvebu_defconfig
@@ -1,5 +1,6 @@
 CONFIG_ARCH_MVEBU=y
 CONFIG_MACH_GLOBALSCALE_MIRABOX=y
+CONFIG_MACH_NETGEAR_RN102=y
 CONFIG_MACH_NETGEAR_RN104=y
 CONFIG_MACH_LENOVO_IX4_300D=y
 CONFIG_MACH_MARVELL_ARMADA_XP_DB=y

-- 
2.47.3




