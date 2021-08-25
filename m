Delivery-date: Wed, 25 Aug 2021 14:57:03 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mIsSl-0001HI-Ld
	for lore@lore.pengutronix.de; Wed, 25 Aug 2021 14:57:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mIsSg-0005bx-D1
	for lore@pengutronix.de; Wed, 25 Aug 2021 14:57:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zKa6Mef/T2afZLaybtU8I3uklktk3J5Toz2lUSdLtVg=; b=1+GBBiDFG8r4Eq
	ejJiux8IFfhusTjTTNIcSGs5gxeu1QcC59peoH5PSqR5ESCIUAI1J8o62IRLVDz/3tiHGZNJpa13F
	jFnH4kQkggK+oU2yhQjWJI7dJWPN3tRaQVSiecQ3CYAIt8pFuHPX8yVmqzyLucg3owvGmBQVOlDld
	8dOLKM59BI/yqBGsLsE6xmaBRldwdX+arIV9uZ1PeClza/980R4Bz9YD1ZKNkqCv476bq3vonDcfV
	vFQchEQtSJKNfuOI8MwFvef+7ygW6krvToNp9AnrmvfW8sos/qeTXCbRcGRBpi8bGtu4B9mUmMkC7
	dSeuw4wwoAKDM2rDOlAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mIsQZ-006y5X-S2; Wed, 25 Aug 2021 12:54:47 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mIsQU-006y3W-TK
 for barebox@lists.infradead.org; Wed, 25 Aug 2021 12:54:44 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1mIsQL-00050n-5U; Wed, 25 Aug 2021 14:54:33 +0200
Received: from ore by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1mIsQK-00070o-TN; Wed, 25 Aug 2021 14:54:32 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Wed, 25 Aug 2021 14:54:28 +0200
Message-Id: <20210825125430.26901-3-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210825125430.26901-1-o.rempel@pengutronix.de>
References: <20210825125430.26901-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210825_055442_987556_DAB56BCE 
X-CRM114-Status: GOOD (  10.33  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v1 2/4] ARM: boards: protonic-imx6: use decode error values
 instead error numbers.
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Current barebox version provides "%pe" support with error to string
conversion. So, let's use it.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/arm/boards/protonic-imx6/board.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/arch/arm/boards/protonic-imx6/board.c b/arch/arm/boards/protonic-imx6/board.c
index 81e09a8d8b..9a95495327 100644
--- a/arch/arm/boards/protonic-imx6/board.c
+++ b/arch/arm/boards/protonic-imx6/board.c
@@ -138,7 +138,7 @@ static int prt_imx6_read_rfid(struct prt_imx6_priv *priv, void *buf,
 	/* 0x6000 user storage in the RFID tag */
 	ret = i2c_read_reg(&cl, 0x6000 | I2C_ADDR_16_BIT, buf, size);
 	if (ret < 0) {
-		dev_err(dev, "Failed to read the RFID: %i\n", ret);
+		dev_err(dev, "Failed to read the RFID: %pe\n", ERR_PTR(ret));
 		return ret;
 	}
 
@@ -404,7 +404,7 @@ static int prt_imx6_env_init(struct prt_imx6_priv *priv)
 	return 0;
 
 exit_env_init:
-	dev_err(dev, "Failed to set env: %i\n", ret);
+	dev_err(dev, "Failed to set env: %pe\n", ERR_PTR(ret));
 
 	return ret;
 }
@@ -437,7 +437,7 @@ static int prt_imx6_bbu(struct prt_imx6_priv *priv)
 
 	return 0;
 exit_bbu:
-	dev_err(priv->dev, "Failed to register bbu: %i\n", ret);
+	dev_err(priv->dev, "Failed to register bbu: %pe\n", ERR_PTR(ret));
 	return ret;
 }
 
@@ -510,7 +510,7 @@ static int prt_imx6_yaco_set_kvg_power_mode(struct prt_imx6_priv *priv,
 	return 0;
 
 exit_yaco_set_kvg_power_mode:
-	dev_err(dev, "Failed to set YaCO pw mode: %i", ret);
+	dev_err(dev, "Failed to set YaCO pw mode: %pe", ERR_PTR(ret));
 
 	return ret;
 }
@@ -679,7 +679,7 @@ free_eeprom:
 free_alias:
 	kfree(alias);
 exit_error:
-	dev_err(priv->dev, "Failed to apply fixup: %i\n", ret);
+	dev_err(priv->dev, "Failed to apply fixup: %pe\n", ERR_PTR(ret));
 	return ret;
 }
 
@@ -700,7 +700,7 @@ static int prt_imx6_of_fixup(struct device_node *root, void *data)
 
 	return 0;
 exit_of_fixups:
-	dev_err(priv->dev, "Failed to apply OF fixups: %i\n", ret);
+	dev_err(priv->dev, "Failed to apply OF fixups: %pe\n", ERR_PTR(ret));
 	return ret;
 }
 
@@ -729,7 +729,7 @@ static int prt_imx6_get_id(struct prt_imx6_priv *priv)
 
 	return 0;
 exit_get_id:
-	dev_err(priv->dev, "Failed to read gpio ID: %i\n", ret);
+	dev_err(priv->dev, "Failed to read gpio ID: %pe\n", ERR_PTR(ret));
 	return ret;
 }
 
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

