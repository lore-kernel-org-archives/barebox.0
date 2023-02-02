Delivery-date: Thu, 02 Feb 2023 18:35:32 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pNdUj-00BdhT-Il
	for lore@lore.pengutronix.de; Thu, 02 Feb 2023 18:35:32 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pNdUg-0004vC-Ta
	for lore@pengutronix.de; Thu, 02 Feb 2023 18:35:31 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7L+z+7GXpJj8wxWfOOahEDsJM5qJ0exOwN3Kn5sUAJM=; b=fOWusW69y2b6AIhfuWxgUOca5o
	uvTYFWdEPq2yCIV7W7Dd7cCMdlH1cEGjAQ0DQ9VOhsWQvTcOVzCGjb0fWMD5/pL6oz7XlGdgkMwJ+
	DVPhSU0LoaQ3lftx26SsV1uyNrhGmKbotAR/D2bjYPEBlJ5R+7l/Gow86B5oranK2OuVxzu5/lMSq
	6V++e9LFGW4LrvRCMywHJrvsrDn8SSMhZROmNo+CxTODvFzfmYXDrycJj9dZXRWObe2QQkarFmS8o
	Jcn7K6CxzJLLwYj7DdNtxnnT4f4we3wt+RBxRx9IftQSFKMLZ2T516MXoq7PFMO2p23XNuu7J1pBe
	/oCT5SCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNdTE-00GoeG-6A; Thu, 02 Feb 2023 17:34:00 +0000
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNdT9-00GobK-4d
	for barebox@lists.infradead.org; Thu, 02 Feb 2023 17:33:57 +0000
Received: by lynxeye.de (Postfix, from userid 501)
	id 13A3FE74011; Thu,  2 Feb 2023 18:33:22 +0100 (CET)
Received: from astat.fritz.box (a89-183-231-214.net-htp.de [89.183.231.214])
	by lynxeye.de (Postfix) with ESMTPA id 74483E74013
	for <barebox@lists.infradead.org>; Thu,  2 Feb 2023 18:33:18 +0100 (CET)
From: Lucas Stach <l.stach@pengutronix.de>
To: barebox@lists.infradead.org
Date: Thu,  2 Feb 2023 18:33:11 +0100
Message-Id: <20230202173312.504493-4-l.stach@pengutronix.de>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230202173312.504493-1-l.stach@pengutronix.de>
References: <20230202173312.504493-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230202_093355_360206_BC221D89 
X-CRM114-Status: GOOD (  14.49  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 4/5] nvmem: ocotp: add post processing for MAC cells
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Add a nvmem post process callback to swap the MAC address as required
when read via nvmem.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/nvmem/ocotp.c | 18 +++++++++++++++++-
 1 file changed, 17 insertions(+), 1 deletion(-)

diff --git a/drivers/nvmem/ocotp.c b/drivers/nvmem/ocotp.c
index 78c9f9726db0..b478ece30680 100644
--- a/drivers/nvmem/ocotp.c
+++ b/drivers/nvmem/ocotp.c
@@ -641,6 +641,21 @@ static struct regmap_bus imx_ocotp_regmap_bus = {
 	.reg_read = imx_ocotp_reg_read,
 };
 
+static int imx_ocotp_cell_pp(void *context, const char *id, unsigned int offset,
+			     void *data, size_t bytes)
+{
+	/* Deal with some post processing of nvmem cell data */
+	if (id && !strcmp(id, "mac-address")) {
+		u8 *buf = data;
+		int i;
+
+		for (i = 0; i < bytes/2; i++)
+			swap(buf[i], buf[bytes - i - 1]);
+	}
+
+	return 0;
+}
+
 static int imx_ocotp_init_dt(struct ocotp_priv *priv)
 {
 	char mac[MAC_BYTES];
@@ -731,7 +746,8 @@ static int imx_ocotp_probe(struct device *dev)
 	if (IS_ERR(priv->map))
 		return PTR_ERR(priv->map);
 
-	nvmem = nvmem_regmap_register(priv->map, "imx-ocotp");
+	nvmem = nvmem_regmap_register_with_pp(priv->map, "imx-ocotp",
+					      imx_ocotp_cell_pp);
 	if (IS_ERR(nvmem))
 		return PTR_ERR(nvmem);
 
-- 
2.39.1



