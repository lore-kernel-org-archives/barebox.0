Delivery-date: Mon, 13 Mar 2023 14:43:22 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pbiSP-0061EN-UT
	for lore@lore.pengutronix.de; Mon, 13 Mar 2023 14:43:22 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pbiSO-00050e-Dg
	for lore@pengutronix.de; Mon, 13 Mar 2023 14:43:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QCil7k51SQVC7gDVmEemiKydqsvNIX75sZpPAAXm5fM=; b=k5xoFgsTc3LUEX
	/XIHIt43NXmHmvG9epEqF+aMHM0NKRI4s6auIghHo1KSohQF32jiIjdSQ31nkWz5YtHW7xcXaFQmH
	4gWvrnU1vqKJ3/Tfkg/XEdaDMetCwWkhTQ69ATmnoUtRwRJ8YQq1j32UXDxqjkkoyRPdRZIhH/pmi
	uh9gx6288zbrShbBAdnkijZ/hMuzcnIKNOtEp/cdPwX9sMcsMo6k3HAGF4ifTfJ1Vs2xYAGNPoI1q
	dh3PjxXr5b8Yb7OgBsAGj+yYh0JqdUYX5Koc2xTSMmqxMOj51Uoj0b1IdL2YmWexU1y2qJokf9Cr7
	C48eCWkeVcEARbBLVi7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbiR0-005vqe-5n; Mon, 13 Mar 2023 13:41:54 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbiQq-005vkc-Nn
	for barebox@lists.infradead.org; Mon, 13 Mar 2023 13:41:47 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1pbiQo-0004N9-TB
	for barebox@lists.infradead.org; Mon, 13 Mar 2023 14:41:42 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Mon, 13 Mar 2023 14:41:39 +0100
Message-Id: <20230228-v2023-02-0-topic-flexspi-v2-0-3d33126d2434@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIABMoD2QC/42NQQ6DIBBFr2JYdxrEmmpXvUfjAnDQSQwQQGJjv
 HvRE3Q37yV/3s4iBsLIXtXOAmaK5GwBcauYnqWdEGgszAQXDReig3xewAVwSM6TBrPgFj2Bfox
 djZ1qVS9ZmSsZEVSQVs/lgV2XpUgf0NB29T5D4ZlicuF75XN92j9KuS7qqRrdGCn61rRvj3ZaU
 3CWtvuIbDiO4we+yLBr2gAAAA==
To: barebox@lists.infradead.org
Cc: 
X-Mailer: b4 0.12.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230313_064144_933285_2CC24E4C 
X-CRM114-Status: GOOD (  11.84  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 00/23] FlexSPI image/boot/update support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

by this serie the missing FlexSPI/QSPI boot support is added. The
FlexSPI boot option is available on i.MX8MM/N/P SoCs.

The integration is done by using the single-image approach, so no
special QSPI image is required. The same image which can be used for
eMMC/eMMC-boot, SD, USB, chainload now supports QSPI. This is done by
adding a 2nd IVT header on the appropriate place and adding a QSPI
update handler.

Patch1-4: General fixes
Patch7-onward: Add the FlexSPI/QSPI support

---
Changes in v2:
- Link to v1: https://lore.barebox.org/20230228-v2023-02-0-topic-flexspi-v1-0-7b3c3fa295f5@pengutronix.de

- patche9-10: fix $bootsource_instance to report 0 instead of 'unkown'
- patche18-19: switch from target-device seeking to filetype offset.
- patch23: add documentation

