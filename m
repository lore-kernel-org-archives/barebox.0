Delivery-date: Thu, 02 May 2024 17:17:58 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s2YC6-00FHSt-2p
	for lore@lore.pengutronix.de;
	Thu, 02 May 2024 17:17:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s2YC6-0003q7-AO
	for lore@pengutronix.de; Thu, 02 May 2024 17:17:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=rqoBYChJ1GlM1+D+KAtxhaa+9bIfGicrBXnq5Vh80Po=; b=FnlHckj/RI/NkJS+r56b+N34pK
	uyYtRmcazAHyW1aSp2TfbNYkllKOIXE9hQ7iLFtpaJBysUsAJPbE4YiLg0H44aI+DPKRBvsrrqPj1
	LLwH1R32ehuXGQgVgCBW0/ZXchaBpbcHpbDLPOpxu4l8VpP6cIrBaBP6gcuxQxYTD2AW7hw2V47K7
	HeQniDyQ4wyUBiPTCaTw3ShWo+KCe/1fFwpDCcO2yVH6cGxEEbzfX+1ZKa/EzhBIyyH7Gi7ScMZez
	ewkWuqTQlpp0yckk2mjgc6MCcpFeIQa/A/Pp3/rUkleWslwZZiIIDWnywtlaK1pI6GrnU2IldJZ6e
	3OCb1wIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2YBe-0000000D54k-0NrQ;
	Thu, 02 May 2024 15:17:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2YBa-0000000D544-1fw6
	for barebox@lists.infradead.org;
	Thu, 02 May 2024 15:17:27 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s2YBY-0003fe-Jh; Thu, 02 May 2024 17:17:24 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s2YBY-00FXr7-7V; Thu, 02 May 2024 17:17:24 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s2YBY-00GdI5-0S;
	Thu, 02 May 2024 17:17:24 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  2 May 2024 17:17:23 +0200
Message-Id: <20240502151723.3964267-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240502_081726_462036_EBEAC523 
X-CRM114-Status: GOOD (  12.36  )
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
Subject: [PATCH master] mdio_bus: return 0xFFFF when read fails with error code
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

phy_read may return an error code if the underlying transport
misbehaves, e.g. a busy and non-recoverable I2C bus.

Instead of packing the error code value into the buffer, let's just
report 0xFFFF, which is the natural value used for unresponsive PHYs,
due to the pull-ups.

We could instead also return an error code, but this brings us quite a
bit of complexity, because we would need to decide:

  - Either use an intermediary buffer and report an error code
    immediately

  - Return an incomplete count and assume that the error condition persists
    to the follow-up read, so it can return the error code

Take the easy way out and just report 0xFFFF, which is generally
understood to mean unresponsive PHY.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/net/phy/mdio_bus.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/net/phy/mdio_bus.c b/drivers/net/phy/mdio_bus.c
index eed7c779e753..30d5aeacff0d 100644
--- a/drivers/net/phy/mdio_bus.c
+++ b/drivers/net/phy/mdio_bus.c
@@ -472,12 +472,13 @@ int mdiobus_write(struct mii_bus *bus, int addr, u32 regnum, u16 val)
 
 static ssize_t phydev_read(struct cdev *cdev, void *_buf, size_t count, loff_t offset, ulong flags)
 {
-	int i = count;
+	int ret, i = count;
 	uint16_t *buf = _buf;
 	struct phy_device *phydev = cdev->priv;
 
 	while (i > 0) {
-		*buf = phy_read(phydev, offset / 2);
+		ret = phy_read(phydev, offset / 2);
+		*buf = ret >= 0 ? ret : 0xffff;
 		buf++;
 		i -= 2;
 		offset += 2;
-- 
2.39.2



