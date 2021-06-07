Delivery-date: Mon, 07 Jun 2021 16:14:38 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lqG1W-0000jR-7b
	for lore@lore.pengutronix.de; Mon, 07 Jun 2021 16:14:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lqG1S-0004ov-8f
	for lore@pengutronix.de; Mon, 07 Jun 2021 16:14:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=s7USxXrhEz++6/M58BkgYTI9bxFNu0/GzKjcopQMKo8=; b=UWaNOygN468/LV
	MqfXO5Vga3sG0gjjpl98l+iSCX6aXF1cOF8r+rrL5sUq1naGfdS5vPjxGbO07dszarhP98q0m2n5L
	szgLOZuoMIfHjjFuCx2ZspA2Ysk8FtlJ9EyOFIEFKxpf8wyqqCiSIy+svnOedNKL01G00hMoQrk/I
	GjYUqeGXcZZ69yQV4gbsnt2CGR8JjM8pWZGpuDZWgFpwgdCKXmuKResVE8F0Aa7Meki5zhq/LvC2k
	FE3pv29a6UILshbMG1x/ESIBbQ1YdVNM/QR/+xT1wv3+SPu4FgEzg0GZnvbPJmX84RBGQf0VaJEr9
	rV6rMmnasSo8clujf8lw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lqG02-00410S-Qc; Mon, 07 Jun 2021 14:13:06 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lqFzu-0040za-5D
 for barebox@lists.infradead.org; Mon, 07 Jun 2021 14:13:02 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lqFzs-0004gG-Vm; Mon, 07 Jun 2021 16:12:56 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lqFzs-0006So-N6; Mon, 07 Jun 2021 16:12:56 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon,  7 Jun 2021 16:12:56 +0200
Message-Id: <20210607141256.24801-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210607_071258_217865_39B7B1C3 
X-CRM114-Status: GOOD (  11.04  )
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
Subject: [PATCH] clk: bail out early when rate is already desired one
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Return successfully from clk_set_rate() when the rate is already the
desired one. This prevents a failure in clk_set_rate() when the current
clock doesn't have a set_rate hook.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/clk/clk.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
index 8b90f30486..ba726c342c 100644
--- a/drivers/clk/clk.c
+++ b/drivers/clk/clk.c
@@ -169,6 +169,9 @@ int clk_set_rate(struct clk *clk, unsigned long rate)
 	if (IS_ERR(clk))
 		return PTR_ERR(clk);
 
+	if (clk_get_rate(clk) == clk_round_rate(clk, rate))
+		return 0;
+
 	if (!clk->ops->set_rate)
 		return -ENOSYS;
 
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

