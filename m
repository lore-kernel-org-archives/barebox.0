Delivery-date: Fri, 30 Oct 2026 17:05:02 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xMp6E-005CYb-0o
	for lore@lore.pengutronix.de;
	Fri, 30 Oct 2026 17:05:02 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 1A43620295E
	for <lore@pengutronix.de>; Fri, 30 Oct 2026 17:04:58 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=0MecyGQg;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=akqfvUW2;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793376298;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=l7UNp8qcqvWwrXxA2vXYL2mcd3s5nk8QRgzpIGPyrXo=;
	b=KoUtgzJDs0RQdQmNWG8PFmUQ2R7n115MdTgQ3J0NNavwUE1qNmFwK1yNhl68HDHBnp80yv
	vCM4O8IbflXw3mLJYkviOYjhG71Kg0yd9WZXTyctPlJd2RmF+njKuKdeDoHzzHTECDE9qD
	x4sBv8tc07hg/WG8f4HoY2ArCMR/mKFMHgnBktzxPJ1tFF4xsGt7SUnqzzdQ054gU10FX7
	fSGFLBaZx1lbEzUWRQFI0z409aZj1fptQ6uH2EJcx4ACDpwhz3V/+JlRsxhMiIARRJAX17
	9XGBuut3U0eJlqNXIraTF1xSYRIgJEJrK0W/B9Omg2DJbhQT3jZU2UUsrGAJHw==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=0MecyGQg;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=akqfvUW2;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1793376298; a=rsa-sha256;
	cv=pass;
	b=PM4IeAydUS/YSxv4NRIG5XE1VuIXh6xqAV0bDA+Eme7XeHiiGq9rpEK7G0/bElWKcsA7NR
	KZ+Z/KFpdC0/JI4XYDsxNvMN9HF9D/0smQKCWwvQzS9xOBSQfdhu80iILR2ftFvMPujfE+
	GYuSZaexOKUicGQV4WvRI1Ydk3g6zS9ljJdEkLRh/N/ShrQazkFivhHXQyiR+1sGuahTQO
	b5Y8MCwy8NWYwEKsauGx0A55rexBIAFV/FdXltL8g0x/4iRgNqicCd+wUxfrV8Hj8lbB2M
	uXraIkG2V5nb3bAF29g2HTGrL8pPNoLgk34ut4fAsbr1RFojsBaq9g6+YYoX6w==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=l7UNp8qcqvWwrXxA2vXYL2mcd3s5nk8QRgzpIGPyrXo=; b=0MecyGQgV2Lg/3
	LLri6CjVNh21YvfecCrmjWsMJZXjwM//sdH4GHpPo9VPXaxkKFT5cGpaQx7QUeUQhOnJaZ0f5wQb7
	At8cqPub4+1zH3BR7fC9nyb3J/Xoj621D8jIelHg64uL6ZSMyN61IfPQoqAkpXIpjR2hw8us9JcoZ
	dVBa2UYu/uM3xQ590bTtbA+UpL7qG5Lr8shhitmsjWFrQ6GhvpHQkyEodzhsDva7OLHFMY2OcsgrZ
	b7ygYX3yYDY79qACrBeR7ytgRrO/S8k31iSkz4aUP0epIGTnhMfT8Tsk/xZApTcGLigOj4G8b0B/2
	75/QbsIPu2GDUuEOj61Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMp4z-0000000C4rw-1SQP;
	Fri, 30 Oct 2026 16:03:45 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMp4v-0000000C4ql-2XIr
	for barebox@lists.infradead.org;
	Fri, 30 Oct 2026 16:03:44 +0000
