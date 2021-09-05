Delivery-date: Sun, 05 Sep 2021 15:53:31 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mMsaR-0007FS-Ba
	for lore@lore.pengutronix.de; Sun, 05 Sep 2021 15:53:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mMsaQ-0002Pr-A5
	for lore@pengutronix.de; Sun, 05 Sep 2021 15:53:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NJS7UICDgSaqPKAI4T2dTq52nKRQvd3RmJVAogSRn94=; b=Qw8skTmYa6RJm5
	pFnvI5qVEQ0tQIRfapOyxTj7xgNNkuRx8Wfi+3DN1TW8e3JxJJ8u1t/Mtd2gYXXGKSE8A0KuqlTWj
	glVAW9pUTPjx/2Tj7ocs6aEHNlkzLE/akkRSnovPEgySs3H3QqfC49P/LU3IVrXgEBYWDcdTOUc4t
	YxES/xAXzQ/+xj19UhI/XCS1o8Jak6DPAmhUXroy1WdQQzMdwnhk0DcrIETUatft7pMVSqXqwXnW5
	qY4jIgQPy0U/KMH2vc3uQ5feo0+Uy5fai1E6tp0dikWIyT3aGs8VwUHSxaB0SMx1JxE4isabpnQQm
	Nj0mZ5xk6zP+se2HB+sg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mMsYj-00Fqaz-QG; Sun, 05 Sep 2021 13:51:45 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mMsYY-00FqWs-QG
 for barebox@lists.infradead.org; Sun, 05 Sep 2021 13:51:37 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1mMsYU-00024A-Vj
 for barebox@lists.infradead.org; Sun, 05 Sep 2021 15:51:30 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1mMsYU-00026Y-8M
 for barebox@lists.infradead.org; Sun, 05 Sep 2021 15:51:30 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Sun,  5 Sep 2021 15:51:18 +0200
Message-Id: <20210905135122.7038-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210905135122.7038-1-a.fatoum@pengutronix.de>
References: <20210905135122.7038-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210905_065134_933571_92613A85 
X-CRM114-Status: GOOD (  13.74  )
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
Subject: [PATCH 5/9] ARM: i.MX8MM: correct unrecognized fracpll frequency
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Andrey Zhizhikin <andrey.zhizhikin@leica-geosystems.com>

Frequency requested by ddrphy_init_set_dfi_clk from fracpll uses MHZ()
macro, which expands the value provided to the Hz range without taking into
account the precise Hz setting. This causes the frequency of 266 MHz not ot
be found in the imx8mm_fracpll_tbl, since it is entered there with a
precise Hz value. This in turn causes the boot hang in SPL, as proper DDR
fracpll frequency cannot be determined.

Correct the value in imx8mm_fracpll_tbl to match the one expanded by
MHZ(266) macro, rounding it down to MHz range only.

Signed-off-by: Andrey Zhizhikin <andrey.zhizhikin@leica-geosystems.com>
[afa: ported from U-Boot 6ac4d4480663]
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/ddr/imx8m/ddrphy_utils.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/ddr/imx8m/ddrphy_utils.c b/drivers/ddr/imx8m/ddrphy_utils.c
index 9a4e1a22ee5e..6836e7d4b351 100644
--- a/drivers/ddr/imx8m/ddrphy_utils.c
+++ b/drivers/ddr/imx8m/ddrphy_utils.c
@@ -198,7 +198,7 @@ static struct imx_int_pll_rate_table imx8mm_fracpll_tbl[] = {
 	{ .rate = 600000000U,  .r1 = MDIV(300) | PDIV(3) | SDIV(2), .r2 = 0 },
 	{ .rate = 594000000U,  .r1 = MDIV( 99) | PDIV(1) | SDIV(2), .r2 = 0 },
 	{ .rate = 400000000U,  .r1 = MDIV(300) | PDIV(9) | SDIV(1), .r2 = 0 },
-	{ .rate = 266666667U,  .r1 = MDIV(400) | PDIV(9) | SDIV(2), .r2 = 0 },
+	{ .rate = 266000000U,  .r1 = MDIV(400) | PDIV(9) | SDIV(2), .r2 = 0 },
 	{ .rate = 167000000U,  .r1 = MDIV(334) | PDIV(3) | SDIV(4), .r2 = 0 },
 	{ .rate = 100000000U,  .r1 = MDIV(300) | PDIV(9) | SDIV(3), .r2 = 0 },
 };
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

