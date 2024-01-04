Delivery-date: Thu, 04 Jan 2024 15:19:11 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rLOYy-003cSh-1D
	for lore@lore.pengutronix.de;
	Thu, 04 Jan 2024 15:19:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rLOYw-0005FY-A6
	for lore@pengutronix.de; Thu, 04 Jan 2024 15:19:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=BtPr/bp8psxxoYsphNZE8SNtV6MzKtMYKKZWp6yrk5s=; b=kguw4Lsyp55bsIVorEdG+6mSKp
	ELA18HUcOKkGs2+Mw3Z72i3SBgjwrX0ZjHk6ls/EGdVR2qyJO5RkarcbivaZ/JaJVRUv5uggmqg7q
	glMH4t2aEcPTyZ2j/0JLh70LEUv8gyHpXMutvapqQUMf9hVB8kDwO6Fr4MHkZ8SU4T2NDOQzo13cP
	VcwBSb2uDlCr2A/d2BWxmZi04k5E8ePyryVmwRelYYbBGLNtqjXKmpcHTmg2u65qBL+qGJwVKwMX3
	Vhcb7frntgYrd/C7AqBLKLoAKYYvfGsd34juUePAyN4d7tOTNgPXPVI/3KhlYqMsSPxGh0D+IETlo
	rgJbvVlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rLOXo-00EJ6Q-2h;
	Thu, 04 Jan 2024 14:18:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rLOXf-00EIyl-2L
	for barebox@lists.infradead.org;
	Thu, 04 Jan 2024 14:17:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rLOXc-0004HO-0I; Thu, 04 Jan 2024 15:17:48 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rLOXb-000My1-Ie; Thu, 04 Jan 2024 15:17:47 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1rLOXb-0017xG-1d;
	Thu, 04 Jan 2024 15:17:47 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  4 Jan 2024 15:17:27 +0100
Message-Id: <20240104141746.165014-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240104_061751_810725_1CD51FFB 
X-CRM114-Status: GOOD (  12.35  )
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 00/19] ARM: add Layerscape LS1028a support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This series adds the missing pieces to add NXP Layerscape LS1028a
support. The only supported board so far is the LS1028a RDB board.

Sascha Hauer (18):
  soc/fsl: import immap_lsch3 from U-Boot
  soc/fsl/immap_lsch2.h: cleanup
  ARM: layerscape: decide SCFG endianess during runtime
  ARM: layerscape: cleanup erratum_a009007
  ARM: layerscape: cleanup erratum_a008997
  ARM: layerscape: cleanup erratum_a009798
  ARM: layerscape: drop wrong errata workaround
  ARM: layerscape: cleanup erratum_a009008
  ARM: Layerscape: pass base addresses to errata functions
  ARM: Layerscape: add layerscape_uart_putc()
  ARM: layerscape: implement ls1028a errata
  ARM: layerscape: implement ls1028a debug_ll
  include: <asm-generic/bug.h>: implement ASSERT()
  ARM: Layerscape: add tzc400 support
  ARM: Add ls1028a lowlevel init
  ARM: atf: add bl31 v2 calling method
  mci: imx-esdhc-pbl: factor out common function
  mci: imx-esdhc-pbl: implement esdhc xload for ls1028a

Uwe Kleine-König (1):
  ARM: Layerscape: add basic support for NXP LS1028a RDB

 arch/arm/boards/Makefile                      |   1 +
 arch/arm/boards/ls1028ardb/Makefile           |   5 +
 arch/arm/boards/ls1028ardb/board.c            |  30 ++
 arch/arm/boards/ls1028ardb/lowlevel.c         | 142 ++++++++
 arch/arm/boards/ls1028ardb/ls1028ardb_pbi.cfg |  14 +
 .../boards/ls1028ardb/ls1028ardb_rcw_sd.cfg   |  14 +
 arch/arm/boards/ls1028ardb/start.S            |  19 ++
 arch/arm/configs/layerscape_defconfig         |   5 +-
 arch/arm/cpu/atf.c                            |  94 ++++++
 arch/arm/dts/Makefile                         |   1 +
 arch/arm/dts/fsl-ls1028a-rdb.dts              |  12 +
 arch/arm/include/asm/atf_common.h             |  40 +++
 arch/arm/mach-layerscape/Kconfig              |  15 +-
 arch/arm/mach-layerscape/Makefile             |   5 +-
 arch/arm/mach-layerscape/errata.c             | 120 ++++---
 arch/arm/mach-layerscape/lowlevel-ls1028a.c   |  42 +++
 arch/arm/mach-layerscape/lowlevel-ls102xa.c   |   7 +
 arch/arm/mach-layerscape/lowlevel-ls1046a.c   |   2 +
 arch/arm/mach-layerscape/soc.c                |  56 ++++
 arch/arm/mach-layerscape/tzc400.c             | 303 ++++++++++++++++++
 arch/arm/mach-layerscape/tzc400.h             | 164 ++++++++++
 drivers/mci/imx-esdhc-pbl.c                   | 115 +++++--
 firmware/Kconfig                              |   3 +
 firmware/Makefile                             |   1 +
 images/Makefile.layerscape                    |   9 +
 include/asm-generic/bug.h                     |   5 +
 include/mach/layerscape/debug_ll.h            |  42 ++-
 include/mach/layerscape/errata.h              |   2 +
 include/mach/layerscape/layerscape.h          |  19 ++
 include/mach/layerscape/lowlevel.h            |   3 +
 include/mach/layerscape/xload.h               |   4 +
 include/soc/fsl/immap_lsch2.h                 |  19 +-
 include/soc/fsl/immap_lsch3.h                 | 187 +++++++++++
 include/soc/fsl/scfg.h                        |  19 ++
 34 files changed, 1425 insertions(+), 94 deletions(-)
 create mode 100644 arch/arm/boards/ls1028ardb/Makefile
 create mode 100644 arch/arm/boards/ls1028ardb/board.c
 create mode 100644 arch/arm/boards/ls1028ardb/lowlevel.c
 create mode 100644 arch/arm/boards/ls1028ardb/ls1028ardb_pbi.cfg
 create mode 100644 arch/arm/boards/ls1028ardb/ls1028ardb_rcw_sd.cfg
 create mode 100644 arch/arm/boards/ls1028ardb/start.S
 create mode 100644 arch/arm/dts/fsl-ls1028a-rdb.dts
 create mode 100644 arch/arm/mach-layerscape/lowlevel-ls1028a.c
 create mode 100644 arch/arm/mach-layerscape/soc.c
 create mode 100644 arch/arm/mach-layerscape/tzc400.c
 create mode 100644 arch/arm/mach-layerscape/tzc400.h
 create mode 100644 include/soc/fsl/immap_lsch3.h
 create mode 100644 include/soc/fsl/scfg.h

-- 
2.39.2



