Delivery-date: Tue, 03 Nov 2026 22:32:52 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xOM7f-006wWF-2V
	for lore@lore.pengutronix.de;
	Tue, 03 Nov 2026 22:32:52 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 86D7220282F
	for <lore@pengutronix.de>; Tue, 03 Nov 2026 22:32:47 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=B9qAweKo;
	dkim=pass header.d=puzzle.ch header.s=20211230 header.b=E62RmuA4;
	dkim=pass header.d=puzzle.ch header.s=20211209 header.b=PcbQNozl;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=pass (policy=reject) header.from=puzzle.ch
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793741567;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=D1kqs4tTynbJTuVJWstrHRHKedZU47lKIG37QqASgf0=;
	b=T4NUZx/lyT99nkiekv5AdqGfuEyOCol+n62/5KEcBxH4ulstY1snQ6zn6/vL/X0qfBjqOa
	Y1abYTJZmQMJaUqa2+ei9IO01b4F0nYGK0h5S0cM6Z00llbwAgFAHKUa6Qq6xe8/fYuMkG
	jj+NSiNsYcbExaH6ty/J+tif3VOGvgPVOoQn8cB1xaZ4VbMI5L1089Vp8KqFOyz9yQcaMK
	oTnavm1jlUwtRiM+16TtFWjrrK1gr2Iy/gAj1AqHpfJVBN1welkrgiH2jUqGGOLPL5ntKG
	sMK0vzHCGtquUi7p+PirDSQn7vNIsxui01cg17WLxSVbqGxRoyruFVm3CvmoSg==
ARC-Authentication-Results: i=1;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=B9qAweKo;
	dkim=pass header.d=puzzle.ch header.s=20211230 header.b=E62RmuA4;
	dkim=pass header.d=puzzle.ch header.s=20211209 header.b=PcbQNozl;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=pass (policy=reject) header.from=puzzle.ch
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793741567; a=rsa-sha256;
	cv=none;
	b=GeJn8KVVsptUdqYddayPqo4kC+258LKwIyRZSPOFw88zMicdxVaF+G0PQBPC+4DX/U3gCq
	0XovZYRFToXarhoLLOeTpgeGsz/vUlfutVcIO5zD8pPgaIemfn0Lt2WCE9tUZ+Xhk02TO3
	gi6YBU8pk3fqYJALBiiUPvVy9q5J2jMpPrR/QKMBt1MMn+jgEvc1PIG4leSQ1S691DkxEO
	c6rhdGWtzhL5m32fhWBZf03QeXRpLlfY/ISLsRwaB5Eyk8QeZpTMKuLvcO3nm14ASnfWT8
	wK6Xp6czO3N1gVvzu5bhXiIzlttM7UAo0EbzvKrP8aeSREcDzXCO5EvHw2KhWQ==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=D1kqs4tTynbJTuVJWstrHRHKedZU47lKIG37QqASgf0=; b=B9qAweKoP9Qxnq
	i/DAFWVellWDUUq0yVHffwf6PmpJyIMJ1z/ZoNlD5ZstgHzk0Qj9eU5F3XMr+II5f/fLcvxP37vnT
	hx6qZsktHxZAoRVp/WK531R1rSDccch5bnnu3q785mPiNu3amJqwXGuWyxxxaA5HmVRTcODTIuUdt
	JCl3XsSyikRFBheCubdLoQcuOys9bruI5afDTJKoJfOsOjVfe1iPa9H7m62m5UCZoD2hXy5ZfCZR0
	0hiiGviCYpxiEESQ1ngmkrULwUDsn3YgH5uBf2N9jK0aCBlp3sacgelNhLb3UnLB6mpGWxevpS0bi
	mYO4vJwLLNDor/rWpdHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOM6P-00000003iBo-2Nbk;
	Tue, 03 Nov 2026 21:31:33 +0000
Received: from mx03.puzzle.ch ([45.81.71.124])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOM6K-00000003i3T-2dWr
	for barebox@lists.infradead.org;
	Tue, 03 Nov 2026 21:31:31 +0000
