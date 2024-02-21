Delivery-date: Wed, 21 Feb 2024 15:28:47 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rcnaZ-00HKra-26
	for lore@lore.pengutronix.de;
	Wed, 21 Feb 2024 15:28:47 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rcnaZ-0005v1-17
	for lore@pengutronix.de; Wed, 21 Feb 2024 15:28:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GLEFzEVAs4lgNV01ucyN5QLwfQ2+9mFV0EVYCOgIwnI=; b=gHvQrfKTx+pzzNSoZr9d0ShUt8
	weL872ByouSzQhi5KAwBTozU0qmb2tpoEM8s3bL5+//iJ3qngxJrntG3lD4I+1s6GTuvBM2DRp3QV
	gLu7C2Hd5HPjdg+cnexSmj7fZYreSNKTitJDYt46ErxM1Sdb1yYu7UOaRMJHofvihnwaWM+3IiJ1I
	MANuDN1HxycOBWwI/ahHztFobeWIUgtROhQpwG41rhlfAFOQkClqJyjbfPjurkdLVJK3+lnV/t5C7
	LL5Ja+DGNGMd9aT/PL/nXIOh3lzfqVth5AcstMtD4Fa8lBLKG52dxPiM5wVoQWLPP9oBLJNb2OzyX
	tX9O+vEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcnZx-00000001Gq3-3TCb;
	Wed, 21 Feb 2024 14:28:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcnZs-00000001Gne-2JAP
	for barebox@lists.infradead.org;
	Wed, 21 Feb 2024 14:28:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rcnZq-0005c1-2V; Wed, 21 Feb 2024 15:28:02 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rcnZp-0023cW-MB; Wed, 21 Feb 2024 15:28:01 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rcnZp-008kpE-1t;
	Wed, 21 Feb 2024 15:28:01 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 21 Feb 2024 15:27:59 +0100
Message-Id: <20240221142800.1958810-4-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240221142800.1958810-1-s.hauer@pengutronix.de>
References: <20240221142800.1958810-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240221_062804_621206_91BF0E3D 
X-CRM114-Status: GOOD (  14.45  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 3/4] input: gpio_keys: limit poll rate
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

GPIOs a sometimes slow to read out, for example when they are provided
by I2C GPIO expanders. Limit the poll rate so that we do not slow down
barebox more than necessary in these cases.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/input/gpio_keys.c | 20 ++++++++------------
 1 file changed, 8 insertions(+), 12 deletions(-)

diff --git a/drivers/input/gpio_keys.c b/drivers/input/gpio_keys.c
index 77013be133..fd3995d01f 100644
--- a/drivers/input/gpio_keys.c
+++ b/drivers/input/gpio_keys.c
@@ -29,20 +29,14 @@ struct gpio_keys {
 	struct gpio_key *buttons;
 	int nbuttons;
 
-	struct poller_struct poller;
+	struct poller_async poller;
 	struct input_device input;
 	struct device *dev;
 };
 
-static inline struct gpio_keys *
-poller_to_gk_pdata(struct poller_struct *poller)
+static void gpio_key_poller(void *data)
 {
-	return container_of(poller, struct gpio_keys, poller);
-}
-
-static void gpio_key_poller(struct poller_struct *poller)
-{
-	struct gpio_keys *gk = poller_to_gk_pdata(poller);
+	struct gpio_keys *gk = data;
 	struct gpio_key *gb;
 	int i, val;
 
@@ -64,6 +58,8 @@ static void gpio_key_poller(struct poller_struct *poller)
 			gb->previous_state = val;
 		}
 	}
+
+	poller_call_async(&gk->poller, 10 * MSECOND, gpio_key_poller, gk);
 }
 
 static int gpio_keys_probe_pdata(struct gpio_keys *gk, struct device *dev)
@@ -159,16 +155,16 @@ static int __init gpio_keys_probe(struct device *dev)
 		gk->buttons[i].previous_state = gk->buttons[i].active_low;
 	}
 
-	gk->poller.func = gpio_key_poller;
-
 	ret = input_device_register(&gk->input);
 	if (ret)
 		return ret;
 
-	ret = poller_register(&gk->poller, dev_name(dev));
+	ret = poller_async_register(&gk->poller, dev_name(dev));
 	if (ret)
 		return ret;
 
+	poller_call_async(&gk->poller, 10 * MSECOND, gpio_key_poller, gk);
+
 	return 0;
 }
 
-- 
2.39.2



