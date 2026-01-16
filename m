Delivery-date: Fri, 16 Jan 2026 20:43:44 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgpjU-0024QQ-1x
	for lore@lore.pengutronix.de;
	Fri, 16 Jan 2026 20:43:44 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgpjQ-0001aZ-6D
	for lore@pengutronix.de; Fri, 16 Jan 2026 20:43:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Content-Transfer-Encoding
	:Content-Type:MIME-Version:Message-Id:Date:Subject:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=E+dura0dqrHoftDiqb9anhIKdJC99yuYRJ2UvHHnm9E=; b=m0Ky/9uwqIzOdTwHvoj8QB58T3
	UHTHlT02ipUU1aRQM5TnykYevxbl1s2rdqQnkwO6hrGykOs2LWtmJkTViAV9VX/SdfRBAJxgnVk1G
	+3AtzayOwXRaonuzSniECEYjOnmcuPVnTNXI11yKMgD5THhKN6gFb3N2b5vqItjRekX2X/m/V2YVg
	S74VImdzSefldFkNAo7fijdfp7egOEhI24y/GwP4T6aKmiv5fvhOObhaf6aaLX/bM2qkmNwVYQMpi
	SRZ3/lAYwsqqiup4CmdEoXiuZ25YTSYd4R4Tp1HiWYTGLyjfXDT7TC1dVtTlgWd+z5B6UO8Wo8rR4
	1s4Y9CqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgpid-0000000Ehjc-10D8;
	Fri, 16 Jan 2026 19:42:51 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgpia-0000000EhiA-0pok
	for barebox@lists.infradead.org;
	Fri, 16 Jan 2026 19:42:49 +0000
Received: by mail-ej1-x62c.google.com with SMTP id a640c23a62f3a-b876f3f603eso423743766b.0
        for <barebox@lists.infradead.org>; Fri, 16 Jan 2026 11:42:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768592565; x=1769197365; darn=lists.infradead.org;
        h=to:content-transfer-encoding:mime-version:message-id:date:subject
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=E+dura0dqrHoftDiqb9anhIKdJC99yuYRJ2UvHHnm9E=;
        b=B8s7z5p+1jnrU/ThB/mUITCtwYpExrK14hSgXf//+W050lo2sMQ6hGWp3PlsuRtQYj
         yI/nWbydEvLiAPYVGQBMnoQDg1KT2HSC39LKqErE8Tpb5DMeEiZ+Kt67X4Kw/aJJBh6d
         +ppeVhYzduS7kpWRPg70Pmy3FklpaDnmsij+BqHt8inUY/V3ntEUaALNxiehipyqOLaV
         nB/xHKsXd4AFUaYC1IzRDnk39P/7FC+hlyQzfkk/D6RLpuD1FVM8RNUS0oXCPs9rTVpH
         gMw8azidapFuGmP8wjN4RGFjIHY/NBARNmzhDbxMkaNInoq4f4LG+EQ33oIvtyYdXTV6
         URjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768592565; x=1769197365;
        h=to:content-transfer-encoding:mime-version:message-id:date:subject
         :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=E+dura0dqrHoftDiqb9anhIKdJC99yuYRJ2UvHHnm9E=;
        b=hDrEBF6/wfdHvyqle+ajjGrw9pqTt35cn+XZvf7gXxO2hg66BxqsL17/2VkISfFHH4
         KvL5yfdjRumGn8N/AaTd9ENvdeL93vnESms6O8hC6zuUkQjxEAKkmALHnz7RziVKSoe9
         hQbPU/NEYd7b7U+//Clvi7NZdyD69WqzFYYZ2JBvkJumW+B187/CrI0EdXOoCQlzcJyE
         BMiHhrUs1QbJUjpj0fAIDHIz8q4YTI+9E12x2oXrjswZcAXIPLSa8lMXGifpa5VmLPXS
         FS+bONIC0/t1MLe36aKVLdrkWO0nLZio+P20oACJKyRrH7XcuZFds2AAS9Q5FOMQzSgH
         PxPA==
X-Forwarded-Encrypted: i=1; AJvYcCXU6YRCwL+apTWym9yI2GK1wqVlx3aP7507cwB9R+M7VCTVt+t0BPf2ShduDqpLqntMqFYAXfDr@lists.infradead.org
X-Gm-Message-State: AOJu0YySHG+3dBDdaskFHorAOiWwn9ODCf5RLoeoZmbUCehxQpYtrdA9
	Y9eBLGG92Y+o9H+K5q0lnhlBtwEmc8SBD1skXdATGeid4efRXHSjahyJ
