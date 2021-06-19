Delivery-date: Sat, 19 Jun 2021 06:57:26 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1luT2s-0004g6-Fu
	for lore@lore.pengutronix.de; Sat, 19 Jun 2021 06:57:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1luT2r-0002OY-Jl
	for lore@pengutronix.de; Sat, 19 Jun 2021 06:57:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V7JFuw/tN7mGWwyBZAucros4xlWAEyg7TfFpUeIvU0U=; b=LGi3OT23LjnWIv
	IC/AGSTcM5g8guZvj1A8cxm1M+k8KKoAowhpU8RF8vyXTjxHYVne9nAlWk3Uot4Q8evJIOpN6z1vN
	ClMD3SMcUFm7PHEKd7xQZ809nuVwmcbH09A9aX4ZxsGu2pcxfvjqcrmMNrJfYBdQpw7ginfvD3dLK
	uuy1KfVGTIWQbSGYvAs24EyyPK1OKEbDwuzSUqswcsVKKB2UpgIZRVpb4ZoGPUNFXQ9j8HRt5XW9i
	0kJHuQMz+YW2Vxrw8ndiH5h9F6Kg3YSl+l+dpKSd2MyAv1CFDmeweb8jOqbYIpg25WpJLc1FBBAwb
	5l4teZYr4gNGdrYvuchg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1luT1U-00GKdc-QM; Sat, 19 Jun 2021 04:56:01 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1luSx6-00GHu4-SU
 for barebox@lists.infradead.org; Sat, 19 Jun 2021 04:51:30 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1luSwh-0008MI-Dq; Sat, 19 Jun 2021 06:51:03 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1luSwa-0001LS-Ud; Sat, 19 Jun 2021 06:50:56 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Sat, 19 Jun 2021 06:50:47 +0200
Message-Id: <20210619045055.779-22-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210619045055.779-1-a.fatoum@pengutronix.de>
References: <20210619045055.779-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210618_215128_999510_1679A146 
X-CRM114-Status: GOOD (  15.68  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 21/29] mci: dw_mmc: match against StarFive MMC compatibles
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The Linux driver in v5.13 doesn't determine min and max frequency from
clk_ciu, instead it consults the clock-frequency property in the device
tree. We will want to follow the Linux way for the StarFive, especially
because clk_get_rate returns bogus results for the JH7100, because the
clock tree doesn't yet describe enough information to calculate rates.

Add a compatible that does the necessary things as well as a generic
snps,dw-mshc compatible, like what the vendor device tree uses. The hope
is, that with complete clock tree described, we can drop the
starfive,jh7100-dw-mshc compatible check in future and use the generic
compatible instead.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mci/dw_mmc.c | 14 +++++++++++---
 1 file changed, 11 insertions(+), 3 deletions(-)

diff --git a/drivers/mci/dw_mmc.c b/drivers/mci/dw_mmc.c
index ad1d2a06b914..b402090ab3cb 100644
--- a/drivers/mci/dw_mmc.c
+++ b/drivers/mci/dw_mmc.c
@@ -32,7 +32,7 @@ struct dwmci_host {
 	unsigned int fifo_size_bytes;
 
 	struct dwmci_idmac *idmac;
-	unsigned long clkrate;
+	u32 clkrate;
 	int ciu_div;
 	u32 fifoth_val;
 	u32 pwren_value;
@@ -572,7 +572,7 @@ static int dw_mmc_probe(struct device_d *dev)
 
 	rst = reset_control_get(dev, "reset");
 	if (IS_ERR(rst)) {
-		dev_warn(dev, "error claiming reset: %pe\n", rst);
+		return PTR_ERR(rst);
 	} else if (rst) {
 		reset_control_assert(rst);
 		udelay(10);
@@ -617,7 +617,11 @@ static int dw_mmc_probe(struct device_d *dev)
 	else
 		host->pwren_value = 1;
 
-	host->clkrate = clk_get_rate(host->clk_ciu);
+	if (of_device_is_compatible(dev->device_node, "starfive,jh7100-dw-mshc"))
+		of_property_read_u32(dev->device_node, "clock-frequency", &host->clkrate);
+	if (!host->clkrate)
+		host->clkrate = clk_get_rate(host->clk_ciu);
+
 	host->mci.f_min = host->clkrate / 510 / host->ciu_div;
 	if (host->mci.f_min < 200000)
 		host->mci.f_min = 200000;
@@ -635,6 +639,10 @@ static __maybe_unused struct of_device_id dw_mmc_compatible[] = {
 		.compatible = "rockchip,rk2928-dw-mshc",
 	}, {
 		.compatible = "rockchip,rk3288-dw-mshc",
+	}, {
+		.compatible = "snps,dw-mshc",
+	}, {
+		.compatible = "starfive,jh7100-dw-mshc",
 	}, {
 		/* sentinel */
 	}
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

