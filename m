Delivery-date: Fri, 30 Oct 2026 17:04:56 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xMp67-005CXu-2f
	for lore@lore.pengutronix.de;
	Fri, 30 Oct 2026 17:04:56 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 9B2A4200AD1
	for <lore@pengutronix.de>; Fri, 30 Oct 2026 17:04:51 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=d61LccN6;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=fVgSUFW5;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793376291;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=CoTbGlGrGpSw+vjvIdZFwp1Z5BT0B/+Tt6YsjW+t0aw=;
	b=X9OdYCfk5nlOTLCvaNfCuC2yf8w1DCnbyKjlyfBH5s0mIqwksFgovlyUwov/x+/6kutoK1
	3c8qi+rYUyh/TSL5FdfMUgMExY+VkPLEK1ZPEZmXtzp39x4jeG/1Ln5JRG/glfrpmzvVHY
	Y+xcv7f/McakDhk/TsEM9CqIH4CUgrXicRUplvL+Nzxsaqu3Z9Q2AnbUPZYwJWjSEyYKb0
	O2Qu4+ci112qYM+JuidDRKp4L4+u2RYmqkKW3Op13t0VF3ufMs7fH1auM7c22hP6HIdMiW
	s9ut6I2p6ViL1ecjFc0HT4Iyo4+G+iJbNnN+e5xkv40uZxT1I0AxFBjsBKy3Ww==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=d61LccN6;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=fVgSUFW5;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1793376291; a=rsa-sha256;
	cv=pass;
	b=UuIptkkW5a09mkx7jcfZFXyUzZ0YYnGzZywvNcH8rlDFaWi2b5AJnmllxS1+NeRS7A6xao
	fmpQ59hnGD1/FC3XZuYOsHRLLwSRq6gIDQ6zCw2RF8XRoYVyavVG6d7ZFe4g3FHWLE08pF
	KHl2pNqlbgL4/2tFBUpVVpm4GIS/jE2t4f605Ax2zUHg/9/7u7btyG4XmYO9wzUOD/vQju
	dSpelpdzQe9LA/l6toLcKaCQF+NMtHmzqP29YQQMXt0Crc3HnV2/GxRo3HDxNbcxc1YlGz
	FG5F37VRpjZi98YVokg5zDmg3OGjEDhvt7748qeahJFs/OuD+wvc7Zp5EiLVOQ==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=CoTbGlGrGpSw+vjvIdZFwp1Z5BT0B/+Tt6YsjW+t0aw=; b=d61LccN6hzm8Iu
	mvoKrLymyJs6tZqyP57K6YIjfJ28hsby/Op0ri16ig5MXZeRM5VuWHE3ds8vBeOYr/dRG68F7/lJP
	UXZy9afcVH+00OFKUkUgdQ41g9YvJenMVcmuRRPONGj9m6wLCsXwwXpcJQ3GU2EDtydUNS6iCHmx5
	bGM+FjA2MpBX72gn4tfZ7USKcRawZ9hX9A7i3XB9lbTaKcDbS4JttNV6D4//3eY6ouz+AXy95In84
	Dh6SqPsJWQ3jjy99ehe4XjITkP6pWrwo4gmVvxbkFZ0R8Nl5qOPjlFk87lysMmp3c/wR3ZWfnxbq3
	DoYuFtuif6sRaMEAO7Qw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMp54-0000000C4ti-3C2n;
	Fri, 30 Oct 2026 16:03:50 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMp51-0000000C4sR-37mH
	for barebox@lists.infradead.org;
	Fri, 30 Oct 2026 16:03:49 +0000
