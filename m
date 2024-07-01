Delivery-date: Mon, 01 Jul 2024 09:32:57 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sOBWz-000QR6-2H
	for lore@lore.pengutronix.de;
	Mon, 01 Jul 2024 09:32:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sOBWz-0007Hm-5M
	for lore@pengutronix.de; Mon, 01 Jul 2024 09:32:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=RvK3x/3gLDwsN8tyr4IUW+/bHK2BXByVJI4F3cW81t0=; b=FzVJSBEhjWKPmYYQ67gvVBDDm2
	Q6nKG3ftuhNsbG7GjdZQ5U7eOFUERz3UM73PKN8437PxKR2dI0m6cgwKMvuDRNWde5l92omS2SOag
	8fmJsChvcMR/xmlzkeOFTW9y505rvbnqO+x73mIDZdJFeE1W/V6IPLSzM9f78xJwNMOE/xtbHVzjT
	kmNKZJsq1DMt0KJ6FqqnTLh0EttcCJPMWlkVSjpmcAjgrjEchCC0WpqrHGVvY9Tnu9sdHFqtfORJP
	FDqKJvDF4qLsZ3Dt3KULFDCgyPCTsNgUiJger722fwerelrxdhNnjG819hLV4iVoCnRsbijNpRHVp
	T9p6kVCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOBWV-000000022l6-0XjO;
	Mon, 01 Jul 2024 07:32:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOBWR-000000022iZ-0uBh
	for barebox@lists.infradead.org;
	Mon, 01 Jul 2024 07:32:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sOBWQ-0006vZ-0Z
	for barebox@lists.infradead.org; Mon, 01 Jul 2024 09:32:22 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sOBWP-006Jj8-KR
	for barebox@lists.infradead.org; Mon, 01 Jul 2024 09:32:21 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sOBWP-000hos-1k
	for barebox@lists.infradead.org;
	Mon, 01 Jul 2024 09:32:21 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon,  1 Jul 2024 09:32:13 +0200
Message-Id: <20240701073220.165946-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240701_003223_276872_CFB3664F 
X-CRM114-Status: UNSURE (   8.77  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/7] pinctrl: rockchip: support &pcfg_input/output
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The Rockchip pinctrl binding can not only mux pins as GPIOs and
configure the bias, but also configure the direction and whether it's
high/low for outputs and schmitt trigger for inputs.

This is used in some device trees to enable peripherals as a finer
grained gpio-hog.

This series adds that support into barebox. It expects deep probe to be
enabled for the board, otherwise a warning is printed when the GPIO
device wasn't available at pinctrl state selection time.

Ahmad Fatoum (7):
  pinctrl: import <linux/pinctrl/pinconf-generic.h> header
  pinctrl: rockchip: make use of pinconf-generic.h
  pinctrl: rockchip: use of_property_read_bool()
  pinctrl: rockchip: add support for configuring schmitt trigger
  pinctrl: rockchip: add support for bias-pull-pin-default
  gpiolib: implement of_gpio_get_chip_by_alias
  pinctrl: rockchip: add support for configuring GPIO direction

 drivers/gpio/gpiolib.c                  |  19 +++
 drivers/pinctrl/pinctrl-rockchip.c      | 140 +++++++++++++++----
 include/gpio.h                          |   6 +
 include/linux/pinctrl/pinconf-generic.h | 170 ++++++++++++++++++++++++
 4 files changed, 308 insertions(+), 27 deletions(-)
 create mode 100644 include/linux/pinctrl/pinconf-generic.h

-- 
2.39.2



