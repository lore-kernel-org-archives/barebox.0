Delivery-date: Tue, 08 Mar 2022 13:22:04 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nRYqq-004dMR-Cy
	for lore@lore.pengutronix.de; Tue, 08 Mar 2022 13:22:04 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nRYqp-0002Wa-2F
	for lore@pengutronix.de; Tue, 08 Mar 2022 13:22:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PYqkbSC3Tw+nnMe2ZgHTBdxLs50VuM1UrQcUEIMvFD0=; b=JYBjg350Xsj8It
	VYBrhqn8CBB8AbwqOwaikmz80j+fvuugM5Qqyn9zTIfK0sWQIv6ev0ZHD99ruXpzJMRJnWYRAiboL
	7gvVDTfGqGV97uhPN9F6J3R5Z+IGrJYeVEcq013w4QQSwHnCXHjJUMB+CwTg7rTErx9aXzsuncCPW
	HG90SmiruiEOBa2pUhlrN6jKgXfija5bOmzvzS6ajkRUFAAF+At9fcK61ICxwZxUCiL1X/8A++uww
	Psz4U/m3sinQDUP1h23InNRl+2AP8baEKiFqybx3AFa3LR8cx6krUcXiLNbdsCy5M7pkjxTq4LBZY
	Hv19fZBu46NNfMaNzhyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nRYpY-004KOP-GA; Tue, 08 Mar 2022 12:20:44 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nRYpS-004KL1-JY
 for barebox@lists.infradead.org; Tue, 08 Mar 2022 12:20:40 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nRYpR-00027W-1i; Tue, 08 Mar 2022 13:20:37 +0100
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1nRYpQ-001YFN-Cp; Tue, 08 Mar 2022 13:20:36 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue,  8 Mar 2022 13:20:23 +0100
Message-Id: <20220308122028.3857376-3-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220308122028.3857376-1-s.hauer@pengutronix.de>
References: <20220308122028.3857376-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220308_042038_727391_98E582DB 
X-CRM114-Status: GOOD (  10.03  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/7] clk: imx6: fix axi_sels
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Adaption of Kernel commit:

| commit a08b9bc586a7810cdebbc316d5cbaed56a2a04a9
| Author:     Anson Huang <b20788@freescale.com>
| Commit:     Shawn Guo <shawn.guo@linaro.org>
| CommitDate: Mon Jun 3 13:47:12 2013 +0800
|
| ARM: imx: clk-imx6q: AXI clock select index is incorrect
|
| The AXI clock mux should be as below:
|
|  00: periph;
|  01: pll2_pfd2_396m;
|  10: periph;
|  11: pll3_pfd1_540m;

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/clk/imx/clk-imx6.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/clk/imx/clk-imx6.c b/drivers/clk/imx/clk-imx6.c
index aa5876d21b..8cc4c2a08f 100644
--- a/drivers/clk/imx/clk-imx6.c
+++ b/drivers/clk/imx/clk-imx6.c
@@ -106,6 +106,7 @@ static const char *periph2_sels[] = {
 static const char *axi_sels[] = {
 	"periph",
 	"pll2_pfd2_396m",
+	"periph",
 	"pll3_pfd1_540m",
 };
 
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

