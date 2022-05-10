Delivery-date: Tue, 10 May 2022 17:38:59 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1noRwx-008WNb-3Q
	for lore@lore.pengutronix.de; Tue, 10 May 2022 17:38:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1noRwv-0000c6-Ha
	for lore@pengutronix.de; Tue, 10 May 2022 17:38:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jXpJoHKivUYgreZy/ictHKAj6XmWGff4YV7CtvbhtOc=; b=KjcdyITCSuVCdS
	87LlrlcYXSRUtIgsrHnwaaVhxwu1yfbWyYXzPGSZIVXzs8pR6T9lq2JzzLnP3Vszvk8JSSMhoelNp
	FOYdsgWdoSywVZYxxtXbEkQC3s9xD+ujaUkfwnuS/czdZkmQar8hChZty7hv2198YRGKEVai37G5y
	970C7vtXZxQyQe2a9phu/L2ui6DAM7h/XMGB1+Rc2aUo+RKFEjmVzOBmgQz/d1hRMbgGqNJJJIQsb
	a7b5PkEvuD6yKR/p02grCyfpdRnpjGed7MLRlLeiaKVWJcMOQ0Cs69hGk0Jf0ft0H7GWn1CRyJ+4H
	vu7hq1njaZyhwJdluEhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1noRvJ-002mYM-8E; Tue, 10 May 2022 15:37:17 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1noRvD-002mTI-Eh
 for barebox@lists.infradead.org; Tue, 10 May 2022 15:37:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1noRv2-0000Lb-FJ; Tue, 10 May 2022 17:37:00 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1noRv2-001W6g-M1; Tue, 10 May 2022 17:36:59 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1noRv0-008X6p-Di; Tue, 10 May 2022 17:36:58 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Matthias Fend <matthias.fend@emfend.at>,
 Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 10 May 2022 17:36:57 +0200
Message-Id: <20220510153657.2033190-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220510_083711_543365_B40A4603 
X-CRM114-Status: GOOD (  13.57  )
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
X-Spam-Status: No, score=-5.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] i2c: rockchip: fix transfer return value
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

barebox (and kernel) API is for i2c_adapter::master_xfer to return the
number of successfully transmitted messages and a negative value on
error. This was not observed in the Rockchip driver, fix this.

Reported-by: Matthias Fend <matthias.fend@emfend.at>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
Only compile-tested, but change looks innocuous enough.
---
 drivers/i2c/busses/i2c-rockchip.c | 13 ++++++++-----
 1 file changed, 8 insertions(+), 5 deletions(-)

diff --git a/drivers/i2c/busses/i2c-rockchip.c b/drivers/i2c/busses/i2c-rockchip.c
index 4990735a4b11..ca339053356c 100644
--- a/drivers/i2c/busses/i2c-rockchip.c
+++ b/drivers/i2c/busses/i2c-rockchip.c
@@ -375,15 +375,17 @@ i2c_exit:
 	return err;
 }
 
-static int rockchip_i2c_xfer(struct i2c_adapter *adapter, struct i2c_msg *msg,
+static int rockchip_i2c_xfer(struct i2c_adapter *adapter, struct i2c_msg *msgs,
 			     int nmsgs)
 {
 	struct rk_i2c *i2c = to_rk_i2c(adapter);
 	struct device_d *dev = &adapter->dev;
-	int ret;
+	int i, ret = 0;
 
 	dev_dbg(dev, "i2c_xfer: %d messages\n", nmsgs);
-	for (; nmsgs > 0; nmsgs--, msg++) {
+	for (i = 0; i < nmsgs; i++) {
+		struct i2c_msg *msg = &msgs[i];
+
 		dev_dbg(dev, "i2c_xfer: chip=0x%x, len=0x%x\n", msg->addr, msg->len);
 		if (msg->flags & I2C_M_RD) {
 			ret = rk_i2c_read(i2c, msg->addr, 0, 0, msg->buf,
@@ -395,14 +397,15 @@ static int rockchip_i2c_xfer(struct i2c_adapter *adapter, struct i2c_msg *msg,
 		if (ret) {
 			dev_dbg(dev, "i2c_write: error sending: %pe\n",
 				ERR_PTR(ret));
-			return -EREMOTEIO;
+			ret = -EREMOTEIO;
+			break;
 		}
 	}
 
 	rk_i2c_send_stop_bit(i2c);
 	rk_i2c_disable(i2c);
 
-	return 0;
+	return ret < 0 ? ret : nmsgs;
 }
 
 static int rk_i2c_probe(struct device_d *dev)
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

