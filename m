Delivery-date: Fri, 09 Aug 2024 16:52:50 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1scQz4-007rul-2M
	for lore@lore.pengutronix.de;
	Fri, 09 Aug 2024 16:52:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1scQz4-00038e-3i
	for lore@pengutronix.de; Fri, 09 Aug 2024 16:52:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=znJ6qE8IScHzlY7H5H2phCFBfN/5N32eEXD4CGtzPgY=; b=o2cdMWGt2VP4nodxikX6K0lBIy
	G8ghDNEAsyk/LtoJwnRyDCPw02fWdOw5STSlkqqtrZpA/bFs9cMIjh/sL0tXiuDDuPSDOFzCO8n8j
	Z6l8OG+Qkrl6ntwB8MmspArZnG57p3zpNWWkUBky7fhd7Q2C6xMtTEYAZ+eCADIMT8ebYtGrQd1nz
	sAghHyf40WLu2CV6BejxqVlN6VwFkBvDGz4YlTbss5JTLeBpwSX3IgLdIFJ7st3qt7v0+Goa8Z2Bv
	zdZ6yMig0IdKMb1WqcmA/zfYusisjpIA2b/ENB5S6d4xxcv5wUbEKakpSECGCm+WWHKdrfmFROQhX
	+3CyTqCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1scQyf-0000000BbGg-2cBB;
	Fri, 09 Aug 2024 14:52:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1scQyc-0000000BbEq-0s1R
	for barebox@lists.infradead.org;
	Fri, 09 Aug 2024 14:52:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1scQya-0002zU-K4; Fri, 09 Aug 2024 16:52:20 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1scQya-005goD-76; Fri, 09 Aug 2024 16:52:20 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1scQXH-001K4s-0j;
	Fri, 09 Aug 2024 16:24:07 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri,  9 Aug 2024 16:24:05 +0200
Message-Id: <20240809142405.315244-12-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240809142405.315244-1-a.fatoum@pengutronix.de>
References: <20240809142405.315244-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240809_075222_266258_41ED233F 
X-CRM114-Status: GOOD (  11.14  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 11/11] input: gpio-keys: request with label in DT if available
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

gpio-keys may have optional label properties, which we so far ignored.
Let's use them instead of generating a label from the device name
should they be available.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/input/gpio_keys.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/input/gpio_keys.c b/drivers/input/gpio_keys.c
index 3701817788ca..b52738f5ccb2 100644
--- a/drivers/input/gpio_keys.c
+++ b/drivers/input/gpio_keys.c
@@ -112,10 +112,13 @@ static int gpio_keys_probe_dt(struct gpio_keys *gk, struct device *dev)
 	gk->buttons = xzalloc(gk->nbuttons * sizeof(*gk->buttons));
 
 	for_each_child_of_node(np, npkey) {
+		const char *label = NULL;
 		struct gpio_desc *gpio;
 		uint32_t keycode;
 
-		gpio = dev_gpiod_get(dev, npkey, "gpios", GPIOD_IN, NULL);
+		of_property_read_string(npkey, "label", &label);
+
+		gpio = dev_gpiod_get(dev, npkey, NULL, GPIOD_IN, label);
 		if (IS_ERR(gpio)) {
 			pr_err("gpio_keys: gpio #%d can not be requested\n", i);
 			return PTR_ERR(gpio);
-- 
2.39.2



