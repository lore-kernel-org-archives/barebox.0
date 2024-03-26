Delivery-date: Tue, 26 Mar 2024 11:37:16 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rp4BA-0054aO-2T
	for lore@lore.pengutronix.de;
	Tue, 26 Mar 2024 11:37:16 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rp4B7-0002pT-US
	for lore@pengutronix.de; Tue, 26 Mar 2024 11:37:16 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tly7EDb7l+MbvIzVll7vG2bjnAPF4OwG5G69isp6ct8=; b=t5ej4QtZk9ZRZ1STSuVFZDbePg
	6Wlw7q8A8xV5JzeJEi/wGcV+w+/V+Hq5JCDSWR77oXiWPHnf1ZX07tsjPRYN1hHHzizd15hhEbOfK
	GahqM1Qr8nYRIUVCw3laQhq6kuusXN1F3rLY7trYmlHyY2w5m7Q1IW84TrlBQxgFC8khG64bvY2x2
	Jop5Di7fwpe41Hd3OSm5DVxNShxxR8upQopauly8WSuBl2xzLJbRiSRIJlrIrZauYY7YMSmP3OIyx
	Mu1XQ3ICRZ4meE1hyUuMA5TxiUbQKc5NREl+b5fHlBHWUTFZ3PYLlRycO1IpgdQQy5H/sO6pwwo9C
	v8gQCX1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rp4AV-000000045db-1x2U;
	Tue, 26 Mar 2024 10:36:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rp4AB-000000045QL-0Hxn
	for barebox@lists.infradead.org;
	Tue, 26 Mar 2024 10:36:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rp49t-00023X-ND; Tue, 26 Mar 2024 11:35:57 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rp49s-008b78-0v; Tue, 26 Mar 2024 11:35:56 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rp3id-00202A-1O;
	Tue, 26 Mar 2024 11:07:47 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 26 Mar 2024 11:07:40 +0100
Message-Id: <20240326100746.471532-11-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240326100746.471532-1-s.hauer@pengutronix.de>
References: <20240326100746.471532-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240326_033615_247674_9A9233A1 
X-CRM114-Status: UNSURE (   9.96  )
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
Subject: [PATCH 10/16] pci: pcie-dw-rockchip: wait for link
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Wait for the link to be established before continuing the probe. While
in some configurations the link might come up fast enough, on a RK3568
no device was found without it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/pci/pcie-dw-rockchip.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/pci/pcie-dw-rockchip.c b/drivers/pci/pcie-dw-rockchip.c
index cc771e2cae..22f41cc6bb 100644
--- a/drivers/pci/pcie-dw-rockchip.c
+++ b/drivers/pci/pcie-dw-rockchip.c
@@ -122,6 +122,8 @@ static int rockchip_pcie_start_link(struct dw_pcie *pci)
 	mdelay(100);
 	gpiod_set_value(rockchip->rst_gpio, 1);
 
+	dw_pcie_wait_for_link(pci);
+
 	return 0;
 }
 
-- 
2.39.2



