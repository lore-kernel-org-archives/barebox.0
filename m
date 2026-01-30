Delivery-date: Fri, 30 Jan 2026 06:18:08 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vlgtU-006s2m-2w
	for lore@lore.pengutronix.de;
	Fri, 30 Jan 2026 06:18:08 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vlgtQ-0002S4-HB
	for lore@pengutronix.de; Fri, 30 Jan 2026 06:18:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wNx7bnetbGrfUACSFTT+Owavf1QdrNf3ILFsHasGQnQ=; b=2x9OaGXL8qWval
	jH1H7yqrMEbkMPD9VhlXdI1UZeQwae/R7XH88iK0t2POvie7fsV6hdTkpIJs6H8l+yzO2tmVx8s86
	o/z+x4zZCj3pPkUO0mpPl9CnHq0sygAGnluedKXrCV79mwqlJRY2QfjEuuXslGS/A9p7Hv2M8Y4X3
	1qsKUxpvAN/2qwx2xrYQ7Sldld0wW5yWFB2MILW7iiWJkkzlK5GUG+dbgpsZ6eZeFC8yi1nYGAwuc
	0b+nrPZdiAR/P62Q+vHYyYHRm1OiPRw99oF9Y3zq1LGORAI7kR+gj48WhOeuknX6SyMIayCZaZr5d
	n2/NWriNgtKF6Fp590Cw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vlgsc-0000000122Z-3HCN;
	Fri, 30 Jan 2026 05:17:14 +0000
Received: from mail-wr1-x429.google.com ([2a00:1450:4864:20::429])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vlgsZ-0000000121J-2wrV
	for barebox@lists.infradead.org;
	Fri, 30 Jan 2026 05:17:13 +0000
Received: by mail-wr1-x429.google.com with SMTP id ffacd0b85a97d-42fb2314eb0so1471853f8f.2
        for <barebox@lists.infradead.org>; Thu, 29 Jan 2026 21:17:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769750229; x=1770355029; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=wNx7bnetbGrfUACSFTT+Owavf1QdrNf3ILFsHasGQnQ=;
        b=hoRsDZTIK6wtHeZ6Sd65nUDHh7pAiv7zBFVKPhsu76FSyDjF9xOOAZ4SjlZEKEGCuW
         Cl6lNrt1+9Axk9bCC/fzBVbjunTd4YFmuW3mLTsIIlIw75ZGjq6Jj+61VlYlVJD5gHIr
         GiH5eycKrX4HMZcL4KqdYhaJoiKurAXi2zL0y5Uvaju3bgnT6QvepS7AurZipNsnwVi9
         f8SN3HBMGVrow/B/JHc28c+nMeFP2MyJvgbWfOt2lB+jMQ9W3D3K1YVJbjHMGjGmEo17
         teYpMpPfFPO2jgQDsYq5i4RGb8H30+LgBFPctDHx4N04wg5gfTrv0mzPeKqdpXKyYoMs
         wiXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769750229; x=1770355029;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wNx7bnetbGrfUACSFTT+Owavf1QdrNf3ILFsHasGQnQ=;
        b=fuGrEjxz/fXur40iFUqVJVdCz01ig/Kmv4JhWgxARE+z/ftuATP2/UZwpiSESnWvk/
         AzDgZB/h0IsmGO260l/rrdt88gnhgegp/X8KHTj/+PPrYdPRufkY11CosyW4vaOmfQXT
         KlFv0B/mtyH6yaGd9MaQdBxLaAKdP1CW/pdeOy0qpzv3sr6FUB8mb3FhbFBKnkvKhy7P
         EZbhbohtq/dlKFWbXG2IV2DzOBol5d3ppHR/hFBHqpgHW83XYX1+HD6pKfqPMkFx+wpN
         MUt88czr9kzDrMZMdOrqx1zvqPWJQVzBXgwd0e9zRhYsf8jb9XlaRTGx1sAs0UYOtcKy
         sXgw==
X-Forwarded-Encrypted: i=1; AJvYcCUxJi22t8JenvBLZIQN9893sof8ZYaIIk6OKjKTdfZM7pqEAN6kXbDFh8C6zYNz+CnVoYwyt5AC@lists.infradead.org
X-Gm-Message-State: AOJu0YxptGsYD0v9vMIXMSrw7sc6H7lt4mPKsjjhcNSsVOIWK4V5mOoC
	tiHI6ecJJcbWLUKU1nvdR/mF31NGrjKSHqe84yay9nA5IAV6dCW/8zhk6twOMg==
