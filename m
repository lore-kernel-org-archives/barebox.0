Delivery-date: Mon, 05 Jun 2023 08:30:55 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q63k0-00BRw4-KT
	for lore@lore.pengutronix.de; Mon, 05 Jun 2023 08:30:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q63jy-0002iX-Ej
	for lore@pengutronix.de; Mon, 05 Jun 2023 08:30:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=JV73v4h5cUWPwBqeu4l1GxQ87tYpNJ3bd50YRf+dvvo=; b=UvqmCl0+Cxs6+FfwMblJoTkaCw
	oBtDiTWrR/In7vybUr7z2sr8MCzKxOiXIYzahIiMRbNPXSmOXJnwOxv7wo6Kbny6zYoIkGmA9Fyu8
	13nPv5wVnbOF4COHVu9Jb5j3QYPAM1hGFHhDVcCeP9fvV+qUxJ7xChYmuXrr5ymnnoHhzhvgDC8JM
	BCKSSFQKGv7SSncGnr6HLWl5jj6FaPAHavLeXAPCaWuot+2LMzvGxQZHycNtkzjWLJmSxbJb2jRwD
	BRfsQc8bNPJVv7zg2ABuWvjF09Yy/S/bFkY2Qyr/lpfWpzikHO4LTRuNjsBtbYFB1e2ZX7ExVwGs8
	mj5ZkpDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q63ix-00ELkC-0z;
	Mon, 05 Jun 2023 06:29:51 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q63ip-00ELf3-33
	for barebox@lists.infradead.org;
	Mon, 05 Jun 2023 06:29:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q63io-00024j-Or; Mon, 05 Jun 2023 08:29:42 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q63io-005Cpl-5i; Mon, 05 Jun 2023 08:29:42 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q63im-001Bsd-OJ; Mon, 05 Jun 2023 08:29:40 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  5 Jun 2023 08:29:33 +0200
Message-Id: <20230605062939.242063-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230604_232943_988505_E9DD0945 
X-CRM114-Status: UNSURE (   9.92  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH master 1/7] ddr: imx8m: align function definition with prototype
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The values of enum dram_type and enum ddrc_type are defined, so they
don't overlap, which allows ddr_cfg_phy() to accept them OR-d.

It's thus wrong to use only one enum of them in the prototype, so adjust
it with the definition.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/soc/imx8m/ddr.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/soc/imx8m/ddr.h b/include/soc/imx8m/ddr.h
index 0b3c4d47e39d..e268892957db 100644
--- a/include/soc/imx8m/ddr.h
+++ b/include/soc/imx8m/ddr.h
@@ -432,7 +432,7 @@ static inline int imx8mp_ddr_init(struct dram_timing_info *dram_timing,
 	return imx8m_ddr_init(dram_timing, DDRC_TYPE_MP | dram_type);
 }
 
-int ddr_cfg_phy(struct dram_timing_info *timing_info, enum ddrc_type ddrc_type);
+int ddr_cfg_phy(struct dram_timing_info *timing_info, unsigned type);
 void load_lpddr4_phy_pie(void);
 void ddrphy_trained_csr_save(struct dram_cfg_param *param, unsigned int num);
 void dram_config_save(struct dram_timing_info *info, unsigned long base);
-- 
2.39.2