X-Gm-Gg: AY/fxX4tpY97SZ51ZPphXmvibuVJXyptpefhhR+It7xaYNJq/XjVDUzf+EXpV78vvAl
	D/WPvedeLbv0A5oZDpXh3lpAVxucYUt53tCVIlt/rfBqGk/rnvsKDWPBtBODaxpYh1068vySVBk
	VI/HiO/EWW4jZQ3ROyLDCCNB5WVloef2KRxK7HgtIJRt00Zh5iaEvwXqvhgyG6MggX3xOEv2ppP
	TEPl8w4Tti/93ZhZ04QVxic3yorEJz+vdWKfk+eHXjkQTQV+Toy2F7ZbbmPq1pfNkeIlbMC654v
	tuQyndp9IOTRT+9pPcl09BPSuim5UrHNljOiLSaNQkLuO8vLNswU2h7b20nYHDj4odzRuU2pFF6
	aSMK1FIfVTgD+K93Z0NVO4ThvPrDOJ+ojxMxqhF+7HppzLZsS/edbpWDdZYNjPumgzCqpMk696E
	1EF7+KDJQNgj5VEc8g9KbT89fqi5Z1NnLdCBD9ZRwJl/SUw/yU8TAyvSAO7XOt/aBgq1eHLc/aQ
	/GEngzfMZiDFeDPv9ZYm8ZvvDvuPRqwelqjdOnLnZFYn63QXWqdjH1cvrYI9JCcnS/WRVPBW0YO
	hZyAtG2OANDCfN2wAozpDgQHIEjpoc/9iZe8+GALDA==
X-Received: by 2002:a17:907:d0d:b0:b84:1fc7:9457 with SMTP id a640c23a62f3a-b87968d4039mr307068166b.8.1768592565308;
        Fri, 16 Jan 2026 11:42:45 -0800 (PST)
Received: from [127.0.1.1] (2a02-8388-08be-f800-f96f-90ee-b1eb-797e.cable.dynamic.v6.surfer.at. [2a02:8388:8be:f800:f96f:90ee:b1eb:797e])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b87959c9fb0sm328166266b.43.2026.01.16.11.42.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Jan 2026 11:42:44 -0800 (PST)
From: Sohaib Mohamed <sohaib.amhmd@gmail.com>
Date: Fri, 16 Jan 2026 20:40:34 +0100
Message-Id: <20260116-barebox-kickpi-v1-0-d11fbccd527a@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIADKUamkC/x3MQQqAIBBA0avErBvQyYS6SrRIm2oQLBQikO6et
 HyL/wtkTsIZxqZA4luynLFCtw34Y4k7o6zVQIqs0tqiWxK788EgPlyC7KjvvOkGQxpqdCXe5Pm
 H0/y+HzNNxVZgAAAA
X-Change-ID: 20260116-barebox-kickpi-eb253c439421
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 Ahmad Fatoum <a.fatoum@pengutronix.de>, 
 Sohaib Mohamed <sohaib.amhmd@gmail.com>, 
 BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768592564; l=4374;
 i=sohaib.amhmd@gmail.com; s=20251127; h=from:subject:message-id;
 bh=EUD1FdUuGeokHxJW6DD/58m17Rrbh7FVUJRRsJ3KgHM=;
 b=NLdUaPWN/ULTf3LkZfbiIETELV4ofTOtCgqPoXWkTtXs04JrwmZkz1XwF28aObghZo+KPERKT
 rEqjEI1uFDpBQU19kzHvjuhrseR3r0oFxsG+tWZF/Vv065smp2jR2P5
X-Developer-Key: i=sohaib.amhmd@gmail.com; a=ed25519;
 pk=Q1nrPhN99EawVQo4UT9CZVAG4nQ2Zq/e3sfCABjccgk=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260116_114248_298056_7F898EA7 
X-CRM114-Status: GOOD (  11.24  )
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
X-Spam-Status: No, score=-2.2 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FORGED_GMAIL_RCVD,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 00/14] Initial support for Rockchip RK3562
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

All essential changes and additions required to boot the RK3562.
Includes board support for the RK3562-EVB2 and KickPi K3.

The GMAC driver is still missing from the upstream Linux device tree
and can be added in a future update. The rest is straightforward port from
the mainline Linux kernel.

Signed-off-by: Sohaib Mohamed <sohaib.amhmd@gmail.com>
---
Ahmad Fatoum (3):
      clk: rockchip: add RK3562 clock and reset driver support
      pinctrl: rockchip: sync driver with Linux
      ARM: boards: Rockchip: add RK3562-EVB2 support

