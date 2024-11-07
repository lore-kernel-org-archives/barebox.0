Delivery-date: Thu, 07 Nov 2024 16:00:07 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t93zS-005xam-0O
	for lore@lore.pengutronix.de;
	Thu, 07 Nov 2024 16:00:07 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t93zS-0001wK-36
	for lore@pengutronix.de; Thu, 07 Nov 2024 16:00:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=wLbX2+aWafFVfTOWB/8Il/q49BUXiTmxMFUYaJnDgQQ=; b=Ci50c4NK9TLVO86QVEt0P+vmMO
	6k2SIdDk4V1OkGNDsULVI4ooubgzRMhLUZDoiLAvaisors84oNezP4OcwY+IxW9eVvkhyMA9v5sVT
	3pBZTwwOngdCqapi6fm8fhZ8LFtw3opRviWRZLeP/QQuE5+/645U5SF6eEN23JsRcdnL7/Iy+1xoO
	9Odvl1V5exyt5SoSstenASC1hBiQmgGn6fZOQj9dfY7dBEQ0FgnYXfglGE3GUiu1LBegUkBQNl28V
	ZpgLpawJUtNuVNg0KCfWYXXWbmdj/PoGBO4t59WesxeHO6XJ0JVCIQrjQMFjVwg5i1SCThA9ZWLY4
	x/krXitA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t93yq-00000007Mbh-317f;
	Thu, 07 Nov 2024 14:59:28 +0000
Received: from zdiv.net ([2001:4b98:dc0:43:f816:3eff:fee4:1d8c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t93x0-00000007M8h-2ffP
	for barebox@lists.infradead.org;
	Thu, 07 Nov 2024 14:57:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zdiv.net; s=24;
	t=1730991448;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=wLbX2+aWafFVfTOWB/8Il/q49BUXiTmxMFUYaJnDgQQ=;
	b=PUGHlpmX8y/bbszByZyg3u3M3AC6XVknDfFilwNcCyyxQeE5FZyqcDoqH+P15pxxJezzhs
	bPjgYpVf0U/zokWR+95Qgw5+zXf514MzRuLhR7+IphIfu7IqVxD8lW898/GVC0bnbaTRJq
	trkasApLVxiJgIaS0zh4+bZCWG8Mllvd+0i5rjpmQDujmeRiILh+OGJiaS4N09WoBIek5+
	n/Vhu2vwegVPrj25ZqhMp1KEpFxycyD6ZMkyBq6p27+4ww2+P7zAiM5SM+ALSvroVj8UCS
	qCKXyZuqCkvef3K9NeumFRoR0vAzhLEYadp4eDJ7o/X4NyLfWfodmGtRSM5h4A==
Received: from mini.my.domain (<unknown> [2a01:e0a:12:d860:1b71:4dca:dfdc:1e52])
	by zdiv.net (OpenSMTPD) with ESMTPSA id 21b97fc0 (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO);
	Thu, 7 Nov 2024 15:57:28 +0100 (CET)
From: Jules Maselbas <jmaselbas@zdiv.net>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@zdiv.net>
Date: Thu,  7 Nov 2024 15:57:16 +0100
Message-ID: <20241107145722.5145-1-jmaselbas@zdiv.net>
X-Mailer: git-send-email 2.46.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241107_065734_982831_2DCA3DD2 
X-CRM114-Status: GOOD (  10.64  )
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
Subject: [PATCH 0/6] Initial support for Allwinner A64 SoC
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This series adds the initial support for Allwinner, currently only
targetting the Pine64+ board, based on the A64 SoC.

This first series is intented as a second boot image only, that can
be started from u-boot. This series provides the bare minimal so
barebox can load the next OS from sd/mmc.

Jules Maselbas (6):
  clk: clk-composite: fix callback guard in clk_composite_round_rate
  clk: divider: add error code propagation
  clk: Add clock driver for sun50i-a64
  pinctrl: Add sun50i-a64 pinctrl driver
  mci: Add sunxi-mmc driver
  ARM: sunxi: Introduce mach-sunxi

 arch/arm/Kconfig                           |  14 +
 arch/arm/Makefile                          |   1 +
 arch/arm/configs/sunxi_v8_defconfig        |  12 +
 arch/arm/mach-sunxi/Kconfig                |  12 +
 arch/arm/mach-sunxi/Makefile               |   1 +
 arch/arm/mach-sunxi/common.c               |   0
 drivers/clk/Makefile                       |   1 +
 drivers/clk/clk-composite.c                |   2 +-
 drivers/clk/clk-divider.c                  |   5 +-
 drivers/clk/sunxi/Makefile                 |   2 +
 drivers/clk/sunxi/clk-sun50i-a64.c         | 325 +++++++++++
 drivers/clk/sunxi/clk-sun50i-a64.h         |  62 +++
 drivers/mci/Kconfig                        |   6 +
 drivers/mci/Makefile                       |   2 +
 drivers/mci/sunxi-mmc-common.c             | 246 +++++++++
 drivers/mci/sunxi-mmc-pbl.c                |  81 +++
 drivers/mci/sunxi-mmc.c                    | 181 +++++++
 drivers/mci/sunxi-mmc.h                    | 221 ++++++++
 drivers/pinctrl/Kconfig                    |   2 +
 drivers/pinctrl/Makefile                   |   1 +
 drivers/pinctrl/sunxi/Kconfig              |  13 +
 drivers/pinctrl/sunxi/Makefile             |   3 +
 drivers/pinctrl/sunxi/pinctrl-sun50i-a64.c | 594 +++++++++++++++++++++
 drivers/pinctrl/sunxi/pinctrl-sunxi.c      | 372 +++++++++++++
 drivers/pinctrl/sunxi/pinctrl-sunxi.h      | 224 ++++++++
 include/mach/sunxi/barebox-arm.h           |   7 +
 include/mach/sunxi/xload.h                 |  12 +
 27 files changed, 2400 insertions(+), 2 deletions(-)
 create mode 100644 arch/arm/configs/sunxi_v8_defconfig
 create mode 100644 arch/arm/mach-sunxi/Kconfig
 create mode 100644 arch/arm/mach-sunxi/Makefile
 create mode 100644 arch/arm/mach-sunxi/common.c
 create mode 100644 drivers/clk/sunxi/Makefile
 create mode 100644 drivers/clk/sunxi/clk-sun50i-a64.c
 create mode 100644 drivers/clk/sunxi/clk-sun50i-a64.h
 create mode 100644 drivers/mci/sunxi-mmc-common.c
 create mode 100644 drivers/mci/sunxi-mmc-pbl.c
 create mode 100644 drivers/mci/sunxi-mmc.c
 create mode 100644 drivers/mci/sunxi-mmc.h
 create mode 100644 drivers/pinctrl/sunxi/Kconfig
 create mode 100644 drivers/pinctrl/sunxi/Makefile
 create mode 100644 drivers/pinctrl/sunxi/pinctrl-sun50i-a64.c
 create mode 100644 drivers/pinctrl/sunxi/pinctrl-sunxi.c
 create mode 100644 drivers/pinctrl/sunxi/pinctrl-sunxi.h
 create mode 100644 include/mach/sunxi/barebox-arm.h
 create mode 100644 include/mach/sunxi/xload.h

-- 
2.46.2



