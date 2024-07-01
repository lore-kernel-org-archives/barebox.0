Delivery-date: Mon, 01 Jul 2024 09:27:55 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sOBS7-000QJp-24
	for lore@lore.pengutronix.de;
	Mon, 01 Jul 2024 09:27:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sOBS7-0006QU-2U
	for lore@pengutronix.de; Mon, 01 Jul 2024 09:27:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=m2f8XA+Jmt2vFkxYOv8/+STQhHbZbawWf6nbr2zvJnI=; b=nsZ8t6TSTFjN+sVOERrpN4WdQv
	QRewv16WfVxKU+DbzJEk9VeprbtvQvMRsgZo/Rij5Sr8ADi/Ki7DPnUX6rReSPxUz15kN+wsplUlE
	g4A/4//7OUWQJmTr7BNxj8gTuo0W9nPeeADojmDoe9437+feHZOdfkHhspcOQ3VD2NYMuq8JVbRyS
	lzZI06zVfBW1qrpqn0lFo2TMPQ+MbKuPKqifuXW819DXtgHjpgZcL3qshJpXN9RXdhorqF02WbA+7
	hvk0PF2kn0pHH331V6wP/AsUg+s4LOMEq73sED0OZBR9maefiuNylNQ9IflICn+Fyaz/BXHgDH/F6
	kh7V+o3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOBRY-000000021ZH-2OC5;
	Mon, 01 Jul 2024 07:27:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOBRV-000000021YF-2dNm
	for barebox@lists.infradead.org;
	Mon, 01 Jul 2024 07:27:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sOBRT-0006Id-NC; Mon, 01 Jul 2024 09:27:15 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sOBRT-006Ji7-Ad; Mon, 01 Jul 2024 09:27:15 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sOBRT-000gTC-0j;
	Mon, 01 Jul 2024 09:27:15 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  1 Jul 2024 09:27:14 +0200
Message-Id: <20240701072714.163239-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240701_002717_686110_518A9E07 
X-CRM114-Status: GOOD (  10.97  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master] video: backlight: make brightness and slew time parameters unsigned
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Despite the backlight parameter being registered as uint32,
backlight_brightness_set took the brightness level as a signed value.

This can lead to wrap around for very large values of brightness
supplied as device parameter and if this results in a negative
brightness, the function appears to hang, because the slew rate loop
runs for a long time.

Fix this by making brightness level an unsigned entity.

Fixes: e3ea90860e99 ("video: Add backlight support")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/video/backlight.c | 6 +++---
 include/video/backlight.h | 4 ++--
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/video/backlight.c b/drivers/video/backlight.c
index 6c00cc115e6d..d171b0d960d2 100644
--- a/drivers/video/backlight.c
+++ b/drivers/video/backlight.c
@@ -6,7 +6,7 @@
 
 static LIST_HEAD(backlights);
 
-int backlight_set_brightness(struct backlight_device *bl, int brightness)
+int backlight_set_brightness(struct backlight_device *bl, unsigned brightness)
 {
 	int ret, step, i, num_steps;
 
@@ -80,9 +80,9 @@ int backlight_register(struct backlight_device *bl)
 		return ret;
 
 	dev_add_param_uint32(&bl->dev, "brightness", backlight_brightness_set,
-			NULL, &bl->brightness, "%d", bl);
+			NULL, &bl->brightness, "%u", bl);
 	dev_add_param_uint32(&bl->dev, "slew_time_ms", NULL, NULL,
-			     &bl->slew_time_ms, "%d", NULL);
+			     &bl->slew_time_ms, "%u", NULL);
 
 	list_add_tail(&bl->list, &backlights);
 
diff --git a/include/video/backlight.h b/include/video/backlight.h
index b510de9d294f..2dd63202cd6e 100644
--- a/include/video/backlight.h
+++ b/include/video/backlight.h
@@ -16,7 +16,7 @@ struct backlight_device {
 	struct device_node *node;
 };
 
-int backlight_set_brightness(struct backlight_device *, int brightness);
+int backlight_set_brightness(struct backlight_device *, unsigned brightness);
 int backlight_set_brightness_default(struct backlight_device *);
 int backlight_register(struct backlight_device *);
 struct backlight_device *of_backlight_find(struct device_node *node);
@@ -24,7 +24,7 @@ struct backlight_device *of_backlight_find(struct device_node *node);
 struct backlight_device ;
 
 static inline int
-backlight_set_brightness(struct backlight_device *dev, int brightness)
+backlight_set_brightness(struct backlight_device *dev, unsigned brightness)
 {
 	return 0;
 }
-- 
2.39.2



