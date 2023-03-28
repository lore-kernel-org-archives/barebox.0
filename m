Delivery-date: Tue, 28 Mar 2023 09:42:03 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ph3xy-00HMf7-Gq
	for lore@lore.pengutronix.de; Tue, 28 Mar 2023 09:42:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ph3xy-0001Xi-3q
	for lore@pengutronix.de; Tue, 28 Mar 2023 09:42:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=4JmRhch/3HAWkQ7J0hzr4sJQ9S0ii+X9WBSBdg2Xaac=; b=2rayG6XmPVDH65AOcXCC1S2/Pa
	JQtI/moaVbRP5e7PSUMnKBM+8pa5k29GJtcuTZHjKHSSDgJNbMAHGRuDcWWTo3CjI+Pgv2TLt6Zkj
	OOVc4ouMaEWIBDcGvRRni+5JVFHnRrpcuEXDXli0W0+g19eKHktRoI9Uc4s/dQZEeZ2OGBQZ/o6mY
	br9ftvA0+ktXx9CbvPAOMaAk6BuidexVC/9uOWay111uTwJ8zAJDBQsETcSf2hHdtViPmqD8FC2Xv
	QJ/d5tNoLId9X5Lk0YD9YEEGZrScqmvQbVgwYP5twmJKCrkaSsRdkcYKV8WIsDj3Y8X4Uvedg2UBH
	ARCa32zw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ph3wl-00DUyX-03;
	Tue, 28 Mar 2023 07:40:47 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ph3wg-00DUv3-0U
	for barebox@lists.infradead.org;
	Tue, 28 Mar 2023 07:40:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ph3wd-00017h-G6; Tue, 28 Mar 2023 09:40:39 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1ph3wc-007Fvp-Rp; Tue, 28 Mar 2023 09:40:38 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1ph3wb-0052xb-KT; Tue, 28 Mar 2023 09:40:37 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 28 Mar 2023 09:40:31 +0200
Message-Id: <20230328074037.1202993-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230328_004042_196466_0BDC3D53 
X-CRM114-Status: GOOD (  15.65  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 0/6] ARM: Rockchip: Read amount of memory from DDR controller
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This series adds support for reading the amount of memory from
the DDR controller. This helps on boards which come with
different amounts of memory like the Radxa Rock3a.

This series also fixes issues with an upstream TF-A firmware. With this
the IRAM where the bootsource is stored is no longer accessible in
normal mode. We have to read its contents before starting the TF-A.
For this it became necessary to add a common barebox entry function
for rk3568, to get a common place to read the IRAM contents.

Sascha

Changes since v1:
- Call relocate_to_adr_full() from board code to make sure the
  fdt from the relocated binary is used, not from the original
  binary
- Add patch to pass a NULL fdt to TF-A

Ahmad Fatoum (2):
  ARM: Rockchip: implement memory read out from controller
  ARM: Rockchip: make bootsource logic generic to all SoCs

Sascha Hauer (4):
  ARM: dts: rk356x: Add DMC controller node
  ARM: Rockchip: Add rk3568 specific barebox entry function
  ARM: Rockchip: rk3568: use rk3568_barebox_entry()
  ARM: Rockchip: Do not pass device tree to TF-A

 arch/arm/boards/pine64-quartz64/lowlevel.c    |  30 +--
 arch/arm/boards/radxa-rock3/lowlevel.c        |  31 +--
 .../rockchip-rk3568-bpi-r2pro/lowlevel.c      |  31 +--
 .../arm/boards/rockchip-rk3568-evb/lowlevel.c |  32 +--
 arch/arm/dts/rk356x.dtsi                      |   5 +
 arch/arm/mach-rockchip/Makefile               |   3 +-
 arch/arm/mach-rockchip/atf.c                  |  34 +++
 arch/arm/mach-rockchip/bootrom.c              |  51 ++++
 arch/arm/mach-rockchip/dmc.c                  | 232 ++++++++++++++++++
 arch/arm/mach-rockchip/rk3568.c               |  29 +--
 include/bootsource.h                          |   1 +
 include/linux/sizes.h                         |   3 +
 include/mach/rockchip/atf.h                   |   2 +
 include/mach/rockchip/bootrom.h               |  32 +++
 include/mach/rockchip/dmc.h                   |  86 +++++++
 include/mach/rockchip/rk3399-regs.h           |   1 +
 include/mach/rockchip/rk3568-regs.h           |   1 +
 17 files changed, 469 insertions(+), 135 deletions(-)
 create mode 100644 arch/arm/mach-rockchip/bootrom.c
 create mode 100644 arch/arm/mach-rockchip/dmc.c
 create mode 100644 include/mach/rockchip/bootrom.h
 create mode 100644 include/mach/rockchip/dmc.h

-- 
2.39.2



