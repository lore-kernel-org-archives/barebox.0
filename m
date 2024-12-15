Delivery-date: Sun, 15 Dec 2024 10:55:10 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tMlLB-008MWQ-2p
	for lore@lore.pengutronix.de;
	Sun, 15 Dec 2024 10:55:10 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tMlLB-0005pC-Rm
	for lore@pengutronix.de; Sun, 15 Dec 2024 10:55:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=b8L1+2WrrXJUBFbL/bICsbIxcBayzrc808b2W3t1F4Q=; b=qVwvJTnigxoi+rPdK2M6vsaVyx
	5FCobnTEl35izDKxZji7qJVdHke146Mckp36ABORgFVO5Sf55y9nPEFi94cy9t9ZgNjb6BNIeBRWB
	IKluvy63g285VsnOxpTepXnMlzzMz8w6CP86xwnTmCG7+ECgg31TucBnWcatFDdifNZNjYKnsxVob
	3bivdGzZW7Xz83ckx7dsvhtVLY+PoZUY1AW3EZSEniuVDzxepUHYPwa+XdV7YQJGWc3BV8fsUJhd+
	9dT2eLaFdVU7syDPN3l4Cte18B6lDiD9H53/dj4ZzP6qnL6cCy3NV4/jFtqqFcxGrxuQyXMye9JHF
	a0pEY4Kg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tMlKR-00000007iEA-1vyl;
	Sun, 15 Dec 2024 09:54:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tMlKO-00000007iDW-1MF4
	for barebox@lists.infradead.org;
	Sun, 15 Dec 2024 09:54:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tMlKJ-0005cj-3v; Sun, 15 Dec 2024 10:54:15 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tMlKG-003VUf-1C;
	Sun, 15 Dec 2024 10:54:13 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tMlKH-00FlD9-0B;
	Sun, 15 Dec 2024 10:54:13 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Sun, 15 Dec 2024 10:54:10 +0100
Message-Id: <20241215095412.3756337-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241215_015420_359554_373C253E 
X-CRM114-Status: UNSURE (   7.63  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 1/3] video: dw-hdmi: populate missing I2C adapter device node
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

By recording the correct device tree node, it's possible to use OF
aliases for deterministic numbering of the I2C adapter.

Fixes: aea9e8bac578 ("video: add dw-hdmi driver")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/video/dw-hdmi.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/video/dw-hdmi.c b/drivers/video/dw-hdmi.c
index 73201836b7e5..cd5de17e9bd7 100644
--- a/drivers/video/dw-hdmi.c
+++ b/drivers/video/dw-hdmi.c
@@ -433,6 +433,7 @@ static struct i2c_adapter *dw_hdmi_i2c_adapter(struct dw_hdmi *hdmi)
 
 	adap = &i2c->adap;
 	adap->dev.parent = hdmi->dev;
+	adap->dev.of_node = hdmi->dev->of_node;
 	adap->master_xfer = dw_hdmi_i2c_xfer;
 	adap->nr = -1;
 
-- 
2.39.5



