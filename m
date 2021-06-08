Delivery-date: Tue, 08 Jun 2021 11:38:32 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lqYBs-0003kK-Et
	for lore@lore.pengutronix.de; Tue, 08 Jun 2021 11:38:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lqYBn-0000eS-3r
	for lore@pengutronix.de; Tue, 08 Jun 2021 11:38:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BSlEiMIJe+FYwv/54mD/TQxtx/BrGmVkkWgx+kEbYE4=; b=IfmMz1ISeJ5cP8
	gzP3j3VcgxysFa6+Ko2pWAvptEYiMaRW0nUmZWVOCQDwPELzBufHueIleEdKfsM/PFqiOgt5FcyZD
	4Vn02UJqWLbZKDV4CkXEUeKtdT6n7cAZ82s061ZUcDkfOdxQpGIgzDcCWT/wz6TTSosw/HOyC0DFe
	vXxhrp+sjP26280wp91HuXPqkyMjNe38SpzM3KLUhsYFMS/QXrNRFSc3xqhsnjQI96WeOKUayc8Kz
	WnOr373XzRvj0ewAM9NJ7if+OKLFP4XlBLql493vd+5Npf5S8LDNiaaGCF2JfbRRup+5XzSEh5clc
	r8sOge74RPJ3Ldel4Fqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lqYAD-007SDV-Uf; Tue, 08 Jun 2021 09:36:50 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lqYA2-007SAa-Tn
 for barebox@lists.infradead.org; Tue, 08 Jun 2021 09:36:41 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lqYA1-0000Qc-CB; Tue, 08 Jun 2021 11:36:37 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lqYA1-0004oH-0I; Tue, 08 Jun 2021 11:36:37 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue,  8 Jun 2021 11:36:34 +0200
Message-Id: <20210608093635.5749-4-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210608093635.5749-1-s.hauer@pengutronix.de>
References: <20210608093635.5749-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210608_023639_020550_A4C4C9D3 
X-CRM114-Status: GOOD (  10.10  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/4] net: designware: eqos: set mdio bus device node
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

When the device node of the ethernet device has a mdio subnode then
attach it to the registered mdio bus. This allows the mdio driver
to handle the reset-gpios propertie in the phy nodes.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/designware_eqos.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/designware_eqos.c b/drivers/net/designware_eqos.c
index e6248d408e..f83ec12714 100644
--- a/drivers/net/designware_eqos.c
+++ b/drivers/net/designware_eqos.c
@@ -862,6 +862,7 @@ int eqos_probe(struct device_d *dev, const struct eqos_ops *ops, void *priv)
 	miibus->read = eqos_mdio_read;
 	miibus->write = eqos_mdio_write;
 	miibus->priv = eqos;
+	miibus->dev.device_node = of_get_child_by_name(dev->device_node, "mdio");
 
 	ret = eqos_init(dev, eqos);
 	if (ret)
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

