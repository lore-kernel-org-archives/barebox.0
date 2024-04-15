Delivery-date: Mon, 15 Apr 2024 07:36:37 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rwF1B-001ZPq-0N
	for lore@lore.pengutronix.de;
	Mon, 15 Apr 2024 07:36:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rwF1A-0006ae-A7
	for lore@pengutronix.de; Mon, 15 Apr 2024 07:36:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XxzxLu8KBDVAbDuGsrKkk06O2Msw2iXajKJv/90J+RU=; b=T0p+x4ZvY1sV+QrJJAFAZzdDqm
	CrUJ+EuityTFD/dLYPTct5JwBhsBdVEVHoeXIMTNH1+tOnQfF4xG+VDblniJg+43i+bw1kDB6gIN8
	mwUBOvFDIhGvg1NKYoYseOK7CRpL4hryW+Onu0rGMwet7lEp7F1Iqq6mvaZQJYRp6rfJGRm1Tdpg1
	Vh9beqbaVrsozJMwtx6yrlUR/IhfkaPo0mHsqlVfGKpR6hKOcf+RXKz0zprBwqb6NoPL4rvMkp44v
	KZjUJxxv1DH3MhPdlRRrJOoKsJex7FTi43vGmn3918938XJ2gDKJe2MtJF0pmgRrXL22tH013dI/M
	97I+OB7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwF0l-000000071Q5-1tgS;
	Mon, 15 Apr 2024 05:36:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwF0d-000000071LR-475m
	for barebox@lists.infradead.org;
	Mon, 15 Apr 2024 05:36:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rwF0c-0005rt-RC; Mon, 15 Apr 2024 07:36:02 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rwF0c-00CMnM-DE; Mon, 15 Apr 2024 07:36:02 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rwF0c-001YQH-14;
	Mon, 15 Apr 2024 07:36:02 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 15 Apr 2024 07:35:58 +0200
Message-Id: <20240415053600.370622-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240415053600.370622-1-a.fatoum@pengutronix.de>
References: <20240415053600.370622-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240414_223604_117795_5C250E2C 
X-CRM114-Status: GOOD (  12.78  )
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
X-Spam-Status: No, score=-6.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 5/7] PWM: core: add definition for PWM_POLARITY_INVERSED
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

PWM_POLARITY_INVERTED is the macro used in the DT binding, while
PWM_POLARITY_INVERSED is the Linux driver macro that it is translated
to.

They are the same value, but Linux PWM chip drivers will use the latter,
so define it as well.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/pwm/core.c |  2 +-
 include/pwm.h      | 14 +++++++++++++-
 2 files changed, 14 insertions(+), 2 deletions(-)

diff --git a/drivers/pwm/core.c b/drivers/pwm/core.c
index 7e090cc144af..69724e1a5c26 100644
--- a/drivers/pwm/core.c
+++ b/drivers/pwm/core.c
@@ -244,7 +244,7 @@ struct pwm_device *of_pwm_request(struct device_node *np, const char *con_id)
 	pwm->args.polarity = PWM_POLARITY_NORMAL;
 
 	if (args.args_count > 2 && args.args[2] & PWM_POLARITY_INVERTED)
-		pwm->args.polarity = PWM_POLARITY_INVERTED;
+		pwm->args.polarity = PWM_POLARITY_INVERSED;
 
 	ret = __pwm_request(pwm);
 	if (ret)
diff --git a/include/pwm.h b/include/pwm.h
index e8b0f2c96263..b90ac1de4220 100644
--- a/include/pwm.h
+++ b/include/pwm.h
@@ -8,7 +8,19 @@
 struct pwm_device;
 struct device;
 
-#define	PWM_POLARITY_NORMAL	0
+/**
+ * enum pwm_polarity - polarity of a PWM signal
+ * @PWM_POLARITY_NORMAL: a high signal for the duration of the duty-
+ * cycle, followed by a low signal for the remainder of the pulse
+ * period
+ * @PWM_POLARITY_INVERSED: a low signal for the duration of the duty-
+ * cycle, followed by a high signal for the remainder of the pulse
+ * period
+ */
+enum pwm_polarity {
+	PWM_POLARITY_NORMAL,
+	PWM_POLARITY_INVERSED,
+};
 
 /*
  * struct pwm_state - state of a PWM channel
-- 
2.39.2



