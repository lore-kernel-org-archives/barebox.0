Delivery-date: Mon, 21 Jun 2021 08:48:38 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvDja-00062v-Ke
	for lore@lore.pengutronix.de; Mon, 21 Jun 2021 08:48:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvDjZ-00058C-QM
	for lore@pengutronix.de; Mon, 21 Jun 2021 08:48:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MKxua496DatAG0qxbI1BOZnJLYwMObeAlikUlNln1Rs=; b=gqUSaCmhaBx5Ip
	QkNaADcwlpKiAXJp4s9xzBtV/CUApO/oajEYbmyckP0+gYm6IC7nupLzOE4QdDMkLqqhHtEUq2lA3
	hPTm/1HfX7wDQyVdmhTrmQiRrFnmtVWCR77t/9VKP8CtlkC63iersLMlFWY/5g3MR/qHVydS9MVqZ
	pvveVF3LfFnWsBbe5rtSCHuHlnonNUj7sD7n2XCMXWEi3bK4/HJ+pHGRNlCVWzI0qeKo7MR3gv4h2
	FBias3t/9G/kYSwgnlXRE3EwZVbnpzNxtk20KWiTdEkZfMbfBjNqNEXJppd5/qzEV2FwNpe3VpVpl
	y/FdJa/j0erb6T+HP4bQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvDiT-002OUB-DS; Mon, 21 Jun 2021 06:47:29 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvDiM-002OSc-TK
 for barebox@lists.infradead.org; Mon, 21 Jun 2021 06:47:24 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lvDiL-0004xs-MW; Mon, 21 Jun 2021 08:47:21 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lvDiL-00051R-Di; Mon, 21 Jun 2021 08:47:21 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 21 Jun 2021 08:47:19 +0200
Message-Id: <20210621064719.19246-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210620_234722_988639_900B13FE 
X-CRM114-Status: GOOD (  10.14  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master] watchdog: dw_wdt: fix resource reservation error check
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

dev_request_mem_resource returns a possible error pointer. If it
succeeds mem->start will always be valid. Rectify the confusion.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/watchdog/dw_wdt.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/watchdog/dw_wdt.c b/drivers/watchdog/dw_wdt.c
index 70d6f0cced72..774d211a5f90 100644
--- a/drivers/watchdog/dw_wdt.c
+++ b/drivers/watchdog/dw_wdt.c
@@ -143,9 +143,10 @@ static int dw_wdt_drv_probe(struct device_d *dev)
 	dw_wdt = xzalloc(sizeof(*dw_wdt));
 
 	mem = dev_request_mem_resource(dev, 0);
+	if (IS_ERR(mem))
+		return PTR_ERR(mem);
+
 	dw_wdt->regs = IOMEM(mem->start);
-	if (IS_ERR(dw_wdt->regs))
-		return PTR_ERR(dw_wdt->regs);
 
 	clk = clk_get(dev, NULL);
 	if (IS_ERR(clk))
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

