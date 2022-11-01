Delivery-date: Tue, 01 Nov 2022 16:33:33 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1optGf-00B01j-6c
	for lore@lore.pengutronix.de; Tue, 01 Nov 2022 16:33:33 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1optGd-0005LG-5q
	for lore@pengutronix.de; Tue, 01 Nov 2022 16:33:32 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=vnm8T0Bx1m5dtSh4/MPQtOZ8fQIyH0pAh3Fj98jSZfs=; b=ssFVD+VMAi5PX/2JmSeOtJHNpJ
	l+OO3mYtETKHGSDl96xMCU9QnCAtfeqSKrxmGo1mv3hsHka/4ZHduu/P23PZNuu2BqGDo/s84d2K0
	/Rb5n5M9fkAlG/YFfPNVB+S2qSyWYlZvv3OJ6MONy/pw446MRdGayZlOCMlyjUY1vnuRXmeWogW4A
	U/1olJPV8bGgS/WwUMNKej7qx9+Po0E+/06kBGR1mkQ1YFj3J+6OpK6MxIlHEeOojLQappDWTtoXz
	RfyG0PcqL9OcfaUc3cnM6VrlSvFgWfsYF9oHxq07zYtCoHNIl89OGplCH1KT37VoE5vmtY77CM/n8
	5q/WC++A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1optF1-005op3-77; Tue, 01 Nov 2022 15:31:51 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1optEu-005oXB-43
	for barebox@lists.infradead.org; Tue, 01 Nov 2022 15:31:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1optE3-0004fX-RN; Tue, 01 Nov 2022 16:30:51 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1optE4-001hdf-3f; Tue, 01 Nov 2022 16:30:51 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1optE1-003Exf-67; Tue, 01 Nov 2022 16:30:49 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue,  1 Nov 2022 16:30:34 +0100
Message-Id: <20221101153048.772146-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221101_083144_270089_181B1A01 
X-CRM114-Status: UNSURE (   9.71  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 00/14] Add i.MX7 NAND xload support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This series adds i.MX7 NAND xload support. We have made quite a mess
with the different register defines for both the APBH DMA support and
the GPMI controller, so this is cleaned up first. There are other
cleanups and bugfixes as well, so adding i.MX7 support has become the
smallest thing in this series ;)

Sascha

Ahmad Fatoum (1):
  ARM: i.MX: xload-gpmi-nand: refactor for more SoC support

Sascha Hauer (13):
  mtd: nand: nand-mxs: Move register definitions to separate file
  ARM: i.MX: xload nand: Use common register defines
  ARM: i.MX: xload nand: add common readid
  dma: apbh-dma: Simplify code
  dma: apbh-dma: unify register defines
  imx-bbu-nand-fcb: pull printing debug info out of get_fcb()
  ARM: i.MX: xload nand: Pull ECC status checking out of read page
  ARM: i.MX: xload nand: Use final page layout from FCB
  imx-bbu-nand-fcb: Fix reading FCB information from BCH registers
  ARM: i.MX: xload nand: reset NAND before accessing it
  ARM: i.MX: xload nand: Move mxs_nand_mode_fcb_62bit() to header file
  ARM: i.MX: xload nand: Implement i.MX7 support
  imx-bbu-nand-fcb: Add fcb command

 arch/arm/mach-imx/include/mach/imx6-regs.h |   2 +
 arch/arm/mach-imx/include/mach/imx7-regs.h |   1 +
 arch/arm/mach-imx/include/mach/xload.h     |   1 +
 arch/arm/mach-imx/xload-gpmi-nand.c        | 637 +++++++++++----------
 commands/Kconfig                           |   9 +
 common/imx-bbu-nand-fcb.c                  | 199 +++++--
 drivers/dma/apbh_dma.c                     | 514 +----------------
 drivers/mtd/nand/nand_mxs.c                | 412 ++++---------
 include/dma/apbh-dma.h                     |  95 ++-
 include/soc/imx/gpmi-nand.h                | 141 +++++
 10 files changed, 791 insertions(+), 1220 deletions(-)
 create mode 100644 include/soc/imx/gpmi-nand.h

-- 
2.30.2



