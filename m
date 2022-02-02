Delivery-date: Wed, 02 Feb 2022 11:12:43 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nFCd1-003bQZ-9f
	for lore@lore.pengutronix.de; Wed, 02 Feb 2022 11:12:43 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nFCd0-00053M-45
	for lore@pengutronix.de; Wed, 02 Feb 2022 11:12:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yAUfYEVE58IpatKMX4HNGQDxpjFLPbFA1H4LNqq0lYQ=; b=JwSDPe/P6iw/qt
	DL+YQokIm3EHPuBlHl0e3dVXcaejLkymnbfqA9dcQeAKCEuZg1hUmPhUdB1/6J/siW6MQXyto/5vh
	Ig7LVoLch88b0WsUyhdKBcMK28uIn7WHj/OivAydC2Z+hASsw98AdywGBbzQaybvz5WcgHb72xt4l
	ZTQ55vmoe41kIJ3Q/w9Qi6/PIhyZxwjNWEew2k+l+Zt+m/CGs5GX2jA/RZpCvVVFs7OY8bFNk/X6G
	mOcouC80q/DPmpB3Ovx1pwc1uwPKj9qTqb+dSjmaZ8bGU3jHhTyvU5fZemMmBsuZoCJjDHJGKDLtF
	z5n7mWYAJtsTGVsYqhpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nFCbn-00Es5y-JR; Wed, 02 Feb 2022 10:11:27 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nFCbi-00Es55-GH
 for barebox@lists.infradead.org; Wed, 02 Feb 2022 10:11:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>)
 id 1nFCbh-0004vG-A4; Wed, 02 Feb 2022 11:11:21 +0100
Received: from [2a0a:edc0:0:1101:1d::39] (helo=dude03.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <mtr@pengutronix.de>)
 id 1nFCbh-00E0oh-A2; Wed, 02 Feb 2022 11:11:20 +0100
Received: from mtr by dude03.red.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <mtr@pengutronix.de>)
 id 1nFCbf-00GSyn-L3; Wed, 02 Feb 2022 11:11:19 +0100
From: Michael Tretter <m.tretter@pengutronix.de>
To: barebox@lists.infradead.org
Cc: m.tretter@pengutronix.de
Date: Wed,  2 Feb 2022 11:11:19 +0100
Message-Id: <20220202101119.3924600-1-m.tretter@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220202_021122_563692_EC710AB5 
X-CRM114-Status: GOOD (  11.00  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] serial: cadence: add ZynqMP compatibles
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Commit 3f2f5980d517 ("dts: update to v5.16-rc1") changes the compatible
of the ZynqMP uarts to "xlnx,zynqmp-uart" and drops the "xlnx,xuartps"
compatible.

The driver worked just fine before and the difference between the r1p8
and r1p12 compatibles is the use of the RX byte status register which is
only used with interrupts.

Add the "xlnx,zynqmp-uart" and the "cdns,uart-r1p12" compatibles to the
driver.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 drivers/serial/serial_cadence.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/serial/serial_cadence.c b/drivers/serial/serial_cadence.c
index 6cf18aa25ac7..84dcd1b76b6e 100644
--- a/drivers/serial/serial_cadence.c
+++ b/drivers/serial/serial_cadence.c
@@ -230,6 +230,12 @@ static __maybe_unused struct of_device_id cadence_serial_dt_ids[] = {
 	{
 		.compatible = "xlnx,xuartps",
 		.data = &cadence_r1p08_data,
+	}, {
+		.compatible = "cdns,uart-r1p12",
+		.data = &cadence_r1p08_data,
+	}, {
+		.compatible = "xlnx,zynqmp-uart",
+		.data = &cadence_r1p08_data,
 	}, {
 		/* sentinel */
 	}
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

