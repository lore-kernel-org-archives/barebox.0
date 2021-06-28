Delivery-date: Mon, 28 Jun 2021 09:06:13 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lxlLR-0002D4-Eo
	for lore@lore.pengutronix.de; Mon, 28 Jun 2021 09:06:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lxlLQ-0006ZL-1b
	for lore@pengutronix.de; Mon, 28 Jun 2021 09:06:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=byPwuCneuf52y1Z41MIh4ngMvrh+KweQDY4vz8+KWyU=; b=Y7jOLQUI43DBih
	wHE8EIy0N/ErNXJ4xNsyUDkTRNbtCgGsVYeBdoXUe1mqaiCc6ZahuDx9Iyops6r+49y1OqerIRaTD
	qnrUNweEKVhc09YH2/0Ku8XCFaPn9wLUsQ69U/CAOK/G3KoJLHRkd6Ai5bKAh8Ed+te6I/uXUAAfl
	ORbttZit1QxQNPWcBFAMou8WwTClleCWdvF4G+Y6hgwMXqDvKJ7++Ku9MlqmigqXM0hNCzMAdcU2I
	/1cAdwX98cjVIixpQZNMZaFPGXjxrleJBVgbOJnE0MStmrLFQ9cmO40mSSRG8+sDk2mKI5U3a2xlF
	gAA8hhrgpqDU0dR7YuLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lxlK3-0078YK-0w; Mon, 28 Jun 2021 07:04:47 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lxlIT-00781H-8j
 for barebox@lists.infradead.org; Mon, 28 Jun 2021 07:03:10 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lxlIR-00062y-VE; Mon, 28 Jun 2021 09:03:07 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lxlIR-0003WW-Ll; Mon, 28 Jun 2021 09:03:07 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 28 Jun 2021 09:03:07 +0200
Message-Id: <20210628070307.13498-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210628_000309_354068_7EA2A37C 
X-CRM114-Status: UNSURE (   8.23  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] OF: gpio: drop duplicate of_device_ensure_probed
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

of_find_device_by_node already calls of_device_ensure_probed
first thing, so drop the first instance.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/of/of_gpio.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/of/of_gpio.c b/drivers/of/of_gpio.c
index 8c45bba8c16c..e1cafdc8489e 100644
--- a/drivers/of/of_gpio.c
+++ b/drivers/of/of_gpio.c
@@ -70,10 +70,6 @@ int of_get_named_gpio_flags(struct device_node *np, const char *propname,
 		return ret;
 	}
 
-	ret = of_device_ensure_probed(out_args.np);
-	if (ret)
-		return ret;
-
 	dev = of_find_device_by_node(out_args.np);
 	if (!dev) {
 		pr_debug("%s: unable to find device of node %s\n",
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

