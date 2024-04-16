Delivery-date: Tue, 16 Apr 2024 12:12:00 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rwfnE-003CZf-1I
	for lore@lore.pengutronix.de;
	Tue, 16 Apr 2024 12:12:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rwfnD-0002Ia-Md
	for lore@pengutronix.de; Tue, 16 Apr 2024 12:12:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kZ3/kBg3hpmzeHtha0FXXdPfdPmoN5Xyw8BqDlI5uUw=; b=xgUg07ISQi//aMfpxThHhiN8as
	cRxKthNzLsgPCVPO3Vd980R4IhtZ5wIEndbeF1QoYmXScBzahe1Nps4b19csX1ifYHwu0MTsJTbCW
	IuXTEssvsnOEW107fxKtk86Jw6EKzST4YZQgVUy372eW6gXKbjUIqmDHysM0dvq1Olg0CxoYkssHn
	b8ytY0wsonFOZ84c8f0yrj7epgxlaJ5+lukn+YbaFDYyeVJwv24ZLHutA6A9BW9UjIwa9kiifsd1d
	LZoTqximyP+JPUys398r8FW6qEXKiS17wl43lNxzlWpled4hwtOw0buXknjHUFDDKSCWjMMDEh5lz
	6aEDguSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwfml-0000000BjT9-140g;
	Tue, 16 Apr 2024 10:11:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwfmh-0000000BjRy-332o
	for barebox@lists.infradead.org;
	Tue, 16 Apr 2024 10:11:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rwfmg-0001eL-GM; Tue, 16 Apr 2024 12:11:26 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rwfmg-00CahO-3f; Tue, 16 Apr 2024 12:11:26 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rwfmg-009Je7-0A;
	Tue, 16 Apr 2024 12:11:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240415053600.370622-1-a.fatoum@pengutronix.de>
References: <20240415053600.370622-1-a.fatoum@pengutronix.de>
Message-Id: <171326228605.2220225.2569070210606974472.b4-ty@pengutronix.de>
Date: Tue, 16 Apr 2024 12:11:26 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240416_031127_852121_238B9287 
X-CRM114-Status: UNSURE (   9.64  )
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
X-Spam-Status: No, score=-6.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/7] PWM: rockchip: add driver support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 15 Apr 2024 07:35:53 +0200, Ahmad Fatoum wrote:
> This series aligns the barebox PWM framework more with the current Linux
> state in v6.8 and then ports over the Rockchip PWM driver.
> 
> This has been tested on the RK3566 controlling backlight and PWM LEDs.
> 
> Ahmad Fatoum (7):
>   PWM: core: check that struct pwm_chip::devname is set
>   PWM: core: add struct pwm_chip::dev
>   PWM: core: adopt Linux prototype for struct pwm_ops::apply
>   PWM: align struct pwm_state member names with Linux
>   PWM: core: add definition for PWM_POLARITY_INVERSED
>   PWM: rockchip: add driver support
>   ARM: dts: rk356x: add aliases for PWM controllers
> 
> [...]

Applied, thanks!

[1/7] PWM: core: check that struct pwm_chip::devname is set
      https://git.pengutronix.de/cgit/barebox/commit/?id=9c2ce1113752 (link may not be stable)
[2/7] PWM: core: add struct pwm_chip::dev
      https://git.pengutronix.de/cgit/barebox/commit/?id=66cc09c044ab (link may not be stable)
[3/7] PWM: core: adopt Linux prototype for struct pwm_ops::apply
      https://git.pengutronix.de/cgit/barebox/commit/?id=29e00152bb73 (link may not be stable)
[4/7] PWM: align struct pwm_state member names with Linux
      https://git.pengutronix.de/cgit/barebox/commit/?id=c5ae8eb5ef72 (link may not be stable)
[5/7] PWM: core: add definition for PWM_POLARITY_INVERSED
      https://git.pengutronix.de/cgit/barebox/commit/?id=32a64b0e2cf7 (link may not be stable)
[6/7] PWM: rockchip: add driver support
      https://git.pengutronix.de/cgit/barebox/commit/?id=b96d3bccc710 (link may not be stable)
[7/7] ARM: dts: rk356x: add aliases for PWM controllers
      https://git.pengutronix.de/cgit/barebox/commit/?id=a77bd919a9e0 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



