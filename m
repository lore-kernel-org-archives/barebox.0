Delivery-date: Fri, 01 Oct 2021 12:11:29 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mWFVp-0002Xr-MC
	for lore@lore.pengutronix.de; Fri, 01 Oct 2021 12:11:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mWFVo-0006Mo-EV
	for lore@pengutronix.de; Fri, 01 Oct 2021 12:11:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DnlpGZdWREUp2upUElQPD8TMKua+tU6UVddfBljKr6w=; b=Vl7TVO6iBE1JWr
	OO3rKOIjx1rGgFO0BcNq7ziimO2ja4XW2+bK7UOS4rIqdK6HcHBw0iCCh+7KoQPG8x8ifTmW7CvzO
	rZRVe8ti+nz0UQOYCYLTHXKzml6cZl62SubVqBcXTtHS9AKqP4nAHoIq9h7du0Zn4x5gIS/RtL9f0
	sLTWBXsPr4JTUrugib6LwUDFjLW4Tfox8qCFNPBmdkpkfB6lvlYByxclScLMep5NxxJNOYB4RsrCU
	RouScD94HByMucuq1lZkz2V/7TS1zp+/zolcHQEQ2AVo4cklKukLWaFmF3S3oAPFABFwKDgNkye7b
	pahQdv8lfz6Y9qZRK7xQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mWFUR-00HQlt-M1; Fri, 01 Oct 2021 10:10:03 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mWFUI-00HQjX-VK
 for barebox@lists.infradead.org; Fri, 01 Oct 2021 10:09:56 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mWFUF-0005ko-0a; Fri, 01 Oct 2021 12:09:51 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mWFUE-0001pP-DO; Fri, 01 Oct 2021 12:09:50 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Trent Piepho <tpiepho@gmail.com>
Date: Fri,  1 Oct 2021 12:09:41 +0200
Message-Id: <20211001100949.6891-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211001_030955_074155_0998DD1D 
X-CRM114-Status: GOOD (  12.05  )
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
Subject: [PATCH v2 0/8] ARM: i.MX8M: add nano support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The i.MX8MN is basically a downsized i.MX8MM, but got also shares
some details with the i.MX8MP. This series adds SoC and EVK board
support. Main thing missing is imx-usb-loader support:

  found i.MX8MN USB device [1fc9:013e]

  4 in err=-7, last_trans=0  00 00 00 00
  status failed

And no serial output indicating PBL started up, but that can
follow later.

Series applies on top of
 <20210830115325.24905-1-a.fatoum@pengutronix.de>
 <20210830115156.21907-1-a.fatoum@pengutronix.de>
 <20210924031446.1515172-1-tpiepho@gmail.com>


v1 -> v2:
  - dropped DDR-1067MHz fix ported from U-Boot in favor
    of Trent's refactor

