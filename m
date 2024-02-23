Delivery-date: Fri, 23 Feb 2024 08:36:40 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rdQ6q-002diT-0P
	for lore@lore.pengutronix.de;
	Fri, 23 Feb 2024 08:36:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rdQ6o-0001MW-UP
	for lore@pengutronix.de; Fri, 23 Feb 2024 08:36:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zvnH2K4/AfzPub2fUD4gcRzWj9AVz+mLWD6muPTUeyg=; b=mwNbfdAuf/9yL6QhIwfviiuwdJ
	WlsD2pssNPZWZb0qIeegUB9WiFKf0nWnTFDfNA2XXis6frnfVDL1tRrOOVkjNtiwoVYg5sU2jbh0l
	8Qu79B/3zwqMKMQdYc90MYFU3+9kQ4+JQC7qoeoe8CSBBeIq8TGlKtPTvzCcYJAYk1X0pI+JTSpLP
	mCnwf4B2draOXXbFT7ofq5bFJZrWwR7VKsxqDFErwWUnFmZM5Zx2WJA9Uvy24uEcKLoOLGuwyepYW
	wXpeJ885soc+VJ59mCUA1z+I7K+xY/UpKXcNLEbJy8Ya96IooCgWpv2YTnVkX2zdcNmSoHUad7ef5
	/Znq9BXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdQ5i-00000008Jdx-0p2H;
	Fri, 23 Feb 2024 07:35:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdQ2t-00000008J6W-29Lj
	for barebox@lists.infradead.org;
	Fri, 23 Feb 2024 07:34:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rdQ2s-0000q5-Bl; Fri, 23 Feb 2024 08:32:34 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rdQ2r-002NfS-VA; Fri, 23 Feb 2024 08:32:33 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rdQ2r-001FH7-2u;
	Fri, 23 Feb 2024 08:32:33 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20240221142800.1958810-1-s.hauer@pengutronix.de>
References: <20240221142800.1958810-1-s.hauer@pengutronix.de>
Message-Id: <170867355389.296878.10227878309394509588.b4-ty@pengutronix.de>
Date: Fri, 23 Feb 2024 08:32:33 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240222_233245_603621_03D00BEE 
X-CRM114-Status: UNSURE (   9.37  )
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
Subject: Re: [PATCH 0/4] make I2C GPIO expander provided buttons work
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 21 Feb 2024 15:27:56 +0100, Sascha Hauer wrote:
> The TQMa6UL board uses the gpio-keys driver with GPIOs provided by a
> PCA9554 I2C GPIO expander. This currently doesn't work as the GPIOs
> are read in a poller during an ongoing I2C transfer on the same bus.
> 
> This series fixes that by adding a slice to struct gpio_chip and
> checking its availability before using it.
> 
> [...]

Applied, thanks!

[1/4] gpio: add slice support
      https://git.pengutronix.de/cgit/barebox/commit/?id=cb046503d2c2 (link may not be stable)
[2/4] gpio: pca953x: depend on i2c slice
      https://git.pengutronix.de/cgit/barebox/commit/?id=73b7973cee7d (link may not be stable)
[3/4] input: gpio_keys: limit poll rate
      https://git.pengutronix.de/cgit/barebox/commit/?id=ff5e5b69d643 (link may not be stable)
[4/4] input: gpio_keys: only use gpios in poller when not in use
      https://git.pengutronix.de/cgit/barebox/commit/?id=b01bba2f2bea (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