Sohaib Mohamed (11):
      ARM: rockchip: Add initial RK3562 SoC support
      ARM: boards: Rockchip: Add device tree for kickpi k3 board
      ARM: rockchip: Add RK3562 KickPi K3 board support
      pmdomain: rockchip: Add RK3562 power domain support
      aiodev: rockchip_saradc: Add RK3562 support
      phy: rockchip-inno-usb2: Add support for RK3562 PHY
      rockchip-rng: Add RK3562 support
      mci: sdhci: rockchip-dwcmshc: Add RK3562 support
      nvmem: rockchip-otp: Add RK3562 support
      phy: rockchip: inno-dsidphy: Add RK3562 support
      phy: rockchip: naneng-combphy: Add RK3562 support

 arch/arm/boards/Makefile                           |    2 +
 arch/arm/boards/rockchip-rk3562-evb2/.gitignore    |    1 +
 arch/arm/boards/rockchip-rk3562-evb2/Makefile      |    4 +
 arch/arm/boards/rockchip-rk3562-evb2/board.c       |   47 +
 arch/arm/boards/rockchip-rk3562-evb2/lowlevel.c    |   23 +
 .../boards/rockchip-rk3562-kickpi-k3/.gitignore    |    1 +
 arch/arm/boards/rockchip-rk3562-kickpi-k3/Makefile |    4 +
 arch/arm/boards/rockchip-rk3562-kickpi-k3/board.c  |   46 +
 .../boards/rockchip-rk3562-kickpi-k3/lowlevel.c    |   23 +
 arch/arm/configs/multi_v8_defconfig                |    2 +
 arch/arm/configs/rockchip_v8_defconfig             |    2 +
 arch/arm/dts/Makefile                              |    2 +
 arch/arm/dts/rk3562-evb2-v10.dts                   |    9 +
 arch/arm/dts/rk3562-kickpi-k3.dts                  |   10 +
 arch/arm/dts/rk3562-kickpi-k3.dtsi                 |  452 ++++++++
 arch/arm/dts/rk3562.dtsi                           |   40 +
 arch/arm/mach-rockchip/Kconfig                     |   16 +
 arch/arm/mach-rockchip/Makefile                    |    1 +
 arch/arm/mach-rockchip/atf.c                       |   38 +
 arch/arm/mach-rockchip/dmc.c                       |   33 +
 arch/arm/mach-rockchip/rk3562.c                    |   20 +
 arch/arm/mach-rockchip/rockchip.c                  |    4 +
 common/Kconfig.debug_ll                            |    9 +
 drivers/aiodev/rockchip_saradc.c                   |    7 +
 drivers/clk/rockchip/Makefile                      |    1 +
 drivers/clk/rockchip/clk-rk3562.c                  | 1098 ++++++++++++++++++++
 drivers/clk/rockchip/clk.c                         |    2 +-
 drivers/clk/rockchip/clk.h                         |  268 ++++-
 drivers/clk/rockchip/rst-rk3562.c                  |  430 ++++++++
 drivers/hw_random/rockchip-rng.c                   |    4 +
 drivers/mci/rockchip-dwcmshc-sdhci.c               |    3 +
 drivers/mfd/syscon.c                               |   18 +
 drivers/nvmem/rockchip-otp.c                       |   89 ++
 drivers/phy/rockchip/phy-rockchip-inno-dsidphy.c   |    3 +
 drivers/phy/rockchip/phy-rockchip-inno-usb2.c      |   52 +-
 drivers/phy/rockchip/phy-rockchip-naneng-combphy.c |  161 +++
 drivers/pinctrl/pinctrl-rockchip.c                 |  768 +++++++++++++-
 drivers/pinctrl/pinctrl-rockchip.h                 |   52 +-
 drivers/pmdomain/rockchip/pm-domains.c             |   47 +
 firmware/Makefile                                  |    2 +
 images/Makefile.rockchip                           |    2 +
 include/mach/rockchip/atf.h                        |    6 +
 include/mach/rockchip/debug_ll.h                   |    6 +
 include/mach/rockchip/dmc.h                        |    1 +
 include/mach/rockchip/rk3562-regs.h                |   21 +
 include/mach/rockchip/rockchip.h                   |   10 +
 include/mfd/syscon.h                               |    8 +
 47 files changed, 3799 insertions(+), 49 deletions(-)
---
base-commit: 15ea9c02849d8e53c69078c88fa6df57dcce864e
change-id: 20260116-barebox-kickpi-eb253c439421

Best regards,
-- 
Sohaib Mohamed <sohaib.amhmd@gmail.com>



