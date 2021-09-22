Delivery-date: Wed, 22 Sep 2021 08:58:07 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mSwCl-0005J1-Ba
	for lore@lore.pengutronix.de; Wed, 22 Sep 2021 08:58:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mSwCj-0003GO-Lx
	for lore@pengutronix.de; Wed, 22 Sep 2021 08:58:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sWMuCyR6a1A1hU+BYm+TtHCgWO9g33bqtWZpbpJq4WU=; b=DDO/BN5JqOBpDs
	mHFKBdQZze3c4LA7P5320DoKgW4nnp9FxC7FswlhAigzP/hupAMlo2ULt4eU45bMf792/NLkmR2GE
	rVvq5RtC+ZLbgbivdTUNVGZ6ZrDffDNPWs3AWneAKVuB8JermVy/aVX/2f1iHaYADsuQh1eSJr1zw
	C9X3+uX10JdOXyClnFTEUgZuBvooiDBYrhnbxqih8XCgJIy/Na9MiA8Vx6nxnKMJESbA7nNGtP5x9
	NXH/fOUTdFL85Zr7FGlVUQb59u59+LIMOe5fdAyJUOiAm95KA+R8OtFCxooGaviI7Js4qzysuldxd
	dxSJgA5MtVA+LCrC9j4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mSwB7-007BS4-GM; Wed, 22 Sep 2021 06:56:26 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mSw5Q-0079jM-Da
 for barebox@lists.infradead.org; Wed, 22 Sep 2021 06:50:34 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mSw5M-0002AM-Oc; Wed, 22 Sep 2021 08:50:28 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mSw5M-0005Yi-8y; Wed, 22 Sep 2021 08:50:28 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Peter Rosin <peda@axentia.se>
Date: Wed, 22 Sep 2021 08:49:56 +0200
Message-Id: <20210922065000.20970-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210921_235032_540395_6D4748C3 
X-CRM114-Status: GOOD (  12.19  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/5] ARM: at91: sama5d3_xplained: migrate to DT
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We have one other DT-enabled SAMA5D3 board already:
microchip-ksz8477-evb, which is basically a sama5d3 xplained in
different form factor and with a switch. Mimic what we do there to get
rid of the sama5d3 board code.

Tested booting first/second stage on SD and second stage after
at91bootstrap on NAND. The first two patches could be cherry-picked
to master.

Ahmad Fatoum (5):
  fs: fat: pbl: support >32M alignment for first partition
  ARM: at91: at91sam9263ek: add device tree check for board code
  Documentation: boards: at91: remove done TODOs
  ARM: at91: sam9_smc: register driver earlier
  ARM: AT91: migrate sama5d3-xplained to DT

 Documentation/boards/at91.rst                 |  16 +-
 .../at91/microchip-sama5d3-xplained.rst       |   8 -
 arch/arm/boards/at91sam9263ek/of_init.c       |   3 +
 arch/arm/boards/sama5d3_xplained/Makefile     |   2 +-
 arch/arm/boards/sama5d3_xplained/board.c      |  73 ++++++
 arch/arm/boards/sama5d3_xplained/init.c       | 241 ------------------
 arch/arm/boards/sama5d3_xplained/lowlevel.c   |  60 ++++-
 arch/arm/configs/at91_multi_defconfig         |   5 +-
 arch/arm/configs/sama5d3_xplained_defconfig   |  80 ------
 arch/arm/dts/Makefile                         |   1 +
 arch/arm/dts/at91-microchip-ksz9477-evb.dts   |   1 +
 arch/arm/dts/at91-sama5d3_xplained.dts        |  50 ++++
 arch/arm/dts/sama5d3.dtsi                     |  23 ++
 arch/arm/mach-at91/Kconfig                    |  14 +-
 arch/arm/mach-at91/sam9_smc.c                 |   2 +-
 common/filetype.c                             |   2 +-
 images/Makefile.at91                          |   9 +
 17 files changed, 235 insertions(+), 355 deletions(-)
 delete mode 100644 Documentation/boards/at91/microchip-sama5d3-xplained.rst
 create mode 100644 arch/arm/boards/sama5d3_xplained/board.c
 delete mode 100644 arch/arm/boards/sama5d3_xplained/init.c
 delete mode 100644 arch/arm/configs/sama5d3_xplained_defconfig
 create mode 100644 arch/arm/dts/at91-sama5d3_xplained.dts
 create mode 100644 arch/arm/dts/sama5d3.dtsi

-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

