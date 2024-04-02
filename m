Delivery-date: Tue, 02 Apr 2024 17:04:00 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rrfg8-003laj-2e
	for lore@lore.pengutronix.de;
	Tue, 02 Apr 2024 17:04:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rrfg7-0005fV-Ve
	for lore@pengutronix.de; Tue, 02 Apr 2024 17:04:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vDxfkctnfwEHMQHDE+aPSvfsSsqRbT3+HiIHT3TgzHo=; b=MexN++Ltl9row2jtAMihM7JUjj
	RPYGce+RmV1G78ttOFL83nXbFN1BsFJqsjngdkzbRWenFlJIfl+dyCjru0ruldpXQjrbDb7ZDyNse
	0RWI6xIScBhzbtNAOmBKEROSEBcg1mEctmG0efgGok+CVpbFGcDZoOXLspKIX9bk1wDeHDPoo/umg
	tsNLMj8azcIsu/FoRNSk/n9uIkO0KnZ3JR/K7rXXzoZKQsZVCr9X3O0MlRV3OF+SDyWL+OvNw7Pp1
	plUqY0rHB4lP30jcAt3bDG+b9AhRx62jC3vrtd4XR27XIPchBPNjYvGRFQKQW94YKlb/6c7LRIWNA
	RMj69ZAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrffu-0000000BjOl-2Byi;
	Tue, 02 Apr 2024 15:03:46 +0000
Received: from metis.whiteo.stw.pengutronix.de ([185.203.201.7])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rreXL-0000000BRjq-1VcQ
	for barebox@lists.infradead.org;
	Tue, 02 Apr 2024 13:50:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rreX7-0001zG-An; Tue, 02 Apr 2024 15:50:37 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rreX6-009zha-Tw; Tue, 02 Apr 2024 15:50:36 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rreX6-00FWhb-2j;
	Tue, 02 Apr 2024 15:50:36 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: lgo@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  2 Apr 2024 15:50:35 +0200
Message-Id: <20240402135035.3700601-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240402135035.3700601-1-a.fatoum@pengutronix.de>
References: <20240402135035.3700601-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240402_065051_543126_08E97DAA 
X-CRM114-Status: GOOD (  10.39  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 4/4] input: gpio-keys: drop now-superfluous struct gpio_keys::dev
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Now that gpio-keys populates the new struct input_device::parent member,
there is no need to duplicate the information in struct gpio_keys.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/input/gpio_keys.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/input/gpio_keys.c b/drivers/input/gpio_keys.c
index 190865b7f244..c897acf3bd02 100644
--- a/drivers/input/gpio_keys.c
+++ b/drivers/input/gpio_keys.c
@@ -31,7 +31,6 @@ struct gpio_keys {
 
 	struct poller_async poller;
 	struct input_device input;
-	struct device *dev;
 };
 
 static void gpio_key_poller(void *data)
@@ -60,7 +59,7 @@ static void gpio_key_poller(void *data)
 
 			gb->debounce_start = get_time_ns();
 			input_report_key_event(&gk->input, gb->code, pressed);
-			dev_dbg(gk->dev, "%s gpio(%d) as %d\n",
+			dev_dbg(gk->input.parent, "%s gpio(%d) as %d\n",
 				pressed ? "pressed" : "released", gb->gpio, gb->code);
 			gb->previous_state = val;
 		}
@@ -141,8 +140,6 @@ static int __init gpio_keys_probe(struct device *dev)
 
 	gk = xzalloc(sizeof(*gk));
 
-	gk->dev = dev;
-
 	if (dev->of_node)
 		ret = gpio_keys_probe_dt(gk, dev);
 	else
-- 
2.39.2



