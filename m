Delivery-date: Tue, 16 Apr 2024 11:54:16 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rwfW4-003BOj-17
	for lore@lore.pengutronix.de;
	Tue, 16 Apr 2024 11:54:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rwfVy-0003ne-J3
	for lore@pengutronix.de; Tue, 16 Apr 2024 11:54:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=+pKoVysgZu5DNd/1CI5DoQA3RVILSBP27aYrGlLRyX4=; b=fWIjSb7x3uOO9SXFaFFcL0yuXB
	+Rk/9Dle9+U8wAhxYj+LHuiVihkjFh1UfsEPabsMcG6A2E9o1Cu6Kn66nd3VkDpFam98sy9SIqQ88
	Po72fhCxpVbO9zIYkIiLB+J+Nf7kGNGfsxWWARFy2rjzeZouyscgzc5w/kxFz0AdNFnWU2Aano7V7
	rNIeOUaDYeQSlRnRVFgJ8p3IxulHSmaYflOKqPQ6q2jdj2ltx3IZvX1AlNGmS0MMQSS7WJ8TS8l+H
	+z6p2Nt3PMLBWovk+rXAoFFGBrqRkDw1/hiVQkcHOUxu8WjUt6gouaKf6Uq0csGmBaJVprPSz9pEE
	5sNNWp9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwfVG-0000000Bffk-3V0x;
	Tue, 16 Apr 2024 09:53:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwfV8-0000000BfcC-0n44
	for barebox@lists.infradead.org;
	Tue, 16 Apr 2024 09:53:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rwfV5-0002cm-3Q; Tue, 16 Apr 2024 11:53:15 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rwfV4-00CaK6-NJ; Tue, 16 Apr 2024 11:53:14 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rwfV4-008J49-1x;
	Tue, 16 Apr 2024 11:53:14 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 16 Apr 2024 11:53:05 +0200
Message-Id: <20240416095313.1977242-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240416_025318_446183_2211826C 
X-CRM114-Status: GOOD (  17.80  )
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
Subject: [PATCH 0/8] Update NAND layer
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This series comes out of the need to support software BCH ECC for the i.MX
NAND driver, as the ancient i.MX27 hardware only supports 1-bit Hamming
ECC which is not sufficient on more modern NAND chips.

1st of all the NAND layer is updated to Linux-6.9-rc2, because this has
better support for Software ECC. And yes, the update is overdue as our
last update is from Linux-5.9 which is already 4 years old. We take the
opportunity to move the NAND drivers over to drivers/mtd/nand/raw/, the
place where the Kernel NAND drivers live for several years now.

Next thing is to move the i.MX NAND driver over to exec_op which makes
it easier to support software BCH ECC. Before doing this we move over
to the Kernel i.MX NAND driver so that the same patches can be sent for
Kernel inclusion as well.

Finally fixing the driver for using software BCH ECC is only a small
patch.

I've tested the NAND layer update on i.MX6, i.MX27, i.MX25, SoCFPGA
(denali) and one Atmel sama5d4 device. The patch is huge and I am sure
there will be regressions somewhere in it, so I welcome all testing
reports and will happily fix fallout.

Sascha