Ahmad Fatoum (8):
  ARM: i.MX: add i.MX8MN (Nano) SoC support boilerplate
  clk: imx: add i.MX8MN (Nano) support
  ARM: i.MX8MN: adapt early clock support
  ARM: i.MX: extend drivers for i.MX8MN (Nano) support
  ddr: imx8m: add i.MX8MN (Nano) support
  ddr: imx8m: ddrphy_train: add DDR4 support
  scripts: imx: add i.MX8MN support to imx-image
  ARM: i.MX8MN: add i.MX8MN-EVK support

 Documentation/boards/imx/nxp-imx8mn-evk.rst   |   60 +
 arch/arm/boards/Makefile                      |    1 +
 arch/arm/boards/mnt-reform/lpddr4-timing.c    |    1 +
 .../arm/boards/nxp-imx8mm-evk/lpddr4-timing.c |    1 +
 arch/arm/boards/nxp-imx8mn-evk/Makefile       |    2 +
 arch/arm/boards/nxp-imx8mn-evk/board.c        |   62 +
 arch/arm/boards/nxp-imx8mn-evk/ddr4-timing.c  | 1055 +++++++++++
 .../flash-header-imx8mn-evk.imxcfg            |    5 +
 arch/arm/boards/nxp-imx8mn-evk/lowlevel.c     |  231 +++
 .../arm/boards/nxp-imx8mn-evk/lpddr4-timing.c | 1591 +++++++++++++++++
 .../arm/boards/nxp-imx8mp-evk/lpddr4-timing.c |    1 +
 arch/arm/boards/nxp-imx8mq-evk/ddrphy_train.c |    6 +-
 .../boards/phytec-som-imx8mq/ddrphy_train.c   |    6 +-
 .../protonic-imx8m/lpddr4-timing-prt8mm.c     |    1 +
 arch/arm/boards/zii-imx8mq-dev/ddrphy_train.c |    6 +-
 arch/arm/configs/imx_v8_defconfig             |    1 +
 arch/arm/dts/Makefile                         |    1 +
 arch/arm/dts/imx8mn-evk.dts                   |   62 +
 arch/arm/mach-imx/Kconfig                     |   16 +
 arch/arm/mach-imx/atf.c                       |    5 +
 arch/arm/mach-imx/boot.c                      |    6 +
 arch/arm/mach-imx/cpu_init.c                  |    3 +
 arch/arm/mach-imx/esdctl.c                    |    8 +
 arch/arm/mach-imx/imx-bbu-internal.c          |    8 +-
 arch/arm/mach-imx/imx.c                       |    4 +
 arch/arm/mach-imx/imx8m.c                     |   39 +-
 arch/arm/mach-imx/include/mach/atf.h          |    2 +
 arch/arm/mach-imx/include/mach/esdctl.h       |    1 +
 arch/arm/mach-imx/include/mach/generic.h      |   18 +-
 .../mach-imx/include/mach/imx8m-ccm-regs.h    |    1 +
 arch/arm/mach-imx/include/mach/imx8mn-regs.h  |   34 +
 arch/arm/mach-imx/include/mach/imx8mq.h       |   11 +
 .../arm/mach-imx/include/mach/imx_cpu_types.h |    1 +
 arch/arm/mach-imx/include/mach/iomux-mx8mn.h  |  774 ++++++++
 arch/arm/mach-imx/include/mach/xload.h        |    1 +
 drivers/clk/imx/Makefile                      |    2 +
 drivers/clk/imx/clk-imx8mn.c                  |  558 ++++++
 drivers/ddr/imx8m/Kconfig                     |    2 +-
 drivers/ddr/imx8m/ddr_init.c                  |    8 +-
 drivers/ddr/imx8m/ddrphy_train.c              |   26 +-
 drivers/ddr/imx8m/ddrphy_utils.c              |    1 +
 drivers/mci/imx-esdhc-pbl.c                   |    3 +
 drivers/mci/imx-esdhc.c                       |    1 +
 drivers/nvmem/ocotp.c                         |    3 +
 drivers/pinctrl/imx-iomux-v3.c                |    2 +
 drivers/serial/serial_imx.c                   |    3 +
 drivers/usb/imx/imx-usb-misc.c                |    4 +
 firmware/Kconfig                              |    6 +
 firmware/Makefile                             |    7 +
 images/Makefile.imx                           |    6 +
 include/soc/imx8m/ddr.h                       |   22 +-
 scripts/imx/imx.c                             |    1 +
 scripts/imx/imx.h                             |    1 +
 53 files changed, 4654 insertions(+), 27 deletions(-)
 create mode 100644 Documentation/boards/imx/nxp-imx8mn-evk.rst
 create mode 100644 arch/arm/boards/nxp-imx8mn-evk/Makefile
 create mode 100644 arch/arm/boards/nxp-imx8mn-evk/board.c
 create mode 100644 arch/arm/boards/nxp-imx8mn-evk/ddr4-timing.c
 create mode 100644 arch/arm/boards/nxp-imx8mn-evk/flash-header-imx8mn-evk.imxcfg
 create mode 100644 arch/arm/boards/nxp-imx8mn-evk/lowlevel.c
 create mode 100644 arch/arm/boards/nxp-imx8mn-evk/lpddr4-timing.c
 create mode 100644 arch/arm/dts/imx8mn-evk.dts
 create mode 100644 arch/arm/mach-imx/include/mach/imx8mn-regs.h
 create mode 100644 arch/arm/mach-imx/include/mach/iomux-mx8mn.h
 create mode 100644 drivers/clk/imx/clk-imx8mn.c

-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

