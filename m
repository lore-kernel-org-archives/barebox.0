Delivery-date: Mon, 31 Jan 2022 08:59:08 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nERae-001TOM-9l
	for lore@lore.pengutronix.de; Mon, 31 Jan 2022 08:59:08 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nERac-0005e9-KP
	for lore@pengutronix.de; Mon, 31 Jan 2022 08:59:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MvZScxfxI8+WkSHsNORF40/tAQ62EFSghoHtYlFq+a0=; b=Q6lYWCW30Akt+f
	UDSeRMNw/eyHI4vY3GvB/uEyXFGZUClr08xo/MCvz1y7rExKNG1ZOk0I4MaZOtNfPrA3p32MJay72
	D1EMBR4yJOovmJZgF8wjLIVr3JHKxuu504l6TYSV5aJ12J+BqzxyikgOHRwniQsoYFK6yWcfKNpMR
	qx7gtBSdigq9F6Tc7q3TTTob+ZaOiD5QN3d2Ok93ixaduCF1iKGcrLMjgrbl6y9ALFqAt6fxUFejX
	VpXrcSQ8hBRGJMX2S/Q2C+IgjVkgc7enXPol3eP0vuNairRckHIcdfQUjj/mmLUrTq84E+aYDY5aB
	Ud1bvdNhWSvs6K3qIROA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nERZL-008M1N-7l; Mon, 31 Jan 2022 07:57:47 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nERZ8-008Ly7-E6
 for barebox@lists.infradead.org; Mon, 31 Jan 2022 07:57:36 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1nERZ7-0005Dp-5H
 for barebox@lists.infradead.org; Mon, 31 Jan 2022 08:57:33 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>) id 1nERZ6-007rHC-I1
 for barebox@lists.infradead.org; Mon, 31 Jan 2022 08:57:32 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon, 31 Jan 2022 08:57:13 +0100
Message-Id: <20220131075725.1873026-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220130_235734_513103_28AE86B2 
X-CRM114-Status: UNSURE (   9.76  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 00/12] clk: add STM32F429 clock driver support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

and use the occasion to provide a whole bunch of clk_hw helpers to
make future clock driver ports easier.

Ahmad Fatoum (12):
  string: define new memdup_array
  clk: composite: add clk_hw registration functions
  clk: divider: add clk_hw registration functions
  clk: fixed-factor: add clk_hw registration functions
  clk: clk-fixed: add clk_hw registration functions
  clk: define clk_hw_register
  clk: mux: add clk_hw registration functions
  clk: mux: export clk_mux_round_rate
  clk: implement of_clk_add_hw_provider
  clk: gate: add clk_hw registration functions
  ARM: stm32mp: allow driver reuse for STM32 MCUs
  clk: add clock driver for stm32f4 and stm32f7

 arch/arm/Kconfig                  |    7 +
 drivers/aiodev/Kconfig            |    2 +-
 drivers/clk/Kconfig               |    6 +
 drivers/clk/Makefile              |    1 +
 drivers/clk/clk-composite.c       |   25 +
 drivers/clk/clk-divider.c         |   21 +
 drivers/clk/clk-fixed-factor.c    |    9 +
 drivers/clk/clk-fixed.c           |    8 +
 drivers/clk/clk-mux.c             |   87 +-
 drivers/clk/clk-stm32f4.c         | 1901 +++++++++++++++++++++++++++++
 drivers/clk/clk.c                 |   43 +-
 drivers/hw_random/Kconfig         |    2 +-
 drivers/i2c/busses/Kconfig        |    2 +-
 drivers/mci/Kconfig               |    2 +-
 drivers/mfd/Kconfig               |    2 +-
 drivers/pinctrl/Kconfig           |    2 +-
 drivers/pwm/Kconfig               |    2 +-
 drivers/regulator/Kconfig         |    2 +-
 drivers/serial/Kconfig            |    4 +-
 drivers/watchdog/Kconfig          |    2 +-
 include/asm-generic/bitsperlong.h |    4 +
 include/linux/clk.h               |   91 ++
 include/linux/string.h            |    3 +
 23 files changed, 2205 insertions(+), 23 deletions(-)
 create mode 100644 drivers/clk/clk-stm32f4.c

-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

