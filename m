Delivery-date: Wed, 14 Jun 2023 12:09:18 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q9NRH-006ULq-Rv
	for lore@lore.pengutronix.de; Wed, 14 Jun 2023 12:09:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q9NRF-00068x-LI
	for lore@pengutronix.de; Wed, 14 Jun 2023 12:09:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=H09piRWnVxTF4y4TJRuDi9ZJHEE8MW3UYsTs4WyudQw=; b=BSAD+Z1CZ7kOrN9rh1dS/5Mpon
	XMHQtwNzLTuAONztxiq8hsKZHFRT88k5nkG4GANiZpS0bT0WcUhZhEUCbPupPrfPBbAlLtK+9Q0CX
	uhWQu1LWCl7qVeR/W+apO/lswflouqsBeyw6CQua/w2/WQmepe6mW3KE6az53Lmj2B2xn0+7Kjp8O
	JKmuPPKz965jrLlWqcNuZVBV4uw+Dh2qLdZWXaoAl0RCuGuzv1fmpSNMrVubslwHQVMfwMTJwgsm2
	twe/R63Uvu/urF7yJZSrGnwGLRAMpNcyCK6Z3HIVAjNNzu6/Q8E8s+0qpNA6xy6gcMUV+Zg0LWJrC
	/+WxaLbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q9NQF-00BAb8-0o;
	Wed, 14 Jun 2023 10:08:15 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q9NQA-00BAXR-3D
	for barebox@lists.infradead.org;
	Wed, 14 Jun 2023 10:08:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q9NPt-0005cU-K9; Wed, 14 Jun 2023 12:07:53 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q9NPs-007Kbd-Rh; Wed, 14 Jun 2023 12:07:52 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q9NPr-00E9uI-LP; Wed, 14 Jun 2023 12:07:51 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: mfe@pengutronix.de,
	Jules Maselbas <jmaselbas@kalray.eu>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 14 Jun 2023 12:07:40 +0200
Message-Id: <20230614100747.3368109-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230614100747.3368109-1-a.fatoum@pengutronix.de>
References: <20230614100747.3368109-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230614_030811_034425_A75F24B7 
X-CRM114-Status: GOOD (  11.90  )
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
Subject: [PATCH v2 03/10] gpiolib: rename local gpio-line-names variable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Marco Felsch <m.felsch@pengutronix.de>

This is just a cosmetic commit to align the code more with the Linux
kernel.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - no change
---
 drivers/gpio/gpiolib.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpio/gpiolib.c b/drivers/gpio/gpiolib.c
index 0df43c9f8f7e..eb2bba042e49 100644
--- a/drivers/gpio/gpiolib.c
+++ b/drivers/gpio/gpiolib.c
@@ -524,10 +524,10 @@ static int of_gpiochip_scan_hogs(struct gpio_chip *chip)
 					  "gpio-line-names");
 
 	if (count > 0) {
-		const char **arr = xzalloc(count * sizeof(char *));
+		const char **names = xzalloc(count * sizeof(char *));
 
 		of_property_read_string_array(chip->dev->of_node,
-					      "gpio-line-names", arr, count);
+					      "gpio-line-names", names, count);
 
 		/*
 		 * Since property 'gpio-line-names' cannot contains gaps, we
@@ -538,9 +538,9 @@ static int of_gpiochip_scan_hogs(struct gpio_chip *chip)
 			count = chip->ngpio;
 
 		for (i = 0; i < count; i++)
-			gpio_desc[chip->base + i].name = xstrdup(arr[i]);
+			gpio_desc[chip->base + i].name = xstrdup(names[i]);
 
-		free(arr);
+		free(names);
 	}
 
 	for_each_available_child_of_node(chip->dev->of_node, np) {
-- 
2.39.2



