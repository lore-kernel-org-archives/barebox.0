Delivery-date: Wed, 13 Aug 2025 07:29:51 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1um43a-0004kp-0u
	for lore@lore.pengutronix.de;
	Wed, 13 Aug 2025 07:29:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1um43Y-0005XR-SY
	for lore@pengutronix.de; Wed, 13 Aug 2025 07:29:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6oP07TOT+17wE8FA37CM6a4LF5lYWxy8WmvwXGaI1vw=; b=SKkspN2j/Cq/cVe1FYVENtIgQ3
	NLfPrEHYz20BbeWYV/ZokYxYrDSpldLPpU6SITWXiwgBHwdf2snvI3anZtdaU6Pp05K0eaPQjX9ii
	0Lt5sfWEON+BaZQDcZI9UQ9iI1Lj4Z6fDC5r+BtZhmEIRCPwHX5+qiELyQv/vFYhe2GaWkC0ZeDx2
	HL+uRris4PENumdyQKLnt739IjVGB93tcop+khYsc/tr5tFFNVr81Ld9Nj71oX+M9a3PqiUngfDt4
	Y2Vc8uJzbdTHNfuPdZ/vxr2NYAo0xJc1fbUXlFbPIbSmsHhkWZ5+F3lloTmRiINnpiXlCy6nexG1X
	piLXBoiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1um42p-0000000CedR-0Q1t;
	Wed, 13 Aug 2025 05:29:03 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1um42l-0000000Cecn-418C
	for barebox@lists.infradead.org;
	Wed, 13 Aug 2025 05:29:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1um42i-0005S3-GW; Wed, 13 Aug 2025 07:28:56 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1um42i-0002XV-0h;
	Wed, 13 Aug 2025 07:28:56 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1um42i-00EQkX-0W;
	Wed, 13 Aug 2025 07:28:56 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, David Jander <david@protonic.nl>
In-Reply-To: <20250811064026.753776-1-david@protonic.nl>
References: <20250811064026.753776-1-david@protonic.nl>
Message-Id: <175506293615.3439396.13253783696389984645.b4-ty@pengutronix.de>
Date: Wed, 13 Aug 2025 07:28:56 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250812_222900_002903_768B0514 
X-CRM114-Status: UNSURE (   9.08  )
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
Subject: Re: [PATCH 0/8] Add Rockchip RK3576 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 11 Aug 2025 08:40:18 +0200, David Jander wrote:
> This set of patches adds basic support for Rockchip RK3576 SoCs.
> Peripheral support is added for aiodev (SARADC) and GPIO.
> 
> David Jander (8):
>   clk: rockchip: clk-pll.c: Fix macro name confusion
>   clk: rockchip: Introduce rockchip_grf_type enum from kernel driver
>   ARM: Initial support for Rockchip RK3576
>   arm: dts: Add barebox specific RK3576.dtsi
>   aiodev: rockchip_saradc.c: Add support for RK3576
>   gpio: gpio-rockchip.c: Add support for GPIO_TYPE_V2_2
>   arm: dts: rk3576.dtsi: Add gpio aliases
>   phy: phy-rockchip-inno-usb2.c: Fix crash if phyclk isn't found
> 
> [...]

Applied, thanks!

[1/8] clk: rockchip: clk-pll.c: Fix macro name confusion
      https://git.pengutronix.de/cgit/barebox/commit/?id=6890455f539d (link may not be stable)
[2/8] clk: rockchip: Introduce rockchip_grf_type enum from kernel driver
      https://git.pengutronix.de/cgit/barebox/commit/?id=1c5e15007526 (link may not be stable)
[3/8] ARM: Initial support for Rockchip RK3576
      https://git.pengutronix.de/cgit/barebox/commit/?id=81b2c56c7e9d (link may not be stable)
[4/8] arm: dts: Add barebox specific RK3576.dtsi
      https://git.pengutronix.de/cgit/barebox/commit/?id=9360ce1f212d (link may not be stable)
[5/8] aiodev: rockchip_saradc.c: Add support for RK3576
      https://git.pengutronix.de/cgit/barebox/commit/?id=73cf74c81619 (link may not be stable)
[6/8] gpio: gpio-rockchip.c: Add support for GPIO_TYPE_V2_2
      https://git.pengutronix.de/cgit/barebox/commit/?id=319857a87b56 (link may not be stable)
[7/8] arm: dts: rk3576.dtsi: Add gpio aliases
      https://git.pengutronix.de/cgit/barebox/commit/?id=a53bd9e76548 (link may not be stable)
[8/8] phy: phy-rockchip-inno-usb2.c: Fix crash if phyclk isn't found
      https://git.pengutronix.de/cgit/barebox/commit/?id=22cf8296b5b0 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



