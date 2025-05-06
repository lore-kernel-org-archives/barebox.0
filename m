Delivery-date: Tue, 06 May 2025 08:32:33 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uCBqz-002hx1-0k
	for lore@lore.pengutronix.de;
	Tue, 06 May 2025 08:32:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uCBqy-0008O2-LV
	for lore@pengutronix.de; Tue, 06 May 2025 08:32:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=gtXUwDGosj7aEtiJuEJBlGfehrqQ+bEJonQvsxY0uaA=; b=NfqJdYpygEhCcK41KWVdXbX7TL
	qOL514JgDOcgKMiGIG7QClGQXPYtV6rRK09dsDaFPuJ6D94G7WUc3E0CkmB+dSrNGAtiwqp3dk7/m
	lrTNMk4RamvJ85GQtI6emFMffy9alueSuGSgvx1D76gP9c/zM95Aj+9Z7/+57JYlT9gvM+eQ+vDDu
	rZHfAxTLspTO04MlhL2HF0AaxbavYsQr9I+ZuM/cmychCXtPEiwdmFZAdVuk9LB5s/zhIr3tq0TG2
	PZqcQs3jEkXKg7CTF7nSc63+u6++1NkQyuHCG8ooEPVNJoI+zpkwy0p0ANGMsaOHYtOZMRmiOsSwy
	lI9KazyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCBqL-0000000AhBx-2aLN;
	Tue, 06 May 2025 06:31:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCBeg-0000000Adx3-3dal
	for barebox@lists.infradead.org;
	Tue, 06 May 2025 06:19:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uCBee-0005ex-8x; Tue, 06 May 2025 08:19:48 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uCBee-001Lj5-0I;
	Tue, 06 May 2025 08:19:48 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uCBee-00CxG9-1W;
	Tue, 06 May 2025 08:19:48 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  6 May 2025 08:19:47 +0200
Message-Id: <20250506061947.3087695-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250505_231950_899999_1B799980 
X-CRM114-Status: GOOD (  10.46  )
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
X-Spam-Status: No, score=-6.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] PWM: core: fix deep probe for PWM backlight
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

In a deep probe system, resources are probed on demand. This requires
code that iterates over lists of resources to first call
of_device_ensure_probed to ensure that the device is probed and added to
the list.

This was missing for both PWM and backlights, so add them now.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/pwm/core.c        | 2 ++
 drivers/video/backlight.c | 2 ++
 2 files changed, 4 insertions(+)

diff --git a/drivers/pwm/core.c b/drivers/pwm/core.c
index 4dd18d9446aa..313f3eef6504 100644
--- a/drivers/pwm/core.c
+++ b/drivers/pwm/core.c
@@ -198,6 +198,8 @@ static struct pwm_device *of_node_to_pwm_device(struct device_node *np, int id)
 {
 	struct pwm_device *pwm;
 
+	of_device_ensure_probed(np);
+
 	list_for_each_entry(pwm, &pwm_list, node) {
 		if (pwm->hwdev && pwm->hwdev->of_node == np &&
 				pwm->chip->id == id)
diff --git a/drivers/video/backlight.c b/drivers/video/backlight.c
index d171b0d960d2..523dd7e9f324 100644
--- a/drivers/video/backlight.c
+++ b/drivers/video/backlight.c
@@ -93,6 +93,8 @@ struct backlight_device *of_backlight_find(struct device_node *node)
 {
 	struct backlight_device *bl;
 
+	of_device_ensure_probed(node);
+
 	list_for_each_entry(bl, &backlights, list)
 		if (bl->node == node)
 			return bl;
-- 
2.39.5



