Delivery-date: Thu, 02 Mar 2023 12:17:54 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pXgwb-006Unq-Ti
	for lore@lore.pengutronix.de; Thu, 02 Mar 2023 12:17:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pXgwa-0001de-IM
	for lore@pengutronix.de; Thu, 02 Mar 2023 12:17:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=WlIuSjGShGe95kDBUMB5Lm2nmb45N9L0CnW2IaB8Dxc=; b=RYfZr3+4GMtpBEwkvxIRmBPKEQ
	TIFPq0Kkkskrz54SIYaKwMs2b23jLiQQTBoR9tETs3pFlLxXAkU2PU7ODkYpXVbzkIfN0FgDJO7Iw
	SUyaoNomhJYMciybZADMZSagKZDILTE4uwU22g/njXOxf3bHILk7XygHx+oPK+NormrIiGW4OFo1/
	af9Ha6QkLK8yR9UXF607000KPTw32KptBx7CPOxD3mBtIvp07XfjyD2WC1K1EMK6O6m8mFaZdRyx5
	QBzhH80on/0WbYZZ/R1+SVQ+sxWS6A5DPJmeEog3hYkWNcokqqu9h3sgF9uLwwDb9fGTAhmrawEXu
	D4r4VHsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pXgv5-001sKZ-TC; Thu, 02 Mar 2023 11:16:19 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pXgux-001sFq-3u
	for barebox@lists.infradead.org; Thu, 02 Mar 2023 11:16:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pXguv-00016B-57; Thu, 02 Mar 2023 12:16:09 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pXguu-001Jcv-DI; Thu, 02 Mar 2023 12:16:08 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pXgut-004QVD-Ql; Thu, 02 Mar 2023 12:16:07 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  2 Mar 2023 12:15:53 +0100
Message-Id: <20230302111606.1054037-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230302_031611_214594_AADE33CC 
X-CRM114-Status: GOOD (  12.14  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 00/13] ARM: misc cleanups
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This series has some misc cleanups I came along while working
on ARM multi-arch support.

Sascha

Sascha Hauer (13):
  ARM: add ENTRY_FUNCTION_HEAD macro
  ARM: mvebu: Use ENTRY_FUNCTION_HEAD
  ARM: at91: Use ENTRY_FUNCTION_HEAD
  ARM: Drop HAVE_MACH_ARM_HEAD
  ARM: drop CONFIG_HAS_ASM_DEBUG_LL
  regulator: pfuze: remove unused include
  ARM: drop unused zynq code in Makefile
  ARM: drop unused mvebu code in Makefile
  ARM: drop unused am35xx code in Makefile
  ARM: Makefile: Drop board-y
  ARM: i.MX: Add missing include
  ARM: stm32mp_defconfig: Enable remaining boards
  mci: imx-esdhc-pbl: add missing include

 Makefile                                      |  4 +-
 arch/arm/Kconfig                              |  6 +-
 arch/arm/Makefile                             | 65 +------------------
 arch/arm/boards/Makefile                      |  2 +
 arch/arm/boards/animeo_ip/lowlevel.c          |  4 +-
 arch/arm/boards/at91rm9200ek/lowlevel.c       |  6 +-
 arch/arm/boards/at91sam9260ek/lowlevel.c      |  6 +-
 arch/arm/boards/at91sam9261ek/lowlevel_init.c |  5 +-
 arch/arm/boards/at91sam9m10g45ek/lowlevel.c   |  4 +-
 arch/arm/boards/at91sam9m10ihd/lowlevel.c     |  4 +-
 arch/arm/boards/at91sam9n12ek/lowlevel.c      |  4 +-
 arch/arm/boards/dss11/lowlevel.c              |  4 +-
 .../boards/globalscale-guruplug/lowlevel.c    |  4 +-
 .../arm/boards/globalscale-mirabox/lowlevel.c |  4 +-
 arch/arm/boards/haba-knx/lowlevel.c           |  4 +-
 arch/arm/boards/lenovo-ix4-300d/lowlevel.c    |  4 +-
 .../boards/marvell-armada-xp-db/lowlevel.c    |  4 +-
 .../boards/marvell-armada-xp-gp/lowlevel.c    |  4 +-
 arch/arm/boards/netgear-rn104/lowlevel.c      |  4 +-
 arch/arm/boards/netgear-rn2120/lowlevel.c     |  4 +-
 .../phytec-phycore-pxa270/lowlevel_init.S     |  1 +
 .../boards/plathome-openblocks-a6/lowlevel.c  |  4 +-
 .../boards/plathome-openblocks-ax3/lowlevel.c |  4 +-
 arch/arm/boards/pm9261/lowlevel_init.c        |  3 +-
 arch/arm/boards/pm9263/lowlevel_init.c        |  3 +-
 arch/arm/boards/pm9g45/lowlevel.c             |  4 +-
 arch/arm/boards/qil-a926x/lowlevel.c          |  6 +-
 arch/arm/boards/solidrun-cubox/lowlevel.c     |  4 +-
 arch/arm/boards/telit-evk-pro3/lowlevel.c     |  4 +-
 .../arm/boards/tny-a926x/tny_a9260_lowlevel.c |  6 +-
 .../arm/boards/tny-a926x/tny_a9263_lowlevel.c |  4 +-
 arch/arm/boards/turris-omnia/lowlevel.c       |  4 +-
 .../arm/boards/usb-a926x/usb_a9260_lowlevel.c |  6 +-
 .../arm/boards/usb-a926x/usb_a9263_lowlevel.c |  5 +-
 arch/arm/boards/usi-topkick/lowlevel.c        |  4 +-
 arch/arm/configs/stm32mp_defconfig            |  2 +
 arch/arm/include/asm/barebox-arm-head.h       |  4 --
 arch/arm/include/asm/barebox-arm.h            |  7 +-
 arch/arm/include/asm/debug_ll.h               |  2 +
 arch/arm/mach-at91/Kconfig                    |  8 ---
 .../mach-at91/include/mach/barebox-arm-head.h | 12 ++--
 .../arm/mach-imx/include/mach/imx7-ccm-regs.h |  1 +
 .../include/mach/barebox-arm-head.h           | 12 ++--
 arch/mips/include/asm/debug_ll.h              |  6 ++
 arch/riscv/Kconfig.socs                       | 12 ++--
 arch/sandbox/Kconfig                          |  2 +-
 arch/x86/include/asm/debug_ll.h               |  6 ++
 common/Kconfig                                |  4 --
 drivers/mci/imx-esdhc-pbl.c                   |  3 +
 drivers/regulator/pfuze.c                     |  1 -
 include/debug_ll.h                            |  8 +--
 51 files changed, 117 insertions(+), 181 deletions(-)
 create mode 100644 arch/mips/include/asm/debug_ll.h
 create mode 100644 arch/x86/include/asm/debug_ll.h

-- 
2.30.2