Received: from ratatoskr.trumtrar.info (unknown [IPv6:2a01:599:600:7591:fab4:1411:7f97:ceb2])
	(Authenticated sender: str@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 5AA9E200AD1;
	Fri, 30 Oct 2026 17:03:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793376215;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=l7UNp8qcqvWwrXxA2vXYL2mcd3s5nk8QRgzpIGPyrXo=;
	b=akqfvUW2XYjhOo/TSNTMV5qY4czFUEe7IhyPaD2Ty/ruw00dGnnM5VruwFYpg2aIXeSMQj
	xIn6MATJ7sYKW+WuaK2ma7Jp0CCVDRaFLnrJZU68WevlOkYltVK7hJQaFb2lDY7SgbADSk
	MEH8D/KcFLhNJ9zBV2d9rMCv3+qtKZeHmtHa60YzABrQ+EmlLU614O4f1Z39uBKXG7jpxW
	EJnSghk5BYw5AP7mq1OYo6zj8sZfcikJfRnuJSc1KPfjj3cThA3R6Wru9KNaG2byPMF40q
	SB7fxQBbu6+e2PNioX6j/hGy5L+Z8QoqTm8hdXqVELQYZmI4J9TNdr2Mgnl6iQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793376215;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=l7UNp8qcqvWwrXxA2vXYL2mcd3s5nk8QRgzpIGPyrXo=;
	b=PMf4Zrlo/sLWD2P1AGyhEhOvG/wuaWV/KhwqkVxCcufCkvk6ipS80Fre92bvq24+qoyGKj
	rVTL8fBALV51UnS/z4BhWyPw2ZGRcXdAn7y5i2b4xGI6jk0OAqsF1KZJqd/2pFZo/kM7zo
	ZTM3ZQKKqZCG8g3KHAhkZS6xm0Cg9bFlcpBPX7HFRpYtM7KWHGQL4lRMAaWQg1yAN2KWvj
	0ieaLpeC93BG7j2G98XHzw81ZWuf0B1w4Pxz0DZ4+gZwRrDcJ3KfCzRRJyMWjJkpXNLPOV
	QiYqkwR2FKfjfxX6iP7T/hniU7m/P3sV6DoNmoNHTopt2uzfC7NF3AJJcq5YhA==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=str@pengutronix.de smtp.mailfrom=s.trumtrar@pengutronix.de
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793376215; a=rsa-sha256;
	cv=none;
	b=J4IEKz9WRoWvDwA2y7Qu4LHp5hSrFdu3bCyHDpKZkkZMm4/JnVgmiW9zqZ/YljQI+VhLZa
	wwWDHfT4dbM0lpX9jrNsHQAhervCOjc0XVhkQNwBt+qJkWqJV6q3zOpLZ1d24fFAyIrn84
	RPfq7qqfJVZB5TViKun8oBlOO1r/JBBwhjhcmQItckxQLfdDBZYyS76vNJMvMBPq8QcC9J
	XSiYPK+uL/dIVu0D8GU/tRveXVr/qH8MsQibEfTHgCvofEEY2zyefm120JUs++ElAO3TnX
	LBHoj7IVWnMIUmES6mxMEgIxzAQXPgFuX9NDEHlw0fPPeBXQMKMGfPfls4qKCQ==
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Fri, 30 Oct 2026 17:03:16 +0100
Subject: [PATCH 1/2] watchdog: gpio: support always-running
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20261030-v2026-10-0-topic-gpio-wdt-v1-1-e81eb3470f62@pengutronix.de>
References: <20261030-v2026-10-0-topic-gpio-wdt-v1-0-e81eb3470f62@pengutronix.de>
In-Reply-To: <20261030-v2026-10-0-topic-gpio-wdt-v1-0-e81eb3470f62@pengutronix.de>
To: barebox@lists.infradead.org, Sascha Hauer <s.hauer@pengutronix.de>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1718;
 i=s.trumtrar@pengutronix.de; h=from:subject:message-id;
 bh=7KZpe3LToHVj4cvr+bwJxvGyX9udkaFixbzPejZ8MDw=;
 b=owGbwMvMwCUmtVehiCsuTInxtFoSQ9aT/Rd3fVvyh0H2Rkfwzuj7KfdPzm49zN6jLFayYsLPG
 Nvpx/lmdpSyMIhxMciKKbKoLKzgE/X44Bk5TYQLZg4rE8gQBi5OAZhIXw/DP6t6hUvzI0/Ifbgv
 fLDPrzW6XVXookzaNwuPudqysx8YrmD4w99Y4m715Dbz9w/S0vsuTMrj5mj9oKD/5ne0/qIPx6a
 eYwYA
X-Developer-Key: i=s.trumtrar@pengutronix.de; a=openpgp;
 fpr=24A1780E1548F0495996140A1ABD20720A5E5622
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261030_090341_801735_2BD1B922 
X-CRM114-Status: GOOD (  12.89  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  The devicetree binding describes an always-running property
    for gpio watchdogs that cannot be disabled. Add support for this property
    to the driver. Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
    --- drivers/watchdog/gpio_wdt.c | 12 +++++++++++- 1 file changed, 11 insertions(+),
    1 deletion(-) 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-Spamd-Result: default: False [-60.41 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	DMARC_NA(0.00)[pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[s.trumtrar@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: skj1f9rj1dap69yw43x7ze6rt7e4gzk9
X-Rspamd-Queue-Id: 1A43620295E

The devicetree binding describes an always-running property for gpio
watchdogs that cannot be disabled. Add support for this property to the
driver.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 drivers/watchdog/gpio_wdt.c | 12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)

diff --git a/drivers/watchdog/gpio_wdt.c b/drivers/watchdog/gpio_wdt.c
index 5fa98f87c6b..3270c15ed16 100644
--- a/drivers/watchdog/gpio_wdt.c
+++ b/drivers/watchdog/gpio_wdt.c
@@ -19,6 +19,7 @@ enum {
 struct gpio_wdt_priv {
 	struct gpio_desc *gpiod;
 	bool		state;
+	bool		always_running;
 	bool		started;
 	unsigned int	hw_algo;
 	struct watchdog	wdd;
@@ -63,13 +64,17 @@ static void gpio_wdt_start(struct gpio_wdt_priv *priv)
 	priv->state = false;
 	gpiod_direction_output(priv->gpiod, priv->state);
 	priv->started = true;
+
+	priv->wdd.running = WDOG_HW_RUNNING;
 }
 
 static int gpio_wdt_set_timeout(struct watchdog *wdd, unsigned int new_timeout)
 {
 	struct gpio_wdt_priv *priv = to_gpio_wdt_priv(wdd);
 
-	if (!new_timeout) {
+	if (!new_timeout && priv->always_running) {
+		return -ENOSYS;
+	} else if (!new_timeout) {
 		gpio_wdt_disable(priv);
 		return 0;
 	}
@@ -117,11 +122,16 @@ static int gpio_wdt_probe(struct device *dev)
 	if (IS_ERR(priv->gpiod))
 		return PTR_ERR(priv->gpiod);
 
+	priv->always_running = of_property_read_bool(dev->of_node, "always-running");
+
 	priv->wdd.hwdev		= dev;
 	priv->wdd.timeout_max	= hw_margin / 1000;
 	priv->wdd.priority	= 129;
 	priv->wdd.set_timeout	= gpio_wdt_set_timeout;
 
+	if (priv->always_running)
+		gpio_wdt_start(priv);
+
 	return watchdog_register(&priv->wdd);
 }
 

-- 
2.52.0



