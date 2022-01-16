Delivery-date: Sun, 16 Jan 2022 22:34:56 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n9DAt-0040iq-Vv
	for lore@lore.pengutronix.de; Sun, 16 Jan 2022 22:34:55 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n9DAs-0000cb-Mb
	for lore@pengutronix.de; Sun, 16 Jan 2022 22:34:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pDCsUqyxm4OqHKGRHOJvIGPBHw4u+g+OExaaYFLiTiU=; b=y3IwzschGeiIYT
	sgS9xmmiTBKXjduVV8r3uHokYMOZUHH03na0VVz0xbUnRdQ0DSnHRNi0ZMQchP5ndSC2w7iFBPxCc
	RJzW+JjR5BqBUbjk4y1K+8LtwaIGgn1jZCInLPV/bO2+tbWYkXd18fSTH8uNw8JuAXKihwQBmaLCL
	LGmZ6m7UNhf9fMhC0ilBmRjnh3gyHZcJE6AW2iLKTUFiTSIMAan9lL7rtGulTk1dwTB8DSh/Gl6jt
	Hdd04uLMayLCedWHqm4DsSDMxN6QjH6qQEneuD95IXjcSAaWJ2OQ8gLVk7ex1QxCentnJTakXXyaF
	0Tjh45Y2NXQs+rtlQDzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n9D9K-00D1w6-Sh; Sun, 16 Jan 2022 21:33:18 +0000
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n9D9D-00D1ta-AS
 for barebox@lists.infradead.org; Sun, 16 Jan 2022 21:33:12 +0000
Received: by lynxeye.de (Postfix, from userid 501)
 id D0F3DE74217; Sun, 16 Jan 2022 22:32:36 +0100 (CET)
Received: from astat.fritz.box (a89-183-97-132.net-htp.de [89.183.97.132])
 by lynxeye.de (Postfix) with ESMTPA id 2E3C7E7414D
 for <barebox@lists.infradead.org>; Sun, 16 Jan 2022 22:32:34 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
To: barebox@lists.infradead.org
Date: Sun, 16 Jan 2022 22:32:19 +0100
Message-Id: <20220116213221.3466936-1-dev@lynxeye.de>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220116_133311_544168_9659B29B 
X-CRM114-Status: GOOD (  11.89  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/3] clk: ignore of_device_ensure_probed error in clock lookup
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

For CLK_OF_DECLARE clocks there is no driver that is bound to the device,
so the lookup fails before even trying to find the provider, breaking
the parent_ready() logic used when initializing the declared providers.

Ignore the return code from of_device_ensure_probed to allow the lookup
to proceed as usual. If of_device_ensure_probed the lookup will also fail,
as no provider will be found.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 drivers/clk/clk.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
index 189c9c62df5c..a1d1d7f1a467 100644
--- a/drivers/clk/clk.c
+++ b/drivers/clk/clk.c
@@ -643,11 +643,9 @@ struct clk *of_clk_get_from_provider(struct of_phandle_args *clkspec)
 {
 	struct of_clk_provider *provider;
 	struct clk *clk = ERR_PTR(-EPROBE_DEFER);
-	int ret;
 
-	ret = of_device_ensure_probed(clkspec->np);
-	if (ret)
-		return ERR_PTR(ret);
+	/* Ignore error, as CLK_OF_DECLARE clocks have no proper driver. */
+	of_device_ensure_probed(clkspec->np);
 
 	/* Check if we have such a provider in our array */
 	list_for_each_entry(provider, &of_clk_providers, link) {
-- 
2.31.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

