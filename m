Delivery-date: Tue, 07 Jan 2025 16:52:22 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tVBsU-000NIr-0C
	for lore@lore.pengutronix.de;
	Tue, 07 Jan 2025 16:52:22 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tVBsQ-0007S3-9E
	for lore@pengutronix.de; Tue, 07 Jan 2025 16:52:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Z3ugNUshfXiq2f/HjsyvCLAQz2vRo8gLeDsLvMbY7G8=; b=osPrLAL2ry05ZH1gdpeqR7OHjP
	V5tu1UWM6nGNdpMWdS0sm4ctUhY9+U7ofXGm7X8kqq3coGEq69HXiJ4UhxF4vh/U6jXN8QJLzCgBC
	OdW89HxGEEKeBxShoQRdzHrCCb2ppnFeWlAapVtyFlpHhMYBsACLn5wHeEEOLpDa9twCZg1vwM5Ri
	SShhfQouI0c8E2n6a/nRpzxrrmjiIZSDD4WPS0plFPTfhC5lCtLW5NHDSXQlOdeE7eIXqH+AETl61
	CQ07QNd2gY3nzdafAAMVC0CU7S+RdtmlYVm4M/ZZr0RG8YbYm9w4MPQUicEODjTb6CZfRm4k+Okyw
	OV3K+x9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tVBs8-00000005Vj2-3ct6;
	Tue, 07 Jan 2025 15:52:00 +0000
Received: from zdiv.net ([2001:4b98:dc0:43:f816:3eff:fee4:1d8c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tVAiP-00000005FEd-3txf
	for barebox@lists.infradead.org;
	Tue, 07 Jan 2025 14:37:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zdiv.net; s=24;
	t=1736260668;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=Z3ugNUshfXiq2f/HjsyvCLAQz2vRo8gLeDsLvMbY7G8=;
	b=A4Cew2e4r4iJHz4Ivf2g2BP1d8PWikTEMrDV0QofVzwCrZs+cwJWWRSJoA1o9TDHLjpOmz
	SlKwaecLdfcIAc3/4Xy4phUlbKQtvBaKkfL9nw2xKW3K452zY4reWMvKv4eRIILplrHCcy
	mJr83PP7LKSUKggZyKFxjLyVx2VXPA2YJa6V0wmpUFVF+LL55Ybb4kSrOUsv52mcFqOMJn
	4jrVyGjHlShE9n6n00R24NXJ6jwiVN4c62ZtQx7BZJcHxmrk45yYAIQ97BLC4+XbRwNBQd
	knPayz/8y4eqHCeFZl0Xp7GAtnDNpQGcmiTetiepCDSgEOGVXSC6tGdOl2FN2Q==
Received: from mini.my.domain (<unknown> [2a01:e0a:12:d860:cfea:c4a:f4aa:bbd])
	by zdiv.net (OpenSMTPD) with ESMTPSA id e0a167f1 (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO);
	Tue, 7 Jan 2025 15:37:48 +0100 (CET)
From: Jules Maselbas <jmaselbas@zdiv.net>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@zdiv.net>
Date: Tue,  7 Jan 2025 15:37:34 +0100
Message-ID: <20250107143740.16903-1-jmaselbas@zdiv.net>
X-Mailer: git-send-email 2.47.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250107_063754_275063_475B667E 
X-CRM114-Status: GOOD (  11.74  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 0/6] Initial support for Allwinner A64 SoC
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This series adds an initial support for Allwinner, currently only
targetting the Pine64+ board, based on the A64 SoC.

This first series is intented as a second boot image only, that can
be started from u-boot. This series provides the bare minimal for
barebox to load the next OS from sd/mmc.

The documentation patch could be ommited as it is more about using
barebox as a first and second stage bootloader, while this series
only works as a second boot image.

The main change in this V2 series is the new "one-size fit all"
clk driver only used right for the mmc0/mmc1/mmc2 clock source
(composite with a gate, a mux, two divs plus a fixed post-div).

Jules Maselbas (6):
  clk: divider: add error code propagation
  clk: Add clock driver for sun50i-a64
  pinctrl: Add sun50i-a64 pinctrl driver
  mci: Add sunxi-mmc driver
  ARM: sunxi: Introduce mach-sunxi
  Documentation: sunxi: Add some documentation

 Documentation/boards/sunxi.rst             | 132 +++++
 arch/arm/Kconfig                           |  12 +
 arch/arm/Makefile                          |   1 +
 arch/arm/configs/sunxi_v8_defconfig        |  12 +
 arch/arm/mach-sunxi/Kconfig                |  12 +
 arch/arm/mach-sunxi/Makefile               |   1 +
 drivers/clk/Makefile                       |   1 +
 drivers/clk/clk-divider.c                  |   5 +-
 drivers/clk/sunxi/Makefile                 |   3 +
 drivers/clk/sunxi/clk-sun50i-a64.c         | 295 ++++++++++
 drivers/clk/sunxi/clk-sun50i-a64.h         |  62 +++
 drivers/clk/sunxi/clk-sunxi.c              | 348 ++++++++++++
 drivers/clk/sunxi/clk-sunxi.h              |  79 +++
 drivers/mci/Kconfig                        |   6 +
 drivers/mci/Makefile                       |   2 +
 drivers/mci/sunxi-mmc-common.c             | 246 +++++++++
 drivers/mci/sunxi-mmc-pbl.c                |  81 +++
 drivers/mci/sunxi-mmc.c                    | 177 ++++++
 drivers/mci/sunxi-mmc.h                    | 222 ++++++++
 drivers/pinctrl/Kconfig                    |   2 +
 drivers/pinctrl/Makefile                   |   1 +
 drivers/pinctrl/sunxi/Kconfig              |  13 +
 drivers/pinctrl/sunxi/Makefile             |   3 +
 drivers/pinctrl/sunxi/pinctrl-sun50i-a64.c | 594 +++++++++++++++++++++
 drivers/pinctrl/sunxi/pinctrl-sunxi.c      | 369 +++++++++++++
 drivers/pinctrl/sunxi/pinctrl-sunxi.h      | 224 ++++++++
 include/mach/sunxi/xload.h                 |  12 +
 27 files changed, 2914 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/boards/sunxi.rst
 create mode 100644 arch/arm/configs/sunxi_v8_defconfig
 create mode 100644 arch/arm/mach-sunxi/Kconfig
 create mode 100644 arch/arm/mach-sunxi/Makefile
 create mode 100644 drivers/clk/sunxi/Makefile
 create mode 100644 drivers/clk/sunxi/clk-sun50i-a64.c
 create mode 100644 drivers/clk/sunxi/clk-sun50i-a64.h
 create mode 100644 drivers/clk/sunxi/clk-sunxi.c
 create mode 100644 drivers/clk/sunxi/clk-sunxi.h
 create mode 100644 drivers/mci/sunxi-mmc-common.c
 create mode 100644 drivers/mci/sunxi-mmc-pbl.c
 create mode 100644 drivers/mci/sunxi-mmc.c
 create mode 100644 drivers/mci/sunxi-mmc.h
 create mode 100644 drivers/pinctrl/sunxi/Kconfig
 create mode 100644 drivers/pinctrl/sunxi/Makefile
 create mode 100644 drivers/pinctrl/sunxi/pinctrl-sun50i-a64.c
 create mode 100644 drivers/pinctrl/sunxi/pinctrl-sunxi.c
 create mode 100644 drivers/pinctrl/sunxi/pinctrl-sunxi.h
 create mode 100644 include/mach/sunxi/xload.h

-- 
2.47.1