X-Gm-Gg: AZuq6aL7TjB+p9ANjTfX06HVd5GvcetPeA+Kzjq/Rx1kA9gl9zsiLRJguz2Rv0Jt3NN
	2dr0CiUHfdCn7fES5/ToeYgQYcxlkT9dgyT9OywKXEWgi1TRTuye/MiFB540815vzhVALCQIAgu
	F/7uczg/6wI9/H1r7fwUaXyTl6JlTvfZqeG6SHL4qdNhHfjtA5lyDU78EDBqcrggCvn4oT8RmAF
	BXBwuytDIB7K4hF0gCmUzcXloUxrdp0M7/eUb6f0RjNdCP5Yqql8P7NIoyQBIjN6AIeEn9xfzUq
	53LY7UsEJp734BUVPxrYi7gUoN1jOQMP1TGmjVjJ2ty5Xx4xGFjJCBtcmy/8xSBjwypmf0QMfwB
	vwaETegqj+rC88iqQXEGeRbcoQ21hULIq2uAFzRDAeKZ6wnchkW4vWyu4Fqfj1NqdYQ+l9jhK4B
	97gm+lE4ErA6Vg1YNaAnRHrtzUat2PumBYVy9m1oIDkULAc9ny67Q+II+MnyPbPWsOy0gH4qt6c
	PI3cxw3ioHsK1dKEUFhThaSaOQ4jOvKt3ym/l+tcW0VV6Wn/poWrTTfiD/9PUm7OTCwMhFANf+W
	ru7oeZrBwZC3IaL5u9gXMjxew4Z1eP9Te/7RiTxrhg==
X-Received: by 2002:a05:6000:1849:b0:435:9f41:d43 with SMTP id ffacd0b85a97d-435f3a72b51mr2676087f8f.15.1769750228878;
        Thu, 29 Jan 2026 21:17:08 -0800 (PST)
Received: from [127.0.1.1] (2a02-8388-08be-f800-ad12-b37c-7013-7685.cable.dynamic.v6.surfer.at. [2a02:8388:8be:f800:ad12:b37c:7013:7685])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-435e10e4762sm18943088f8f.6.2026.01.29.21.17.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Jan 2026 21:17:08 -0800 (PST)
From: Sohaib Mohamed <sohaib.amhmd@gmail.com>
Date: Fri, 30 Jan 2026 06:16:52 +0100
Message-Id: <20260130-barebox-kickpi-v2-0-d27cf94a39b6@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAMQ+fGkC/x2MQQqAIBAAvyJ7TjALib4SHdS2WgQVhRDEv2ddB
 uYwUyFjIsywsgoJH8oUfBc5MLC39hdyOrqDFFKJcRLc6IQmFO7IukhcLoealTIfoEcx4UnlH25
 7ay90IdwJYAAAAA==
X-Change-ID: 20260130-barebox-kickpi-28d6466b6466
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Sohaib Mohamed <sohaib.amhmd@gmail.com>, 
 Ahmad Fatoum <a.fatoum@pengutronix.de>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1769750228; l=4735;
 i=sohaib.amhmd@gmail.com; s=20251127; h=from:subject:message-id;
 bh=CX5e4si1mYNszq8CGKiL3/p95ozeZm4g3IL+79vHdQU=;
 b=SWt6qG3TNIeQgvyR8EBmx8gLoy2ERpYA51biz4v7MmoyBVqgAPbtbJ8tK6CDxu5/iYjxUtKFZ
 SZmRvkMDagsAmTz9Vy5U9tx2MwzRRwIbHQIeSsHTG6+iNUh5KIwhBD5
X-Developer-Key: i=sohaib.amhmd@gmail.com; a=ed25519;
 pk=Q1nrPhN99EawVQo4UT9CZVAG4nQ2Zq/e3sfCABjccgk=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260129_211711_798963_89F9E5D2 
X-CRM114-Status: GOOD (  13.01  )
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
X-Spam-Status: No, score=-2.1 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FORGED_GMAIL_RCVD,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 00/14] ARM: rockchip: Add initial RK3562 SoC support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

All essential changes and additions required to boot the RK3562.
Includes board support for the RK3562-EVB2 and KickPi K3.

The GMAC driver is still missing from the upstream Linux device tree
and can be added in a future update. The rest is straightforward port from
the mainline Linux kernel.

---
Changes in v2:
- Remove unused header includes (globalvar.h and deep-probe.h) from board.c
- Fix "serial0:1500000n8" (squashed into the original commit)
- Link to v1: https://lore.barebox.org/r/20260116-barebox-kickpi-v1-0-eb253c439421@gmail.com/
---

To: Sascha Hauer <s.hauer@pengutronix.de>
To: open list:BAREBOX <barebox@lists.infradead.org>
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
 arch/arm/boards/rockchip-rk3562-kickpi-k3/board.c  |   44 +
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
 47 files changed, 3797 insertions(+), 49 deletions(-)
---
base-commit: 15ea9c02849d8e53c69078c88fa6df57dcce864e
change-id: 20260130-barebox-kickpi-28d6466b6466

Best regards,
-- 
Sohaib Mohamed <sohaib.amhmd@gmail.com>



