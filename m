Delivery-date: Wed, 21 Feb 2024 15:28:47 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rcnaY-00HKrW-1V
	for lore@lore.pengutronix.de;
	Wed, 21 Feb 2024 15:28:47 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rcnaX-0005tn-UV
	for lore@pengutronix.de; Wed, 21 Feb 2024 15:28:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=rt9D50XWYhxbZBPjq2HFdMseH7sIi9t65fRKLYDZXpQ=; b=mWDv98BE05CLhPxZpJrrHzvBDa
	qoQXcelTQt83egfXnGQ1joB5MJaGYlUU4M5EH4ZfmNjPBRHhfB/S+JpocQG0f6u5XRgWqLyOv+cke
	KLLMeqYWDNS2QQ5RuYRhxTfio+t29hTaVjOB48PJBgrDF3eLuAQscPZtNBNNaeooQyRnN3lEqjw6G
	mZtv1SQmducRPl57zJr0bUysM5GXMJ3wuGGWtNbhQCo70YW7aHpQUCWF+vXOQwWSrl0Fx7CJ+QZlA
	2ekKBev50jZM4KFnSJZtB3ilp1C5Esh9hmzZCZYFb32PvEr46SuMwXXCgia/Y3Vx2uNwLhbcyKQnu
	lKojOXiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcnZw-00000001Gpk-1stI;
	Wed, 21 Feb 2024 14:28:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcnZs-00000001Gnb-2Ks9
	for barebox@lists.infradead.org;
	Wed, 21 Feb 2024 14:28:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rcnZp-0005by-UD; Wed, 21 Feb 2024 15:28:01 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rcnZp-0023cP-Hn; Wed, 21 Feb 2024 15:28:01 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rcnZp-008kpE-1O;
	Wed, 21 Feb 2024 15:28:01 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 21 Feb 2024 15:27:56 +0100
Message-Id: <20240221142800.1958810-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240221_062804_661491_4F56B151 
X-CRM114-Status: UNSURE (   8.63  )
X-CRM114-Notice: Please train this message.
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 0/4] make I2C GPIO expander provided buttons work
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The TQMa6UL board uses the gpio-keys driver with GPIOs provided by a
PCA9554 I2C GPIO expander. This currently doesn't work as the GPIOs
are read in a poller during an ongoing I2C transfer on the same bus.

This series fixes that by adding a slice to struct gpio_chip and
checking its availability before using it.

Sascha Hauer (4):
  gpio: add slice support
  gpio: pca953x: depend on i2c slice
  input: gpio_keys: limit poll rate
  input: gpio_keys: only use gpios in poller when not in use

 drivers/gpio/gpio-pca953x.c |  2 ++
 drivers/gpio/gpiolib.c      | 11 +++++++++++
 drivers/input/gpio_keys.c   | 27 +++++++++++++++------------
 include/gpio.h              | 15 +++++++++++++++
 4 files changed, 43 insertions(+), 12 deletions(-)

-- 
2.39.2



