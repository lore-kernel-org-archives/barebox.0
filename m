Delivery-date: Tue, 10 Jan 2023 18:42:36 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFIdx-0080lz-Ej
	for lore@lore.pengutronix.de; Tue, 10 Jan 2023 18:42:36 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFIdv-0007oO-HR
	for lore@pengutronix.de; Tue, 10 Jan 2023 18:42:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=PO8j3XuGeL/wbVrUJ/aJVQIA3jpMNXoor9dHlQXYZuo=; b=Him2yB91BK9KYKkL20TPLX0E4k
	9KmcTFwSbBF9kN3o12QQv9TNfSe2dRFRTliRBgzdbkkJ0FSQeViiqbAod01ytIXZs8jsswH9uo+XZ
	qGjIRTEUpUjgtK4wJ2HhJsXgjNRxrvTafCvFZnXJStRkCqJK9pizQwPcw2yzB3T5sqO980huXwcvX
	UFK8SI65XgAi8yoXFTPmjAvG4+dZ7F8YhcG5RgJEA72/qDHMZfKOciqkRxNBnP1WqItguSHms2uIQ
	of4FTKsqxrou/2iJ/lXJWeCT6SPKAgwyJV37iHLCgklWbv10lCa4CdkBcoER9XoapybEu5gJ1BB2u
	7c9HiKug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFIcg-0080kn-Cq; Tue, 10 Jan 2023 17:41:18 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFIca-0080k2-Nd
	for barebox@lists.infradead.org; Tue, 10 Jan 2023 17:41:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pFIcY-0007iJ-R5; Tue, 10 Jan 2023 18:41:10 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pFIcY-0057u8-7L; Tue, 10 Jan 2023 18:41:10 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pFIcX-000DKi-Bh; Tue, 10 Jan 2023 18:41:09 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 10 Jan 2023 18:41:04 +0100
Message-Id: <20230110174104.51204-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230110_094112_782243_35741925 
X-CRM114-Status: GOOD (  11.68  )
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
Subject: [PATCH] pinctrl: stm32: fix pinctrl/gpio dependency ordering
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

pinctrl_register will apply pinctrl hogs if specified and the STM32
pinctrl driver expects the GPIO chips to be registered by then.

Swap the order of registration to accommodate this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/pinctrl/pinctrl-stm32.c | 10 +---------
 1 file changed, 1 insertion(+), 9 deletions(-)

diff --git a/drivers/pinctrl/pinctrl-stm32.c b/drivers/pinctrl/pinctrl-stm32.c
index 5e6625072a8f..15d845e0ad34 100644
--- a/drivers/pinctrl/pinctrl-stm32.c
+++ b/drivers/pinctrl/pinctrl-stm32.c
@@ -368,12 +368,6 @@ static int stm32_pinctrl_probe(struct device *dev)
 		dev_dbg(dev, "proceeding without hw spinlock support: (%d)\n",
 			ret);
 
-	ret = pinctrl_register(&pinctrl->pdev);
-	if (ret) {
-		dev_dbg(dev, "pinctrl_register failed: (%d)\n", ret);
-		return ret;
-	}
-
 	gpio_bank = pinctrl->gpio_banks;
 	for_each_available_child_of_node(np, child) {
 		if (!of_property_read_bool(child, "gpio-controller"))
@@ -389,9 +383,7 @@ static int stm32_pinctrl_probe(struct device *dev)
 		gpio_bank++;
 	}
 
-	dev_dbg(dev, "pinctrl/gpio driver registered\n");
-
-	return 0;
+	return pinctrl_register(&pinctrl->pdev);
 }
 
 static __maybe_unused struct of_device_id stm32_pinctrl_dt_ids[] = {
-- 
2.30.2



