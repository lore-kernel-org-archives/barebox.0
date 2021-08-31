Delivery-date: Tue, 31 Aug 2021 17:34:37 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mL5mX-0002NC-E7
	for lore@lore.pengutronix.de; Tue, 31 Aug 2021 17:34:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mL5mV-00074v-LC
	for lore@pengutronix.de; Tue, 31 Aug 2021 17:34:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Z6FiYc32KKWIV/h5sv9qiKQUmLBzw07Y1kz0R2BJTz0=; b=V007AAivwaULz5
	pB8/Pgu54MjygTk6DYTz4Z/tpiX01oefXq1Yd51lAn3ksScv1BSGvuorpl2Hq1ajfN+Mm/HK3QfXR
	uxfyhpzYD154Iagc2NyjgeMd4ZQNnVAQY+Y56ly/OYFUzjKz4vGjI7ovRESj8AaAa65fNBCNSKb7h
	F0LVsaVq6OTrAqpBIsWhBh4lM0+M0SDTfovCOY5y498JLpRsp6TyqUWZAzOTn443ew3+BS9hrAmXS
	PgppfTr+WI6rMvrtYegkH0cgSH2xvV3d5/YwiY0dcUsMorcG7z+1L1+nQmltfBPANJsd4eVZD3JIQ
	TxyjOX0Th5RU8AZw8c+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mL5kP-002eOf-0V; Tue, 31 Aug 2021 15:32:25 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mL5kJ-002eOJ-TC
 for barebox@lists.infradead.org; Tue, 31 Aug 2021 15:32:21 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mL5kG-0006sZ-7e; Tue, 31 Aug 2021 17:32:16 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mL5kF-00085u-Sh; Tue, 31 Aug 2021 17:32:15 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 31 Aug 2021 17:32:14 +0200
Message-Id: <20210831153214.31047-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210831_083219_979206_281822A4 
X-CRM114-Status: GOOD (  10.86  )
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
Subject: [PATCH master] net: designware: eqos: fix MDIO regression for
 STM32MP1 boards
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The STM32MP1 boards call their mdio subnode mdio0, which is now skipped
since ed8c7bdf8592 ("net: designware: eqos: set mdio bus device node").

Fix networking for them by only falling back to the mdio node name when a
child node with the correct compatible could not be found.

Fixes: ed8c7bdf8592 ("net: designware: eqos: set mdio bus device node")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/net/designware_eqos.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/net/designware_eqos.c b/drivers/net/designware_eqos.c
index f83ec127143c..5eee844e289a 100644
--- a/drivers/net/designware_eqos.c
+++ b/drivers/net/designware_eqos.c
@@ -824,6 +824,7 @@ static void eqos_probe_dt(struct device_d *dev, struct eqos *eqos)
 
 int eqos_probe(struct device_d *dev, const struct eqos_ops *ops, void *priv)
 {
+	struct device_node *np = dev->device_node;
 	struct mii_bus *miibus;
 	struct resource *iores;
 	struct eqos *eqos;
@@ -862,7 +863,10 @@ int eqos_probe(struct device_d *dev, const struct eqos_ops *ops, void *priv)
 	miibus->read = eqos_mdio_read;
 	miibus->write = eqos_mdio_write;
 	miibus->priv = eqos;
-	miibus->dev.device_node = of_get_child_by_name(dev->device_node, "mdio");
+
+	miibus->dev.device_node = of_get_compatible_child(np, "snps,dwmac-mdio");
+	if (!miibus->dev.device_node)
+		miibus->dev.device_node = of_get_child_by_name(np, "mdio");
 
 	ret = eqos_init(dev, eqos);
 	if (ret)
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

