Delivery-date: Mon, 01 Jul 2024 11:46:02 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sODbm-000Shy-0Y
	for lore@lore.pengutronix.de;
	Mon, 01 Jul 2024 11:46:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sODbl-0003fb-IY
	for lore@pengutronix.de; Mon, 01 Jul 2024 11:46:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Vt4xIFkxY3me8y7VDgvui2418l+0ZyBHmqGoahWNW3g=; b=kDEsE4L1UQ+wCNw5vqLWrVDrou
	qNK4tgT+FsnjOz5K1vFSoDVQDQ52VM/sun+L4wBmN/Km1U/fnvlyTJTXmRXIaYMk88Iazen7zLzcS
	reRYGbz6MI6kf47C0Z9/g/RyQ/W2Qp2YCxLjnTxXdFDrOaiLByHQ4XQ0bAi7MrNDwlYJTtQ/mctga
	LtHO6//4nEJ4o0hgo5IXvpcXzhVgQ1GRP3l9QVpysjFdQgxYf4b8rgjpa+01Dx6siQLPlwk3izfIG
	mLCU84jQ+DiP3jIDyYkpXHeBfxTvEWGEqDfkCfJSx4eY6DKLTCX7WuzcMxzKRdx5CO/81YS+kP4ni
	C+ko+w3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sODbI-00000002UPG-0nCZ;
	Mon, 01 Jul 2024 09:45:32 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sODbF-00000002UOn-0DHT
	for barebox@lists.infradead.org;
	Mon, 01 Jul 2024 09:45:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sODbD-0003bN-FV; Mon, 01 Jul 2024 11:45:27 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sODbD-006LEp-2s; Mon, 01 Jul 2024 11:45:27 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sODbD-00Ad2o-05;
	Mon, 01 Jul 2024 11:45:27 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240701073220.165946-1-a.fatoum@pengutronix.de>
References: <20240701073220.165946-1-a.fatoum@pengutronix.de>
Message-Id: <171982712702.2533279.2518431798852173976.b4-ty@pengutronix.de>
Date: Mon, 01 Jul 2024 11:45:27 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240701_024529_134503_56097496 
X-CRM114-Status: UNSURE (   8.08  )
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
Subject: Re: [PATCH 0/7] pinctrl: rockchip: support &pcfg_input/output
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 01 Jul 2024 09:32:13 +0200, Ahmad Fatoum wrote:
> The Rockchip pinctrl binding can not only mux pins as GPIOs and
> configure the bias, but also configure the direction and whether it's
> high/low for outputs and schmitt trigger for inputs.
> 
> This is used in some device trees to enable peripherals as a finer
> grained gpio-hog.
> 
> [...]

Applied, thanks!

[1/7] pinctrl: import <linux/pinctrl/pinconf-generic.h> header
      https://git.pengutronix.de/cgit/barebox/commit/?id=e6187ed1a19b (link may not be stable)
[2/7] pinctrl: rockchip: make use of pinconf-generic.h
      https://git.pengutronix.de/cgit/barebox/commit/?id=eb792c5846bd (link may not be stable)
[3/7] pinctrl: rockchip: use of_property_read_bool()
      https://git.pengutronix.de/cgit/barebox/commit/?id=ba588f2f2fdf (link may not be stable)
[4/7] pinctrl: rockchip: add support for configuring schmitt trigger
      https://git.pengutronix.de/cgit/barebox/commit/?id=73b4a7b3d3c5 (link may not be stable)
[5/7] pinctrl: rockchip: add support for bias-pull-pin-default
      https://git.pengutronix.de/cgit/barebox/commit/?id=a56a87ab81ab (link may not be stable)
[6/7] gpiolib: implement of_gpio_get_chip_by_alias
      https://git.pengutronix.de/cgit/barebox/commit/?id=c57a040ac78d (link may not be stable)
[7/7] pinctrl: rockchip: add support for configuring GPIO direction
      https://git.pengutronix.de/cgit/barebox/commit/?id=af7c5c004a5d (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



