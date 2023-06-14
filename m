Delivery-date: Wed, 14 Jun 2023 12:09:17 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q9NRG-006UKz-Cs
	for lore@lore.pengutronix.de; Wed, 14 Jun 2023 12:09:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q9NRD-00067y-Ue
	for lore@pengutronix.de; Wed, 14 Jun 2023 12:09:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=I51wkxLTWmDVOaxlZU6HGZPxi4V+j/fgQEAkapffjq0=; b=bZ1q4Vkk8Ol0QAoGi7+5whW2fS
	6b5hejaU5zkvu2FWhtHIYdjUuEgxyN0ZHig5wrd/326czrf08rAWAwzyyg/PDj8hbJhEFHBRRdIfY
	UIz0sN9KvzZ8rvjTB/h59/vqVkC74M+Wz/xEGMoV8Ztqy/YSNYQGOcwkL8m6oSAVlAlgssLgnX8qS
	NFj28UCbtx/sDnpsLp5Rlhw9GkL6oidt6ZblSV7kJjrqDPFmRmqPERV70EQCvezrjlGyzxAyUDgZS
	PtSwkeqZN/3N/c5T8uk+ZQZ5ha2WMSWcn9O+hHv8mHQBadzo3kFpB8xWA662N8ETRYIplBcBqc0Zx
	KoZN+r6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q9NQ4-00BAU0-17;
	Wed, 14 Jun 2023 10:08:04 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q9NQ0-00BAQp-2r
	for barebox@lists.infradead.org;
	Wed, 14 Jun 2023 10:08:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q9NPt-0005cR-K7; Wed, 14 Jun 2023 12:07:53 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q9NPs-007KbU-NF; Wed, 14 Jun 2023 12:07:52 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q9NPr-00E9uQ-Li; Wed, 14 Jun 2023 12:07:51 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: mfe@pengutronix.de,
	Jules Maselbas <jmaselbas@kalray.eu>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 14 Jun 2023 12:07:41 +0200
Message-Id: <20230614100747.3368109-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230614100747.3368109-1-a.fatoum@pengutronix.de>
References: <20230614100747.3368109-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230614_030800_959171_5685DBEB 
X-CRM114-Status: GOOD (  14.68  )
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
Subject: [PATCH v2 04/10] gpiolib: fix gpio name memory leak
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Marco Felsch <m.felsch@pengutronix.de>

We never freed the name allocated by xstrdup(). Fix this by use the
const devicetree property value. While on it check if the name is valid
and add the comment to align the code with the kernel.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - no change
---
 drivers/gpio/gpiolib.c | 14 +++++++++++---
 1 file changed, 11 insertions(+), 3 deletions(-)

diff --git a/drivers/gpio/gpiolib.c b/drivers/gpio/gpiolib.c
index eb2bba042e49..f05e2ac7356a 100644
--- a/drivers/gpio/gpiolib.c
+++ b/drivers/gpio/gpiolib.c
@@ -18,7 +18,7 @@ struct gpio_info {
 	bool requested;
 	bool active_low;
 	char *label;
-	char *name;
+	const char *name;
 };
 
 static struct gpio_info *gpio_desc;
@@ -537,8 +537,16 @@ static int of_gpiochip_scan_hogs(struct gpio_chip *chip)
 		if (count > chip->ngpio)
 			count = chip->ngpio;
 
-		for (i = 0; i < count; i++)
-			gpio_desc[chip->base + i].name = xstrdup(names[i]);
+		for (i = 0; i < count; i++) {
+			/*
+			 * Allow overriding "fixed" names provided by the GPIO
+			 * provider. The "fixed" names are more often than not
+			 * generic and less informative than the names given in
+			 * device properties.
+			 */
+			if (names[i] && names[i][0])
+				gpio_desc[chip->base + i].name = names[i];
+		}
 
 		free(names);
 	}
-- 
2.39.2



