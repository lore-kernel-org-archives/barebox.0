Delivery-date: Thu, 17 Jun 2021 16:18:50 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ltsr4-0005I6-8l
	for lore@lore.pengutronix.de; Thu, 17 Jun 2021 16:18:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ltsr3-00084r-CN
	for lore@pengutronix.de; Thu, 17 Jun 2021 16:18:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Rbkq5Nw8xk+V9uthLIBdp6zrQdPVhlHUB8qnoKM7BMc=; b=wPIQH5gGiFj64L
	mBSze2qlsUofMDkibT+kqe0NwgE3pJh0f3HQhAqeTmWp5e7wCdd4ed7n/QDTSCe5yu1C8J3wXZj0F
	HGy+aP3oHiLX6eydlzSFg7ZZaLB9pTS313jXuIHCGFBrvtaarq/CjuC6RL1NsWjHWhA912Q7h3Pdl
	F42RInXqe+zcqf2ldTDKoussrGUaXonqsmgh2vt/64l/bcpjNvBjclWeYG6Q7InpcBxOTe+cpJ0po
	q3vKKMWkgqvTcDnP9pwgkksRVYnDT1O8F+YHM0BV4FpiQfL7oInKip+vX1Qi5Ib/pnoBbtsK6Csmb
	0jv/WV7fC3NROMwWUsLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ltspn-00Aedb-7c; Thu, 17 Jun 2021 14:17:31 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ltsph-00Aebt-DA
 for barebox@lists.infradead.org; Thu, 17 Jun 2021 14:17:26 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1ltspg-0007y9-6E; Thu, 17 Jun 2021 16:17:24 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1ltspf-00018b-TO; Thu, 17 Jun 2021 16:17:23 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 17 Jun 2021 16:17:23 +0200
Message-Id: <20210617141723.4324-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210617_071725_482712_F2BBE570 
X-CRM114-Status: UNSURE (   9.73  )
X-CRM114-Notice: Please train this message.
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] clk: fix of clk set defaults when dev is a clk provider
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

When a newly registered device is a clk provider itself we must call
of_clk_set_defaults() explicitly when the clk provider is registered.
With this we can also honour the assigned-clock-* properties for the
clocks just registered.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/clk/clk.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
index ba726c342c..6e27cc0c8f 100644
--- a/drivers/clk/clk.c
+++ b/drivers/clk/clk.c
@@ -593,6 +593,8 @@ int of_clk_add_provider(struct device_node *np,
 	list_add(&cp->link, &of_clk_providers);
 	pr_debug("Added clock from %s\n", np ? np->full_name : "<none>");
 
+	of_clk_set_defaults(np, true);
+
 	return 0;
 }
 EXPORT_SYMBOL_GPL(of_clk_add_provider);
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

