Delivery-date: Mon, 17 May 2021 20:56:00 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1liiPI-0005SL-61
	for lore@lore.pengutronix.de; Mon, 17 May 2021 20:56:00 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1liiPH-0003z4-AK
	for lore@pengutronix.de; Mon, 17 May 2021 20:55:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ul5fonwltPAT2/BJ3zD49iwypxI16j+CJDWJhqwHcls=; b=GpjpNT1KGstA6e
	rLbvGIzSp/iOjhdSjbJBuMx52qMDZE+KUv34dHC+vKw9DOAWQQMZUYCEYJAvjgSNdrCN4H/jNQpp2
	Xbpo5zvcgKIk/o6GkAyCnzlGbktFgM3m+W1qOhvxuwHUi8lGsxuMOoTN7t+JxyOfuWXDdZyhNUX9s
	IsmYbnY1hZAstWQ0Nz+U2NFllH/KAXjxb2QHwoW5giUa3GeqOeV1PDPD1pvCjvNaERMJUbRAxlHTx
	+lbSPEIc8qntnPhkd3utoSjuiH433WdP2DgF4ajfXKaUZ+Z0UjURy/rnXpu8+TkY07Lrbpj6ttcVk
	4s41YNQMQPM51K1CmqRg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1liiO6-00FtWd-8i; Mon, 17 May 2021 18:54:46 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liiNs-00FtUe-TD
 for barebox@desiato.infradead.org; Mon, 17 May 2021 18:54:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=kttKHQwJAB6weSPipkq8SrXbf9sMe2S64QIc983E7Sc=; b=rn5mRM/Jz5iUag7qgrxY4GGG/t
 lmonUeZmLJg2WkLE++rGFA5x0yQ80IROIErxt0FGsBIXOtB6/vUAsTGhQ0kkqIUQ8vABsrePmyi1L
 HyY62co24CfL5k0bslvaX4lhoZWbQdHDPt604PMGzEEQvaDn5GXypG9UqYUyM7o3N9b3RLi2RrsUV
 3LYE409n3u4TdDX5pRtkkjS/Yyt77KYi3MvM2Shng65J21BnIg/juIsnEAvmNdrEze72ZGNn0sbZk
 Zz2dG8Uj03OBeOho4urewxR9F1SVnvVcSTBLSKpIXuXqKvpSwAz+N6DIa70XKwpunq+WDKh3incqd
 d2K5W2yw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liiNq-00E4SU-3s
 for barebox@lists.infradead.org; Mon, 17 May 2021 18:54:31 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1liiNn-0003P6-4X; Mon, 17 May 2021 20:54:27 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1liiNm-0002x1-9a; Mon, 17 May 2021 20:54:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 17 May 2021 20:54:09 +0200
Message-Id: <20210517185424.32145-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210517_115430_181213_A4660DF2 
X-CRM114-Status: UNSURE (   9.95  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 00/15] Compiler warning fixes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This series fixes a bunch of compiler warnings, mostly introduced with
the addition of the -Wtype-limits flag. Notably most if not all of the
warnings are real issues rather than false positives.

Sascha

Sascha Hauer (15):
  arm: friendlyarm-tiny210: Remove dead code
  ARM: socfpga: Fix timeout tests
  i.MX FCB: Fix error checking
  clk: tegra: Fix -Wtype-limits compiler warning
  ARM: i.MX: xload-gpmi: Fix compiler warning
  mtd: cfi-flash: Fix compiler warning
  pci: mvebu: Fix wrong error check
  ARM: i.MX bbu-external-nand: Do not modify image
  ARM: layerscape: Fix wrong error check
  ARM: phytec-phycard-omap3: Fix checking of unsigned variable being
    negative
  scripts: zynq_mkimage: Make locally used function static
  ARM: module: Remove always false check
  aiodev: lm75: Handle unknown lm75 types
  clk: zynqmp: Fix wrong error check
  powerpc: law: use signed type to allow error checking

 arch/arm/boards/friendlyarm-tiny210/tiny210.c   |  7 -------
 arch/arm/boards/phytec-phycard-omap3/lowlevel.c |  2 +-
 arch/arm/lib32/module.c                         |  2 +-
 arch/arm/mach-imx/imx-bbu-external-nand.c       |  9 ++++++++-
 arch/arm/mach-imx/xload-gpmi-nand.c             |  7 ++++---
 arch/arm/mach-layerscape/icid.c                 |  4 ++--
 arch/arm/mach-socfpga/arria10-xload.c           |  2 +-
 arch/powerpc/mach-mpc85xx/fsl_law.c             |  2 +-
 common/imx-bbu-nand-fcb.c                       | 17 +++++++++--------
 drivers/aiodev/lm75.c                           |  2 ++
 drivers/clk/tegra/clk-divider.c                 |  6 +++---
 drivers/clk/zynqmp/clkc.c                       |  2 +-
 drivers/mtd/nor/cfi_flash.c                     |  9 ++++++++-
 drivers/pci/pci-mvebu.c                         |  4 ++--
 scripts/zynq_mkimage.c                          |  2 +-
 15 files changed, 44 insertions(+), 33 deletions(-)

-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

