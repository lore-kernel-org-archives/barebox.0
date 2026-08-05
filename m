Delivery-date: Wed, 05 Aug 2026 16:23:23 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wrcWg-006elK-2s
	for lore@lore.pengutronix.de;
	Wed, 05 Aug 2026 16:23:23 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 3B8842006E0
	for <lore@pengutronix.de>; Wed, 05 Aug 2026 16:23:19 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=L1DY4vD5;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=/w/NJaVicpxhyHFETcAEFt4BsrP1JWWPcbuy7K35b3g=; b=L1DY4vD5la7GJWnAvNey82TG6E
	Eq+rS4Ij7kOCMXGNvFtZGl+Mu0TZ8z8nZYgDg+b+caw/X8jlxMo2mWax/n5kKn7KxYXkGUqo5kDr+
	I3Ka5N4kBjpdkO8aHxoh2aJ1ir+knlAzAEhidFsM0Dt5ddVuJQC+p1zuZiOb/l2MNnLczWDZnWrwF
	ZY53B6dFb40LluSrdc6hOuX7HzYkn3+2fr0EK3cjCRaXRTbp5Ctlf6HjAADtoChUMtCGtSG23QkQS
	rAE4H7ynQoF54nhFRo/RV6GFg7KArwFZHUVH129v0y4cRnz4Rn4r5tyrC5SM96UWopOw5W1QHapdT
	sk/Ryc6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrcVO-000000044VX-0t5O;
	Wed, 05 Aug 2026 14:22:02 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrcVK-000000044VD-3tHX
	for barebox@lists.infradead.org;
	Wed, 05 Aug 2026 14:22:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id B981A2006E0;
	Wed, 05 Aug 2026 16:21:52 +0200 (CEST)
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wrcVE-0037ZK-2A;
	Wed, 05 Aug 2026 16:21:52 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wrcVE-0000000G8Il-2Pk0;
	Wed, 05 Aug 2026 16:21:52 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: zhengxiaojun <zheng.xiaojun@foxmail.com>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: [PATCH] fixup! net: designware_eqs: set upper 32bit address for DMA descriptors to support 64-bit addressing
Date: Wed,  5 Aug 2026 16:21:43 +0200
Message-ID: <20260805142143.3845127-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260805_072159_110888_CEC03E19 
X-CRM114-Status: UNSURE (   9.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  net: designware_eqos: fix left shift count >= width of type
    CI builds with -Werror, including -Werror=shift-count-overflow, which fails
    for STM32MP enabled platform that use EQOS on a 32-bit platform. 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Spamd-Result: default: False [-1.41 / 15.00];
	SEM_URIBL(3.50)[foxmail.com:email];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:1101:1d::54:received,2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:c01:1d::a2:received];
	BAD_REP_POLICIES(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	SUBJECT_HAS_EXCLAIM(0.00)[];
	FREEMAIL_CC(0.00)[foxmail.com,pengutronix.de];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	R_SPF_ALLOW(0.00)[+mx:c];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 3B8842006E0
X-Stat-Signature: 11ggx5bjss91mwbhh8niwhi3cmqbp9zi

net: designware_eqos: fix left shift count >= width of type

CI builds with -Werror, including -Werror=shift-count-overflow, which
fails for STM32MP enabled platform that use EQOS on a 32-bit platform.

As des1 will have always been programmed to zero on a 32-bit platform,
we can just suppress the warning with a cast.

Cc: zhengxiaojun <zheng.xiaojun@foxmail.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/net/designware_eqos.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/designware_eqos.c b/drivers/net/designware_eqos.c
index 332dc7eb7366..4011b006dd70 100644
--- a/drivers/net/designware_eqos.c
+++ b/drivers/net/designware_eqos.c
@@ -955,8 +955,8 @@ void eqos_remove(struct device *dev)
 
 	mdiobus_unregister(&eqos->miibus);
 
-	dma = eqos->rx_descs[0].des1;
-	dma = (dma << 32) + eqos->rx_descs[0].des0;
+	dma = (u64)eqos->rx_descs[0].des1 << 32;
+	dma |= eqos->rx_descs[0].des0;
 	dma_free(phys_to_virt(dma));
 	dma_free_coherent(DMA_DEVICE_BROKEN,
 			  eqos->tx_descs, 0, EQOS_DESCRIPTORS_SIZE);
-- 
2.47.3



