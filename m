Delivery-date: Thu, 22 Dec 2022 15:31:02 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p8Mb8-0051Sa-Pb
	for lore@lore.pengutronix.de; Thu, 22 Dec 2022 15:31:02 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p8Mb5-0006dV-Sn
	for lore@pengutronix.de; Thu, 22 Dec 2022 15:31:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+EDsXYIDsGVuHg2E2r4jCST9S/gpqwDY4QPXflIgrQs=; b=CqpSbamCKbgXqsls9D1UOta1Kn
	zCLXiW04/JWGCt3ZCDZE5t3L7T0ZFm6Nq+evT2ylxRKMXchEARLwX5X3M8kYI1jNsn5+jyYKF1vA9
	5hhViD5mazqLHABIRMoUepxFD5xxLMHdaFUZEH9bGQNjXsTVPV5F6dumH494Xbc4G7GsDhlU/6rQc
	mfFN4sn2Om/AEGcLHlcIFJiddUhtSFGnNyVh51zWU75pvy2LkPbn5VP6Otq+QpIyLjb0maTMiRaZc
	pPbzvVc//FWcS5OJ1qc4NXr6Df4bOJE2PDAmII3QPQS+UgSHKlX7fQwuyBLhnMqpeqCOOh+m5D9ZP
	J96EHkyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8MYu-00CxgD-Ay; Thu, 22 Dec 2022 14:28:44 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8MIv-00ComL-3Q
	for barebox@lists.infradead.org; Thu, 22 Dec 2022 14:12:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1p8MIr-0003uV-4F; Thu, 22 Dec 2022 15:12:09 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1p8MIq-0011pe-5J; Thu, 22 Dec 2022 15:12:08 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1p8MIp-00Cx90-7j; Thu, 22 Dec 2022 15:12:07 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Leif Middelschulte <leif.middelschulte@klsmartin.com>,
	uol@pengutronix.de,
	ore@pengutronix.de,
	=?UTF-8?q?S=C3=B8ren=20Andersen?= <san@skov.dk>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 22 Dec 2022 15:12:00 +0100
Message-Id: <20221222141201.3087192-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221222141201.3087192-1-a.fatoum@pengutronix.de>
References: <20221222141201.3087192-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221222_061213_435283_14068635 
X-CRM114-Status: GOOD (  12.06  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 5/6] video: edid: print debug message on EDID read out error
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

EDID readout errors happen often, e.g. because the HDMI port doesn't
have a display connected. However, when a monitor is connected, but some
other error occurs, barebox is silent. Add a debug message with an error
code for this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/video/edid.c | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/drivers/video/edid.c b/drivers/video/edid.c
index 96489f2a372c..7e6747ccd521 100644
--- a/drivers/video/edid.c
+++ b/drivers/video/edid.c
@@ -847,20 +847,27 @@ edid_do_read_i2c(struct i2c_adapter *adapter, unsigned char *buf,
 		ret = i2c_transfer(adapter, &msgs[3 - xfers], xfers);
 	} while (ret != xfers && --retries);
 
-	return ret == xfers ? 0 : -1;
+	if (ret == 0)
+		ret = -EPROTO;
+
+	return ret == xfers ? 0 : ret;
 }
 
 void *edid_read_i2c(struct i2c_adapter *adapter)
 {
 	u8 *block;
+	int ret;
 
 	if (!IS_ENABLED(CONFIG_I2C))
 		return NULL;
 
 	block = xmalloc(EDID_LENGTH);
 
-	if (edid_do_read_i2c(adapter, block, 0, EDID_LENGTH))
+	ret = edid_do_read_i2c(adapter, block, 0, EDID_LENGTH);
+	if (ret) {
+		dev_dbg(&adapter->dev, "EDID readout failed: %pe\n", ERR_PTR(ret));
 		goto out;
+	}
 
 	return block;
 out:
-- 
2.30.2



