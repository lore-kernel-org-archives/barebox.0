Delivery-date: Thu, 28 Sep 2023 14:22:59 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qlq2m-00F6bJ-D5
	for lore@lore.pengutronix.de; Thu, 28 Sep 2023 14:22:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qlq2k-0000zL-8o
	for lore@pengutronix.de; Thu, 28 Sep 2023 14:22:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Z/D3cfrA8kIRFZHaIP+iXwq3MHFnNtUC+RxcctKJCaI=; b=z2outsQS+krmELlj5YXzkTFdkU
	5xY4TR3CJ/r6dgTvNpLdT+ld38r9hW0zWB9PwyiVMvtOYjELobo4Kvp9U5puSH9xFjIcmMb6B6WC0
	qZ//SVMv2Tu2b2zWPTpTFhA10DeblDX/Mgm2pBJLt/ZmL/zASv/1m97f8rWDTPZS5bAyuCM8dHaZK
	tHa224lgcupQLDkflumeBBanyr1mwuo2aOXe5tbmf/zmIVee+yZq1LM/DiyBozo3uKHXUpMw0vrLv
	HSZZdG6s9pGLaEFZv0c7uhBbci07GYmqJtDsMKj8z0lRg9qJyp2Y6NfZ/5Ct94aaQZDIgXqw8QcKq
	dBjtgqXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qlq1V-003gjW-28;
	Thu, 28 Sep 2023 12:21:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qlq1S-003gh1-0X
	for barebox@lists.infradead.org;
	Thu, 28 Sep 2023 12:21:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1qlq1Q-0000nz-Q1; Thu, 28 Sep 2023 14:21:36 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1qlq1O-009ZfW-MI; Thu, 28 Sep 2023 14:21:34 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1qlq1O-00Ar3C-24;
	Thu, 28 Sep 2023 14:21:34 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 28 Sep 2023 14:21:33 +0200
Message-Id: <20230928122133.2587197-1-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230928_052138_204190_59441FCA 
X-CRM114-Status: GOOD (  11.79  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v1] video: edid: print debug message on EDID read out error
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@pengutronix.de>

EDID readout errors happen often, e.g. because the HDMI port doesn't
have a display connected. However, when a monitor is connected, but some
other error occurs, barebox is silent. Add a debug message with an error
code for this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/video/edid.c | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/drivers/video/edid.c b/drivers/video/edid.c
index d2757185f6..2baf6646d9 100644
--- a/drivers/video/edid.c
+++ b/drivers/video/edid.c
@@ -852,20 +852,27 @@ edid_do_read_i2c(struct i2c_adapter *adapter, unsigned char *buf,
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
2.39.2