Received: from mailstore02.cloud.puzzle.ch (mail.puzzle.ch [45.81.71.99])
	by mx03.puzzle.ch (Postfix) with ESMTPS id 193041C3;
	Tue,  3 Nov 2026 22:31:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=puzzle.ch; s=20211230;
	t=1793741479;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=D1kqs4tTynbJTuVJWstrHRHKedZU47lKIG37QqASgf0=;
	b=E62RmuA4ZAhc/EOW4ICGe7w0BPbtNJ73eS1Xi0XvM2Aso1czjEm/Zv4nwmp5WNjPbqPual
	NswpRyhkL7lZmoGghcUx5+l+PeIDSgNej++/M+/E6e8c8HqUD0/nUS+a5F6cRH6iCtLWlL
	FZIeOXlgT/wbziItHR//jYwws8pgncEPwDO/bP+2WoSdP77Q47mryHJjgxmc9v/ivgBvyv
	NUlljjZYgaOloBAA+zdgqLAqaBU2IrrF8L/zVEQbODfw2A9U91GdltU1Ccd4FLimIfiTe9
	v0c0bDtCeyQ+4LuyITEFsK84oN8ULn3fXwR6UbvFsWm0nCAlIWMuXuiu8D7rLQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=puzzle.ch; s=20211209;
	t=1793741479;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=D1kqs4tTynbJTuVJWstrHRHKedZU47lKIG37QqASgf0=;
	b=PcbQNozlAQPO91mceSNFrfX3v+Q040NUdVZwKB24Gvaec6AW7wurMYHzJqiu6fQI7/G1r/
	4EqQ+ae1Dh2rWUEAhGyJ+5b1QaCPXEWjNKXwa+AINSeMtBotPLuO173rmf0mxYZDzrHieC
	Y7JL2GUMtaQpgH5PSrm3z+ypgNzYmcTVO5PHiEf7LzdJKrVu1RLy35NTisJV5696j0QhGZ
	xHfuRC01O6Ougj9gv7TXNHMj6eE9Q8y273jmvpyQ410/BkT8e96vhrOLbYUvtr1VSbvGza
	haqoP4qA6KChG7V1IouecyubdzaosVKjczXsh/H4zGL40XXhlQRIBWNK9ZEXiA==
From: Michael Grzeschik <grzeschik@puzzle.ch>
x-ms-reactions: disallow
Date: Tue, 03 Nov 2026 22:31:09 +0100
Subject: [PATCH 3/6] gpio: orion: do not let banks without alias collide
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20261103-orion_kw_mvebu-v1-3-86442c0d283e@puzzle.ch>
References: <20261103-orion_kw_mvebu-v1-0-86442c0d283e@puzzle.ch>
In-Reply-To: <20261103-orion_kw_mvebu-v1-0-86442c0d283e@puzzle.ch>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 "open list:BAREBOX" <barebox@lists.infradead.org>
Cc: Michael Grzeschik <grzeschik@puzzle.ch>
X-Developer-Signature: v=1; a=openpgp-sha256; l=2107; i=grzeschik@puzzle.ch;
 h=from:subject:message-id; bh=6bc4IBoZQMHxywIQXh5vX3WHEw+MuLTlO5IZNnM+Sco=;
 b=owEBbQKS/ZANAwAKAb9pWET5cfSrAcsmYgBq6lKkwAN4WHxLnmuJSkHWLwS1jLXimQBPJu1mz
 VnXDPhkcKCJAjMEAAEKAB0WIQQV2+2Fpbqd6fvv0Gi/aVhE+XH0qwUCaupSpAAKCRC/aVhE+XH0
 qz6sEACcVmdfs/uQL95S/Rhm6UAqXkTr2QfWTYp2LPFemR/sLrBn5ShGI+w3uQudtlpN+7AdhDx
 oJ8XXHR3pt4eRzN9hB6P6RuYVw06+9koWEot6rWnGZ4kN7brVnbMRrdGwLV8Oi68K22DUDaTbwq
 bZABqAM+Z+CRnlvWgpr3iVqzu/UzJ6XINJx6nsTr1wqpeSrAM9bfABms1T3C1jB0861vK39nU8V
 Zm1yMPUgsMQs87rCAa4IEg9Z4mpU2OL9VWogafnlAHZh3boA8J+PtSlFBqR5OTEVLb4qh3v3LCH
 4MPA4bFokJ9qtFgibXka9xt+hqWwwzqVHC+6f5gZgkVxW/dYjgfBN7Ol98owrrt8csEa5KATRsF
 gwE8DljBRA7ulEToOHLDM7ULiiUQWEZzmntzrNlQJQ4+pqXHVTMZDRJ4jpdTLMey4050pdfygkw
 dDw3tN5HPrhjsDOV6EeD6X+TtaoPpmfbbZLDVBKPUoermCT4Z9rluOBPzkpPzebA1vOIjBd0Ici
 7S8nToj4kHfBpFhNkgfI3Nls9aDLT+iXSjchJB24cMSdzqrZsY6CmLLHQ6kTbt/gwFwBS8/2izX
 lVyX+o5YHQ8CusfQHuVhAhAxbCWRHnKTjF8GBpLmdtLzfquU7bfH59v+UfueXiakD0SpyglfuSw
 N717sHUcryTr0fA==
