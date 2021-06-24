Delivery-date: Thu, 24 Jun 2021 12:26:10 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lwMYk-0000Hp-V3
	for lore@lore.pengutronix.de; Thu, 24 Jun 2021 12:26:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lwMYj-0006Pr-5C
	for lore@pengutronix.de; Thu, 24 Jun 2021 12:26:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tekrliO9y1IZu0q55KtAuMUv/RKXdOkPMIaBG9xqC90=; b=pIvsMkz8SJE53k
	w9BiinYC+I0rJjrmW6MFS07jmvaIT4jDVVMYQmrrsyG5dnDyoGqkcN+HDpQVhcNWbEjX+XYdH3UPf
	jCpSm3XkVYtsejePLrr6CmSm0psLLOhynRChUxeaqc1pVmxxaoaR5MU1eIWmeKiJHQeDfCSyBHiaV
	XLIJfUA3xM4B3FL0vx/Z0/1k3ySb+DRpEJeW6YOWgl7v7FTGz/zhebZeD+INaAC/HEI9ilwNbrSZW
	KQsyYFTmxxRsylENH5KMLNN6I8tucXSyZvs+eORMl8Gl6RZOgLJwng0BYHD+QYFFKeUmcWcq8Ic7O
	gw+tAc+OT3MKAVOv9dZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lwMXE-00E3tO-0q; Thu, 24 Jun 2021 10:24:36 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lwMWQ-00E3a8-Ql
 for barebox@lists.infradead.org; Thu, 24 Jun 2021 10:23:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>) id 1lwMWM-0005ph-Vs
 for barebox@lists.infradead.org; Thu, 24 Jun 2021 12:23:43 +0200
Received: from [2a0a:edc0:0:1101:1d::39] (helo=dude03.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>) id 1lwMWM-0001j4-FO
 for barebox@lists.infradead.org; Thu, 24 Jun 2021 12:23:42 +0200
Received: from mtr by dude03.red.stw.pengutronix.de with local (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>) id 1lwMWM-00185K-Cc
 for barebox@lists.infradead.org; Thu, 24 Jun 2021 12:23:42 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
To: barebox@lists.infradead.org
Date: Thu, 24 Jun 2021 12:23:35 +0200
Message-Id: <20210624102342.269363-1-m.tretter@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210624_032346_976401_87D31CA9 
X-CRM114-Status: GOOD (  11.77  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/7] ZynqMP: Cleanup and extend board support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello,

There were still a few things missing for real support for the ZynqMP ZCU104
in Barebox.

This series adds support for reset source detection, Barebox environment,
barebox_update and soft reset (via PSCI) for the ZynqMP ZCU104 board. It
extends the zynqmp_defconfig to enable more features that you would probably
want by default on a ZynqMP board. I also added some introductory information
how to build and use Barebox on the ZynqMP.

Michael

Michael Tretter (7):
  ARM: zynqmp: set reset source
  clk: zynqmp: do not enable already enabled clocks
  dts: zcu104: add Barebox environment
  ARM: zynqmp: add update handler
  ARM: zynqmp: zcu104: register update handler
  ARM: zynqmp: defconfig: enable more features
  Documentation: zynqmp: add some documentation

 Documentation/boards/zynqmp.rst               | 40 ++++++++++
 arch/arm/boards/xilinx-zcu104/Makefile        |  1 +
 arch/arm/boards/xilinx-zcu104/board.c         | 18 +++++
 arch/arm/configs/zynqmp_defconfig             | 23 ++++++
 arch/arm/dts/zynqmp-zcu104-revA.dts           | 10 +++
 arch/arm/mach-zynqmp/Makefile                 |  2 +
 .../arm/mach-zynqmp/include/mach/zynqmp-bbu.h | 21 ++++++
 arch/arm/mach-zynqmp/include/mach/zynqmp.h    |  6 ++
 arch/arm/mach-zynqmp/zynqmp-bbu.c             | 48 ++++++++++++
 arch/arm/mach-zynqmp/zynqmp.c                 | 74 +++++++++++++++++++
 drivers/clk/zynqmp/clk-gate-zynqmp.c          |  3 +
 11 files changed, 246 insertions(+)
 create mode 100644 Documentation/boards/zynqmp.rst
 create mode 100644 arch/arm/boards/xilinx-zcu104/board.c
 create mode 100644 arch/arm/mach-zynqmp/include/mach/zynqmp-bbu.h
 create mode 100644 arch/arm/mach-zynqmp/include/mach/zynqmp.h
 create mode 100644 arch/arm/mach-zynqmp/zynqmp-bbu.c
 create mode 100644 arch/arm/mach-zynqmp/zynqmp.c

-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

