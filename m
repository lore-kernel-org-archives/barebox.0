Delivery-date: Tue, 24 Feb 2026 21:18:35 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuyra-005I9N-2y
	for lore@lore.pengutronix.de;
	Tue, 24 Feb 2026 21:18:35 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuyra-0004Nz-Vw
	for lore@pengutronix.de; Tue, 24 Feb 2026 21:18:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VgmOaONG19l6smaCZ6mCaG2xSzeyHAYlIYfgdcD8t+U=; b=hvEt5YWjoP5mQZHHuc17YPL8ku
	RnFtG0kA50PPrFoIbV+ZHJPCw7OSdG+l5bwjFe2xJPen4emkiA4BJDD9azJjX9T1qcDOXZI6UDKbE
	7rElr9ldiwB4ceVYpDZoYgMVDAagwr4JuxENKWw3YFJPxF7SrpWMsfN0VAEXdtbhLD3XT4NZQYyrd
	ISFk7Wc6GgQ592C3ZP0UAJCchIYSJaJZyj97s2Fqvt/BU/DUozlMJwGfCVzAFSy4YVkyLO9oWiSQ2
	6MyQWSkobCvew6NJ/oCajbT+1nDfVADRGlncFY8RVFRzBZKiQXytcLyB26Smom+nBO7CmkjlNXriL
	tPo7UAXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuyr0-00000002kMj-269t;
	Tue, 24 Feb 2026 20:17:58 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuyqy-00000002kMF-2D4I
	for barebox@lists.infradead.org;
	Tue, 24 Feb 2026 20:17:57 +0000
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-4836f363ad2so65020705e9.1
        for <barebox@lists.infradead.org>; Tue, 24 Feb 2026 12:17:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771964274; x=1772569074; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:to:from:date:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VgmOaONG19l6smaCZ6mCaG2xSzeyHAYlIYfgdcD8t+U=;
        b=huxnI+vPP2DKoQLfLe5TbeGiq58CoQWW49D3Mguv0rCIyjLmvNR2+2wXpqCif6inu2
         x0gWLe+PtyLFvmthzNG9OqX70Qc+y086patP7LbTMqS6DjQSptHkUeNwNDmbliVRUAlA
         gP/sMVatLRhOk+29kgve097KJwPtqYysWrW+USrQR/97KUNXYOzaEeTEkQTKTSAYHb+l
         175sFY9vX+K5xOFcu5w1/vWxi5zE/VOJV9gqe7yOXCFaCwR+h7hctzTIRQ/k7LojiSSo
         UXdylVgbrSQeS67tFwKHw8nJV46Y3EvZ1Cdh2bMWK7yct8lIO1/zXKBNQOKSpTCQ7yl+
         zH1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771964274; x=1772569074;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VgmOaONG19l6smaCZ6mCaG2xSzeyHAYlIYfgdcD8t+U=;
        b=SnX+vddv8Dw6AHtyLEmFqUTQSwXfFI87Ut3Y5TQia6IdbpTKMDu8r9jPP3XVH4yNcN
         o0MTKKWjdPqWbWypNGh2Mrt+gfpTqXSgvZLBGcoMSdfxN376PxBuzxJ74nUPa55h6Y42
         ljS4fI4ybLbk0kC0fJy88SLQpvZ5vofqC8Ovc6J2J1+ded21J4eQ5ADwcMj+bA8QiquB
         yUzNjCpnZOWJDewyIiZJThzdPhtZ5UCxmK4J5zR0/2g2fIH/m0OoHEEmvzm7aN5Zn9G+
         yawER0XigTvTlbby+30cR8fe4R/Dd845eZqnyzkqvDeMW1DWBo2l0+5/irGxuV1fRFlh
         cX1A==
X-Forwarded-Encrypted: i=1; AJvYcCWTHGbg1D+LdRWiQmT5tb2WMq5/RIjzKmcOcoCmNHO3w5pEQq22ze6yplFC28MOndr5VIBOk2cr@lists.infradead.org
X-Gm-Message-State: AOJu0YyqlT9VAF0eyJ24W6MexBlZulfWSew7ERwXqKqStUCDOcUBt3HL
	uXtoj9C+a/U/XDuw2amz3anU/cb+++Do9mrmJtRYFSl/0FdlkLtC5elwAJ3Vuw==
