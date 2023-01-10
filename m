Delivery-date: Tue, 10 Jan 2023 09:53:58 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFAON-007a3o-FP
	for lore@lore.pengutronix.de; Tue, 10 Jan 2023 09:53:58 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFAOL-0000Pk-FE
	for lore@pengutronix.de; Tue, 10 Jan 2023 09:53:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=3AlfQN4WBSQ9t+cVTATjRq59S/24r26HChQkvVjyNvw=; b=SKmeLxOVg5rMv586cg2SRfqRZH
	h35G2QfwQ34tWg58ZfDnlBpnRb55aCS28d9k3SMjHMhNQMh5rcI3Vk8VKnX/mSz2gUFyjexVOSuk+
	e0JNXQ3QFClUTmHIHkxQgAUtXF+SeGTO0VI/K6VknjN7ZaYJCcLORIquT+wQXX0MYaJP3k4Gy9eYX
	R3Dl+7mBAu2VhJd7hEQZ6joIX9hfG43iVEjuMkS7ziPdOCTGmHOVfQU72nhjNGxT0/Ym6waIwQaSu
	ep1vj0PJBsF26zG9QkizyFIaup24idvw5rbElCV5jSX4i7UVxKWSgA3drVq+GuhKGiU/AUcwzcrO/
	74igUx1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFANB-005vol-GU; Tue, 10 Jan 2023 08:52:45 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFAN6-005vmr-P7
	for barebox@lists.infradead.org; Tue, 10 Jan 2023 08:52:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pFAN5-0000Bl-D6; Tue, 10 Jan 2023 09:52:39 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pFAN4-0052Bd-PI; Tue, 10 Jan 2023 09:52:38 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pFAN3-00ER80-Pa; Tue, 10 Jan 2023 09:52:37 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 10 Jan 2023 09:52:37 +0100
Message-Id: <20230110085237.3440824-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230110_005240_828385_5F58ED89 
X-CRM114-Status: GOOD (  11.90  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master] i2c: imx: increase timeout in i2c_fsl_poll_status from 1 to 5ms
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The current wait time of 1 ms is apparently too short in some
circumstances leading to following error when communicating
with a KSZ switch with 100 kHz from an i.MX8MN I2C controller:

  ERROR: ksz9477-i2c ksz85630: error detecting KSZ9477: I/O error

Increasing the poll time to 5ms resolved this issue:

  ksz9477-i2c ksz85630: Found KSZ9893
  ksz9477-i2c ksz85630: chip id: 0x00989360

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/i2c/busses/i2c-imx.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/i2c/busses/i2c-imx.c b/drivers/i2c/busses/i2c-imx.c
index c0af446bcc25..28bd0072addf 100644
--- a/drivers/i2c/busses/i2c-imx.c
+++ b/drivers/i2c/busses/i2c-imx.c
@@ -201,7 +201,7 @@ static int i2c_fsl_trx_complete(struct i2c_adapter *adapter)
 
 static int i2c_fsl_acked(struct i2c_adapter *adapter)
 {
-	return i2c_fsl_poll_status(adapter, 1, 0, I2SR_RXAK);
+	return i2c_fsl_poll_status(adapter, 5, 0, I2SR_RXAK);
 }
 
 static int i2c_fsl_start(struct i2c_adapter *adapter)
-- 
2.30.2



