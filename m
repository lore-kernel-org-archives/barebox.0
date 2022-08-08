Delivery-date: Mon, 08 Aug 2022 16:02:09 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oL3KZ-00GEnO-3F
	for lore@lore.pengutronix.de; Mon, 08 Aug 2022 16:02:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oL3Ka-0007TH-22
	for lore@pengutronix.de; Mon, 08 Aug 2022 16:02:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=GtGg1xJ6u8L1VbLfZorJwKXQOxmH+gG1hNRsN6tHMzs=; b=ZzMTJn4AXV1DY1wLBqqIpEx6zS
	emd8ZQIl42xsB1eJbD/yRYYhHFa5woWyxcZim0Hagd58uB79I1bnWvH3PRfpCp9MU7uWjnaIZ6y4Q
	0/tSgN+Kc9SNf62pnZIegLGiDDorVY9N9sUg58F9HWthxjMyp8JIpl6ivcXBED14xCEbTiK959Fkz
	L0MdSozvloXv/ZW/MNBjs1GizEALqczrSaeET7FBf7wc74yI09yprh8lsotPwWgf1Py+zjQfxhmGg
	txFr/LaSMYxrEnDP8XKbMCrOE0qjYnYu7A9lRbJ6TWkG5mtxacH4J9OuAUkenQdJdUvWhxWKG2w7B
	SkIYShmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oL3JK-00EFe6-R1; Mon, 08 Aug 2022 14:00:50 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oL3JB-00EFbK-JM
	for barebox@lists.infradead.org; Mon, 08 Aug 2022 14:00:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oL3JA-0006tO-EC; Mon, 08 Aug 2022 16:00:40 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oL3J7-002Viq-Ey; Mon, 08 Aug 2022 16:00:39 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oL3J8-0071Dr-3e; Mon, 08 Aug 2022 16:00:38 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  8 Aug 2022 16:00:32 +0200
Message-Id: <20220808140035.1672733-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220808_070041_664171_433C3499 
X-CRM114-Status: GOOD (  11.31  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH master v3 1/4] soc: imx: gpcv2: associate PGC device tree node with platform device
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We aren't using of_platform_device_create, but instead create our own
platform devices which lack a reference from the device tree node to the
newly created device. Add this reference to support of_device_ensure_probed.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v2 -> v3:
  - no change
v1 -> v2:
  - no change
---
 drivers/soc/imx/gpcv2.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/soc/imx/gpcv2.c b/drivers/soc/imx/gpcv2.c
index 62cfc21519b1..a0e78ce55e3e 100644
--- a/drivers/soc/imx/gpcv2.c
+++ b/drivers/soc/imx/gpcv2.c
@@ -483,10 +483,10 @@ again:
 
 		pd_dev = xzalloc(sizeof(*pd_dev));
 		pd_dev->device_node = np;
+		pd_dev->device_node->dev = pd_dev;
 		pd_dev->id = domain_index;
 		pd_dev->parent = dev;
 		pd_dev->priv = domain;
-		pd_dev->device_node = np;
 		dev_set_name(pd_dev, imx_pgc_domain_id[0].name);
 
 		ret = platform_device_register(pd_dev);
-- 
2.30.2