X-Gm-Gg: AZuq6aL6fXp/dFB+H9Hsp0llLkDIuscy9M+EYQoc46cRU1/OogZ2uaxtiJQM4LLlqMP
	IwZrWwJOvqmjFlUC68f3PAYo0Fl+mch8C67VjsEe8UgOVvRyAp2/iZbpfCp+RsocOv2SUsmYMlJ
	3kepMGqutqCvIe3otNbhqotcfilOm091Ush0l8ILD6QRfwEKeHU07/dmU7Diqa4RChnaULbYPVk
	kIMq/mInZfhIfsFFyJiePJnxJtdokOYEx8+hUXHkYyITVUSSQh0anNm1DWChOdUPziJBkrL84Bq
	dBzcyvl+wLtXzbH+PpT4aLTb6eOxJQuK45uawvS/mMH628J+/vBHMuSUt2eBbn7fmNEpB03H5kG
	PU93FipqyQhRyRac5ekb+Jm1GdSvQSYqhq6SkPXbfF4c5/+dyAfMTGxFerhT+iUR+G+GpnhrBMq
	N7WXBnzKxFwF1ER9MzcqQPnj9wjENicNqBVemepMyFOckDrPBvcQz6wCfTzB+aD9obsWVayawKo
	f+W6TBCA5IgrelBvoIj/fzTyiyWkMn4gMmVtrfI6mXXLTwjPeMAh+0MsGEqYnh20tQQ/VoXw8wa
	J6oB0ITb49AZVZZvDi5c3y5J9O2L/eMnYn+c9y6BzSWVk91/Xg==
X-Received: by 2002:a05:600c:8218:b0:483:2c98:4368 with SMTP id 5b1f17b1804b1-483a95e20f5mr259284825e9.18.1771964274101;
        Tue, 24 Feb 2026 12:17:54 -0800 (PST)
Received: from smalinux (2a02-8388-08be-f800-6de3-0719-dd2e-3049.cable.dynamic.v6.surfer.at. [2a02:8388:8be:f800:6de3:719:dd2e:3049])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483beb374f6sm3204785e9.5.2026.02.24.12.17.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Feb 2026 12:17:53 -0800 (PST)
Date: Tue, 24 Feb 2026 21:17:52 +0100
From: Sohaib Mohamed <sohaib.amhmd@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
	BAREBOX <barebox@lists.infradead.org>
