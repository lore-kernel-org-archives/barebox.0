Delivery-date: Sat, 30 Oct 2021 19:59:35 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mgsdj-0001Aq-FJ
	for lore@lore.pengutronix.de; Sat, 30 Oct 2021 19:59:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mgsdi-0002QX-GW
	for lore@pengutronix.de; Sat, 30 Oct 2021 19:59:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4SF1zWsWmuvZy62LjlbwQ++tQZmav+Nwya9x7Art+GI=; b=UiDbd1cYKpnC2x
	7tV0odVyL4++lZzuNHyGXIoBeuC1wWXf1x89L2yEmlYIi26tkNJmhIlvluGQjbCtPz4TzwZ2cpFOe
	Evwi9KsUDTJlk3IvGhvWKjnkKkTSdqYy+XjQhjT4M8V6zDaF988Jq/OEfNBxrmr8dPgT6nFFE4q75
	+06hnHu66rvoHAopRMKKlZfkGyeDilCD3oXCUGG1f796w4hfglFhB/6hqwrTin/hom/qgeGo/0n4F
	RBAbiz2s4370oQVVtDfSVc+sSaw2GBbLIBsWWJ8hjwjeCWtDwXn5ZN1+lBk6clfm5HlvkXmc7jGK1
	HJ8poqVOlwbZ0Lt8rxlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mgscW-00DNGF-Qy; Sat, 30 Oct 2021 17:58:20 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mgscR-00DNDv-6G
 for barebox@lists.infradead.org; Sat, 30 Oct 2021 17:58:16 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1mgscP-00020S-TF
 for barebox@lists.infradead.org; Sat, 30 Oct 2021 19:58:13 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>) id 1mgscP-009YIF-6A
 for barebox@lists.infradead.org; Sat, 30 Oct 2021 19:58:13 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Sat, 30 Oct 2021 19:58:03 +0200
Message-Id: <20211030175812.2276705-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211030_105815_257138_C31B08A8 
X-CRM114-Status: UNSURE (   7.35  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/9] COMPILE_TEST: fix misc issues
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Ahmad Fatoum (9):
  ARM: Rockchip: move ARCH_RK3568_OPTEE into ARCH_ROCKCHIP menu
  ARM: i.MX: guf-santaro: fix passing around of uninitialized variable
  regulator: fix bitrotted EXPORT_SYMBOL_GPL
  aiodev: fix bitrotted EXPORT_SYMBOL
  mtd: remove NULLness check for IOMEM()
  clocksource: clint: restrict to RISC-V
  ddr: fsl: make ARCH_LAYERSCAPE only
  reset: socfpga: error out on failure to request memory
  i2c-mux-pca954x: drop duplicate warning message on probe

 arch/arm/boards/guf-santaro/board.c   |  3 +--
 arch/arm/mach-rockchip/Kconfig        |  5 ++---
 drivers/aiodev/core.c                 |  2 +-
 drivers/clocksource/Kconfig           |  4 ++--
 drivers/ddr/fsl/Kconfig               |  4 ++--
 drivers/i2c/i2c.c                     |  3 ++-
 drivers/i2c/muxes/i2c-mux-pca954x.c   |  4 +---
 drivers/mtd/nand/atmel_nand.c         |  8 --------
 drivers/mtd/spi-nor/cadence-quadspi.c | 10 ----------
 drivers/regulator/core.c              |  2 +-
 drivers/reset/reset-socfpga.c         |  5 +++--
 11 files changed, 15 insertions(+), 35 deletions(-)

-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

