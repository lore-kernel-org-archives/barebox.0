Delivery-date: Mon, 14 Aug 2023 07:34:09 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qVQDS-003MtK-8w
	for lore@lore.pengutronix.de; Mon, 14 Aug 2023 07:34:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qVQDQ-0006nh-5k
	for lore@pengutronix.de; Mon, 14 Aug 2023 07:34:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ODBBfmLvEGU1pby8Xk6sOTAhdu59DID166CdBaKisCw=; b=DFu+WxNPvURROc6zhph83v4tig
	ym+/nFaWy81cJ7LZKNm/ZJj5+kXGLdKoIvQ66Gw2NYUScm3Ci6as1LJJTTbGPuYZ7fuljJRWZhreV
	Fh7b6h2rSBp2OJxSXjg9ytQej/8Du6O66BoORPllEvgWlxEz4c8v/zwleKTjhwmMuC3wnBZM4D1Zb
	tCEdWbidJ4QoPzHFctzGtltl5mvG5VJP2LnE6XcK6/xNboVhJ7kN25VCp46IvZuHV5am+EODgrVWU
	x4itM0pHImuMXOIV1PWi3Sa+G0crDJJ3tsmhw+FjjnXgQ7m8+WNE5omQ5MOzNbSZinkI85bK6aAB0
	qO2WMtFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qVQC4-00GCQi-0r;
	Mon, 14 Aug 2023 05:32:44 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qVQBx-00GCNv-2j
	for barebox@lists.infradead.org;
	Mon, 14 Aug 2023 05:32:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1qVQBs-0006XU-2H; Mon, 14 Aug 2023 07:32:32 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1qVQBr-000VUK-Er; Mon, 14 Aug 2023 07:32:31 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1qVQBq-009hEJ-2F;
	Mon, 14 Aug 2023 07:32:30 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Mon, 14 Aug 2023 07:32:27 +0200
Message-Id: <20230814053229.2311097-4-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230814053229.2311097-1-o.rempel@pengutronix.de>
References: <20230814053229.2311097-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230813_223237_935243_5ED0EB0E 
X-CRM114-Status: GOOD (  11.93  )
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
Subject: [PATCH v2 3/5] net: designware: eqos: add comment about external clock dependencies for the soft reset
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



