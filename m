Delivery-date: Tue, 02 May 2023 11:15:33 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ptm6g-002Acb-Nv
	for lore@lore.pengutronix.de; Tue, 02 May 2023 11:15:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ptm6e-00024b-2R
	for lore@pengutronix.de; Tue, 02 May 2023 11:15:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=30RUexRSnWfnlcUD9ahjrPkHG49pnYwWm6WQZCT+Rz8=; b=tqci8I/tb1wYp1u5+Isvoe9u/m
	O4HnPrkr5VmXzlupqXxoCJZHDgTySv4NmkgVrl06Ov8Cq+GHuW4b6MTxRC1qDHCk0axQjlHbc7gY7
	TxKYREY25rsVfLLT+o6YuoakB8ZMIAZ+v76ThlYQv0C9WlJoxAs40ds3vjRPmM0toFnRPi8vTC8/t
	y3U67uoKCdkwj91u0mOyzVO9dThSYtDOH6BLqVVkyOuQSlYoZA8ZQDYWFlzDEykDer2/oDmRbpP+o
	8zXWDFDeAq31A1yW/QhZqAy9yC2PQsYL5qDrCLCAlnYtWSJrEBjTtuXMQMvUXDOGTmbJVTsSr83hU
	Sx6+J02Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ptm5e-000jNE-25;
	Tue, 02 May 2023 09:14:30 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ptm5X-000jGl-1h
	for barebox@lists.infradead.org;
	Tue, 02 May 2023 09:14:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ptm5W-00019t-2s; Tue, 02 May 2023 11:14:22 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1ptm5V-000YjL-GM; Tue, 02 May 2023 11:14:21 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1ptm5U-00Aqyh-31; Tue, 02 May 2023 11:14:20 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue,  2 May 2023 11:14:07 +0200
Message-Id: <20230502091419.2551228-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230502_021423_567716_3F5BAB2F 
X-CRM114-Status: GOOD (  11.71  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 00/12] ARM Versatile updates
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This breathes some life back into the versatile platform. The platform
has been degraded over time and was no longer working as expected. Move
it over to device tree support, multi-image, multi-arch.

Sascha

Sascha Hauer (12):
  ARM: versatile: Enable CONFIG_RELOCATABLE
  ARM: versatile: Use common clk framework
  ARM: versatile: drop platform code to register UART
  ARM: versatile: drop platform code to register GPIOs
  ARM: versatile: Use flash from device tree
  ARM: versatile: Use smc91c111 from device tree
  ARM: versatile: make sure to run initcalls on versatile only
  ARM: versatile: simplify ARM1176 support
  ARM: versatile: move over to multi image support
  ARM: versatile: move over to multi arch support
  ARM: versatile: Use existing clocksource driver
  ARM: Merge imx_defconfig and versatilepb_defconfig into
    multi_v5_v6_defconfig

 Documentation/boards/imx.rst                  |   2 +-
 Documentation/boards/imx/karo-tx25.rst        |   2 +-
 .../boards/imx/phytec-phycard-i.mx27.rst      |   2 +-
 .../boards/imx/phytec-phycore-i.mx27.rst      |   2 +-
 arch/arm/Kconfig                              |  19 ++-
 .../boards/versatile/env/init/mtdparts-nor    |   6 -
 arch/arm/boards/versatile/lowlevel.c          |   2 +-
 arch/arm/boards/versatile/versatilepb.c       |  26 +---
 .../{imx_defconfig => multi_v5_v6_defconfig}  |   5 +
 .../arm/configs/versatilepb_arm1176_defconfig |  88 -----------
 arch/arm/configs/versatilepb_defconfig        |  80 ----------
 arch/arm/dts/versatile-pb.dts                 |  26 ++++
 arch/arm/mach-versatile/Kconfig               |  11 --
 arch/arm/mach-versatile/core.c                | 144 +-----------------
 drivers/net/smc91111.c                        |  16 +-
 images/Makefile                               |   1 +
 images/Makefile.versatile                     |   8 +
 include/mach/versatile/init.h                 |   8 -
 include/platform_data/eth-smc91111.h          |   1 -
 19 files changed, 78 insertions(+), 371 deletions(-)
 delete mode 100644 arch/arm/boards/versatile/env/init/mtdparts-nor
 rename arch/arm/configs/{imx_defconfig => multi_v5_v6_defconfig} (94%)
 delete mode 100644 arch/arm/configs/versatilepb_arm1176_defconfig
 delete mode 100644 arch/arm/configs/versatilepb_defconfig
 create mode 100644 images/Makefile.versatile
 delete mode 100644 include/mach/versatile/init.h

-- 
2.39.2



