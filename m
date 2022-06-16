Delivery-date: Thu, 16 Jun 2022 16:09:24 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o1qBX-003zdA-KD
	for lore@lore.pengutronix.de; Thu, 16 Jun 2022 16:09:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o1qBX-0003Ir-Hc
	for lore@pengutronix.de; Thu, 16 Jun 2022 16:09:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XqxWmmKdD+bLVP6wEm0gRbKOrPyXhIdYwZcUccXE9OE=; b=UmENOZWauygBWl/xpl/ojELV9p
	uo/2ROk273EWKvr6CNMqAkWHtzL+q+809FJHE1Mf6/1PQAs+jQR68qaz00YhY0iBYDYsDpngqVGYo
	jkFEskU7QzmHSDKGdiphVNnwhvFVOhft303rQnaNYsuQPgIjqq/Ai/3ljmpgMRidAKSDudePQZoN8
	7FHv4n1CsBypAIXsiZpQ2Up2IvkZiG38Cww4osok+FYDkpbp29ODhkQGRDniM1tsEgPIQ8etWRU27
	H0xY+6wsL31hI44Vc2+29xYgsVvfT61VjXL7+tL9CQJL2vyXUAX5EVXgbnaKbgAVA5BURDcnyvK3d
	nN/dYs6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1qAA-002jCn-2e; Thu, 16 Jun 2022 14:07:58 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1q9s-002j9z-Rf
	for barebox@lists.infradead.org; Thu, 16 Jun 2022 14:07:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1o1q9r-00034B-KS
	for barebox@lists.infradead.org; Thu, 16 Jun 2022 16:07:39 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1o1q9p-000t4c-Gy
	for barebox@lists.infradead.org; Thu, 16 Jun 2022 16:07:38 +0200
Received: from mfe by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1o1q9q-009cr6-6r
	for barebox@lists.infradead.org; Thu, 16 Jun 2022 16:07:38 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Thu, 16 Jun 2022 16:07:37 +0200
Message-Id: <20220616140737.2294226-2-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220616140737.2294226-1-m.felsch@pengutronix.de>
References: <20220616140737.2294226-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220616_070740_927233_4D92B1CE 
X-CRM114-Status: UNSURE (   9.67  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/2] regulator: fixed: add off-on-delay-us device-tree parsing support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The core already handles the off_on_delay if we set it. So parse the
official device-tree property and set it if present.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 drivers/regulator/fixed.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/regulator/fixed.c b/drivers/regulator/fixed.c
index 9c660d5781..ae16df8a0c 100644
--- a/drivers/regulator/fixed.c
+++ b/drivers/regulator/fixed.c
@@ -52,6 +52,7 @@ static int regulator_fixed_probe(struct device_d *dev)
 {
 	struct device_node *np = dev->device_node;
 	struct regulator_fixed *fix;
+	u32 delay;
 	int ret;
 
 	if (!dev->device_node)
@@ -72,6 +73,9 @@ static int regulator_fixed_probe(struct device_d *dev)
 	fix->rdev.desc = &fix->rdesc;
 	fix->rdev.dev = dev;
 
+	if (!of_property_read_u32(np, "off-on-delay-us", &delay))
+		fix->rdesc.off_on_delay = delay;
+
 	if (of_find_property(np, "regulator-always-on", NULL) ||
 	    of_find_property(np, "regulator-boot-on", NULL)) {
 		fix->always_on = 1;
-- 
2.30.2



