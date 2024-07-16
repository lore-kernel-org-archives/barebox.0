Delivery-date: Tue, 16 Jul 2024 13:59:09 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sTgpp-005QtU-2j
	for lore@lore.pengutronix.de;
	Tue, 16 Jul 2024 13:59:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sTgpo-0001k9-VX
	for lore@pengutronix.de; Tue, 16 Jul 2024 13:59:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=th4+A3Ub+gmTQ3wjK9E+kzsoUdRNEddSKUPTPXkUNso=; b=YQqQWG90ufQNKsEOxPDhwjPet6
	2dk9go/7g0q4R96G3N7T4kH97Pq2056BhnDwKCyrB1uOnWS9SMEbEwqER9Fb1skYfSzG2ZedPYM8y
	PF5tmdci8ABKRqnKM0wX/hpCQ2feEsjbRt5wHRxqHtOHv/e9POK34U3+HcA5Y0oSNZMQ0t2namCB1
	yhPxv6H6Fvb/yAGrLZD6rrFbxTqADKSzqItcPx7luEV5RctIRNdjyqtXXAeucLQcmI4v/vpLdq/Tq
	bgypx3phaBsXiElvahWqsQvJbCQ9HA1TVbhBDMR4JpVmND8nVPZqZUldWdhqUJdKMKpqrFxHvuLDe
	zf+Z1pWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTgpM-0000000AKe3-0byF;
	Tue, 16 Jul 2024 11:58:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTgpJ-0000000AKby-0Uai
	for barebox@lists.infradead.org;
	Tue, 16 Jul 2024 11:58:38 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sTgpI-0001O5-0V
	for barebox@lists.infradead.org; Tue, 16 Jul 2024 13:58:36 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sTgpH-0007Yv-K2
	for barebox@lists.infradead.org; Tue, 16 Jul 2024 13:58:35 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sTgpH-008FTm-1i
	for barebox@lists.infradead.org;
	Tue, 16 Jul 2024 13:58:35 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 16 Jul 2024 13:58:26 +0200
Message-Id: <20240716115834.1958413-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240716_045837_180714_8A083330 
X-CRM114-Status: GOOD (  11.68  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/8] include: list: remove dependency on linux/kernel.h
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

<linux/kernel.h> defines a lot of things that go beyond what's needed for
<linux/list.h>. The only thing actually needed for the list
implementation is <linux/container_of.h>, so we should just include that
directly.

This is also what Linux has been doing for a while, but it breaks the
build of a number of source files, which are addressed in this series.

Ahmad Fatoum (8):
  regmap-mmio: don't call kfree on non kmalloc allocated buffers
  treewide: fix dependency on indirectly included linux/kernel.h
  stringlist: make header self-contained
  module: retire MODULE_SYMBOL_PREFIX
  include: move MODULE_* macro definitions into own header
  include: asm-generic/bug: break recursive dependency
  include: linux/kernel.h: split off into multiple headers
  include: list: replace full kernel.h inclusion with smaller
    container_of.h

 arch/arm/lib32/io.c                  |   1 +
 arch/mips/include/asm/dma.h          |   1 +
 commands/bthread.c                   |   1 +
 commands/mmc.c                       |   1 +
 common/module.c                      |   4 +-
 drivers/base/regmap/regmap-mmio.c    |   5 +-
 drivers/clk/at91/at91sam9260.c       |   1 +
 drivers/clk/at91/at91sam9g45.c       |   1 +
 drivers/clk/at91/at91sam9n12.c       |   1 +
 drivers/clk/at91/at91sam9rl.c        |   1 +
 drivers/clk/at91/at91sam9x5.c        |   1 +
 drivers/clk/at91/clk-audio-pll.c     |   1 +
 drivers/clk/at91/clk-generated.c     |   1 +
 drivers/clk/at91/clk-master.c        |   1 +
 drivers/clk/at91/clk-pll.c           |   1 +
 drivers/clk/at91/clk-usb.c           |   1 +
 drivers/clk/at91/sama5d2.c           |   1 +
 drivers/clk/at91/sama5d3.c           |   1 +
 drivers/clk/at91/sama5d4.c           |   1 +
 drivers/clk/rockchip/rst-rk3588.c    |   1 +
 drivers/soc/sifive/sifive_l2_cache.c |   2 +
 drivers/usb/misc/onboard_usb_hub.c   |   1 +
 include/asm-generic/bug.h            |   1 -
 include/driver.h                     |   1 +
 include/linux/array_size.h           |  14 ++
 include/linux/barebox-wrapper.h      |  12 +-
 include/linux/export.h               |   4 +-
 include/linux/hex.h                  |  34 ++++
 include/linux/kernel.h               | 234 +--------------------------
 include/linux/kstrtox.h              | 123 ++++++++++++++
 include/linux/list.h                 |   2 +-
 include/linux/math.h                 |  83 ++++++++++
 include/linux/module.h               |  17 ++
 include/linux/mtd/nand.h             |   1 +
 include/linux/wordpart.h             |  49 ++++++
 include/mach/mvebu/debug_ll.h        |   1 +
 include/module.h                     |   5 +-
 include/stringlist.h                 |   1 +
 lib/idr.c                            |   2 +
 39 files changed, 361 insertions(+), 253 deletions(-)
 create mode 100644 include/linux/array_size.h
 create mode 100644 include/linux/hex.h
 create mode 100644 include/linux/kstrtox.h
 create mode 100644 include/linux/math.h
 create mode 100644 include/linux/module.h
 create mode 100644 include/linux/wordpart.h

-- 
2.39.2



