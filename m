Delivery-date: Thu, 02 Jul 2026 10:18:42 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wfCd8-00CC94-2F
	for lore@lore.pengutronix.de;
	Thu, 02 Jul 2026 10:18:42 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 84F33201105
	for <lore@pengutronix.de>; Thu, 02 Jul 2026 10:18:42 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=WinX8hy9;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VOpFNH76PMoOfaCnNMaWAfnnPtqMCvHH0rebfMINpcE=; b=WinX8hy97kigKV
	Xv6G+2HmhTfjLIWulmqZXgAanfpVgL+x3FS/TSYF0uwuq7eoRcKZ5rXOs2wzAxHg9cTrmr6h1kIDo
	7ZUF6fzLawIWtOz/untm1YIZqJ41XpQsbko4+Ym5oOIboUh9s2WFM9bsFXmROClxJolmBij062/YK
	GgPPsgKKEDgfGvMnM4IlGbOoDNu/VZAB08AFmlkCCwi3ZJtuKQY9MVL3CySwFTYyV96tKO2PgRA5W
	MaDK2MRXjFOie7Npl8PB2mi9zRRmJoBDt+DOgsq3X7szYL7E3GoBH8itxPqbTs29wda2a2N2AlDrr
	/3rU60ksf0J8pWa5mycg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfCbw-00000003pYf-0PSb;
	Thu, 02 Jul 2026 08:17:28 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfCbt-00000003pXl-13nR
	for barebox@lists.infradead.org;
	Thu, 02 Jul 2026 08:17:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 7E354200379;
	Thu, 02 Jul 2026 10:17:22 +0200 (CEST)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wfCbq-005iPO-1I;
	Thu, 02 Jul 2026 10:17:22 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wfCbq-00000008fDl-1E1t;
	Thu, 02 Jul 2026 10:17:22 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Subject: [PATCH] input: gpio-keys: initialize the input value with the current gpioval
Date: Thu,  2 Jul 2026 10:17:19 +0200
Message-ID: <20260702081719.2065068-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260702_011725_451411_B20EC0A1 
X-CRM114-Status: GOOD (  15.05  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  This is required for deep-probe systems which probe the "gpio-keys"
    device on demand. In such case the input value is not yet accessible once
    the probe finished because the first gpio reads happen asy [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
Cc: Marco Felsch <m.felsch@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-Rspamd-Queue-Id: 84F33201105
X-Spamd-Result: default: False [-5.21 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::28:received];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:c01:1d::a2:received];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[pengutronix.de];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_ALL(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_COUNT_FIVE(0.00)[5];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: hu1rmbhspixupygarmaufe69rn69dgug
X-Rspamd-Server: mx1

This is required for deep-probe systems which probe the "gpio-keys"
device on demand. In such case the input value is not yet accessible
once the probe finished because the first gpio reads happen
asynchronously to the probe function. However, board code queries the
input device value directly after the of.*ensure.*probed().

Therefore provide a sane default by reading the gpio value during probe
and init the input device value.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/input/gpio_keys.c | 31 +++++++++++++++++++++----------
 1 file changed, 21 insertions(+), 10 deletions(-)

diff --git a/drivers/input/gpio_keys.c b/drivers/input/gpio_keys.c
index b52738f5cc..0fb09007a9 100644
--- a/drivers/input/gpio_keys.c
+++ b/drivers/input/gpio_keys.c
@@ -30,25 +30,18 @@ struct gpio_keys {
 	struct input_device input;
 };
 
-static void gpio_key_poller(void *data)
+static void gpio_keys_read(struct gpio_keys *gk, bool force)
 {
-	struct gpio_keys *gk = data;
 	struct gpio_key *gb;
 	int i, pressed;
 
-	for (i = 0; i < gk->nbuttons; i++) {
-		gb = &gk->buttons[i];
-
-		if (gpiod_slice_acquired(gb->gpio))
-			goto out;
-	}
-
 	for (i = 0; i < gk->nbuttons; i++) {
 
 		gb = &gk->buttons[i];
 		pressed = gpiod_get_value(gb->gpio);
 
-		if (!is_timeout(gb->debounce_start, gb->debounce_interval * MSECOND))
+		if (!force && !is_timeout(gb->debounce_start,
+					  gb->debounce_interval * MSECOND))
 			continue;
 
 		if (pressed != gb->previous_state) {
@@ -59,6 +52,22 @@ static void gpio_key_poller(void *data)
 			gb->previous_state = pressed;
 		}
 	}
+}
+
+static void gpio_key_poller(void *data)
+{
+	struct gpio_keys *gk = data;
+	struct gpio_key *gb;
+	int i;
+
+	for (i = 0; i < gk->nbuttons; i++) {
+		gb = &gk->buttons[i];
+
+		if (gpiod_slice_acquired(gb->gpio))
+			goto out;
+	}
+
+	gpio_keys_read(gk, false);
 out:
 	poller_call_async(&gk->poller, 10 * MSECOND, gpio_key_poller, gk);
 }
@@ -167,6 +176,8 @@ static int __init gpio_keys_probe(struct device *dev)
 	if (ret)
 		return ret;
 
+	gpio_keys_read(gk, true);
+
 	poller_call_async(&gk->poller, 10 * MSECOND, gpio_key_poller, gk);
 
 	return 0;
-- 
2.47.3



