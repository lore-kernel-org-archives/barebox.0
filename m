Delivery-date: Thu, 25 Jun 2026 13:53:12 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wcids-009hbI-29
	for lore@lore.pengutronix.de;
	Thu, 25 Jun 2026 13:53:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wcids-00073E-0W
	for lore@pengutronix.de; Thu, 25 Jun 2026 13:53:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=TS32xW2tFmvA3R04kYSsL77iBgtEbPkkZe6Uq9sDW5I=; b=vbxxr61Lzbc2eo3xAZDL7av8T9
	epySK8Xa2FR2DOo9nePRpL+tauSThMxJQ5WDzhxWDji/IKAIfS7PIcmTLhSPSpUp0Lvuiz9e3veJa
	9KFw4QSji7lT5f4aNSeVYyQ9vPEoAXzyqth2MsGVUq8quG9iscXg88AlPBE8cfTyHZdKK1/YT1Vep
	Ql+PGu8Z/x5bhUaXnSvBTsflwhs6i+v0lbsXKdLpwWaSr82S/X2UtUNCbOwBZM7fTz7VWOolfwQdw
	SozE7Zk+B1iKeTNSnyPI+dXYU6LSheRI3UcpngACqSLs3p1cBih9jK4HJFeTTI93hE3htrQM1BY5V
	7gzo4YqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wcicf-000000097m5-26d6;
	Thu, 25 Jun 2026 11:51:57 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wcicc-000000097lH-0Dlt
	for barebox@lists.infradead.org;
	Thu, 25 Jun 2026 11:51:55 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1wcicY-0003MV-QU
	for barebox@lists.infradead.org; Thu, 25 Jun 2026 13:51:50 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Thu, 25 Jun 2026 13:51:47 +0200
Message-ID: <20260625115149.4108394-1-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260625_045154_087407_D8AA5C14 
X-CRM114-Status: GOOD (  12.42  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] input: gpio-keys: initialize the input value with the current gpioval
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This is required for deep-probe systems which prove the "gpio-keys"
device on demand. In such case the input value is not yet accessible
once the probe finished. However, board code queries the input device
value directly after the of.*ensure.*probed().

Therefore provide a sane default by reading the gpio value during probe
and init the input device value.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 drivers/input/gpio_keys.c | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/drivers/input/gpio_keys.c b/drivers/input/gpio_keys.c
index b52738f5ccb2..316ed73ddfd1 100644
--- a/drivers/input/gpio_keys.c
+++ b/drivers/input/gpio_keys.c
@@ -143,6 +143,26 @@ static int gpio_keys_probe_dt(struct gpio_keys *gk, struct device *dev)
 	return 0;
 }
 
+static int gpio_keys_set_initialval(struct gpio_keys *gk)
+{
+	struct gpio_key *gb;
+	int i, pressed;
+
+	for (i = 0; i < gk->nbuttons; i++) {
+
+		gb = &gk->buttons[i];
+		pressed = gpiod_get_value(gb->gpio);
+
+		if (pressed != gb->previous_state) {
+			gb->debounce_start = get_time_ns();
+			input_report_key_event(&gk->input, gb->code, pressed);
+			dev_dbg(gk->input.parent, "%s gpio #%d as %d\n",
+				pressed ? "pressed" : "released", i, gb->code);
+			gb->previous_state = pressed;
+		}
+	}
+}
+
 static int __init gpio_keys_probe(struct device *dev)
 {
 	int ret;
@@ -163,6 +183,8 @@ static int __init gpio_keys_probe(struct device *dev)
 	if (ret)
 		return ret;
 
+	gpio_keys_set_initialval(gk);
+
 	ret = poller_async_register(&gk->poller, dev_name(dev));
 	if (ret)
 		return ret;
-- 
2.47.3



