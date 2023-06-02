Delivery-date: Fri, 02 Jun 2023 09:51:02 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4zYt-0070tl-Pz
	for lore@lore.pengutronix.de; Fri, 02 Jun 2023 09:51:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4zYr-0000uY-Ad
	for lore@pengutronix.de; Fri, 02 Jun 2023 09:51:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iByfQl9vAPoC+tOWtMZtoj2uO674MajAL9yVOy/Z4Qg=; b=DrAcrEaUz6CT4MIzAIFrsoQU5G
	8BOGjte4UHapLRwifg3GiXGy6sgqfZ2dawwzPr/tQXbX+oXiBwD29CUJVChGZEnhv60qSUKweHO0L
	Zf2ZjxpejAB6nsh+A7am6g1UXJyG6f3g+nbZq1kWdHbNeFIzU8Oz7LDqV1F7KaQaB6IrDGZJx0X+A
	4Kd2OCvMEjIFaOs8Y1hBMIB0xbtM53E/eFpjZnlpGDCcuGMKzDHGwckrgRpCZlBG6EL2ktTONLMps
	VSfE30hAFIlf/jJehBeT/I/ITtwVi7Nm+WhSGP+LluUaHns0H/uD3lbmXH3Z54E47UzneOfiDooe9
	9BQvpjsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q4zXd-0063fT-2H;
	Fri, 02 Jun 2023 07:49:45 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4zXX-0063an-0E
	for barebox@lists.infradead.org;
	Fri, 02 Jun 2023 07:49:42 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1q4zXT-00006c-GV; Fri, 02 Jun 2023 09:49:35 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@kalray.eu>
Date: Fri,  2 Jun 2023 09:49:14 +0200
Message-Id: <20230602074921.2687669-4-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230602074921.2687669-1-m.felsch@pengutronix.de>
References: <20230602074921.2687669-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230602_004939_164798_6C6881A8 
X-CRM114-Status: GOOD (  11.31  )
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
Subject: [PATCH 03/10] gpiolib: rename local gpio-line-names variable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This is just a cosmetic commit to align the code more with the Linux
kernel.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 drivers/gpio/gpiolib.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpio/gpiolib.c b/drivers/gpio/gpiolib.c
index 0df43c9f8f..eb2bba042e 100644
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