Message-ID: <b3gffgocrcdd7azuk2yddrqgqgbyfdxobhf324jdd5hopsb4rr@ycvlbpccpmxe>
References: <20260130-barebox-kickpi-v2-0-d27cf94a39b6@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260130-barebox-kickpi-v2-0-d27cf94a39b6@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260224_121756_590663_1FA12B7F 
X-CRM114-Status: GOOD (  22.07  )
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
X-Spam-Status: No, score=-1.9 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FORGED_GMAIL_RCVD,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_NONE autolearn=no autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 00/14] ARM: rockchip: Add initial RK3562 SoC support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Fri, Jan 30, 2026 at 06:16:52AM +0100, Sohaib Mohamed wrote:
> All essential changes and additions required to boot the RK3562.
> Includes board support for the RK3562-EVB2 and KickPi K3.
>
> The GMAC driver is still missing from the upstream Linux device tree
> and can be added in a future update. The rest is straightforward port from
> the mainline Linux kernel.
>
> ---
> Changes in v2:
> - Remove unused header includes (globalvar.h and deep-probe.h) from board.c
> - Fix "serial0:1500000n8" (squashed into the original commit)
> - Link to v1: https://lore.barebox.org/r/20260116-barebox-kickpi-v1-0-eb253c439421@gmail.com/
> ---
>
> To: Sascha Hauer <s.hauer@pengutronix.de>
> To: open list:BAREBOX <barebox@lists.infradead.org>
> Signed-off-by: Sohaib Mohamed <sohaib.amhmd@gmail.com>
>
> ---
> Ahmad Fatoum (3):
>       clk: rockchip: add RK3562 clock and reset driver support
>       pinctrl: rockchip: sync driver with Linux
>       ARM: boards: Rockchip: add RK3562-EVB2 support
>
> Sohaib Mohamed (11):
>       ARM: rockchip: Add initial RK3562 SoC support
>       ARM: boards: Rockchip: Add device tree for kickpi k3 board
>       ARM: rockchip: Add RK3562 KickPi K3 board support
>       pmdomain: rockchip: Add RK3562 power domain support
>       aiodev: rockchip_saradc: Add RK3562 support
>       phy: rockchip-inno-usb2: Add support for RK3562 PHY
>       rockchip-rng: Add RK3562 support
>       mci: sdhci: rockchip-dwcmshc: Add RK3562 support
>       nvmem: rockchip-otp: Add RK3562 support
>       phy: rockchip: inno-dsidphy: Add RK3562 support
>       phy: rockchip: naneng-combphy: Add RK3562 support
>
>  arch/arm/boards/Makefile                           |    2 +
>  arch/arm/boards/rockchip-rk3562-evb2/.gitignore    |    1 +
>  arch/arm/boards/rockchip-rk3562-evb2/Makefile      |    4 +
>  arch/arm/boards/rockchip-rk3562-evb2/board.c       |   47 +
>  arch/arm/boards/rockchip-rk3562-evb2/lowlevel.c    |   23 +
>  .../boards/rockchip-rk3562-kickpi-k3/.gitignore    |    1 +
>  arch/arm/boards/rockchip-rk3562-kickpi-k3/Makefile |    4 +
>  arch/arm/boards/rockchip-rk3562-kickpi-k3/board.c  |   44 +
>  .../boards/rockchip-rk3562-kickpi-k3/lowlevel.c    |   23 +
>  arch/arm/configs/multi_v8_defconfig                |    2 +
>  arch/arm/configs/rockchip_v8_defconfig             |    2 +
>  arch/arm/dts/Makefile                              |    2 +
>  arch/arm/dts/rk3562-evb2-v10.dts                   |    9 +
>  arch/arm/dts/rk3562-kickpi-k3.dts                  |   10 +
>  arch/arm/dts/rk3562-kickpi-k3.dtsi                 |  452 ++++++++
>  arch/arm/dts/rk3562.dtsi                           |   40 +
>  arch/arm/mach-rockchip/Kconfig                     |   16 +
>  arch/arm/mach-rockchip/Makefile                    |    1 +
>  arch/arm/mach-rockchip/atf.c                       |   38 +
>  arch/arm/mach-rockchip/dmc.c                       |   33 +
>  arch/arm/mach-rockchip/rk3562.c                    |   20 +
>  arch/arm/mach-rockchip/rockchip.c                  |    4 +
>  common/Kconfig.debug_ll                            |    9 +
>  drivers/aiodev/rockchip_saradc.c                   |    7 +
>  drivers/clk/rockchip/Makefile                      |    1 +
>  drivers/clk/rockchip/clk-rk3562.c                  | 1098 ++++++++++++++++++++
>  drivers/clk/rockchip/clk.c                         |    2 +-
>  drivers/clk/rockchip/clk.h                         |  268 ++++-
>  drivers/clk/rockchip/rst-rk3562.c                  |  430 ++++++++
>  drivers/hw_random/rockchip-rng.c                   |    4 +
>  drivers/mci/rockchip-dwcmshc-sdhci.c               |    3 +
>  drivers/mfd/syscon.c                               |   18 +
>  drivers/nvmem/rockchip-otp.c                       |   89 ++
>  drivers/phy/rockchip/phy-rockchip-inno-dsidphy.c   |    3 +
>  drivers/phy/rockchip/phy-rockchip-inno-usb2.c      |   52 +-
>  drivers/phy/rockchip/phy-rockchip-naneng-combphy.c |  161 +++
>  drivers/pinctrl/pinctrl-rockchip.c                 |  768 +++++++++++++-
>  drivers/pinctrl/pinctrl-rockchip.h                 |   52 +-
>  drivers/pmdomain/rockchip/pm-domains.c             |   47 +
>  firmware/Makefile                                  |    2 +
>  images/Makefile.rockchip                           |    2 +
>  include/mach/rockchip/atf.h                        |    6 +
>  include/mach/rockchip/debug_ll.h                   |    6 +
>  include/mach/rockchip/dmc.h                        |    1 +
>  include/mach/rockchip/rk3562-regs.h                |   21 +
>  include/mach/rockchip/rockchip.h                   |   10 +
>  include/mfd/syscon.h                               |    8 +
>  47 files changed, 3797 insertions(+), 49 deletions(-)
> ---
> base-commit: 15ea9c02849d8e53c69078c88fa6df57dcce864e
> change-id: 20260130-barebox-kickpi-28d6466b6466
>
> Best regards,
> --
> Sohaib Mohamed <sohaib.amhmd@gmail.com>
>

Hi, just a gentle ping — are there any updates or additional changes I
should make at this point? Thanks.


