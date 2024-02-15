Delivery-date: Thu, 15 Feb 2024 13:19:21 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1raai1-007Orz-1y
	for lore@lore.pengutronix.de;
	Thu, 15 Feb 2024 13:19:21 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1raai1-0001wS-0i
	for lore@pengutronix.de; Thu, 15 Feb 2024 13:19:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=eJq/7lamrl/5LFbfdh2zxGv911or5pkITSDrCmg7dOY=; b=IqI0WSpwkKqKb3ikyXrodnMoeF
	tpSYSDSk5oO+Wg8pA3z3DuT4JmIbYC5zi6duEnSB0rq+37mXq6/mg32F04FylvmcQYqDKILX8UQEs
	VAWLr6Bs+FUElRFirAhNLVG89Va/7AjfYztUFjHXTRMYRS3Iu7Wmjy2Uk1PEsBki8O92CbD2ZiuFX
	ieg+3oSB6yZscmSmpGENXYAW8uFIrW9mof0iNArXYsdXT9aNSepljfjU3KrdElbhwlbByfeBY4oGG
	2RR8RyYih4wpX4jH4jK23CZDR2u6NzYdblWeLj3i47++BjpnkTNcWq25DvTd1RNyRxC0LvsuqWwNz
	w7L0EK+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raahU-0000000GCWf-2uUL;
	Thu, 15 Feb 2024 12:18:48 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raahN-0000000GCSA-3iRb
	for barebox@lists.infradead.org;
	Thu, 15 Feb 2024 12:18:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1raahM-0001jr-9i
	for barebox@lists.infradead.org; Thu, 15 Feb 2024 13:18:40 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1raahL-000shc-TF
	for barebox@lists.infradead.org; Thu, 15 Feb 2024 13:18:39 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1raahL-001YuQ-2c
	for barebox@lists.infradead.org;
	Thu, 15 Feb 2024 13:18:39 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Thu, 15 Feb 2024 13:18:34 +0100
Message-Id: <20240215121837.251013-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240215_041841_994617_643AB8A3 
X-CRM114-Status: GOOD (  11.24  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 0/3] clk: at91: sync drivers with Linux
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

During bug hunt of a clocking issue that ultimately turned out to be
unrelated, I resynced AT91 clk support with Linux.

The changes look more extensive than they really are, because I first
imported the clock drivers before a major overhaul of the barebox clock
framework to be more compatible with the more recent kernel API changes.

Most of the diff is due to that, but this resync also fixes
at least a USB issue for the at91rm9200 and adds support for
the new SAMA7 SoC as well as more clocks for the SAM9x60. Both these
SoCs aren't supported by barebox yet, but this at least adds clock
driver support.

Ahmad Fatoum (3):
  clk: add dummy definitions for CLK_SET_RATE_GATE, CLK_SET_PARENT_GATE
  clk: define empty stub for clk_hw_unregister
  clk: at91: sync drivers with Linux

 Documentation/devel/porting.rst     |    2 -
 arch/arm/mach-at91/Kconfig          |   15 +-
 drivers/clk/at91/at91rm9200.c       |   47 +-
 drivers/clk/at91/at91sam9260.c      |   68 +-
 drivers/clk/at91/at91sam9g45.c      |   62 +-
 drivers/clk/at91/at91sam9n12.c      |   71 +-
 drivers/clk/at91/at91sam9rl.c       |   47 +-
 drivers/clk/at91/at91sam9x5.c       |   84 +-
 drivers/clk/at91/clk-audio-pll.c    |   89 ++-
 drivers/clk/at91/clk-generated.c    |  114 ++-
 drivers/clk/at91/clk-h32mx.c        |   32 +-
 drivers/clk/at91/clk-i2s-mux.c      |   33 +-
 drivers/clk/at91/clk-main.c         |  235 +++---
 drivers/clk/at91/clk-master.c       |  424 ++++++++--
 drivers/clk/at91/clk-peripheral.c   |  159 ++--
 drivers/clk/at91/clk-pll.c          |   68 +-
 drivers/clk/at91/clk-plldiv.c       |   50 +-
 drivers/clk/at91/clk-programmable.c |   60 +-
 drivers/clk/at91/clk-sam9x60-pll.c  |  741 +++++++++++++-----
 drivers/clk/at91/clk-slow.c         |   41 +-
 drivers/clk/at91/clk-smd.c          |   54 +-
 drivers/clk/at91/clk-system.c       |   62 +-
 drivers/clk/at91/clk-usb.c          |  141 ++--
 drivers/clk/at91/clk-utmi.c         |  178 ++++-
 drivers/clk/at91/pmc.c              |  181 +----
 drivers/clk/at91/pmc.h              |  164 ++--
 drivers/clk/at91/sam9x60.c          |  147 +++-
 drivers/clk/at91/sama5d2.c          |  138 ++--
 drivers/clk/at91/sama5d3.c          |   80 +-
 drivers/clk/at91/sama5d4.c          |   86 +-
 drivers/clk/at91/sama7g5.c          | 1133 +++++++++++++++++++++++++++
 drivers/clk/at91/sckc.c             |  245 +++---
 include/linux/clk.h                 |   25 +
 include/linux/clk/at91_pmc.h        |   59 ++
 34 files changed, 3663 insertions(+), 1472 deletions(-)
 create mode 100644 drivers/clk/at91/sama7g5.c

-- 
2.39.2



