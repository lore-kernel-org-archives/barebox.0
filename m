Delivery-date: Fri, 28 May 2021 15:54:29 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lmcwX-0006ZW-Rd
	for lore@lore.pengutronix.de; Fri, 28 May 2021 15:54:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lmcwW-0007cw-HR
	for lore@pengutronix.de; Fri, 28 May 2021 15:54:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DGuTS2x1tfvkq/0FQC3+dJ4o8uc0xBFzqNf5qwXETQc=; b=rHiymLL8XdQXIC
	DSnV8n5szaiZuhEbE/TPCIvXbphP2tl4uoa25ER/YLHANQbfqKRiHx3nTqSnnFs6mtP7WBm3EttYm
	qeQUqsvCHW2NSllzD5SerSOmTSvmTPBaUptwhivD1I0o9Dhuc3S25U0lVhrYidLglYdpfqTj/SzqE
	PkZt85pCBSHY2Q4fIJVYPz7tH0cog/juWojsVfaaexoHSUJoBKRS2N9IHUqlDJZLlKX0zCBfiKaEa
	I7eCp6JU+YRO3VOn9d1Y/04bZ1hMW9hRjHzeaYQoAcgOsFUUXR6AvW+aVX0Mi5YKziKe3wiM6X8bw
	7d9ZhyyAGcbCAKcNADGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lmcuz-00Fv3J-Ne; Fri, 28 May 2021 13:52:54 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lmcZZ-00Fn9F-SL
 for barebox@lists.infradead.org; Fri, 28 May 2021 13:30:48 +0000
Received: from dude03.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::39])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>) id 1lmcZV-0004gW-N8
 for barebox@lists.infradead.org; Fri, 28 May 2021 15:30:41 +0200
From: Lucas Stach <l.stach@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 28 May 2021 15:30:38 +0200
Message-Id: <20210528133041.1109923-1-l.stach@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210528_063045_970309_A9070113 
X-CRM114-Status: UNSURE (   7.92  )
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
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 1/4] drivers: mci: imx-esdhc-common.c: Add missing dev_dbg
 define for pbl case
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: David Jander <david@protonic.nl>

Signed-off-by: David Jander <david@protonic.nl>
Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/mci/imx-esdhc-common.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/mci/imx-esdhc-common.c b/drivers/mci/imx-esdhc-common.c
index c9d589468f6c..7ee0674b997f 100644
--- a/drivers/mci/imx-esdhc-common.c
+++ b/drivers/mci/imx-esdhc-common.c
@@ -156,7 +156,9 @@ static void __udelay(int us)
 
 #define udelay(n)	__udelay(n)
 #undef  dev_err
+#undef  dev_dbg
 #define dev_err(d, ...)	pr_err(__VA_ARGS__)
+#define dev_dbg(d, ...)	pr_debug(__VA_ARGS__)
 
 #endif
 
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