Sascha Hauer (8):
  bch: update from Kernel
  mtd: nand: move to drivers/mtd/nand/raw/
  mtd: update _lock/_unlock prototype
  mtd: nand: update to Linux-6.9-rc2
  mtd: nand: replace nand_imx driver with kernel driver
  mtd: nand: mxc_nand: separate page read from ecc calc
  mtd: nand: mxc_nand: implement exec_op
  mtd: nand: mxc_nand: support software ECC

 commands/Kconfig                              |    6 +-
 common/imx-bbu-nand-fcb.c                     |   12 +-
 drivers/mtd/Makefile                          |    2 +-
 drivers/mtd/devices/docg3.c                   |    8 +-
 drivers/mtd/mtdconcat.c                       |    4 +-
 drivers/mtd/nand/Kconfig                      |  184 +-
 drivers/mtd/nand/Makefile                     |   28 +-
 drivers/mtd/nand/core.c                       |  133 +-
 drivers/mtd/nand/ecc-sw-bch.c                 |  406 ++++
 drivers/mtd/nand/ecc-sw-hamming.c             |  660 +++++++
 drivers/mtd/nand/ecc.c                        |  697 +++++++
 drivers/mtd/nand/nand_bch.c                   |  219 ---
 drivers/mtd/nand/nand_imx.c                   | 1494 --------------
 drivers/mtd/nand/raw/Kconfig                  |  171 ++
 drivers/mtd/nand/raw/Makefile                 |   23 +
 drivers/mtd/nand/{ => raw}/atmel/Makefile     |    0
 .../mtd/nand/{ => raw}/atmel/atmel_nand_ecc.h |    0
 drivers/mtd/nand/{ => raw}/atmel/legacy.c     |   11 +-
 .../nand/{ => raw}/atmel/nand-controller.c    |    0
 drivers/mtd/nand/{ => raw}/atmel/pmecc.c      |    0
 drivers/mtd/nand/{ => raw}/atmel/pmecc.h      |    0
 drivers/mtd/nand/{ => raw}/denali.h           |    0
 drivers/mtd/nand/{ => raw}/fsl_ifc.h          |    0
 drivers/mtd/nand/{ => raw}/internals.h        |    5 +
 drivers/mtd/nand/raw/mxc_nand.c               | 1751 +++++++++++++++++
 drivers/mtd/nand/{ => raw}/nand_amd.c         |    0
 drivers/mtd/nand/{ => raw}/nand_base.c        | 1635 +++++++++------
 drivers/mtd/nand/{ => raw}/nand_bbt.c         |    0
 drivers/mtd/nand/{ => raw}/nand_denali.c      |    3 +-
 drivers/mtd/nand/{ => raw}/nand_denali_dt.c   |    0
 drivers/mtd/nand/{ => raw}/nand_ecc.c         |    0
 drivers/mtd/nand/{ => raw}/nand_esmt.c        |   17 +-
 drivers/mtd/nand/{ => raw}/nand_fsl_ifc.c     |    8 +-
 drivers/mtd/nand/{ => raw}/nand_hynix.c       |   59 +-
 drivers/mtd/nand/{ => raw}/nand_ids.c         |    0
 drivers/mtd/nand/{ => raw}/nand_jedec.c       |    0
 drivers/mtd/nand/{ => raw}/nand_legacy.c      |    0
 drivers/mtd/nand/{ => raw}/nand_macronix.c    |   42 +-
 drivers/mtd/nand/{ => raw}/nand_micron.c      |   24 +-
 drivers/mtd/nand/{ => raw}/nand_mrvl_nfc.c    |   10 +-
 drivers/mtd/nand/{ => raw}/nand_mxs.c         |    2 +-
 .../nand/{ => raw}/nand_omap_bch_decoder.c    |    0
 .../nand/{ => raw}/nand_omap_bch_decoder.h    |    0
 drivers/mtd/nand/{ => raw}/nand_omap_gpmc.c   |    5 +-
 drivers/mtd/nand/{ => raw}/nand_onfi.c        |   32 +-
 drivers/mtd/nand/{ => raw}/nand_orion.c       |    3 +-
 drivers/mtd/nand/{ => raw}/nand_samsung.c     |   22 +-
 drivers/mtd/nand/{ => raw}/nand_timings.c     |  370 +++-
 drivers/mtd/nand/{ => raw}/nand_toshiba.c     |   25 +-
 drivers/mtd/nand/{ => raw}/nomadik_nand.c     |    2 +-
 drivers/mtd/nand/{ => raw}/omap_elm.c         |    0
 drivers/mtd/nand/{ => raw}/stm32_fmc2_nand.c  |    2 +-
 drivers/mtd/nor/cfi_flash.c                   |    4 +-
 drivers/mtd/partition.c                       |    4 +-
 drivers/mtd/spi-nor/spi-nor.c                 |    4 +-
 drivers/net/e1000/mtd.c                       |    4 +-
 drivers/of/of_mtd.c                           |    1 -
 include/linux/bch.h                           |   25 +-
 include/linux/mtd/mtd.h                       |    7 +-
 include/linux/mtd/nand-ecc-sw-bch.h           |   71 +
 include/linux/mtd/nand-ecc-sw-hamming.h       |   89 +
 include/linux/mtd/nand.h                      |  327 ++-
 include/linux/mtd/onfi.h                      |   42 +-
 include/linux/mtd/rawnand.h                   |  275 ++-
 include/nand.h                                |    2 +-
 lib/Kconfig                                   |    1 +
 lib/bch.c                                     |  167 +-
 67 files changed, 6300 insertions(+), 2798 deletions(-)
 create mode 100644 drivers/mtd/nand/ecc-sw-bch.c
 create mode 100644 drivers/mtd/nand/ecc-sw-hamming.c
 create mode 100644 drivers/mtd/nand/ecc.c
 delete mode 100644 drivers/mtd/nand/nand_bch.c
 delete mode 100644 drivers/mtd/nand/nand_imx.c
 create mode 100644 drivers/mtd/nand/raw/Kconfig
 create mode 100644 drivers/mtd/nand/raw/Makefile
 rename drivers/mtd/nand/{ => raw}/atmel/Makefile (100%)
 rename drivers/mtd/nand/{ => raw}/atmel/atmel_nand_ecc.h (100%)
 rename drivers/mtd/nand/{ => raw}/atmel/legacy.c (99%)
 rename drivers/mtd/nand/{ => raw}/atmel/nand-controller.c (100%)
 rename drivers/mtd/nand/{ => raw}/atmel/pmecc.c (100%)
 rename drivers/mtd/nand/{ => raw}/atmel/pmecc.h (100%)
 rename drivers/mtd/nand/{ => raw}/denali.h (100%)
 rename drivers/mtd/nand/{ => raw}/fsl_ifc.h (100%)
 rename drivers/mtd/nand/{ => raw}/internals.h (95%)
 create mode 100644 drivers/mtd/nand/raw/mxc_nand.c
 rename drivers/mtd/nand/{ => raw}/nand_amd.c (100%)
 rename drivers/mtd/nand/{ => raw}/nand_base.c (82%)
 rename drivers/mtd/nand/{ => raw}/nand_bbt.c (100%)
 rename drivers/mtd/nand/{ => raw}/nand_denali.c (99%)
 rename drivers/mtd/nand/{ => raw}/nand_denali_dt.c (100%)
 rename drivers/mtd/nand/{ => raw}/nand_ecc.c (100%)
 rename drivers/mtd/nand/{ => raw}/nand_esmt.c (76%)
 rename drivers/mtd/nand/{ => raw}/nand_fsl_ifc.c (99%)
 rename drivers/mtd/nand/{ => raw}/nand_hynix.c (92%)
 rename drivers/mtd/nand/{ => raw}/nand_ids.c (100%)
 rename drivers/mtd/nand/{ => raw}/nand_jedec.c (100%)
 rename drivers/mtd/nand/{ => raw}/nand_legacy.c (100%)
 rename drivers/mtd/nand/{ => raw}/nand_macronix.c (88%)
 rename drivers/mtd/nand/{ => raw}/nand_micron.c (95%)
 rename drivers/mtd/nand/{ => raw}/nand_mrvl_nfc.c (99%)
 rename drivers/mtd/nand/{ => raw}/nand_mxs.c (99%)
 rename drivers/mtd/nand/{ => raw}/nand_omap_bch_decoder.c (100%)
 rename drivers/mtd/nand/{ => raw}/nand_omap_bch_decoder.h (100%)
 rename drivers/mtd/nand/{ => raw}/nand_omap_gpmc.c (99%)
 rename drivers/mtd/nand/{ => raw}/nand_onfi.c (89%)
 rename drivers/mtd/nand/{ => raw}/nand_orion.c (97%)
 rename drivers/mtd/nand/{ => raw}/nand_samsung.c (86%)
 rename drivers/mtd/nand/{ => raw}/nand_timings.c (52%)
 rename drivers/mtd/nand/{ => raw}/nand_toshiba.c (92%)
 rename drivers/mtd/nand/{ => raw}/nomadik_nand.c (99%)
 rename drivers/mtd/nand/{ => raw}/omap_elm.c (100%)
 rename drivers/mtd/nand/{ => raw}/stm32_fmc2_nand.c (99%)
 create mode 100644 include/linux/mtd/nand-ecc-sw-bch.h
 create mode 100644 include/linux/mtd/nand-ecc-sw-hamming.h

-- 
2.39.2