X-Developer-Key: i=grzeschik@puzzle.ch; a=openpgp;
 fpr=957BC452CE953D7EA60CF4FC0BE9E3157A1E2C64
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261103_133128_882569_DAB0AEFF 
X-CRM114-Status: GOOD (  11.88  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  The driver uses the "gpio" alias index to place a bank in
   the global GPIO number space and leaves the base at 0 when there is no alias.
    The Kirkwood device trees have no gpio aliases, so both banks we [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
 -0.0 DMARC_PASS             DMARC pass policy
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
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 86D7220282F
X-Spamd-Result: default: False [-7.91 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[puzzle.ch,reject];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,puzzle.ch:s=20211230,puzzle.ch:s=20211209];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[grzeschik@puzzle.ch,barebox-bounces@lists.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_SENDER_FORWARDING(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_ALL(0.00)[];
	MISSING_XM_UA(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,puzzle.ch:+];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_NEQ_ENVFROM(0.00)[grzeschik@puzzle.ch,barebox-bounces@lists.infradead.org];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=1];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: ab3s9fw6jmy74tkwn6xce76uj7ch7ot6

The driver uses the "gpio" alias index to place a bank in the global
GPIO number space and leaves the base at 0 when there is no alias. The
Kirkwood device trees have no gpio aliases, so both banks were
registered at base 0. gpiochip_add() then rejected the second bank with
-EBUSY, which the driver ignored, so every user of gpio1 deferred
forever:

  gpio-leds gpio-leds.of: error Requested probe deferral: getting gpio for /gpio-leds/led-level
  gpio_keys gpio_keys.of: error Requested probe deferral: requesting gpio #0

Let gpiolib choose the base when there is no alias, and fail the probe
with an error message if the chip cannot be registered.

Assisted-by: Claude:claude-opus-5-5
Signed-off-by: Michael Grzeschik <grzeschik@puzzle.ch>
---
 drivers/gpio/gpio-orion.c | 16 ++++++++++++++--
 1 file changed, 14 insertions(+), 2 deletions(-)

diff --git a/drivers/gpio/gpio-orion.c b/drivers/gpio/gpio-orion.c
index ef7d1ff114..994ba1926e 100644
--- a/drivers/gpio/gpio-orion.c
+++ b/drivers/gpio/gpio-orion.c
@@ -83,7 +83,7 @@ static int orion_gpio_probe(struct device *dev)
 {
 	struct resource *iores;
 	struct orion_gpio_chip *gpio;
-	int id;
+	int id, ret;
 
 	gpio = xzalloc(sizeof(*gpio));
 	iores = dev_request_mem_resource(dev, 0);
@@ -95,14 +95,26 @@ static int orion_gpio_probe(struct device *dev)
 	gpio->chip.dev = dev;
 	gpio->chip.ops = &orion_gpio_ops;
 
+	/*
+	 * Without a gpio alias, let gpiolib pick the base. Defaulting to 0
+	 * made the second bank of Kirkwood SoCs collide with the first one.
+	 */
 	id = of_alias_get_id(dev->of_node, "gpio");
 	if (id >= 0)
 		gpio->chip.base = id * 32;
+	else
+		gpio->chip.base = -1;
 
 	gpio->chip.ngpio = 32;
 	of_property_read_u32(dev->of_node, "ngpios", &gpio->chip.ngpio);
 
-	gpiochip_add(&gpio->chip);
+	ret = gpiochip_add(&gpio->chip);
+	if (ret) {
+		dev_err(dev, "failed to register gpio chip: %pe\n", ERR_PTR(ret));
+		release_region(iores);
+		free(gpio);
+		return ret;
+	}
 
 	dev_dbg(dev, "probed gpio%d with base %d\n", dev->id, gpio->chip.base);
 

-- 
2.53.0



