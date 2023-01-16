Delivery-date: Mon, 16 Jan 2023 14:42:36 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pHPky-00DbkR-TA
	for lore@lore.pengutronix.de; Mon, 16 Jan 2023 14:42:36 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pHPkw-0007fy-LN
	for lore@pengutronix.de; Mon, 16 Jan 2023 14:42:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=xIGA9oe9g41LqBCk81V3otXGq4xVd7QMIywgGHbbpY0=; b=pjVY8Xl053Ej+kXQlWcInqb6AQ
	OtvM4c7/eGqXyZIaJ61AvlmukHUqBbzNwOLlcGMMeAvm0LV5vMixg49jkBQksiVDeNxxZ09SCunLF
	h8JCuXxWS9Xc6KrR8N2e+Xahv8dKsK5DyfQTX1ltRlY24hMjVoK/HXugSEOKnF8KLuwoOI1ACEC9u
	8MaZssbY8h7DG/jhUr5GGlGgnzSu2L7v1HKUrxdZTe8nJMLBCETazBZfc3KkHzw6H2KiLyfHyHGh2
	kQBB85feG78udMqoHmFWPAyCyL88mlPn+cZCKp1YhfjCTele06SWMobHX7tYpQIGN85VpczIBm2FM
	xrzXO14A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHPja-00AWDG-Bo; Mon, 16 Jan 2023 13:41:11 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHPfG-00AUIZ-RC
	for barebox@lists.infradead.org; Mon, 16 Jan 2023 13:36:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pHPfF-0006Wv-Hs; Mon, 16 Jan 2023 14:36:41 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pHPfE-006SIP-UF; Mon, 16 Jan 2023 14:36:40 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pHPfD-008OMo-La; Mon, 16 Jan 2023 14:36:39 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 16 Jan 2023 14:36:37 +0100
Message-Id: <20230116133639.1999170-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230116_053642_935196_17CB2BEF 
X-CRM114-Status: GOOD (  11.13  )
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
Subject: [PATCH 1/3] of: platform: call struct device::detect in of_device_create_on_demand
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Most devices featuring a detect callback use it to probe an underlying
bus. However, of_device_create_on_demand so far created devices on the
platform bus, ignoring that it might be e.g. an I2C device that's
supposed to be crated by the parent controller.

Fix this by calling the parent's detect callback if available. Busses
that probe via device tree, but register their devices on a different
bus will need to register a detect callback to benefit from this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/of/platform.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/of/platform.c b/drivers/of/platform.c
index ff7096b6eedd..edb082b106ff 100644
--- a/drivers/of/platform.c
+++ b/drivers/of/platform.c
@@ -414,11 +414,18 @@ static struct device *of_device_create_on_demand(struct device_node *np)
 {
 	struct device_node *parent;
 	struct device *parent_dev, *dev;
+	int ret;
 
 	parent = of_get_parent(np);
 	if (!parent)
 		return NULL;
 
+	if (!np->dev && parent->dev) {
+		ret = device_detect(parent->dev);
+		if (ret && ret != -ENOSYS)
+			return ERR_PTR(ret);
+	}
+
 	if (!np->dev)
 		pr_debug("Creating device for %s\n", np->full_name);
 
-- 
2.30.2



