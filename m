Delivery-date: Wed, 12 May 2021 07:52:46 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lghna-0005PD-ST
	for lore@lore.pengutronix.de; Wed, 12 May 2021 07:52:46 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lghna-0006vA-5n
	for lore@pengutronix.de; Wed, 12 May 2021 07:52:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xaBJDRHx5NzI7ITEsfpaQPXcERZCADSe170DcJVYGZM=; b=WOJNKrCA7I5pQI
	M0+UwjLH5VpuEt5H5pAdciw/UVQ9A9sssx7qTPYe+/f4XN9jtvIKHWP1BeY5/PBjJSjWtLDx1x73b
	MGn0t2EWNvx4DElI/2S59iXzuirv+uPuQFrBXHjDXPYSc9pMMFfnorn9QiNDOXEPvlomr59VLYXXy
	7N/RRmN6c9ILBrB9RPe/YOgUZUjR259ahDUDBWGqlQk209inxY1KkdJbgK4jCrJN03G0nZdICN7da
	RcChcjj816JUAQEPSfhJuBBlhiSknXljsBbI5M3R55RI06evYSLCqktpuIdYd/AMrBvw+iPTad1md
	TfOww9z3Iw4pIe5MOTkg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lghmc-0026iv-5k; Wed, 12 May 2021 05:51:46 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lghmY-0026iU-Fe
 for barebox@desiato.infradead.org; Wed, 12 May 2021 05:51:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=WnnHtTmZxHvBCYe+QaLDTW4rVWD+31L8XxhSbGWdLJM=; b=KicJSPDTLECYfqiKDyPz9KMxXs
 Pa7owT6i35vxR8IzcHuUT2zs9rNw12B/6geInZjAMUZbOMkKlw/BIbF9U9MRTrI3bPzZ8xCH/zQ0K
 woa2rjqsBudFf5GIt6R9tYeUUe+e9+IHwFDsUVghQkDFiBYKvYvwX9tCJk8kkFQlj9ZUgSu91gmNs
 x4J0qvHBbCvoVSbU9bd3TWNk/PjZmJf60zO7c7jkoIr+n3ykTlHcMAAZ0KGNYCPVD5rgdYvlLOef+
 6ykSc5b6nv+3voscZolvQoPZ+4LVLvMYayu8Fr82pWu1+KB0AgzJcmxQG0mJXBU/0s7bEFTPRCvlv
 ioTqVZUQ==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lghmW-00A88X-45
 for barebox@lists.infradead.org; Wed, 12 May 2021 05:51:41 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lghmU-0006i7-Tl; Wed, 12 May 2021 07:51:38 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lghmU-0007jF-L9; Wed, 12 May 2021 07:51:38 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 12 May 2021 07:51:37 +0200
Message-Id: <20210512055137.28907-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210511_225140_183911_EE903D7B 
X-CRM114-Status: GOOD (  10.27  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] mci: atmel-sdhci: FIx compiler warning
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

gck_rate is tested for negative values. Use a signed type to let this
work as expected.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/atmel-sdhci.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mci/atmel-sdhci.c b/drivers/mci/atmel-sdhci.c
index 59cd002aae..380a79d33e 100644
--- a/drivers/mci/atmel-sdhci.c
+++ b/drivers/mci/atmel-sdhci.c
@@ -24,7 +24,7 @@ struct at91_sdhci_priv {
 	struct mci_host mci;
 	struct clk *hclock, *gck, *mainck;
 	bool cal_always_on;
-	u32 gck_rate;
+	int gck_rate;
 };
 
 #define to_priv(h) container_of(h, struct at91_sdhci_priv, mci)
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

