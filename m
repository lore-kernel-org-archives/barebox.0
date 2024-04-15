Delivery-date: Mon, 15 Apr 2024 07:36:33 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rwF17-001ZOn-2D
	for lore@lore.pengutronix.de;
	Mon, 15 Apr 2024 07:36:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rwF17-0006Xi-26
	for lore@pengutronix.de; Mon, 15 Apr 2024 07:36:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ywneiIfP/eEYMVV6BIxHLkvN5mTtB0RqRPmx2utQcD4=; b=MtY7SvZscc+vtLexk3aury7zH5
	gUZyluxI9lshOPSascoff6k0NFnCXGugkL4SLT/ssORWM874Ugu96p+v1MZw97tVpvxrFoaiWRPPs
	3B9AufFE3ijypPEQlYbeqx1cnDoj3CqD+i0UZrf5fcoKE6rcubPswBVs9ffccU1fa51/guW1Z+BWU
	OsIqV4kqe5D4HFTmbeV8DYKRVowlXweJXvH3UIr+ktuXjrAxwv8G+V6r8IP9MFuLvxJkcyJwYubM5
	CQlgphDhoUesmeeUoHtYGwmq0suXjJ88p2GAagAzb9vYlCfv3de2rUuNsE59ho1HQ7rSykP5KRekB
	2ckTovFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwF0h-000000071Nh-1i6D;
	Mon, 15 Apr 2024 05:36:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwF0d-000000071LM-32DF
	for barebox@lists.infradead.org;
	Mon, 15 Apr 2024 05:36:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rwF0c-0005pe-JF
	for barebox@lists.infradead.org; Mon, 15 Apr 2024 07:36:02 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rwF0c-00CMn9-6I
	for barebox@lists.infradead.org; Mon, 15 Apr 2024 07:36:02 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rwF0c-001YQH-0L
	for barebox@lists.infradead.org;
	Mon, 15 Apr 2024 07:36:02 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon, 15 Apr 2024 07:35:53 +0200
Message-Id: <20240415053600.370622-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240414_223603_785731_E351919E 
X-CRM114-Status: GOOD (  10.49  )
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
X-Spam-Status: No, score=-6.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/7] PWM: rockchip: add driver support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This series aligns the barebox PWM framework more with the current Linux
state in v6.8 and then ports over the Rockchip PWM driver.

This has been tested on the RK3566 controlling backlight and PWM LEDs.

Ahmad Fatoum (7):
  PWM: core: check that struct pwm_chip::devname is set
  PWM: core: add struct pwm_chip::dev
  PWM: core: adopt Linux prototype for struct pwm_ops::apply
  PWM: align struct pwm_state member names with Linux
  PWM: core: add definition for PWM_POLARITY_INVERSED
  PWM: rockchip: add driver support
  ARM: dts: rk356x: add aliases for PWM controllers

 arch/arm/dts/rk356x.dtsi   |  16 ++
 commands/pwm.c             |  32 ++--
 drivers/led/led-pwm.c      |   8 +-
 drivers/pwm/Kconfig        |   7 +
 drivers/pwm/Makefile       |   1 +
 drivers/pwm/core.c         |  45 ++---
 drivers/pwm/pwm-atmel.c    |  21 ++-
 drivers/pwm/pwm-imx.c      |  17 +-
 drivers/pwm/pwm-mxs.c      |  19 +-
 drivers/pwm/pwm-rockchip.c | 348 +++++++++++++++++++++++++++++++++++++
 drivers/pwm/pwm-stm32.c    |  15 +-
 drivers/pwm/pxa_pwm.c      |  19 +-
 drivers/sound/pwm-beeper.c |   6 +-
 include/pwm.h              |  39 +++--
 14 files changed, 499 insertions(+), 94 deletions(-)
 create mode 100644 drivers/pwm/pwm-rockchip.c

-- 
2.39.2



