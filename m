Delivery-date: Mon, 12 Jun 2023 15:03:55 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8hDA-003qg2-R2
	for lore@lore.pengutronix.de; Mon, 12 Jun 2023 15:03:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8hD8-0000vR-7p
	for lore@pengutronix.de; Mon, 12 Jun 2023 15:03:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vsw2nJ4ZelxP48Xxy1dbG0TIh1QFgHeiE4OXY630uCk=; b=r3SHNEYGe+iFagKJGRPydGVIlo
	N8TPidQ/gBbIoWOPco57BUGH0jz9RrjTi5ff0zcYGuZSgNLcxRnhxoFdQ/gAS709DEwIpJ81KR+9r
	QkSS1Wi3vl3j6gd4oXmmSC8ZkYPpp2fPKyjGGtX+zLHHbpEZCz5Io+OEgF13+jYFUG1cPGiLUF9pc
	EdHkCFC9X64zFH9RgFELh76ZSpgEQNjjgwAallL5s6QP+oyWmbrMIkhE+kVBnvEbPjT4IwsNlVeKe
	D12p14FK91X9kBVYM/JNFIQ7lTPYlvkWhnleQLpYnOgzRVKJeW80MRuUk7Z/VNLnahIlRVcLY2w3Z
	g74afhZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8hCU-0047by-1Y;
	Mon, 12 Jun 2023 13:03:14 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8hCH-0047LX-0m
	for barebox@lists.infradead.org;
	Mon, 12 Jun 2023 13:03:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q8hC8-0008N7-0W; Mon, 12 Jun 2023 15:02:52 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q8hC7-006tWN-Cq; Mon, 12 Jun 2023 15:02:51 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q8hC3-004aJJ-4v; Mon, 12 Jun 2023 15:02:47 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 12 Jun 2023 15:02:25 +0200
Message-Id: <20230612130239.1087599-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230612130239.1087599-1-a.fatoum@pengutronix.de>
References: <20230612130239.1087599-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230612_060301_293556_A11D20AC 
X-CRM114-Status: GOOD (  11.08  )
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
Subject: [PATCH 04/19] mci: tegra: fix base address constant to be hexadecimal
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Tegra SoCs don't have MMC peripherals at decimal address 78000400
(hexadecimal: 0x4a63110), but they do at 0x78000400. Fix it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mci/tegra-sdmmc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mci/tegra-sdmmc.c b/drivers/mci/tegra-sdmmc.c
index f8ce6c8d7ba0..a6e2b3032057 100644
--- a/drivers/mci/tegra-sdmmc.c
+++ b/drivers/mci/tegra-sdmmc.c
@@ -310,7 +310,7 @@ static int tegra_sdmmc_init(struct mci_host *mci, struct device *dev)
 	/* sdmmc1 and sdmmc3 on T30 need a bit of padctrl init */
 	if (of_device_is_compatible(mci->hw_dev->of_node,
 				    "nvidia,tegra30-sdhci") &&
-			((u32)regs == 0x78000000 || (u32)regs == 78000400)) {
+			((u32)regs == 0x78000000 || (u32)regs == 0x78000400)) {
 		val = readl(regs + TEGRA_SDMMC_SDMEMCOMPPADCTRL);
 		val &= 0xfffffff0;
 		val |= 0x7 << TEGRA_SDMMC_SDMEMCOMPPADCTRL_VREF_SEL_SHIFT;
-- 
2.39.2



