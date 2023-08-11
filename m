Delivery-date: Fri, 11 Aug 2023 10:42:04 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qUNif-00GMBp-0z
	for lore@lore.pengutronix.de; Fri, 11 Aug 2023 10:42:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qUNid-0007Mm-5B
	for lore@pengutronix.de; Fri, 11 Aug 2023 10:42:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ODBBfmLvEGU1pby8Xk6sOTAhdu59DID166CdBaKisCw=; b=LyNhuwJrO9FaIvBZvFcEwVeJYn
	laZg8NaRUj43Q3qm3bAqtG5D0oWtVCUEE29OEoRdpwPn/4MjFsd/N4jItmiyL9cKBeZW+5HB/Ur2y
	/CucWjjt05z1wdXBoW8E8dJCuCAkjs0u1U7w4Kvao9yigalnRFIA5+R/xx1knTPbKSLV7jJcWFzl/
	9CKVy0UZJluJqjq6ZM6MMf72Q7A4cGRz0FIWGGZmklZiSdpEpaXXegdnp2HQHVVFyXuGn5Vv+qxsC
	zxjbih25kTzJukAhgnx93tgiI3DZY17cEsSlxrXBuO1R9wRLXJRzBQjzHAqGlMg656f2Bm6//P68M
	jxLSPaUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qUNhJ-009sDj-0q;
	Fri, 11 Aug 2023 08:40:41 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qUNhF-009sAi-22
	for barebox@lists.infradead.org;
	Fri, 11 Aug 2023 08:40:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1qUNh8-00070a-PG; Fri, 11 Aug 2023 10:40:30 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1qUNh8-002fJ1-4k; Fri, 11 Aug 2023 10:40:30 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1qUNh7-00B287-1T;
	Fri, 11 Aug 2023 10:40:29 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Fri, 11 Aug 2023 10:40:26 +0200
Message-Id: <20230811084028.2629771-3-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230811084028.2629771-1-o.rempel@pengutronix.de>
References: <20230811084028.2629771-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230811_014037_674009_E4DC8A69 
X-CRM114-Status: GOOD (  11.68  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/5] net: designware: eqos: add comment about external clock dependencies for the soft reset
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This part of code is not error proof and may fail depending on
implementation state of external HW. I hope this note help to find bugs
later.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 drivers/net/designware_eqos.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/net/designware_eqos.c b/drivers/net/designware_eqos.c
index 6caf3a436f..4489725e87 100644
--- a/drivers/net/designware_eqos.c
+++ b/drivers/net/designware_eqos.c
@@ -427,6 +427,10 @@ static int eqos_start(struct eth_device *edev)
 	if (ret)
 		return ret;
 
+	/* In some cases where PHY or DSA switch is the clock provider for
+	 * EQOS, we need to probe and configure them before issuing software
+	 * reset here.
+	 */
 	setbits_le32(&eqos->dma_regs->mode, EQOS_DMA_MODE_SWR);
 
 	ret = readl_poll_timeout(&eqos->dma_regs->mode, mode_set,
-- 
2.39.2



