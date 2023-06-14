Delivery-date: Wed, 14 Jun 2023 12:09:14 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q9NRD-006UJA-HR
	for lore@lore.pengutronix.de; Wed, 14 Jun 2023 12:09:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q9NRB-00065q-45
	for lore@pengutronix.de; Wed, 14 Jun 2023 12:09:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=37+IN4yCBFvIKf0DPdbivc672d+tifmBcbRuFhkbues=; b=hbH7EJdjEfCqYh28UFWmjFndFZ
	HZ4OR9u5CTYL8AA66vi5E6ijVxSUJRLu+utmw3mvJTIjNuyX9cuS1uKUOtlHPXb//nfET+xsZ7rwO
	E/kHbPtGNjFlciXj9xuSlOz03LysfzTW1IIIOpGUKXfcT3sS3upu2FAXYJgh/KGJdgV4w9YMLZs9E
	/aakeIWfjynCD0IAgnuxVEFh7ZJ6XwmOdaGzRQ+6WLXEOBXZ1DOFOjC0SdyCJuO7bCZ4ujzfwsLuE
	oVvrDUla5Ta0Y8Pq6AGNRdtsyqJ6GyMSsRawrBx/mmhE1C/y7OjcfMa/WiUjYDp2JhfqEW/uTSGw0
	FlQuv4uQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q9NQ5-00BAUl-0r;
	Wed, 14 Jun 2023 10:08:05 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q9NQ0-00BARF-2s
	for barebox@lists.infradead.org;
	Wed, 14 Jun 2023 10:08:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q9NPu-0005d5-2j; Wed, 14 Jun 2023 12:07:54 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q9NPt-007Kbv-FO; Wed, 14 Jun 2023 12:07:53 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q9NPr-00E9uy-My; Wed, 14 Jun 2023 12:07:51 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: mfe@pengutronix.de,
	Jules Maselbas <jmaselbas@kalray.eu>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 14 Jun 2023 12:07:45 +0200
Message-Id: <20230614100747.3368109-9-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230614100747.3368109-1-a.fatoum@pengutronix.de>
References: <20230614100747.3368109-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230614_030800_946920_9A807557 
X-CRM114-Status: GOOD (  12.41  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 08/10] OF: gpio: sync of_get_named_gpio_flags variable with kernel
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Marco Felsch <m.felsch@pengutronix.de>

Sync local of_phandle_args variable with the kernel to make it easier to
see the diff between both versions. No functional change.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - fix typo (Jules)
---
 drivers/of/of_gpio.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/of/of_gpio.c b/drivers/of/of_gpio.c
index 5da80e249386..c20133bbfd6f 100644
--- a/drivers/of/of_gpio.c
+++ b/drivers/of/of_gpio.c
@@ -60,26 +60,26 @@ static void of_gpio_flags_quirks(struct device_node *np,
 int of_get_named_gpio_flags(struct device_node *np, const char *propname,
 			   int index, enum of_gpio_flags *flags)
 {
-	struct of_phandle_args out_args;
+	struct of_phandle_args gpiospec;
 	struct device *dev;
 	int ret;
 
 	ret = of_parse_phandle_with_args(np, propname, "#gpio-cells",
-					index, &out_args);
+					index, &gpiospec);
 	if (ret) {
 		pr_debug("%s: cannot parse %s property: %d\n",
 			__func__, propname, ret);
 		return ret;
 	}
 
-	dev = of_find_device_by_node(out_args.np);
+	dev = of_find_device_by_node(gpiospec.np);
 	if (!dev) {
 		pr_debug("%s: unable to find device of node %s\n",
-			 __func__, out_args.np->full_name);
+			 __func__, gpiospec.np->full_name);
 		return -EPROBE_DEFER;
 	}
 
-	ret = gpio_get_num(dev, out_args.args[0]);
+	ret = gpio_get_num(dev, gpiospec.args[0]);
 	if (ret == -EPROBE_DEFER)
 		return ret;
 	if (ret < 0) {
@@ -89,7 +89,7 @@ int of_get_named_gpio_flags(struct device_node *np, const char *propname,
 	}
 
 	if (flags) {
-		*flags = out_args.args[1];
+		*flags = gpiospec.args[1];
 		of_gpio_flags_quirks(np, propname, flags, index);
 	}
 
-- 
2.39.2



