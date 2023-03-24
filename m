Delivery-date: Fri, 24 Mar 2023 15:04:47 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pfi2A-00DH75-2m
	for lore@lore.pengutronix.de; Fri, 24 Mar 2023 15:04:46 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pfi29-0002Lt-Iw
	for lore@pengutronix.de; Fri, 24 Mar 2023 15:04:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=udSwVmWzMS43ULjKJ7KXUUQVglwrhFqd+aU0Zb6bNFs=; b=aqKJmUcPQZjHIwMjumDloGjFgx
	xmhikx6CHTmzuJT5olCOpbRK/LAvFPUDlLJCcoh/xKJX006PI5hXnF35NyI1GqHKM5LM+rXhsM8oZ
	T/yRAMOADHrKVof67N2iRPEXJEChfgpYwbCrn3sTKx2UWR3CmrOvzNaqS+wM6heo0PWjbmWZ4rSfR
	zpODb17kSziM1umrZPR5fzP6ncd3uf5za/nw4waOLP10HV9zuUg/pgYS8nd1dGfnwYK6gOXSUciq7
	1FRhB3/Xdel2JEZa9wD4K5KgCWFjFoWVCiNbSTfa8IcC4o2/Wh/BdgCjJsnrkezZ6AXD/4UW15p0f
	QKmCh+CA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pfi12-004Zl5-2M;
	Fri, 24 Mar 2023 14:03:36 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pfi0y-004ZjX-37
	for barebox@lists.infradead.org;
	Fri, 24 Mar 2023 14:03:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pfi0x-000223-FT; Fri, 24 Mar 2023 15:03:31 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pfi0w-006Ojo-Pv; Fri, 24 Mar 2023 15:03:30 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pfi0v-009ZNJ-U1; Fri, 24 Mar 2023 15:03:29 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 24 Mar 2023 15:03:22 +0100
Message-Id: <20230324140327.2154039-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230324_070333_026981_A4C88285 
X-CRM114-Status: GOOD (  14.53  )
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
Subject: [PATCH 0/5] ARM: Rockchip: Read amount of memory from DDR controller
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

Ahmad Fatoum (2):
  ARM: Rockchip: implement memory read out from controller
  ARM: Rockchip: make bootsource logic generic to all SoCs

Sascha Hauer (3):
  ARM: dts: rk356x: Add DMC controller node
  ARM: Rockchip: Add rk3568 specific barebox entry function
  ARM: Rockchip: rk3568: use rk3568_barebox_entry()

 arch/arm/boards/pine64-quartz64/lowlevel.c    |  31 +--
 arch/arm/boards/radxa-rock3/lowlevel.c        |  32 +--
 .../rockchip-rk3568-bpi-r2pro/lowlevel.c      |  32 +--
 .../arm/boards/rockchip-rk3568-evb/lowlevel.c |  33 +--
 arch/arm/dts/rk356x.dtsi                      |   5 +
 arch/arm/mach-rockchip/Makefile               |   3 +-
 arch/arm/mach-rockchip/atf.c                  |  25 ++
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
 17 files changed, 456 insertions(+), 143 deletions(-)
 create mode 100644 arch/arm/mach-rockchip/bootrom.c
 create mode 100644 arch/arm/mach-rockchip/dmc.c
 create mode 100644 include/mach/rockchip/bootrom.h
 create mode 100644 include/mach/rockchip/dmc.h

-- 
2.30.2