---
Marco Felsch (23):
      spi: remove flash_platform_data support
      bbu: make it possible to check multiple of-compatibles
      ARM: i.MX8MM: add missing IMD_USED_OF image metadata entry
      ARM: i.MX8MN: add missing IMD_USED_OF image metadata entries
      mci: imx-esdhc-pbl: fix number of read blocks
      mci: imx-esdhc-pbl: refactor the esdhc_load_image function
      mci: imx-esdhc-pbl: move imx_load_image into common xload code
      ARM: i.MX8M: Add QSPI image load support
      ARM: i.MX bootsource: set QSPI instance
      ARM: i.MX8MM bootsource: fix QSPI boot source detection
      ARM: i.MX8M: Add QSPI boot support
      scripts: imx-image: convert flag variables into bool
      scripts: imx-image: header_v2: factor out offset parameter
      scripts: imx-image: header_v2: add header_len parameter
      scripts: imx-image: add FlexSPI image support
      filetype: add NXP FlexSPI filetype
      ARM: i.MX: bbu: rename IMX_INTERNAL_FLAG_ERASE to IMX_BBU_FLAG_ERASE
      ARM: i.MX: bbu: add filetype offset
      ARM: i.MX: bbu: add FlexSPI update handler
      ARM: i.MX8M: enable FlexSPI image support
      ARM: i.MX8M: add qspi barebox and barebox-environment partitions
      ARM: i.MX8M: add QSPI update handler
      Documentation: i.MX8M: add EVK QSPI NOR barebox installation documentation

 Documentation/boards/imx/nxp-imx8mm-evk.rst        |  11 ++
 Documentation/boards/imx/nxp-imx8mn-evk.rst        |  12 ++
 Documentation/boards/imx/nxp-imx8mp-evk.rst        |  12 ++
 arch/arm/boards/nxp-imx8mm-evk/board.c             |   1 +
 .../nxp-imx8mm-evk/flash-header-imx8mm-evk.imxcfg  |   3 +
 arch/arm/boards/nxp-imx8mm-evk/lowlevel.c          |   1 +
 arch/arm/boards/nxp-imx8mn-evk/board.c             |   1 +
 .../nxp-imx8mn-evk/flash-header-imx8mn-evk.imxcfg  |   3 +
 arch/arm/boards/nxp-imx8mn-evk/lowlevel.c          |   4 +
 arch/arm/boards/nxp-imx8mp-evk/board.c             |   1 +
 .../nxp-imx8mp-evk/flash-header-imx8mp-evk.imxcfg  |   3 +
 arch/arm/dts/imx8mm-evk.dtsi                       |  19 +++
 arch/arm/dts/imx8mn-evk.dtsi                       |  19 +++
 arch/arm/dts/imx8mp-evk.dts                        |  19 +++
 arch/arm/mach-imx/Makefile                         |   1 +
 arch/arm/mach-imx/atf.c                            |   9 ++
 arch/arm/mach-imx/boot.c                           |  19 +++
 arch/arm/mach-imx/imx-bbu-internal.c               |  49 ++++++-
 arch/arm/mach-imx/xload-common.c                   | 120 +++++++++++++++++
 arch/arm/mach-imx/xload-qspi.c                     |  57 ++++++++
 common/bbu.c                                       |  42 +++---
 common/filetype.c                                  |   5 +
 drivers/mci/imx-esdhc-pbl.c                        | 108 +--------------
 drivers/mtd/devices/m25p80.c                       |  15 +--
 drivers/mtd/devices/mtd_dataflash.c                |   4 +-
 drivers/mtd/spi-nor/spi-nor.c                      |   1 -
 include/filetype.h                                 |   1 +
 include/mach/imx/bbu.h                             |  13 ++
 include/mach/imx/imx-header.h                      | 118 +++++++++++++++++
 include/mach/imx/xload.h                           |   8 ++
 include/spi/flash.h                                |  31 -----
 scripts/imx/imx-image.c                            | 146 +++++++++++++++++++--
 scripts/imx/imx.c                                  |  26 ++++
 33 files changed, 696 insertions(+), 186 deletions(-)
---
base-commit: 7960c168dae7f38406c0727c4b5a275e85c2533c
change-id: 20230228-v2023-02-0-topic-flexspi-c4d81e8b5b9a

Best regards,
-- 
Marco Felsch <m.felsch@pengutronix.de>



