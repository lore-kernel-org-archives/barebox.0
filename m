Delivery-date: Thu, 02 May 2024 17:18:33 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s2YCf-00FHVY-2C
	for lore@lore.pengutronix.de;
	Thu, 02 May 2024 17:18:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s2YCf-00047g-42
	for lore@pengutronix.de; Thu, 02 May 2024 17:18:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mez7SrqVpCza1H9AP3dF7RHnRgodFpmIeant4snUex4=; b=mgsApIBokZsrVOlIS63nvBILDX
	yAlLxYSw8p+37OpWzOcYXX9wYK7q4HnVyWBfhu/N+lFeaCdjp9e9P8b25jQ+kYdCD3KDVPSL8tvmb
	A9gd3w5cj0Jwmd5a2MPGtMkh2bWEfCqoIkyuuHOuQbk+DcLwrV3EFKCQcK4y4xU6griDsNeCrQ+PQ
	ioRDUbeRGnHbxan/YI7JnrzaPtQZHIfjrLxX986/8LWUSSBk6/rWRmrbJpehNWNNjgtBfsHV911Ck
	bU1ca0kCk+SfH6EIM+Zi6PFn5tIMRtTYI050NUPRMFCvsOGpp1i+6cfdOwFFQRz3dnzp19PhkAbU4
	G+XKe6pA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2YCF-0000000D5Di-473j;
	Thu, 02 May 2024 15:18:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2YCB-0000000D5BL-1dGn
	for barebox@lists.infradead.org;
	Thu, 02 May 2024 15:18:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s2YC9-0003rf-WC; Thu, 02 May 2024 17:18:02 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s2YC9-00FXrI-JK; Thu, 02 May 2024 17:18:01 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s2YC9-00GdMI-1c;
	Thu, 02 May 2024 17:18:01 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  2 May 2024 17:17:57 +0200
Message-Id: <20240502151757.3964461-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240502151757.3964461-1-a.fatoum@pengutronix.de>
References: <20240502151757.3964461-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240502_081803_714272_540B8180 
X-CRM114-Status: GOOD (  12.58  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/3] net: dsa: ksz9477: return negative error codes on PHY access failures
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The ksz register accessors return a negative error code if the
underlying transport, e.g. i2c, fails. We need to propagate this error
code, instead of reporting incorrect data.

For the case a PHY doesn't exist, reads on a physical bus return 0xFFFF
due to the pull-ups on the MDIO line, so we leave that as is.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/net/ksz9477.c | 12 +++++++-----
 1 file changed, 7 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ksz9477.c b/drivers/net/ksz9477.c
index 5c5f4ec8d995..950eb89c09c2 100644
--- a/drivers/net/ksz9477.c
+++ b/drivers/net/ksz9477.c
@@ -29,12 +29,15 @@ static int ksz9477_phy_read16(struct dsa_switch *ds, int addr, int reg)
 {
 	struct device *dev = ds->dev;
 	struct ksz_switch *priv = dev_get_priv(dev);
-	u16 val = 0xffff;
+	int ret;
+	u16 val;
 
 	if (addr >= priv->phy_port_cnt)
-		return val;
+		return 0xffff;
 
-	ksz_pread16(priv, addr, 0x100 + (reg << 1), &val);
+	ret = ksz_pread16(priv, addr, 0x100 + (reg << 1), &val);
+	if (ret)
+		return ret;
 
 	return val;
 }
@@ -52,9 +55,8 @@ static int ksz9477_phy_write16(struct dsa_switch *ds, int addr, int reg,
 	/* No gigabit support.  Do not write to this register. */
 	if (!(priv->features & GBIT_SUPPORT) && reg == MII_CTRL1000)
 		return 0;
-	ksz_pwrite16(priv, addr, 0x100 + (reg << 1), val);
 
-	return 0;
+	return ksz_pwrite16(priv, addr, 0x100 + (reg << 1), val);
 }
 
 static int ksz9477_switch_detect(struct ksz_switch *priv)
-- 
2.39.2



