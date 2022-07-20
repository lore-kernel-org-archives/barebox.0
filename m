Delivery-date: Wed, 20 Jul 2022 07:52:38 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oE2dT-00FGcx-CO
	for lore@lore.pengutronix.de; Wed, 20 Jul 2022 07:52:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oE2dR-0008Ad-D3
	for lore@pengutronix.de; Wed, 20 Jul 2022 07:52:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=RgX2NrY7iALYy02W9dqVNxVjKzRhOUQIo4IRIxjG55A=; b=pvM3QJnbBaCklslj//5E9UFrtZ
	zLU2Yl6simBKbw7ETw4UtxqoVjSeg6JhDF6GAgE0nICDNfGthXyGFOXcxlB9x20Eit0rxt2ZVbSNh
	hjQjGmqBP0/UV5Euq2tXnJre1t5euv5xbsXnynErRsAHRLUAv7Ltj6eGganr8NQKHC0OAVsj4itpm
	GL+7sM5hFQIJRrgP20S96UNIGnhR0TjNZ0djW9DvUDbJtHEj93w7UnYKKVQTbn0px1PhObz8yE+S1
	tkJYyQrkccIgGBxQ7cHtflZlXe+4DECO5+2BkREplpcNN+NZdTu41mBQqA7HNZbF0gKwt9YEYJ6QO
	8gLKNC1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oE2bq-000jNP-1k; Wed, 20 Jul 2022 05:50:58 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oE2bk-000jKW-Sc
	for barebox@lists.infradead.org; Wed, 20 Jul 2022 05:50:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oE2bg-0007nq-0S; Wed, 20 Jul 2022 07:50:48 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oE2bc-0023UM-QZ; Wed, 20 Jul 2022 07:50:44 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oE2bb-00EjCO-Dc; Wed, 20 Jul 2022 07:50:43 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: michael.riesch@wolfvision.net,
	j.zink@pengutronix.de
Date: Wed, 20 Jul 2022 07:50:39 +0200
Message-Id: <20220720055042.3510276-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220719_225052_946029_DD93F8F9 
X-CRM114-Status: GOOD (  10.35  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [RFT PATCH 0/3] ARM: Rockchip: align bootsource_instance
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

[ "$bootsource" = mmc ] && boot mmc$bootsource_instance on the Rockchip
board doesn't do what one would expect, because the bootrom has
different numbering for the MMC devices than what the upstream board
device trees use for their aliases. This series resolves that.

@Johannes, could you give this a test on the ROCK-3A?

Thanks,
Ahmad Fatoum (3):
  bootsource: rename existing bootsource_set to bootsource_set_raw
  bootsource: allow DT aliases and bootrom numbering to differ
  ARM: dts: rk356x: align bootsource_instance numbering and MMC DT
    aliases

 .../devicetree/bindings/barebox/aliases.rst   |  36 ++++++
 arch/arm/boards/radxa-rock3/board.c           |   2 +-
 .../boards/rockchip-rk3568-bpi-r2pro/board.c  |   2 +-
 arch/arm/boards/rockchip-rk3568-evb/board.c   |   2 +-
 arch/arm/dts/rk3566-quartz64-a.dts            |   1 +
 arch/arm/dts/rk3568-bpi-r2-pro.dts            |   1 +
 arch/arm/dts/rk3568-evb1-v10.dts              |   1 +
 arch/arm/dts/rk3568-rock-3a.dts               |   1 +
 arch/arm/dts/rk356x.dtsi                      |   9 ++
 arch/arm/mach-at91/sama5d2.c                  |   4 +-
 arch/arm/mach-imx/boot.c                      |   6 +-
 arch/arm/mach-layerscape/boot.c               |   4 +-
 arch/arm/mach-mxs/imx.c                       |   3 +-
 arch/arm/mach-omap/am33xx_generic.c           |   3 +-
 arch/arm/mach-omap/omap3_generic.c            |   3 +-
 arch/arm/mach-omap/omap4_generic.c            |   3 +-
 arch/arm/mach-rockchip/rk3288.c               |   3 +-
 arch/arm/mach-rockchip/rk3568.c               |   9 +-
 arch/arm/mach-socfpga/arria10-bootsource.c    |   3 +-
 arch/arm/mach-socfpga/cyclone5-bootsource.c   |   6 +-
 arch/arm/mach-stm32mp/init.c                  |   3 +-
 arch/arm/mach-zynq/zynq.c                     |   2 +-
 arch/arm/mach-zynqmp/zynqmp.c                 |   3 +-
 common/bootsource.c                           | 110 +++++++++++++-----
 drivers/block/efi-block-io.c                  |   2 +-
 drivers/efi/efi-device.c                      |   3 +-
 include/bootsource.h                          |  40 ++++++-
 27 files changed, 192 insertions(+), 73 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/barebox/aliases.rst
 create mode 100644 arch/arm/dts/rk356x.dtsi

-- 
2.30.2



