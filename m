Delivery-date: Thu, 16 Jun 2022 15:12:37 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o1pIa-003ucz-5e
	for lore@lore.pengutronix.de; Thu, 16 Jun 2022 15:12:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o1pIa-0001Uy-5J
	for lore@pengutronix.de; Thu, 16 Jun 2022 15:12:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8KybTPDQ+PFaOvaWiN+Cxg+wxay4BheUwdzf8wPujMc=; b=VcEgcqmvPViJZS
	MBHaZrMqqHs0v4zzIzrKYfwSkHrGIBJR7dE3guDTgRDteHWqfjbPK4GDFwgDyuu6ee3qDDfFd6BKj
	DSS5doeHjQh0lsvASQOzf4uqV+aF5C0G5leES49X4DaNHQ1zdX5MyyPuyL2HkgmrZ0MJ6AwiE23zO
	G1XIG1ywb8wmNKXbGpuq5//m/IJ0oV/MV7+h6Dk2Ipx2yGMtkx91NBz63EWmZUQWJds9Vgdot/c8j
	O5XikvQezdLhHJMdLa6Jiv/1cs6QI0yFMpYQDF4oPRdDAyXAH0z1uLVrHeQuii3d6KyUO3hc4189p
	wYCraAsfRpdhC+RySOXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1pHI-002Ot6-Ad; Thu, 16 Jun 2022 13:11:16 +0000
Received: from smtp16.bhosted.nl ([2a02:9e0:8000::27])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1pHD-002OqC-95
	for barebox@lists.infradead.org; Thu, 16 Jun 2022 13:11:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=protonic.nl; s=202111;
	h=content-transfer-encoding:mime-version:references:in-reply-to:message-id:date:
	 subject:cc:to:from:from;
	bh=8KybTPDQ+PFaOvaWiN+Cxg+wxay4BheUwdzf8wPujMc=;
	b=N5pCykBeUx1F34jgDnnoad/Ir4wfNP35qRGNTz4hicWdAb8uc0hlQlrqkkF7P1mKmQZvrdNS60FRq
	 jKW2Wt1Tt6XzWZMFKoIbDeCRM046k/oW/Q8ZmcNQdofSmGIbY9V4wiVfAzJ+XeIf4cJLpL3XDYTylP
	 Wo+INeXrT4Vf0xy8K4eUhBe9BW74+Es4ACfHD/dU2ylgNtyaKYl8vfkXBHGwe9YNCBsvU+PFtIT2/v
	 RFLc7iIMrVBCmDFVjkcges1Q6f8UJT53+Vzo4FuxqkEtZ1mddAFXRoPvRMrNlCgzn5uiZLKY9I0KRN
	 xu/eYX2CwqhNdxGF1Fjz48o77jr4dSw==
X-MSG-ID: c9aa8d77-ed75-11ec-9051-0050569d2c73
From: Robin van der Gracht <robin@protonic.nl>
To: barebox@lists.infradead.org
Date: Thu, 16 Jun 2022 15:11:09 +0200
Message-Id: <20220616131114.214628-5-robin@protonic.nl>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220616131114.214628-1-robin@protonic.nl>
References: <20220616131114.214628-1-robin@protonic.nl>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220616_061111_539483_DD75B941 
X-CRM114-Status: UNSURE (   8.37  )
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
Cc: Oleksij Rempel <o.rempel@pengutronix.de>, Robin van der Gracht <robin@protonic.nl>, david@protonic.nl
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 4/9] ARM: boards: protonic-imx6: Always free allocated alias string
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The memory required to store the string needs to be freed on success
as well since it's no longer used.

Signed-off-by: Robin van der Gracht <robin@protonic.nl>
---
 arch/arm/boards/protonic-imx6/board.c | 12 ++++--------
 1 file changed, 4 insertions(+), 8 deletions(-)

diff --git a/arch/arm/boards/protonic-imx6/board.c b/arch/arm/boards/protonic-imx6/board.c
index 76c26fe296..7978553cb8 100644
--- a/arch/arm/boards/protonic-imx6/board.c
+++ b/arch/arm/boards/protonic-imx6/board.c
@@ -681,24 +681,22 @@ static int prt_imx6_rfid_fixup(struct prt_imx6_priv *priv,
 	}
 
 	i2c_node = of_find_node_by_alias(root, alias);
+	kfree(alias);
 	if (!i2c_node) {
 		dev_err(priv->dev, "Unsupported i2c adapter\n");
-		ret = -ENODEV;
-		goto free_alias;
+		return -ENODEV;
 	}
 
 	eeprom_node_name = basprintf("/eeprom@%x", dcfg->i2c_addr);
 	if (!eeprom_node_name) {
-		ret = -ENOMEM;
-		goto free_alias;
+		return -ENOMEM;
 	}
 
 	node = of_create_node(i2c_node, eeprom_node_name);
 	if (!node) {
 		dev_err(priv->dev, "Failed to create node %s\n",
 			eeprom_node_name);
-		ret = -ENOMEM;
-		goto free_eeprom;
+		return -ENOMEM;
 	}
 
 	ret = of_property_write_string(node, "compatible", "atmel,24c256");
@@ -722,8 +720,6 @@ static int prt_imx6_rfid_fixup(struct prt_imx6_priv *priv,
 	return 0;
 free_eeprom:
 	kfree(eeprom_node_name);
-free_alias:
-	kfree(alias);
 exit_error:
 	dev_err(priv->dev, "Failed to apply fixup: %pe\n", ERR_PTR(ret));
 	return ret;
-- 
2.34.1



