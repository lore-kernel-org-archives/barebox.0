Delivery-date: Mon, 21 Jun 2021 11:29:44 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvGFU-0000hU-LZ
	for lore@lore.pengutronix.de; Mon, 21 Jun 2021 11:29:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvGFT-0007rh-F9
	for lore@pengutronix.de; Mon, 21 Jun 2021 11:29:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UVd1XsgNuh9KtjzptBlYIWHog56/GJFedW6PlQtABfk=; b=GOCg7uU2I5C2tg
	JEzC8cQeF914Ud+0JzqGBmsgUwyrCcDhX6y7Q4EVh1S4XehmhCreaHuRwfjv9brSuWQ4rqlS14dQ4
	f/0JF4j2nmZZCVH1zlCDkH71Hp3y9qswc5ahPkuNZeXzSzXGq6D7TdRHT9dB1YOS8RMOjkzm+0o09
	SeqGotNC3GmKnACMfQn+PQV9nGT6jBMjL3t/oG2bgfpK7TWfxohJtQ6hy+mwK2aWdxYc8ilQR/whZ
	aUwtpwzYwyp9xZWNvBpTHZ2A0DoMoGCBzB2CvDBSdV9ZS+YgrzYePHu73hi2Nssx0QBN9R30GwIZa
	DRmghVIvroDaTh53nx3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvGED-002tQ9-EW; Mon, 21 Jun 2021 09:28:25 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvGDt-002tGU-IW
 for barebox@lists.infradead.org; Mon, 21 Jun 2021 09:28:07 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lvGDs-0007Zd-28; Mon, 21 Jun 2021 11:28:04 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lvGDr-0003dP-If; Mon, 21 Jun 2021 11:28:03 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 21 Jun 2021 11:27:50 +0200
Message-Id: <20210621092802.27275-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210621_022805_684837_E7031ABE 
X-CRM114-Status: GOOD (  12.25  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 00/12] Rockchip RK3568 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Again the RK3568 support with some updates

Changes since v1:

- move clk_name_* prototypes to correct location
- register softrst handlers
- rk3568 EVB: Fix 2nd stage booting, need to relocate to current addr
  then
- Make OP-TEE firmware optional

Sascha Hauer (12):
  clk: Add clk_name_* functions
  clk: rockchip rk3568: Initialize clocks
  filetype: Add Rockchip boot image type
  ARM: Rockchip: Add rkimage tool
  ARM: Add relocate_to_adr_full()
  ARM: Rockchip: Add rk3568 dtsi files
  ARM: Rockchip: Add rk3568 support
  ARM: Add atf common support
  ARM: rockchip: Add bootm handler for RKNS images
  ARM: Rockchip: Add rk3568 evb board support
  Add rockchip_v8_defconfig
  fixup! clk: Rockchip: Add rk3568 clk support

 Documentation/boards/rockchip.rst             |   39 +
 arch/arm/Kconfig                              |    6 +-
 arch/arm/boards/Makefile                      |    1 +
 arch/arm/boards/rockchip-rk3568-evb/Makefile  |    2 +
 arch/arm/boards/rockchip-rk3568-evb/board.c   |   36 +
 .../arm/boards/rockchip-rk3568-evb/lowlevel.c |   49 +
 arch/arm/configs/rockchip_v8_defconfig        |  120 +
 arch/arm/cpu/Makefile                         |    1 +
 arch/arm/cpu/atf.c                            |   80 +
 arch/arm/cpu/setupc_64.S                      |   13 +-
 arch/arm/dts/Makefile                         |    1 +
 arch/arm/dts/rk3568-evb1-v10.dts              |  487 +++
 arch/arm/dts/rk3568-pinctrl.dtsi              | 3111 +++++++++++++++++
 arch/arm/dts/rk3568.dtsi                      |  885 +++++
 arch/arm/dts/rockchip-pinconf.dtsi            |  344 ++
 arch/arm/include/asm/atf_common.h             |  163 +
 arch/arm/include/asm/barebox-arm.h            |    1 +
 arch/arm/mach-rockchip/Kconfig                |   24 +
 arch/arm/mach-rockchip/Makefile               |    5 +-
 arch/arm/mach-rockchip/atf.c                  |   62 +
 arch/arm/mach-rockchip/bootm.c                |  116 +
 arch/arm/mach-rockchip/include/mach/atf.h     |   18 +
 arch/arm/mach-rockchip/include/mach/bbu.h     |   14 +
 .../arm/mach-rockchip/include/mach/debug_ll.h |    8 +
 .../mach-rockchip/include/mach/rk3568-regs.h  |   18 +
 .../arm/mach-rockchip/include/mach/rockchip.h |   11 +
 arch/arm/mach-rockchip/rk3568.c               |  176 +
 arch/arm/mach-rockchip/rockchip.c             |    2 +
 commands/clk.c                                |   18 +-
 common/Kconfig                                |   10 +-
 common/filetype.c                             |    3 +
 drivers/clk/clk.c                             |   22 +
 drivers/clk/rockchip/clk-rk3568.c             |   34 +
 firmware/Makefile                             |    3 +-
 images/Makefile.rockchip                      |   10 +
 include/bootsource.h                          |    1 +
 include/filetype.h                            |    1 +
 include/linux/clk.h                           |    4 +
 scripts/Makefile                              |    3 +
 scripts/rkimage.c                             |  260 ++
 40 files changed, 6137 insertions(+), 25 deletions(-)
 create mode 100644 arch/arm/boards/rockchip-rk3568-evb/Makefile
 create mode 100644 arch/arm/boards/rockchip-rk3568-evb/board.c
 create mode 100644 arch/arm/boards/rockchip-rk3568-evb/lowlevel.c
 create mode 100644 arch/arm/configs/rockchip_v8_defconfig
 create mode 100644 arch/arm/cpu/atf.c
 create mode 100644 arch/arm/dts/rk3568-evb1-v10.dts
 create mode 100644 arch/arm/dts/rk3568-pinctrl.dtsi
 create mode 100644 arch/arm/dts/rk3568.dtsi
 create mode 100644 arch/arm/dts/rockchip-pinconf.dtsi
 create mode 100644 arch/arm/include/asm/atf_common.h
 create mode 100644 arch/arm/mach-rockchip/atf.c
 create mode 100644 arch/arm/mach-rockchip/bootm.c
 create mode 100644 arch/arm/mach-rockchip/include/mach/atf.h
 create mode 100644 arch/arm/mach-rockchip/include/mach/bbu.h
 create mode 100644 arch/arm/mach-rockchip/include/mach/rk3568-regs.h
 create mode 100644 arch/arm/mach-rockchip/rk3568.c
 create mode 100644 scripts/rkimage.c

-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

