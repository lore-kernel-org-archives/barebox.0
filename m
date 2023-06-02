Delivery-date: Fri, 02 Jun 2023 09:51:00 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4zYs-0070se-68
	for lore@lore.pengutronix.de; Fri, 02 Jun 2023 09:51:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4zYp-0000sy-Lr
	for lore@pengutronix.de; Fri, 02 Jun 2023 09:51:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=oi/jxLjcK+L9N3GMAsEXfWVA2rV1R8OwQeKydoErB9M=; b=XUD39YtJwM17+BN+yiLEKOvVVG
	D+9XnYAPFrC2BPVEIlke49KoJVTnvMxtYUEswHNeuOsKgo9KmdeuzBxYT5B8eJp6gpRgiMU5IHFX6
	JWRfUmCJMazuVrPFmlTKEBQwTKlbzU2z4PQOoeQHWJPFK71G7hPAIriFMvcYX6D70O/SDEcPCRgll
	fS8C7umPvRkwzmjbuULIr9ZbvKu9ws6iR6zROdWRlz+0i7A2amSEKO+vVBN8+GCp28HKHEqVwPo62
	i7HH8qN6GiMviXibc+VdM2ggsl5vJd7hkb+FYO07ZNNj3P0RBB3meIJZE1Owd1RPFaDOnz/QEfcDu
	gS2diKPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q4zXb-0063eY-2P;
	Fri, 02 Jun 2023 07:49:43 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4zXX-0063ao-0E
	for barebox@lists.infradead.org;
	Fri, 02 Jun 2023 07:49:40 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1q4zXT-00006c-N6; Fri, 02 Jun 2023 09:49:35 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@kalray.eu>
Date: Fri,  2 Jun 2023 09:49:15 +0200
Message-Id: <20230602074921.2687669-5-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230602074921.2687669-1-m.felsch@pengutronix.de>
References: <20230602074921.2687669-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230602_004939_172931_53438D7B 
X-CRM114-Status: GOOD (  14.11  )
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
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 04/10] gpiolib: fix gpio name memory leak
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We never freed the name allocated by xstrdup(). Fix this by use the
const devicetree property value. While on it check if the name is valid
and add the comment to align the code with the kernel.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 drivers/gpio/gpiolib.c | 14 +++++++++++---
 1 file changed, 11 insertions(+), 3 deletions(-)

diff --git a/drivers/gpio/gpiolib.c b/drivers/gpio/gpiolib.c
index eb2bba042e..f05e2ac735 100644
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



