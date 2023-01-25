Delivery-date: Wed, 25 Jan 2023 08:39:31 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKaNZ-001GFc-ES
	for lore@lore.pengutronix.de; Wed, 25 Jan 2023 08:39:31 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKaNW-0008Tt-QI
	for lore@pengutronix.de; Wed, 25 Jan 2023 08:39:31 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+JjP+pxDObqQ0fgHvcVxgne3wXqeGIbBwQp9tD4le08=; b=znZtxilmUUcpIlRbQ40L9qktj4
	NKcAHayk22OTwj3h0nq2KZLgXX34D/yIY0MryTdJVqCfmdNzB5TOw8G4hFcG26ELkeH4ZtGtm7w6o
	fJoPTtmstULpQMmE6jEfs3vts1i7cal0WG47wCMfh0pEp1AUKnXxR8uY4yLi38Cwty7/r89pmAwTy
	umxgCKKD5bjlyak9F7yNX9Pc7A8BYzymh48yBkXqkEFYrle1BydSH/oz5wSVpKzhh3HOGzitbY0Sn
	1fu/T4a/Pmr36dka5FRa87biWURLRIve31VRqHClDydbAafBkYWebn2G8IbZ9wp6PBs3bqjnCr+Kk
	NF0DuJhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKaM0-006GLm-KQ; Wed, 25 Jan 2023 07:37:56 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKaLw-006GKG-5A
	for barebox@lists.infradead.org; Wed, 25 Jan 2023 07:37:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pKaLs-0008B0-Fz; Wed, 25 Jan 2023 08:37:48 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pKaLs-000Hnk-PW; Wed, 25 Jan 2023 08:37:47 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pKaLq-008MGI-VR; Wed, 25 Jan 2023 08:37:46 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 25 Jan 2023 08:37:39 +0100
Message-Id: <20230125073739.1992152-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230125073739.1992152-1-s.hauer@pengutronix.de>
References: <20230125073739.1992152-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230124_233752_213629_70AA8293 
X-CRM114-Status: GOOD (  13.19  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] i2c: Make i2c_recover_bus() to return -EBUSY if bus recovery unimplemented
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Based on the corresponding Kernel commit c126f7c3b8c4:

The i2c_recover_bus() returns -EOPNOTSUPP if bus recovery isn't wired up
by the bus driver, which the case for Tegra I2C driver for example. This
error code is then propagated to I2C client and might be confusing, thus
make i2c_recover_bus() to return -EBUSY instead.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/i2c/i2c.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/i2c/i2c.c b/drivers/i2c/i2c.c
index 7e1cea49f3..f3efb62087 100644
--- a/drivers/i2c/i2c.c
+++ b/drivers/i2c/i2c.c
@@ -353,7 +353,7 @@ int i2c_generic_gpio_recovery(struct i2c_adapter *adap)
 int i2c_recover_bus(struct i2c_adapter *adap)
 {
 	if (!adap->bus_recovery_info)
-		return -EOPNOTSUPP;
+		return -EBUSY;
 
 	dev_dbg(&adap->dev, "Trying i2c bus recovery\n");
 	return adap->bus_recovery_info->recover_bus(adap);
-- 
2.30.2



