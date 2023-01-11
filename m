Delivery-date: Wed, 11 Jan 2023 18:43:14 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFf86-0091gc-OR
	for lore@lore.pengutronix.de; Wed, 11 Jan 2023 18:43:14 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFf84-0006Ag-1Z
	for lore@pengutronix.de; Wed, 11 Jan 2023 18:43:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=C6ifDaEfMIj+kf6DeA8zhoG96Mactz0fcULR95oMC1A=; b=tDaIBO5H5jXaTlhhs/opaqd5Iv
	AG1VccpOdP9t4gzrXD6led4/SPfGy+inTN8q0Ax+NgA9iRasdQI9dpS+YivcplBzxR/Wf0U3wuGS1
	JmMLmkxqqcZTLwi/wR63bt73oDRribKurnN8Xp9gjTLUNq7vr8J4/AEN1mzT/7ApXZmNJXZ0MtXiq
	27EyTiZ0XOlNw1eccJSnH7CsbbTFOavA4K3LYOIsXiD7B74fUamGhf3ObExaUQRR3pKuPAxSKKqAa
	UORUt83oE8O9wqMIWYUMfX1kJhzRiUy6yq9wQdI2MdH/15B7MDBMcQuUgOGbazgfF2xo7lhHoAgIY
	QIfhIC9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFf6d-00CTwz-Uv; Wed, 11 Jan 2023 17:41:44 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFf5T-00CTI5-6m
	for barebox@lists.infradead.org; Wed, 11 Jan 2023 17:40:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pFf5R-00054H-Vh
	for barebox@lists.infradead.org; Wed, 11 Jan 2023 18:40:30 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pFf5R-005M6m-9R
	for barebox@lists.infradead.org; Wed, 11 Jan 2023 18:40:29 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pFf5O-007DG6-DL
	for barebox@lists.infradead.org; Wed, 11 Jan 2023 18:40:26 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed, 11 Jan 2023 18:40:08 +0100
Message-Id: <20230111174023.1719129-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230111_094031_338155_E43EE379 
X-CRM114-Status: GOOD (  13.37  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 00/15] mtd: nand: atmel: import Linux NAND controller driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

For a few years, Linux has been using the new EBI bindings for NAND
controllers on all AT91 SoCs newer than the AT91RM2000. We have so far
only supported the old bindings by hacking the DT, but this doesn't
suffice for the SAMA5D4. Therefore import a new state of the Linux NAND
controller driver. We still keep around the old barebox driver to
support the non-DT enabled AT91 platforms.

Ahmad Fatoum (15):
  asm-generic: io.h: sync with Linux
  mtd: nand: base: implement nand_gpio_waitrdy
  mtd: nand: prefix enum nand_ecc_algo constants with NAND_ECC_ALGO_
  mtd: nand: rename nand_device::eccreq to Linux' ecc.requirements
  mtd: nand: define nand_get_(small|large)_page_ooblayout
  mtd: nand: define nand_interface_is_sdr
  mtd: nand: provide Linux' struct nand_ecc_ctrl::engine_type
  driver: implement dev_request_resource
  lib: provide stub Linux "generic" allocator API
  memory: add Atmel EBI driver
  mfd: add atmel-smc driver
  mtd: nand: atmel: import Linux NAND controller driver
  ARM: AT91: sama5d3_xplained: switch to upstream binding
  mtd: nand: drop DT support in legacy driver
  ARM: AT91: sama5d3: always read memory size from controller

 arch/arm/dts/at91-microchip-ksz9477-evb.dts   |    4 -
 arch/arm/dts/at91-sama5d3_xplained.dts        |   29 -
 arch/arm/dts/sama5d3.dtsi                     |   17 +-
 drivers/base/driver.c                         |   19 +-
 drivers/memory/Kconfig                        |   14 +
 drivers/memory/Makefile                       |    1 +
 drivers/memory/atmel-ebi.c                    |  614 +++++
 drivers/mfd/Kconfig                           |    4 +
 drivers/mfd/Makefile                          |    1 +
 drivers/mfd/atmel-smc.c                       |  352 +++
 drivers/mtd/nand/Kconfig                      |   11 +-
 drivers/mtd/nand/Makefile                     |    2 +-
 drivers/mtd/nand/atmel/Makefile               |    3 +
 drivers/mtd/nand/{ => atmel}/atmel_nand_ecc.h |    0
 .../mtd/nand/{atmel_nand.c => atmel/legacy.c} |  106 +-
 drivers/mtd/nand/atmel/nand-controller.c      | 2049 +++++++++++++++++
 drivers/mtd/nand/atmel/pmecc.c                |  992 ++++++++
 drivers/mtd/nand/atmel/pmecc.h                |   70 +
 drivers/mtd/nand/nand_base.c                  |   86 +-
 drivers/mtd/nand/nand_esmt.c                  |   10 +-
 drivers/mtd/nand/nand_fsl_ifc.c               |    2 +-
 drivers/mtd/nand/nand_hynix.c                 |   40 +-
 drivers/mtd/nand/nand_jedec.c                 |    4 +-
 drivers/mtd/nand/nand_micron.c                |   16 +-
 drivers/mtd/nand/nand_onfi.c                  |    8 +-
 drivers/mtd/nand/nand_samsung.c               |   18 +-
 drivers/mtd/nand/nand_toshiba.c               |   12 +-
 include/asm-generic/io.h                      |  401 +++-
 include/driver.h                              |    5 +
 include/linux/genalloc.h                      |   36 +
 include/linux/mfd/syscon/atmel-matrix.h       |  112 +
 include/linux/mfd/syscon/atmel-smc.h          |  119 +
 include/linux/mtd/nand.h                      |   27 +-
 include/linux/mtd/rawnand.h                   |   43 +-
 include/linux/mutex.h                         |    2 +
 include/soc/at91/atmel-sfr.h                  |    2 +
 lib/Kconfig                                   |    5 +
 lib/Makefile                                  |    1 +
 lib/genalloc.c                                |  118 +
 39 files changed, 5074 insertions(+), 281 deletions(-)
 create mode 100644 drivers/memory/atmel-ebi.c
 create mode 100644 drivers/mfd/atmel-smc.c
 create mode 100644 drivers/mtd/nand/atmel/Makefile
 rename drivers/mtd/nand/{ => atmel}/atmel_nand_ecc.h (100%)
 rename drivers/mtd/nand/{atmel_nand.c => atmel/legacy.c} (92%)
 create mode 100644 drivers/mtd/nand/atmel/nand-controller.c
 create mode 100644 drivers/mtd/nand/atmel/pmecc.c
 create mode 100644 drivers/mtd/nand/atmel/pmecc.h
 create mode 100644 include/linux/genalloc.h
 create mode 100644 include/linux/mfd/syscon/atmel-matrix.h
 create mode 100644 include/linux/mfd/syscon/atmel-smc.h
 create mode 100644 lib/genalloc.c

-- 
2.30.2



