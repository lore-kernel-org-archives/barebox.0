Delivery-date: Wed, 08 Feb 2023 14:37:08 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pPkdK-000bRt-3I
	for lore@lore.pengutronix.de; Wed, 08 Feb 2023 14:37:08 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pPkdH-0002u2-KU
	for lore@pengutronix.de; Wed, 08 Feb 2023 14:37:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=OieHkgnM/Kza3m0UO5g7mjf5e3gAOhqdPSqJBClqn10=; b=SvPb9M2RvBOS7a6S84MxVzEcSY
	Kuj7c4BnYvMysd3v2Cj4FJA4clGuTpCU+bY9l581yNErENprVY8I9QU2hZCf5Pl2/gQAjONGOA5Rt
	xWhOeONyajl5blM5mlwCMbjWCU7TMxG5vFISQfzqW1/jt3ZyoaoT+DR7f01G9epC9ZXdtLZHc5IAo
	O5JjokjvKFyIc4WEHkoSRnkmwcU8c2mS2rKChcJ+BwGxQGjpBAT9VFrpQilxbxJ9yxMDO/n8tUfEW
	Ysbhhvk4NSqFW3wGcsgak61ylNWWb201MzV0NeB9p7Zm9EfFx6MCzNdCwiT6pJRWHglcxsNlqJX7+
	mCMhYx3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPkcC-00FlpB-6v; Wed, 08 Feb 2023 13:36:00 +0000
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPkc5-00FlnU-VO
	for barebox@lists.infradead.org; Wed, 08 Feb 2023 13:35:55 +0000
Received: by lynxeye.de (Postfix, from userid 501)
	id 3E76DE74013; Wed,  8 Feb 2023 14:35:23 +0100 (CET)
Received: from astat.fritz.box (a89-183-230-152.net-htp.de [89.183.230.152])
	by lynxeye.de (Postfix) with ESMTPA id 151CAE74008
	for <barebox@lists.infradead.org>; Wed,  8 Feb 2023 14:35:22 +0100 (CET)
From: Lucas Stach <l.stach@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed,  8 Feb 2023 14:35:18 +0100
Message-Id: <20230208133519.1114700-1-l.stach@pengutronix.de>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230208_053554_205754_387EF47E 
X-CRM114-Status: GOOD (  11.56  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 1/2] ddr: imx8m: add support for 3720 MHz DDR rate
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@pengutronix.de>

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/ddr/imx8m/ddrphy_utils.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/ddr/imx8m/ddrphy_utils.c b/drivers/ddr/imx8m/ddrphy_utils.c
index 98e6ae648aed..7f863a1736c6 100644
--- a/drivers/ddr/imx8m/ddrphy_utils.c
+++ b/drivers/ddr/imx8m/ddrphy_utils.c
@@ -17,6 +17,7 @@
  * clock / 2, which is therefor transfer rate / 4.  */
 enum ddr_rate {
 	DDR_4000,
+	DDR_3720,
 	DDR_3200,
 	DDR_3000,
 	DDR_2600, /* Unused */
@@ -52,6 +53,7 @@ static const struct imx8mm_fracpll_config {
 	bool valid;
 } imx8mm_fracpll_table[DDR_NUM_RATES] = {
 	[DDR_4000] = { .valid = true, .r1 = MDIV(250) | PDIV(3) | SDIV(1), .r2 = 0 },
+	[DDR_3720] = { .valid = true, .r1 = MDIV(310) | PDIV(2) | SDIV(2), .r2 = 0 },
 	[DDR_3200] = { .valid = true, .r1 = MDIV(300) | PDIV(9) | SDIV(0), .r2 = 0 },
 	[DDR_3000] = { .valid = true, .r1 = MDIV(250) | PDIV(8) | SDIV(0), .r2 = 0 },
 	[DDR_2600] = { .valid = true, .r1 = MDIV(325) | PDIV(3) | SDIV(2), .r2 = 0 },
@@ -335,6 +337,7 @@ void ddrphy_init_set_dfi_clk(unsigned int drate_mhz, enum ddrc_type type)
 
 	switch (drate_mhz) {
 	case 4000: drate = DDR_4000; break;
+	case 3720: drate = DDR_3720; break;
 	case 3200: drate = DDR_3200; break;
 	case 3000: drate = DDR_3000; break;
 	case 2400: drate = DDR_2400; break;
-- 
2.39.1



