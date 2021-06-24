Delivery-date: Thu, 24 Jun 2021 17:02:57 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lwQsb-00054x-VL
	for lore@lore.pengutronix.de; Thu, 24 Jun 2021 17:02:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lwQsa-0001lH-M7
	for lore@pengutronix.de; Thu, 24 Jun 2021 17:02:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XdSec2PGF3QXPlrE4K8Lb57jYa4orQeDrHDUs5yXMew=; b=lBvn2OGTGVCmoP
	UdbodHLkhb21b8NJSapwcynZlEk6a2DR4OwAB519D9QW8l/wBc9LR6yPMbFVjtVO77pZ3eht1cLYo
	kaf0GhJHfuh9qDUzajk2Myde4nEdx2n1MfIk4yvLezWnoiadpPCNvFn+eg3lhQrwGaR+2ikf8EemV
	oXnwQu1kYTlwuRW6izoDxQ8K1IuKER3gy0yZL7S7Pfl4uVJ88R3Yq/D0GVCmUcXxcv8kJC+QtreuA
	5nf4N6hDISQ0xnDIvy3ntWnI3XgPk3l+2tvZv6D49dfScHROMnFr15e3eYLZj5j0XJoYpzhpBQtzp
	IXAKTsOZKAtMkCCLqalQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lwQrB-00F9bW-A8; Thu, 24 Jun 2021 15:01:29 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lwQqe-00F9Mx-Qx
 for barebox@lists.infradead.org; Thu, 24 Jun 2021 15:01:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>) id 1lwQqd-0000q7-8Z
 for barebox@lists.infradead.org; Thu, 24 Jun 2021 17:00:55 +0200
Received: from [2a0a:edc0:0:1101:1d::39] (helo=dude03.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>) id 1lwQqc-0002Ah-Hc
 for barebox@lists.infradead.org; Thu, 24 Jun 2021 17:00:54 +0200
Received: from mtr by dude03.red.stw.pengutronix.de with local (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>) id 1lwQqc-0053b3-EJ
 for barebox@lists.infradead.org; Thu, 24 Jun 2021 17:00:54 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
To: barebox@lists.infradead.org
Date: Thu, 24 Jun 2021 17:00:47 +0200
Message-Id: <20210624150054.1205422-1-m.tretter@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210624_080057_076748_DEF2641E 
X-CRM114-Status: GOOD (  12.63  )
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
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 0/7] ZynqMP: Cleanup and extend board support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This is v2 of the series to extend the ZynqMP ZCU104 board support.

This series adds support for reset source detection, Barebox environment,
barebox_update and soft reset (via PSCI) for the ZynqMP ZCU104 board. It
extends the zynqmp_defconfig to enable more features that you would probably
want by default on a ZynqMP board. I also added some introductory information
how to build and use Barebox on the ZynqMP.

Compared to v1, I removed the actually unused zynqmp.h file, and changed the
reset source from RESET_UKWN to RESET_JTAG on debugger reset.

Michael

Changelog:

- Set RESET_JTAG on debugger reset
- Remove unused zynqmp.h

Michael Tretter (7):
  ARM: zynqmp: set reset source
  clk: zynqmp: do not enable already enabled clocks
  dts: zcu104: add Barebox environment
  ARM: zynqmp: add update handler
  ARM: zynqmp: zcu104: register update handler
  ARM: zynqmp: defconfig: enable more features
  Documentation: zynqmp: add some documentation

 Documentation/boards/zynqmp.rst               | 40 +++++++++++
 arch/arm/boards/xilinx-zcu104/Makefile        |  1 +
 arch/arm/boards/xilinx-zcu104/board.c         | 18 +++++
 arch/arm/configs/zynqmp_defconfig             | 23 ++++++
 arch/arm/dts/zynqmp-zcu104-revA.dts           | 10 +++
 arch/arm/mach-zynqmp/Makefile                 |  2 +
 .../arm/mach-zynqmp/include/mach/zynqmp-bbu.h | 21 ++++++
 arch/arm/mach-zynqmp/zynqmp-bbu.c             | 48 +++++++++++++
 arch/arm/mach-zynqmp/zynqmp.c                 | 72 +++++++++++++++++++
 drivers/clk/zynqmp/clk-gate-zynqmp.c          |  3 +
 10 files changed, 238 insertions(+)
 create mode 100644 Documentation/boards/zynqmp.rst
 create mode 100644 arch/arm/boards/xilinx-zcu104/board.c
 create mode 100644 arch/arm/mach-zynqmp/include/mach/zynqmp-bbu.h
 create mode 100644 arch/arm/mach-zynqmp/zynqmp-bbu.c
 create mode 100644 arch/arm/mach-zynqmp/zynqmp.c

-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

