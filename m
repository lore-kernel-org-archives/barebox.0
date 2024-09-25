Delivery-date: Wed, 25 Sep 2024 16:10:30 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1stSir-002cU4-1T
	for lore@lore.pengutronix.de;
	Wed, 25 Sep 2024 16:10:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1stSir-0004eE-Sv
	for lore@pengutronix.de; Wed, 25 Sep 2024 16:10:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Content-Transfer-Encoding
	:Content-Type:MIME-Version:Message-Id:Date:Subject:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=qvX5yuBNCLJHtZv9YQHS/edvF6zrwR/iLpFSR/3iw9I=; b=1iwTQk7ofmBwRAkMtuZQlxLyoN
	0wQKyMLBeTppi+HoFBN4G61rJpg2TTRgP4goGyZi2/Vk0Ssimu3saXuXsSTFST4t97vMKaOj5SBcl
	1wn0X1X0RH3DKjHo6jiqLytO8vWOzxPCvVP4wkcwhp/i9P6r4vAvf1x5USMB8KP0vB46LuT3AwIEo
	nc29n9ySZ119WIzjYHCdizlxEJJCGkpotIKADsN0jJ+Q1CnzdejRNkgRY6IRJcyXTQnmaulOVZ7qz
	rBJ5jgavgNWLQQsE2O6vHgRxJclpp7CmqBsdQguTj4Ee8GKaG8K6VveV8Cd5FMZXOkrvx9UMRheIj
	6SILtfVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1stSiN-00000005Xxi-1isu;
	Wed, 25 Sep 2024 14:09:59 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1stSf6-00000005X9b-12yK
	for barebox@lists.infradead.org;
	Wed, 25 Sep 2024 14:06:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1stSf4-0003zY-Sw; Wed, 25 Sep 2024 16:06:34 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1stSf4-001Sse-Fs; Wed, 25 Sep 2024 16:06:34 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1stSf4-00DDhp-2q;
	Wed, 25 Sep 2024 16:06:34 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 25 Sep 2024 16:06:31 +0200
Message-Id: <20240925-spi-gpio-v1-0-47f6285b3bf1@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAOgY9GYC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIxMDSyNT3eKCTN30gsx8XZNUM9OkVMM08yRLAyWg8oKi1LTMCrBR0bG1tQD
 sFQmHWgAAAA==
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1727273194; l=790;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=OQYDPanjo0reTNO2uKKn2yMCx0kY5hWLZ7d+ymedO60=;
 b=D79PbRgsG7emXPb7F08PfA5ymccmqYjOeB6vkxmJfUYxRjcdjoM24yOX4e1c7smnc5OtFVDTx
 2cjUByOwIsfAtY2JnWMIxtYmS9zyZSzktGHp1EFIjvXsKD4xWIGAX/g
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240925_070636_341629_9E071AE5 
X-CRM114-Status: UNSURE (   8.20  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 0/3] spi-gpio updates
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Our spio-gpio driver currently only supports 8bit word width. This
series updates the driver to support arbitrary word widths up to 32bit.
Also we get rid of the deprecated GPIO binding that the driver uses.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
Sascha Hauer (3):
      spi: spi-gpio: actually delay in spidelay()
      spi: spi-gpio: support different word widths
      spi: spi-gpio: switch to new gpio binding

 arch/arm/dts/stm32mp151-mect1s.dts |  6 ++--
 drivers/spi/gpio_spi.c             | 69 +++++++++++++++++++++++++++++++-------
 2 files changed, 59 insertions(+), 16 deletions(-)
---
base-commit: 419ea9350aa083d4a2806a70132129a49a5ecf95
change-id: 20240925-spi-gpio-4e65be1f7b90

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



