Delivery-date: Mon, 05 Sep 2022 17:36:07 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oVE8r-007eiY-La
	for lore@lore.pengutronix.de; Mon, 05 Sep 2022 17:36:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oVE8q-0001xw-UK
	for lore@pengutronix.de; Mon, 05 Sep 2022 17:36:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HB+ickbip77BxQp+8rpMfeCsvontRSEbq/opEKv0U4g=; b=aLqnmyCXx5/gOVkotA8d0DA28U
	v3N4xLp5LUR/VLQaUA6Wv+2rjA07ZYJGz/5oY6azqpeDs203Xd2lwBOXONt2jlxZMK3+OLUwFMbQu
	Jt9L40BikHQs7F90Tn3VCYTaxlaMGgsaYtpSeSC0PVPB2s2kchEcATWq/O3YAAiGR9/XlqD5PL9Cf
	rLen/2h3sA+f0Yt1cC0lAyfl3DNI6g7+tZzYQ5MVb4LLiRgAkvnxSljWbR0pZxmLXpUM3XuWPaJt+
	OLfMZXIGgryIdAfWRvG8ZoMddgcVrD9UyVK8JKOkjwuFOoXQL5I6tCs6Cc6b4hQLj38+tt9Ju+yqz
	iFBOyrJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVE77-006203-9W; Mon, 05 Sep 2022 15:34:17 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oV8pq-00H3hK-RS
	for barebox@lists.infradead.org; Mon, 05 Sep 2022 09:56:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oV8pp-0008FD-HC; Mon, 05 Sep 2022 11:56:05 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oV8pm-0042Fw-Or; Mon, 05 Sep 2022 11:56:04 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oV8pl-002We0-Vf; Mon, 05 Sep 2022 11:56:01 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  5 Sep 2022 11:55:33 +0200
Message-Id: <20220905095557.596891-9-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220905095557.596891-1-a.fatoum@pengutronix.de>
References: <20220905095557.596891-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220905_025607_417787_347CB04F 
X-CRM114-Status: GOOD (  13.02  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 08/32] usb: otg: always propagate failure to register parameters
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We assign the result of the first dev_add_param_enum() to a variable,
but don't use the variable for anything. Refactor device registration
and parameter addition to a new helper function and do error checking
right.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/usb/otg/otgdev.c | 33 ++++++++++++++++++---------------
 1 file changed, 18 insertions(+), 15 deletions(-)

diff --git a/drivers/usb/otg/otgdev.c b/drivers/usb/otg/otgdev.c
index 129b1cf5e14b..29cb0d362b9b 100644
--- a/drivers/usb/otg/otgdev.c
+++ b/drivers/usb/otg/otgdev.c
@@ -42,6 +42,22 @@ static const char *otg_mode_names[] = {
 	[USB_DR_MODE_OTG] = "otg",
 };
 
+static int register_otg_device(struct device_d *dev, struct otg_mode *otg)
+{
+	struct param_d *param_mode;
+	int ret;
+
+	ret = register_device(dev);
+	if (ret)
+		return ret;
+
+	param_mode = dev_add_param_enum(dev, "mode",
+			otg_set_mode, NULL, &otg->var_mode,
+			otg_mode_names, ARRAY_SIZE(otg_mode_names), otg);
+
+	return PTR_ERR_OR_ZERO(param_mode);
+}
+
 static struct device_d otg_device = {
 	.name = "otg",
 	.id = DEVICE_ID_SINGLE,
@@ -51,7 +67,6 @@ int usb_register_otg_device(struct device_d *parent,
 			    int (*set_mode)(void *ctx, enum usb_dr_mode mode), void *ctx)
 {
 	int ret;
-	struct param_d *param_mode;
 	struct otg_mode *otg;
 
 	otg = xzalloc(sizeof(*otg));
@@ -68,22 +83,10 @@ int usb_register_otg_device(struct device_d *parent,
 	/* register otg.mode as an alias of otg0.mode */
 	if (otg_device.parent == NULL) {
 		otg_device.parent = parent;
-		ret = register_device(&otg_device);
+		ret = register_otg_device(&otg_device, otg);
 		if (ret)
 			return ret;
-
-		param_mode = dev_add_param_enum(&otg_device, "mode",
-				otg_set_mode, NULL, &otg->var_mode,
-				otg_mode_names, ARRAY_SIZE(otg_mode_names), otg);
 	}
 
-	ret = register_device(&otg->dev);
-	if (ret)
-		return ret;
-
-	param_mode = dev_add_param_enum(&otg->dev, "mode",
-			otg_set_mode, NULL, &otg->var_mode,
-			otg_mode_names, ARRAY_SIZE(otg_mode_names), otg);
-
-	return PTR_ERR_OR_ZERO(param_mode);
+	return register_otg_device(&otg->dev, otg);
 }
-- 
2.30.2