Received: from ratatoskr.trumtrar.info (unknown [IPv6:2a01:599:600:7591:fab4:1411:7f97:ceb2])
	(Authenticated sender: str@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 0C9D6200B9E;
	Fri, 30 Oct 2026 17:03:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793376221;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=CoTbGlGrGpSw+vjvIdZFwp1Z5BT0B/+Tt6YsjW+t0aw=;
	b=fVgSUFW556C47UYD+0a1xSvilsFw+ywwoHVSdl77ikFN6RXGgMDmP1YULxVBbQBH0uN1yV
	/Kt3T/W+iRVsTqSfPYtJR8lps1EWRRW0IjAmlBWs6CGWOsTNcKkKmnzq9B9KAfTJ/O+qy+
	tmy5nWEHaQH1EApNASLdrwdsuGydMC2qpaRRJXnNrUXYNtW/gLPsDoE5nhzjpGptYDoQNH
	Pxr6UABjj5ydW3NFJCjQiGMKulxOZeaV4niq855w/6PY6QHdffJCRbEzajvICoBVHJ1o5N
	SbXZCQV0vYxywc2FUMeZmYyfx7qHFJowwWL3B362ApXju4Rq5cmKHbec+q+buQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793376221;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=CoTbGlGrGpSw+vjvIdZFwp1Z5BT0B/+Tt6YsjW+t0aw=;
	b=E7729FhcNc2CAvspas17zcvZDrn0sEeKVsVjSG8vWhFFoD7pO4DxLRA6WbQ/fwPG2DPrd0
	QHYDsQjWeGQrbmjfyV3StrU+QwJlauIVL1PNI/QmPx7GF5c9CouLnPws+RdpQZc/17oc9Z
	mjv43EsJ5z55diFZ7f2CvTh5i7s31WT/F7h09p3upHPbEMNJjmavcqIh4JXQSGJlsAwVP3
	3+A9nWcqk6xNHMiWZ23+mj/VGONW1pUJYHydB8rGiPdDxzo8EgbN+Qt2QVhuv0JBYOQf2y
	J4RKCjKqJDdfNWu///pRDAVoVPPB+mSuOx0eDFyuHX9LmN1uDOzZFTj46FWC7Q==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=str@pengutronix.de smtp.mailfrom=s.trumtrar@pengutronix.de
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793376221; a=rsa-sha256;
	cv=none;
	b=Njmwiex8clXwNRD80LFNiiQRGvL06sCS0iYm1EQjdxkWM/7hEX4J+qeOJ9x4L/ZdAPG2yS
	v+dr/HdhVBHDkJs4VMhAB2GCmdVI8dkTTwaVXl9z/Cpar3YVLfdfA7K/96m9BorQbn3wQ2
	sA8XElFsJiWGH8JemNr/PYPIhO6sasKi30OO6TXBMs5qKsAVl5KohTuf7WtuV3MAiOiMMF
	Jjw4+Rb/pgwfSeKhu0fvbXKBlJzrOO53ifuD3VdJHCI2Jr6tSXFg1n45HTwVQMWXoWdlSU
	KjYI+8MJMlCX30UkgPBQgieU+YOaeZOiBmBk7UPJc7aCy5NMaK+7vk5KvjDD1A==
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Fri, 30 Oct 2026 17:03:17 +0100
Subject: [PATCH 2/2] watchdog: gpio: support reset-from-wdt gpio
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20261030-v2026-10-0-topic-gpio-wdt-v1-2-e81eb3470f62@pengutronix.de>
References: <20261030-v2026-10-0-topic-gpio-wdt-v1-0-e81eb3470f62@pengutronix.de>
In-Reply-To: <20261030-v2026-10-0-topic-gpio-wdt-v1-0-e81eb3470f62@pengutronix.de>
To: barebox@lists.infradead.org, Sascha Hauer <s.hauer@pengutronix.de>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1454;
 i=s.trumtrar@pengutronix.de; h=from:subject:message-id;
 bh=PxgWuHB3+O/PjOlslhrWbVH94Uwp21/snByBEjPwoCk=;
 b=owGbwMvMwCUmtVehiCsuTInxtFoSQ9aT/Ze+3ysLulPHcHZZ0ragaMf6+8lPlKI8G6U8FpW8a
 6ldenx/RykLgxgXg6yYIovKwgo+UY8PnpHTRLhg5rAygQxh4OIUgIlMUWRk6Cx54SBY52ZR6aHQ
 VRx9OtVST1enKGB5lrtcvH/RH5t3jAzvV3brnasu2La94BvjZv27sk5/9qy8+aJH2TP4aGzcDx4
 OAA==
X-Developer-Key: i=s.trumtrar@pengutronix.de; a=openpgp;
 fpr=24A1780E1548F0495996140A1ABD20720A5E5622
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261030_090347_941111_2B12D7A8 
X-CRM114-Status: GOOD (  10.79  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Support the new reset-from-wdt-gpios device tree binding.
   This gpio connection signals, that the last reset was issued by this watchdog.
    Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de> --- drivers/watchdog/gpio_wdt.c
    | 16 ++++++++++++++++ 1 file changed, 16 insertions(+) 
 
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
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	DMARC_NA(0.00)[pengutronix.de];
	TO_DN_SOME(0.00)[];
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
X-Stat-Signature: mxpdca8akw6oasowmf6xgnfdj45jxob3
X-Rspamd-Queue-Id: 9B2A4200AD1

Support the new reset-from-wdt-gpios device tree binding.

This gpio connection signals, that the last reset was issued by this
watchdog.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 drivers/watchdog/gpio_wdt.c | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/drivers/watchdog/gpio_wdt.c b/drivers/watchdog/gpio_wdt.c
index 3270c15ed1..6a0df75326 100644
--- a/drivers/watchdog/gpio_wdt.c
+++ b/drivers/watchdog/gpio_wdt.c
@@ -8,6 +8,7 @@
 #include <common.h>
 #include <driver.h>
 #include <watchdog.h>
+#include <reset_source.h>
 #include <superio.h>
 #include <linux/gpio/consumer.h>
 
@@ -18,6 +19,7 @@ enum {
 
 struct gpio_wdt_priv {
 	struct gpio_desc *gpiod;
+	struct gpio_desc *wdt_reset;
 	bool		state;
 	bool		always_running;
 	bool		started;
@@ -122,6 +124,20 @@ static int gpio_wdt_probe(struct device *dev)
 	if (IS_ERR(priv->gpiod))
 		return PTR_ERR(priv->gpiod);
 
+	priv->wdt_reset = gpiod_get_optional(dev, "reset-from-wdt", GPIOD_IN);
+	if (IS_ERR(priv->wdt_reset))
+		return dev_errp_probe(dev, priv->wdt_reset, "no reset-from-wdt found");
+
+	if (priv->wdt_reset) {
+		int val = gpiod_get_value(priv->wdt_reset);
+
+		if (val < 0)
+			return val;
+
+		if (val)
+			reset_source_set_device(dev, RESET_WDG, 200);
+	}
+
 	priv->always_running = of_property_read_bool(dev->of_node, "always-running");
 
 	priv->wdd.hwdev		= dev;

-- 
2.52.0



