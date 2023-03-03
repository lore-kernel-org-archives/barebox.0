Delivery-date: Fri, 03 Mar 2023 10:33:06 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pY1mj-007OAX-7m
	for lore@lore.pengutronix.de; Fri, 03 Mar 2023 10:33:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pY1me-0005MA-AW
	for lore@pengutronix.de; Fri, 03 Mar 2023 10:33:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NqTbJrGI8qedGrD/xfZTWWhBs1k68m0hbTTYS0L4QPg=; b=ur7uH79WAFHkSCrqrLZK1oVfyu
	bTMoLCR5w2gufVwkuDMcF1GLYkVrUU23twVaX1xtQ3g6Ed+CM79cumzCqscWDCvMginzo26NnByg8
	vSd0Y+yZaS+Zjm/arLhGj1cq5BgEExcrpnfn/N5RNShPzhrtVXB6UTVO7Hc4dxuaj/gPLqPLpitQG
	2YDMOrHlI1q8zYCM6d0ULepCTlzs/IvnGdgWsmchpm4lxp9t+t2vpAjU1GegWLTZCudSMn11dkiNO
	Jfs5mleeu8wRFLAzBjlavhV6YfakwZQhdso+vznwJXXRbMqPbIZ4CB7Th4HS/EHmIlORlDrAhJQzS
	EkHIr/yA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY1kx-005lGS-64; Fri, 03 Mar 2023 09:31:15 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY1d2-005fQT-LW
	for barebox@bombadil.infradead.org; Fri, 03 Mar 2023 09:23:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=NqTbJrGI8qedGrD/xfZTWWhBs1k68m0hbTTYS0L4QPg=; b=pgAN3OQaYQEuvkmf9tPolRVeI0
	xDB2RhvJHchNyanDlKEDt9GkB7vcTjhsiMeGIpXW/RX3PimzcngWtNnsBS0DXjXJ9wKLtbThxJAzl
	JNiCRqn948hK3erIcP6huRAJgvGF71cWVFZJRKI8LIpe32v45x+4R3Ntd3jcHDT5JgR0SXdJi/osR
	xmkHzcDCTcIUziQYaJ1nGe6W9nglfIrzb+EXEZ5pWaqC9UZ3+AfWW51v6NVOB4ksxfT5liLMpo4ro
	7Qw8dFSL5+/RlLSlr+WTxtfr+G3GRcJjWgXbjp5awRdMQzPWV003v3pNYsWB2eyEKJOJ6DfucItOo
	l54zo1Sg==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pY1bn-00FdKu-1G
	for barebox@lists.infradead.org;
	Fri, 03 Mar 2023 09:23:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1bf-0000CF-JU; Fri, 03 Mar 2023 10:21:39 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1be-001Wi5-Lz; Fri, 03 Mar 2023 10:21:38 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1ba-00F2gb-Ix; Fri, 03 Mar 2023 10:21:34 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri,  3 Mar 2023 10:21:03 +0100
Message-Id: <20230303092131.3063587-23-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230303092131.3063587-1-s.hauer@pengutronix.de>
References: <20230303092131.3063587-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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
Subject: [PATCH 22/50] ARM: at91: Move mach header files to include/mach/at91
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Currently arch specific headers can be included with
longer possible as there won't be a single mach anymore.

Move all at91 specific header files to include/mach/at91/ to
prepare for multi-arch support.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/animeo_ip/init.c              | 12 +++++-----
 arch/arm/boards/animeo_ip/lowlevel.c          |  8 +++----
 arch/arm/boards/at91rm9200ek/init.c           |  8 +++----
 arch/arm/boards/at91rm9200ek/lowlevel.c       | 12 +++++-----
 arch/arm/boards/at91sam9260ek/init.c          |  8 +++----
 arch/arm/boards/at91sam9260ek/lowlevel.c      |  8 +++----
 arch/arm/boards/at91sam9261ek/init.c          | 10 ++++----
 arch/arm/boards/at91sam9261ek/lowlevel_init.c |  7 +++---
 arch/arm/boards/at91sam9263ek/init.c          | 10 ++++----
 arch/arm/boards/at91sam9263ek/lowlevel_init.c |  4 ++--
 arch/arm/boards/at91sam9263ek/of_init.c       | 10 ++++----
 arch/arm/boards/at91sam9m10g45ek/init.c       | 10 ++++----
 arch/arm/boards/at91sam9m10g45ek/lowlevel.c   |  7 +++---
 arch/arm/boards/at91sam9m10ihd/init.c         |  8 +++----
 arch/arm/boards/at91sam9m10ihd/lowlevel.c     |  9 ++++---
 arch/arm/boards/at91sam9n12ek/init.c          | 14 +++++------
 arch/arm/boards/at91sam9n12ek/lowlevel.c      |  7 +++---
 arch/arm/boards/at91sam9x5ek/init.c           | 14 +++++------
 arch/arm/boards/at91sam9x5ek/lowlevel.c       |  2 +-
 arch/arm/boards/dss11/init.c                  | 10 ++++----
 arch/arm/boards/dss11/lowlevel.c              |  9 ++++---
 arch/arm/boards/haba-knx/init.c               | 12 +++++-----
 arch/arm/boards/haba-knx/lowlevel.c           |  9 ++++---
 .../boards/microchip-ksz9477-evb/lowlevel.c   | 10 ++++----
 arch/arm/boards/pm9261/init.c                 | 10 ++++----
 arch/arm/boards/pm9261/lowlevel_init.c        |  7 +++---
 arch/arm/boards/pm9263/init.c                 | 10 ++++----
 arch/arm/boards/pm9263/lowlevel_init.c        |  7 +++---
 arch/arm/boards/pm9g45/init.c                 | 10 ++++----
 arch/arm/boards/pm9g45/lowlevel.c             |  8 +++----
 arch/arm/boards/qil-a926x/init.c              | 12 +++++-----
 arch/arm/boards/qil-a926x/lowlevel.c          |  9 ++++---
 .../arm/boards/sama5d27-giantboard/lowlevel.c | 10 ++++----
 arch/arm/boards/sama5d27-som1/lowlevel.c      | 10 ++++----
 arch/arm/boards/sama5d3_xplained/board.c      |  4 ++--
 arch/arm/boards/sama5d3_xplained/lowlevel.c   | 10 ++++----
 arch/arm/boards/sama5d3xek/init.c             | 14 +++++------
 arch/arm/boards/sama5d3xek/lowlevel.c         |  4 ++--
 arch/arm/boards/sama5d4_xplained/lowlevel.c   |  4 ++--
 .../sama5d4_xplained/sama5d4_xplained.c       | 14 +++++------
 arch/arm/boards/sama5d4ek/lowlevel.c          |  4 ++--
 arch/arm/boards/sama5d4ek/sama5d4ek.c         | 14 +++++------
 arch/arm/boards/skov-arm9cpu/board.c          | 10 ++++----
 arch/arm/boards/skov-arm9cpu/lowlevel.c       |  4 ++--
 arch/arm/boards/telit-evk-pro3/init.c         |  8 +++----
 arch/arm/boards/telit-evk-pro3/lowlevel.c     |  9 ++++---
 arch/arm/boards/tny-a926x/init.c              | 14 +++++------
 .../arm/boards/tny-a926x/tny_a9260_lowlevel.c |  9 ++++---
 .../boards/tny-a926x/tny_a9263_bootstrap.c    |  2 +-
 .../arm/boards/tny-a926x/tny_a9263_lowlevel.c |  7 +++---
 arch/arm/boards/usb-a926x/init.c              | 16 ++++++-------
 .../arm/boards/usb-a926x/usb_a9260_lowlevel.c |  9 ++++---
 .../boards/usb-a926x/usb_a9263_bootstrap.c    |  2 +-
 .../arm/boards/usb-a926x/usb_a9263_lowlevel.c |  7 +++---
 arch/arm/include/asm/debug_ll.h               |  2 ++
 arch/arm/mach-at91/aic.c                      |  2 +-
 arch/arm/mach-at91/at91_pmc_ll.c              |  8 +++----
 arch/arm/mach-at91/at91rm9200.c               |  4 ++--
 arch/arm/mach-at91/at91rm9200_devices.c       | 10 ++++----
 arch/arm/mach-at91/at91rm9200_time.c          |  4 ++--
 arch/arm/mach-at91/at91sam9260.c              |  8 +++----
 arch/arm/mach-at91/at91sam9260_devices.c      | 16 ++++++-------
 arch/arm/mach-at91/at91sam9261.c              |  8 +++----
 arch/arm/mach-at91/at91sam9261_devices.c      | 16 ++++++-------
 arch/arm/mach-at91/at91sam9263.c              |  8 +++----
 arch/arm/mach-at91/at91sam9263_devices.c      | 14 +++++------
 arch/arm/mach-at91/at91sam9_reset.S           |  4 ++--
 arch/arm/mach-at91/at91sam9_rst.c             |  2 +-
 arch/arm/mach-at91/at91sam9_sdramc_ll.c       |  4 ++--
 arch/arm/mach-at91/at91sam9_xload_mmc.c       | 14 +++++------
 arch/arm/mach-at91/at91sam9g45.c              | 10 ++++----
 arch/arm/mach-at91/at91sam9g45_devices.c      | 14 +++++------
 arch/arm/mach-at91/at91sam9g45_reset.S        |  4 ++--
 arch/arm/mach-at91/at91sam9n12.c              | 10 ++++----
 arch/arm/mach-at91/at91sam9n12_devices.c      | 14 +++++------
 arch/arm/mach-at91/at91sam9x5.c               |  6 ++---
 arch/arm/mach-at91/at91sam9x5_devices.c       | 14 +++++------
 arch/arm/mach-at91/bootm-barebox.c            |  2 +-
 arch/arm/mach-at91/bootstrap.c                |  2 +-
 arch/arm/mach-at91/clock.c                    |  8 +++----
 arch/arm/mach-at91/ddramc.c                   |  8 +++----
 arch/arm/mach-at91/ddramc_ll.c                |  6 ++---
 arch/arm/mach-at91/early_udelay.c             |  8 +++----
 arch/arm/mach-at91/matrix.c                   |  4 ++--
 arch/arm/mach-at91/sam9263_ll.c               | 10 ++++----
 arch/arm/mach-at91/sam9_smc.c                 |  6 ++---
 arch/arm/mach-at91/sama5_bootsource.c         |  2 +-
 arch/arm/mach-at91/sama5d2.c                  |  6 ++---
 arch/arm/mach-at91/sama5d2_ll.c               | 14 +++++------
 arch/arm/mach-at91/sama5d3.c                  | 10 ++++----
 arch/arm/mach-at91/sama5d3_devices.c          | 14 +++++------
 arch/arm/mach-at91/sama5d3_ll.c               |  6 ++---
 arch/arm/mach-at91/sama5d4.c                  | 10 ++++----
 arch/arm/mach-at91/sama5d4_devices.c          | 14 +++++------
 arch/arm/mach-at91/setup.c                    | 10 ++++----
 arch/arm/mach-at91/xload-mmc.c                | 12 +++++-----
 drivers/clocksource/timer-atmel-pit.c         |  4 ++--
 drivers/mci/atmel-sdhci-common.c              |  2 +-
 drivers/mci/atmel-sdhci-pbl.c                 |  4 ++--
 drivers/mci/atmel_mci_pbl.c                   |  2 +-
 drivers/mtd/nand/atmel/legacy.c               |  2 +-
 drivers/net/at91_ether.c                      |  6 ++---
 drivers/pinctrl/pinctrl-at91-pio4.c           |  2 +-
 drivers/pinctrl/pinctrl-at91.c                |  6 ++---
 drivers/spi/atmel_spi.c                       |  6 ++---
 drivers/usb/gadget/at91_udc.c                 | 10 ++++----
 drivers/usb/host/ohci-at91.c                  |  2 +-
 drivers/video/atmel_hlcdfb.c                  |  6 ++---
 drivers/video/atmel_lcdfb.c                   |  2 +-
 drivers/video/atmel_lcdfb_core.c              |  2 +-
 drivers/watchdog/at91sam9_wdt.c               |  2 +-
 .../include/mach => include/mach/at91}/aic.h  |  0
 .../mach => include/mach/at91}/at91_dbgu.h    |  0
 .../mach => include/mach/at91}/at91_ddrsdrc.h |  2 +-
 .../mach => include/mach/at91}/at91_pio.h     |  0
 .../mach => include/mach/at91}/at91_pit.h     |  0
 .../mach => include/mach/at91}/at91_pmc.h     |  0
 .../mach => include/mach/at91}/at91_pmc_ll.h  |  2 +-
 .../mach => include/mach/at91}/at91_rstc.h    |  0
 .../mach => include/mach/at91}/at91_rtt.h     |  0
 .../mach => include/mach/at91}/at91_wdt.h     |  0
 .../mach => include/mach/at91}/at91rm9200.h   |  0
 .../mach/at91}/at91rm9200_emac.h              |  0
 .../mach/at91}/at91rm9200_mc.h                |  2 +-
 .../mach/at91}/at91rm9200_st.h                |  0
 .../mach => include/mach/at91}/at91sam9260.h  |  0
 .../mach/at91}/at91sam9260_matrix.h           |  0
 .../mach => include/mach/at91}/at91sam9261.h  |  0
 .../mach/at91}/at91sam9261_matrix.h           |  0
 .../mach => include/mach/at91}/at91sam9263.h  |  0
 .../mach/at91}/at91sam9263_matrix.h           |  0
 .../mach => include/mach/at91}/at91sam926x.h  |  0
 .../mach/at91}/at91sam926x_board_init.h       | 24 +++++++++----------
 .../mach/at91}/at91sam9_sdramc.h              |  6 ++---
 .../mach => include/mach/at91}/at91sam9_smc.h |  0
 .../mach => include/mach/at91}/at91sam9g45.h  |  0
 .../mach/at91}/at91sam9g45_matrix.h           |  0
 .../mach => include/mach/at91}/at91sam9n12.h  |  0
 .../mach/at91}/at91sam9n12_matrix.h           |  0
 .../mach => include/mach/at91}/at91sam9x5.h   |  0
 .../mach/at91}/at91sam9x5_matrix.h            |  0
 .../mach => include/mach/at91}/atmel_hlcdc.h  |  0
 .../mach => include/mach/at91}/barebox-arm.h  |  4 ++--
 .../mach => include/mach/at91}/board.h        |  4 ++--
 .../mach => include/mach/at91}/bootstrap.h    |  0
 .../include/mach => include/mach/at91}/cpu.h  |  0
 .../mach => include/mach/at91}/ddramc.h       |  0
 .../mach => include/mach/at91}/debug_ll.h     |  6 ++---
 .../mach => include/mach/at91}/early_udelay.h |  0
 .../include/mach => include/mach/at91}/gpio.h |  2 +-
 .../mach => include/mach/at91}/hardware.h     | 20 ++++++++--------
 .../mach => include/mach/at91}/iomux.h        |  6 ++---
 .../mach => include/mach/at91}/matrix.h       |  0
 .../mach => include/mach/at91}/sam92_ll.h     | 16 ++++++-------
 .../mach/at91}/sama5_bootsource.h             |  2 +-
 .../mach/at91}/sama5d2-sip-ddramc.h           |  6 ++---
 .../mach => include/mach/at91}/sama5d2.h      |  0
 .../mach => include/mach/at91}/sama5d2_ll.h   | 12 +++++-----
 .../mach/at91}/sama5d3-xplained-ddramc.h      |  6 ++---
 .../mach => include/mach/at91}/sama5d3.h      |  0
 .../mach => include/mach/at91}/sama5d3_ll.h   |  6 ++---
 .../mach => include/mach/at91}/sama5d4.h      |  0
 .../mach => include/mach/at91}/tz_matrix.h    |  0
 .../mach => include/mach/at91}/xload.h        |  0
 164 files changed, 497 insertions(+), 511 deletions(-)
 rename {arch/arm/mach-at91/include/mach => include/mach/at91}/aic.h (100%)
 rename {arch/arm/mach-at91/include/mach => include/mach/at91}/at91_dbgu.h (100%)
 rename {arch/arm/mach-at91/include/mach => include/mach/at91}/at91_ddrsdrc.h (99%)
 rename {arch/arm/mach-at91/include/mach => include/mach/at91}/at91_pio.h (100%)
 rename {arch/arm/mach-at91/include/mach => include/mach/at91}/at91_pit.h (100%)
 rename {arch/arm/mach-at91/include/mach => include/mach/at91}/at91_pmc.h (100%)
 rename {arch/arm/mach-at91/include/mach => include/mach/at91}/at91_pmc_ll.h (99%)
 rename {arch/arm/mach-at91/include/mach => include/mach/at91}/at91_rstc.h (100%)
 rename {arch/arm/mach-at91/include/mach => include/mach/at91}/at91_rtt.h (100%)
 rename {arch/arm/mach-at91/include/mach => include/mach/at91}/at91_wdt.h (100%)
 rename {arch/arm/mach-at91/include/mach => include/mach/at91}/at91rm9200.h (100%)
 rename {arch/arm/mach-at91/include/mach => include/mach/at91}/at91rm9200_emac.h (100%)
 rename {arch/arm/mach-at91/include/mach => include/mach/at91}/at91rm9200_mc.h (99%)
 rename {arch/arm/mach-at91/include/mach => include/mach/at91}/at91rm9200_st.h (100%)
 rename {arch/arm/mach-at91/include/mach => include/mach/at91}/at91sam9260.h (100%)
 rename {arch/arm/mach-at91/include/mach => include/mach/at91}/at91sam9260_matrix.h (100%)
 rename {arch/arm/mach-at91/include/mach => include/mach/at91}/at91sam9261.h (100%)
 rename {arch/arm/mach-at91/include/mach => include/mach/at91}/at91sam9261_matrix.h (100%)
 rename {arch/arm/mach-at91/include/mach => include/mach/at91}/at91sam9263.h (100%)
 rename {arch/arm/mach-at91/include/mach => include/mach/at91}/at91sam9263_matrix.h (100%)
 rename {arch/arm/mach-at91/include/mach => include/mach/at91}/at91sam926x.h (100%)
 rename {arch/arm/mach-at91/include/mach => include/mach/at91}/at91sam926x_board_init.h (92%)
 rename {arch/arm/mach-at91/include/mach => include/mach/at91}/at91sam9_sdramc.h (98%)
 rename {arch/arm/mach-at91/include/mach => include/mach/at91}/at91sam9_smc.h (100%)
 rename {arch/arm/mach-at91/include/mach => include/mach/at91}/at91sam9g45.h (100%)
 rename {arch/arm/mach-at91/include/mach => include/mach/at91}/at91sam9g45_matrix.h (100%)
 rename {arch/arm/mach-at91/include/mach => include/mach/at91}/at91sam9n12.h (100%)
 rename {arch/arm/mach-at91/include/mach => include/mach/at91}/at91sam9n12_matrix.h (100%)
 rename {arch/arm/mach-at91/include/mach => include/mach/at91}/at91sam9x5.h (100%)
 rename {arch/arm/mach-at91/include/mach => include/mach/at91}/at91sam9x5_matrix.h (100%)
 rename {arch/arm/mach-at91/include/mach => include/mach/at91}/atmel_hlcdc.h (100%)
 rename {arch/arm/mach-at91/include/mach => include/mach/at91}/barebox-arm.h (96%)
 rename {arch/arm/mach-at91/include/mach => include/mach/at91}/board.h (98%)
 rename {arch/arm/mach-at91/include/mach => include/mach/at91}/bootstrap.h (100%)
 rename {arch/arm/mach-at91/include/mach => include/mach/at91}/cpu.h (100%)
 rename {arch/arm/mach-at91/include/mach => include/mach/at91}/ddramc.h (100%)
 rename {arch/arm/mach-at91/include/mach => include/mach/at91}/debug_ll.h (90%)
 rename {arch/arm/mach-at91/include/mach => include/mach/at91}/early_udelay.h (100%)
 rename {arch/arm/mach-at91/include/mach => include/mach/at91}/gpio.h (99%)
 rename {arch/arm/mach-at91/include/mach => include/mach/at91}/hardware.h (75%)
 rename {arch/arm/mach-at91/include/mach => include/mach/at91}/iomux.h (98%)
 rename {arch/arm/mach-at91/include/mach => include/mach/at91}/matrix.h (100%)
 rename {arch/arm/mach-at91/include/mach => include/mach/at91}/sam92_ll.h (80%)
 rename {arch/arm/mach-at91/include/mach => include/mach/at91}/sama5_bootsource.h (98%)
 rename {arch/arm/mach-at91/include/mach => include/mach/at91}/sama5d2-sip-ddramc.h (91%)
 rename {arch/arm/mach-at91/include/mach => include/mach/at91}/sama5d2.h (100%)
 rename {arch/arm/mach-at91/include/mach => include/mach/at91}/sama5d2_ll.h (94%)
 rename {arch/arm/mach-at91/include/mach => include/mach/at91}/sama5d3-xplained-ddramc.h (96%)
 rename {arch/arm/mach-at91/include/mach => include/mach/at91}/sama5d3.h (100%)
 rename {arch/arm/mach-at91/include/mach => include/mach/at91}/sama5d3_ll.h (82%)
 rename {arch/arm/mach-at91/include/mach => include/mach/at91}/sama5d4.h (100%)
 rename {arch/arm/mach-at91/include/mach => include/mach/at91}/tz_matrix.h (100%)
 rename {arch/arm/mach-at91/include/mach => include/mach/at91}/xload.h (100%)

diff --git a/arch/arm/boards/animeo_ip/init.c b/arch/arm/boards/animeo_ip/init.c
index b854f254fb..d8cb0531b1 100644
--- a/arch/arm/boards/animeo_ip/init.c
+++ b/arch/arm/boards/animeo_ip/init.c
@@ -14,18 +14,18 @@
 #include <fcntl.h>
 #include <io.h>
 #include <envfs.h>
-#include <mach/hardware.h>
+#include <mach/at91/hardware.h>
 #include <nand.h>
 #include <linux/sizes.h>
 #include <linux/mtd/nand.h>
 #include <linux/mtd/rawnand.h>
 #include <linux/clk.h>
-#include <mach/board.h>
-#include <mach/at91sam9_smc.h>
+#include <mach/at91/board.h>
+#include <mach/at91/at91sam9_smc.h>
 #include <gpio.h>
-#include <mach/iomux.h>
-#include <mach/at91_pmc.h>
-#include <mach/at91_rstc.h>
+#include <mach/at91/iomux.h>
+#include <mach/at91/at91_pmc.h>
+#include <mach/at91/at91_rstc.h>
 #include <local_mac_address.h>
 
 static bool animeo_ip_is_buco;
diff --git a/arch/arm/boards/animeo_ip/lowlevel.c b/arch/arm/boards/animeo_ip/lowlevel.c
index dcea35484c..df02e834c3 100644
--- a/arch/arm/boards/animeo_ip/lowlevel.c
+++ b/arch/arm/boards/animeo_ip/lowlevel.c
@@ -7,11 +7,11 @@
 #include <common.h>
 #include <init.h>
 
-#include <mach/barebox-arm.h>
+#include <mach/at91/barebox-arm.h>
 
-#include <mach/at91sam9_sdramc.h>
-#include <mach/at91sam9260.h>
-#include <mach/hardware.h>
+#include <mach/at91/at91sam9_sdramc.h>
+#include <mach/at91/at91sam9260.h>
+#include <mach/at91/hardware.h>
 
 AT91_ENTRY_FUNCTION(start_animeo_ip, r0, r1, r2)
 {
diff --git a/arch/arm/boards/at91rm9200ek/init.c b/arch/arm/boards/at91rm9200ek/init.c
index 5d5a0ba70b..1db1c0be46 100644
--- a/arch/arm/boards/at91rm9200ek/init.c
+++ b/arch/arm/boards/at91rm9200ek/init.c
@@ -13,10 +13,10 @@
 #include <io.h>
 #include <envfs.h>
 #include <linux/sizes.h>
-#include <mach/hardware.h>
-#include <mach/at91_pmc.h>
-#include <mach/board.h>
-#include <mach/iomux.h>
+#include <mach/at91/hardware.h>
+#include <mach/at91/at91_pmc.h>
+#include <mach/at91/board.h>
+#include <mach/at91/iomux.h>
 #include <spi/spi.h>
 
 static struct macb_platform_data ether_pdata = {
diff --git a/arch/arm/boards/at91rm9200ek/lowlevel.c b/arch/arm/boards/at91rm9200ek/lowlevel.c
index 2a76e206e3..f412de7d4a 100644
--- a/arch/arm/boards/at91rm9200ek/lowlevel.c
+++ b/arch/arm/boards/at91rm9200ek/lowlevel.c
@@ -7,13 +7,13 @@
 #include <common.h>
 #include <init.h>
 
-#include <mach/barebox-arm.h>
+#include <mach/at91/barebox-arm.h>
 
-#include <mach/at91rm9200_mc.h>
-#include <mach/at91rm9200.h>
-#include <mach/at91_pio.h>
-#include <mach/at91_pmc.h>
-#include <mach/hardware.h>
+#include <mach/at91/at91rm9200_mc.h>
+#include <mach/at91/at91rm9200.h>
+#include <mach/at91/at91_pio.h>
+#include <mach/at91/at91_pmc.h>
+#include <mach/at91/hardware.h>
 
 #include "config.h"
 
diff --git a/arch/arm/boards/at91sam9260ek/init.c b/arch/arm/boards/at91sam9260ek/init.c
index 92526c072a..7258dc2255 100644
--- a/arch/arm/boards/at91sam9260ek/init.c
+++ b/arch/arm/boards/at91sam9260ek/init.c
@@ -11,11 +11,11 @@
 #include <linux/mtd/nand.h>
 #include <linux/mtd/rawnand.h>
 #include <linux/sizes.h>
-#include <mach/board.h>
-#include <mach/at91sam9_smc.h>
+#include <mach/at91/board.h>
+#include <mach/at91/at91sam9_smc.h>
 #include <gpio.h>
-#include <mach/iomux.h>
-#include <mach/at91_rstc.h>
+#include <mach/at91/iomux.h>
+#include <mach/at91/at91_rstc.h>
 #include <linux/clk.h>
 
 /*
diff --git a/arch/arm/boards/at91sam9260ek/lowlevel.c b/arch/arm/boards/at91sam9260ek/lowlevel.c
index 40810f43c9..c574e4aeb0 100644
--- a/arch/arm/boards/at91sam9260ek/lowlevel.c
+++ b/arch/arm/boards/at91sam9260ek/lowlevel.c
@@ -7,11 +7,11 @@
 #include <common.h>
 #include <init.h>
 
-#include <mach/barebox-arm.h>
+#include <mach/at91/barebox-arm.h>
 
-#include <mach/at91sam9_sdramc.h>
-#include <mach/at91sam9260.h>
-#include <mach/hardware.h>
+#include <mach/at91/at91sam9_sdramc.h>
+#include <mach/at91/at91sam9260.h>
+#include <mach/at91/hardware.h>
 
 AT91_ENTRY_FUNCTION(start_at91sam9260ek, r0, r1, r2)
 {
diff --git a/arch/arm/boards/at91sam9261ek/init.c b/arch/arm/boards/at91sam9261ek/init.c
index 1ae7d94876..7a620c0ecd 100644
--- a/arch/arm/boards/at91sam9261ek/init.c
+++ b/arch/arm/boards/at91sam9261ek/init.c
@@ -11,16 +11,16 @@
 #include <fs.h>
 #include <fcntl.h>
 #include <io.h>
-#include <mach/hardware.h>
+#include <mach/at91/hardware.h>
 #include <nand.h>
 #include <linux/sizes.h>
 #include <linux/mtd/nand.h>
 #include <linux/mtd/rawnand.h>
-#include <mach/at91_pmc.h>
-#include <mach/board.h>
+#include <mach/at91/at91_pmc.h>
+#include <mach/at91/board.h>
 #include <gpio.h>
-#include <mach/iomux.h>
-#include <mach/at91sam9_smc.h>
+#include <mach/at91/iomux.h>
+#include <mach/at91/at91sam9_smc.h>
 #include <platform_data/eth-dm9000.h>
 #include <gpio_keys.h>
 #include <readkey.h>
diff --git a/arch/arm/boards/at91sam9261ek/lowlevel_init.c b/arch/arm/boards/at91sam9261ek/lowlevel_init.c
index 17c0094522..55393567ea 100644
--- a/arch/arm/boards/at91sam9261ek/lowlevel_init.c
+++ b/arch/arm/boards/at91sam9261ek/lowlevel_init.c
@@ -4,10 +4,9 @@
  * Under GPLv2
  */
 
-#include <mach/barebox-arm.h>
-
-#include <mach/at91sam926x_board_init.h>
-#include <mach/at91sam9261_matrix.h>
+#include <mach/at91/barebox-arm.h>
+#include <mach/at91/at91sam926x_board_init.h>
+#include <mach/at91/at91sam9261_matrix.h>
 
 #define MASTER_CLOCK		200
 
diff --git a/arch/arm/boards/at91sam9263ek/init.c b/arch/arm/boards/at91sam9263ek/init.c
index e1eeb78347..e6e09f739f 100644
--- a/arch/arm/boards/at91sam9263ek/init.c
+++ b/arch/arm/boards/at91sam9263ek/init.c
@@ -12,15 +12,15 @@
 #include <fs.h>
 #include <fcntl.h>
 #include <io.h>
-#include <mach/hardware.h>
+#include <mach/at91/hardware.h>
 #include <nand.h>
 #include <linux/sizes.h>
 #include <linux/mtd/nand.h>
-#include <mach/at91_pmc.h>
-#include <mach/board.h>
-#include <mach/iomux.h>
+#include <mach/at91/at91_pmc.h>
+#include <mach/at91/board.h>
+#include <mach/at91/iomux.h>
 #include <gpio.h>
-#include <mach/at91sam9_smc.h>
+#include <mach/at91/at91sam9_smc.h>
 
 static struct atmel_nand_data nand_pdata = {
 	.ale		= 21,
diff --git a/arch/arm/boards/at91sam9263ek/lowlevel_init.c b/arch/arm/boards/at91sam9263ek/lowlevel_init.c
index 0bf0e0fb4e..3e1f471d8e 100644
--- a/arch/arm/boards/at91sam9263ek/lowlevel_init.c
+++ b/arch/arm/boards/at91sam9263ek/lowlevel_init.c
@@ -8,8 +8,8 @@
 
 #include <asm/barebox-arm.h>
 
-#include <mach/at91sam926x_board_init.h>
-#include <mach/at91sam9263_matrix.h>
+#include <mach/at91/at91sam926x_board_init.h>
+#include <mach/at91/at91sam9263_matrix.h>
 
 #define MASTER_PLL_MUL		171
 #define MASTER_PLL_DIV		14
diff --git a/arch/arm/boards/at91sam9263ek/of_init.c b/arch/arm/boards/at91sam9263ek/of_init.c
index 92301c80d6..7bdc6cc0f0 100644
--- a/arch/arm/boards/at91sam9263ek/of_init.c
+++ b/arch/arm/boards/at91sam9263ek/of_init.c
@@ -7,11 +7,11 @@
 #include <gpio.h>
 #include <io.h>
 
-#include <mach/at91sam9263_matrix.h>
-#include <mach/at91sam9_smc.h>
-#include <mach/at91_rtt.h>
-#include <mach/hardware.h>
-#include <mach/iomux.h>
+#include <mach/at91/at91sam9263_matrix.h>
+#include <mach/at91/at91sam9_smc.h>
+#include <mach/at91/at91_rtt.h>
+#include <mach/at91/hardware.h>
+#include <mach/at91/iomux.h>
 
 static int add_smc_devices(void)
 {
diff --git a/arch/arm/boards/at91sam9m10g45ek/init.c b/arch/arm/boards/at91sam9m10g45ek/init.c
index cb5cfe6b94..f820213cdd 100644
--- a/arch/arm/boards/at91sam9m10g45ek/init.c
+++ b/arch/arm/boards/at91sam9m10g45ek/init.c
@@ -14,15 +14,15 @@
 #include <fs.h>
 #include <fcntl.h>
 #include <io.h>
-#include <mach/hardware.h>
+#include <mach/at91/hardware.h>
 #include <nand.h>
 #include <linux/sizes.h>
 #include <linux/mtd/nand.h>
 #include <linux/mtd/rawnand.h>
-#include <mach/at91_pmc.h>
-#include <mach/board.h>
-#include <mach/iomux.h>
-#include <mach/at91sam9_smc.h>
+#include <mach/at91/at91_pmc.h>
+#include <mach/at91/board.h>
+#include <mach/at91/iomux.h>
+#include <mach/at91/at91sam9_smc.h>
 #include <gpio_keys.h>
 #include <readkey.h>
 #include <spi/spi.h>
diff --git a/arch/arm/boards/at91sam9m10g45ek/lowlevel.c b/arch/arm/boards/at91sam9m10g45ek/lowlevel.c
index e0cd647b44..a24b26e5cb 100644
--- a/arch/arm/boards/at91sam9m10g45ek/lowlevel.c
+++ b/arch/arm/boards/at91sam9m10g45ek/lowlevel.c
@@ -7,10 +7,9 @@
 #include <common.h>
 #include <init.h>
 
-#include <mach/barebox-arm.h>
-
-#include <mach/hardware.h>
-#include <mach/at91_ddrsdrc.h>
+#include <mach/at91/barebox-arm.h>
+#include <mach/at91/hardware.h>
+#include <mach/at91/at91_ddrsdrc.h>
 
 AT91_ENTRY_FUNCTION(start_at91sam9m10g45ek, r0, r1, r2)
 {
diff --git a/arch/arm/boards/at91sam9m10ihd/init.c b/arch/arm/boards/at91sam9m10ihd/init.c
index 6a6ce9a187..6800e669f9 100644
--- a/arch/arm/boards/at91sam9m10ihd/init.c
+++ b/arch/arm/boards/at91sam9m10ihd/init.c
@@ -14,15 +14,15 @@
 #include <fs.h>
 #include <fcntl.h>
 #include <io.h>
-#include <mach/hardware.h>
+#include <mach/at91/hardware.h>
 #include <nand.h>
 #include <linux/sizes.h>
 #include <linux/mtd/nand.h>
 #include <linux/mtd/rawnand.h>
-#include <mach/board.h>
+#include <mach/at91/board.h>
 #include <gpio.h>
-#include <mach/iomux.h>
-#include <mach/at91sam9_smc.h>
+#include <mach/at91/iomux.h>
+#include <mach/at91/at91sam9_smc.h>
 #include <input/qt1070.h>
 #include <readkey.h>
 #include <linux/w1-gpio.h>
diff --git a/arch/arm/boards/at91sam9m10ihd/lowlevel.c b/arch/arm/boards/at91sam9m10ihd/lowlevel.c
index 4e307c8f41..7eba24f3e4 100644
--- a/arch/arm/boards/at91sam9m10ihd/lowlevel.c
+++ b/arch/arm/boards/at91sam9m10ihd/lowlevel.c
@@ -7,11 +7,10 @@
 #include <common.h>
 #include <init.h>
 
-#include <mach/barebox-arm.h>
-
-#include <mach/at91_ddrsdrc.h>
-#include <mach/at91sam9g45.h>
-#include <mach/hardware.h>
+#include <mach/at91/barebox-arm.h>
+#include <mach/at91/at91_ddrsdrc.h>
+#include <mach/at91/at91sam9g45.h>
+#include <mach/at91/hardware.h>
 
 AT91_ENTRY_FUNCTION(start_at91sam9m10ihd, r0, r1, r2)
 {
diff --git a/arch/arm/boards/at91sam9n12ek/init.c b/arch/arm/boards/at91sam9n12ek/init.c
index 97ab150c14..b148e18912 100644
--- a/arch/arm/boards/at91sam9n12ek/init.c
+++ b/arch/arm/boards/at91sam9n12ek/init.c
@@ -11,18 +11,18 @@
 #include <fcntl.h>
 #include <io.h>
 #include <envfs.h>
-#include <mach/hardware.h>
+#include <mach/at91/hardware.h>
 #include <nand.h>
 #include <linux/sizes.h>
 #include <linux/mtd/nand.h>
 #include <linux/mtd/rawnand.h>
-#include <mach/board.h>
-#include <mach/at91sam9_smc.h>
+#include <mach/at91/board.h>
+#include <mach/at91/at91sam9_smc.h>
 #include <gpio.h>
-#include <mach/iomux.h>
-#include <mach/at91_pmc.h>
-#include <mach/at91_rstc.h>
-#include <mach/at91sam9x5_matrix.h>
+#include <mach/at91/iomux.h>
+#include <mach/at91/at91_pmc.h>
+#include <mach/at91/at91_rstc.h>
+#include <mach/at91/at91sam9x5_matrix.h>
 #include <input/qt1070.h>
 #include <readkey.h>
 #include <spi/spi.h>
diff --git a/arch/arm/boards/at91sam9n12ek/lowlevel.c b/arch/arm/boards/at91sam9n12ek/lowlevel.c
index 21a0721ecc..4b981fd49f 100644
--- a/arch/arm/boards/at91sam9n12ek/lowlevel.c
+++ b/arch/arm/boards/at91sam9n12ek/lowlevel.c
@@ -7,10 +7,9 @@
 #include <common.h>
 #include <init.h>
 
-#include <mach/barebox-arm.h>
-
-#include <mach/at91_ddrsdrc.h>
-#include <mach/hardware.h>
+#include <mach/at91/barebox-arm.h>
+#include <mach/at91/at91_ddrsdrc.h>
+#include <mach/at91/hardware.h>
 
 AT91_ENTRY_FUNCTION(start_at91sam9n12ek, r0, r1, r2)
 {
diff --git a/arch/arm/boards/at91sam9x5ek/init.c b/arch/arm/boards/at91sam9x5ek/init.c
index 8796702a1a..48bbebae8c 100644
--- a/arch/arm/boards/at91sam9x5ek/init.c
+++ b/arch/arm/boards/at91sam9x5ek/init.c
@@ -11,17 +11,17 @@
 #include <fcntl.h>
 #include <io.h>
 #include <envfs.h>
-#include <mach/hardware.h>
+#include <mach/at91/hardware.h>
 #include <nand.h>
 #include <linux/sizes.h>
 #include <linux/mtd/nand.h>
-#include <mach/board.h>
-#include <mach/at91sam9_smc.h>
+#include <mach/at91/board.h>
+#include <mach/at91/at91sam9_smc.h>
 #include <gpio.h>
-#include <mach/iomux.h>
-#include <mach/at91_pmc.h>
-#include <mach/at91_rstc.h>
-#include <mach/at91sam9x5_matrix.h>
+#include <mach/at91/iomux.h>
+#include <mach/at91/at91_pmc.h>
+#include <mach/at91/at91_rstc.h>
+#include <mach/at91/at91sam9x5_matrix.h>
 #include <input/qt1070.h>
 #include <readkey.h>
 #include <linux/w1-gpio.h>
diff --git a/arch/arm/boards/at91sam9x5ek/lowlevel.c b/arch/arm/boards/at91sam9x5ek/lowlevel.c
index 3d266161ec..350c99100e 100644
--- a/arch/arm/boards/at91sam9x5ek/lowlevel.c
+++ b/arch/arm/boards/at91sam9x5ek/lowlevel.c
@@ -2,7 +2,7 @@
 
 #include <common.h>
 #include <linux/sizes.h>
-#include <mach/at91_ddrsdrc.h>
+#include <mach/at91/at91_ddrsdrc.h>
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
 #include <io.h>
diff --git a/arch/arm/boards/dss11/init.c b/arch/arm/boards/dss11/init.c
index e24e69f302..7fd566e4be 100644
--- a/arch/arm/boards/dss11/init.c
+++ b/arch/arm/boards/dss11/init.c
@@ -11,15 +11,15 @@
 #include <fs.h>
 #include <fcntl.h>
 #include <asm/io.h>
-#include <mach/hardware.h>
+#include <mach/at91/hardware.h>
 #include <nand.h>
 #include <linux/mtd/rawnand.h>
 #include <linux/mtd/nand.h>
-#include <mach/board.h>
-#include <mach/at91sam9_smc.h>
+#include <mach/at91/board.h>
+#include <mach/at91/at91sam9_smc.h>
 #include <gpio.h>
-#include <mach/iomux.h>
-#include <mach/at91_rstc.h>
+#include <mach/at91/iomux.h>
+#include <mach/at91/at91_rstc.h>
 #include <linux/clk.h>
 
 static struct atmel_nand_data nand_pdata = {
diff --git a/arch/arm/boards/dss11/lowlevel.c b/arch/arm/boards/dss11/lowlevel.c
index 427e9d39cd..be2675369c 100644
--- a/arch/arm/boards/dss11/lowlevel.c
+++ b/arch/arm/boards/dss11/lowlevel.c
@@ -7,11 +7,10 @@
 #include <common.h>
 #include <init.h>
 
-#include <mach/barebox-arm.h>
-
-#include <mach/at91sam9_sdramc.h>
-#include <mach/at91sam9260.h>
-#include <mach/hardware.h>
+#include <mach/at91/barebox-arm.h>
+#include <mach/at91/at91sam9_sdramc.h>
+#include <mach/at91/at91sam9260.h>
+#include <mach/at91/hardware.h>
 
 AT91_ENTRY_FUNCTION(start_dss11, r0, r1, r2)
 {
diff --git a/arch/arm/boards/haba-knx/init.c b/arch/arm/boards/haba-knx/init.c
index 4c7bb3978a..e04d8df955 100644
--- a/arch/arm/boards/haba-knx/init.c
+++ b/arch/arm/boards/haba-knx/init.c
@@ -12,19 +12,19 @@
 #include <fcntl.h>
 #include <io.h>
 #include <envfs.h>
-#include <mach/hardware.h>
+#include <mach/at91/hardware.h>
 #include <nand.h>
 #include <linux/sizes.h>
 #include <linux/mtd/nand.h>
 #include <linux/mtd/rawnand.h>
 #include <linux/clk.h>
-#include <mach/board.h>
-#include <mach/at91sam9_smc.h>
+#include <mach/at91/board.h>
+#include <mach/at91/at91sam9_smc.h>
 #include <gpio.h>
 #include <led.h>
-#include <mach/iomux.h>
-#include <mach/at91_pmc.h>
-#include <mach/at91_rstc.h>
+#include <mach/at91/iomux.h>
+#include <mach/at91/at91_pmc.h>
+#include <mach/at91/at91_rstc.h>
 #include <spi/spi.h>
 #include <i2c/i2c.h>
 #include <libfile.h>
diff --git a/arch/arm/boards/haba-knx/lowlevel.c b/arch/arm/boards/haba-knx/lowlevel.c
index 76275e440a..f71e0098e8 100644
--- a/arch/arm/boards/haba-knx/lowlevel.c
+++ b/arch/arm/boards/haba-knx/lowlevel.c
@@ -7,11 +7,10 @@
 #include <common.h>
 #include <init.h>
 
-#include <mach/barebox-arm.h>
-
-#include <mach/at91sam9_sdramc.h>
-#include <mach/at91sam9260.h>
-#include <mach/hardware.h>
+#include <mach/at91/barebox-arm.h>
+#include <mach/at91/at91sam9_sdramc.h>
+#include <mach/at91/at91sam9260.h>
+#include <mach/at91/hardware.h>
 
 AT91_ENTRY_FUNCTION(start_haba_knx_lite, r0, r1, r2)
 {
diff --git a/arch/arm/boards/microchip-ksz9477-evb/lowlevel.c b/arch/arm/boards/microchip-ksz9477-evb/lowlevel.c
index 6290766caa..bda6a94160 100644
--- a/arch/arm/boards/microchip-ksz9477-evb/lowlevel.c
+++ b/arch/arm/boards/microchip-ksz9477-evb/lowlevel.c
@@ -9,11 +9,11 @@
 
 #include <asm/barebox-arm-head.h>
 #include <debug_ll.h>
-#include <mach/barebox-arm.h>
-#include <mach/iomux.h>
-#include <mach/sama5d3.h>
-#include <mach/sama5d3-xplained-ddramc.h>
-#include <mach/xload.h>
+#include <mach/at91/barebox-arm.h>
+#include <mach/at91/iomux.h>
+#include <mach/at91/sama5d3.h>
+#include <mach/at91/sama5d3-xplained-ddramc.h>
+#include <mach/at91/xload.h>
 
 /* PCK = 528MHz, MCK = 132MHz */
 #define MASTER_CLOCK	132000000
diff --git a/arch/arm/boards/pm9261/init.c b/arch/arm/boards/pm9261/init.c
index 5747a9e995..d6e3df9247 100644
--- a/arch/arm/boards/pm9261/init.c
+++ b/arch/arm/boards/pm9261/init.c
@@ -13,14 +13,14 @@
 #include <fcntl.h>
 #include <io.h>
 #include <envfs.h>
-#include <mach/hardware.h>
+#include <mach/at91/hardware.h>
 #include <nand.h>
 #include <linux/mtd/nand.h>
 #include <linux/mtd/rawnand.h>
-#include <mach/at91_pmc.h>
-#include <mach/board.h>
-#include <mach/iomux.h>
-#include <mach/at91sam9_smc.h>
+#include <mach/at91/at91_pmc.h>
+#include <mach/at91/board.h>
+#include <mach/at91/iomux.h>
+#include <mach/at91/at91sam9_smc.h>
 #include <platform_data/eth-dm9000.h>
 #include <linux/w1-gpio.h>
 #include <w1_mac_address.h>
diff --git a/arch/arm/boards/pm9261/lowlevel_init.c b/arch/arm/boards/pm9261/lowlevel_init.c
index 7131120e97..6a44981cc1 100644
--- a/arch/arm/boards/pm9261/lowlevel_init.c
+++ b/arch/arm/boards/pm9261/lowlevel_init.c
@@ -4,10 +4,9 @@
  * Under GPLv2
  */
 
-#include <mach/barebox-arm.h>
-
-#include <mach/at91sam926x_board_init.h>
-#include <mach/at91sam9261_matrix.h>
+#include <mach/at91/barebox-arm.h>
+#include <mach/at91/at91sam926x_board_init.h>
+#include <mach/at91/at91sam9261_matrix.h>
 
 #define MASTER_PLL_DIV		15
 #define MASTER_PLL_MUL		162
diff --git a/arch/arm/boards/pm9263/init.c b/arch/arm/boards/pm9263/init.c
index fb9f336afe..37432afddf 100644
--- a/arch/arm/boards/pm9263/init.c
+++ b/arch/arm/boards/pm9263/init.c
@@ -12,14 +12,14 @@
 #include <gpio.h>
 #include <fcntl.h>
 #include <io.h>
-#include <mach/hardware.h>
+#include <mach/at91/hardware.h>
 #include <nand.h>
 #include <linux/mtd/nand.h>
 #include <linux/mtd/rawnand.h>
-#include <mach/at91_pmc.h>
-#include <mach/board.h>
-#include <mach/iomux.h>
-#include <mach/at91sam9_smc.h>
+#include <mach/at91/at91_pmc.h>
+#include <mach/at91/board.h>
+#include <mach/at91/iomux.h>
+#include <mach/at91/at91sam9_smc.h>
 #include <linux/w1-gpio.h>
 #include <w1_mac_address.h>
 
diff --git a/arch/arm/boards/pm9263/lowlevel_init.c b/arch/arm/boards/pm9263/lowlevel_init.c
index 7a9993c50b..d06573d1cc 100644
--- a/arch/arm/boards/pm9263/lowlevel_init.c
+++ b/arch/arm/boards/pm9263/lowlevel_init.c
@@ -6,10 +6,9 @@
 
 #include <linux/sizes.h>
 
-#include <mach/barebox-arm.h>
-
-#include <mach/at91sam926x_board_init.h>
-#include <mach/at91sam9263_matrix.h>
+#include <mach/at91/barebox-arm.h>
+#include <mach/at91/at91sam926x_board_init.h>
+#include <mach/at91/at91sam9263_matrix.h>
 
 #define MASTER_PLL_DIV		6
 #define MASTER_PLL_MUL		65
diff --git a/arch/arm/boards/pm9g45/init.c b/arch/arm/boards/pm9g45/init.c
index 1630cb2d4e..693ad457c9 100644
--- a/arch/arm/boards/pm9g45/init.c
+++ b/arch/arm/boards/pm9g45/init.c
@@ -13,14 +13,14 @@
 #include <gpio.h>
 #include <io.h>
 #include <envfs.h>
-#include <mach/hardware.h>
+#include <mach/at91/hardware.h>
 #include <nand.h>
 #include <linux/mtd/nand.h>
 #include <linux/mtd/rawnand.h>
-#include <mach/at91_pmc.h>
-#include <mach/board.h>
-#include <mach/iomux.h>
-#include <mach/at91sam9_smc.h>
+#include <mach/at91/at91_pmc.h>
+#include <mach/at91/board.h>
+#include <mach/at91/iomux.h>
+#include <mach/at91/at91sam9_smc.h>
 #include <linux/w1-gpio.h>
 #include <w1_mac_address.h>
 
diff --git a/arch/arm/boards/pm9g45/lowlevel.c b/arch/arm/boards/pm9g45/lowlevel.c
index 017c8d9b12..9cdc2711e6 100644
--- a/arch/arm/boards/pm9g45/lowlevel.c
+++ b/arch/arm/boards/pm9g45/lowlevel.c
@@ -7,11 +7,9 @@
 #include <common.h>
 #include <init.h>
 
-#include <mach/barebox-arm.h>
-
-#include <mach/at91_ddrsdrc.h>
-
-#include <mach/hardware.h>
+#include <mach/at91/barebox-arm.h>
+#include <mach/at91/at91_ddrsdrc.h>
+#include <mach/at91/hardware.h>
 
 AT91_ENTRY_FUNCTION(start_pm9g45, r0, r1, r2)
 {
diff --git a/arch/arm/boards/qil-a926x/init.c b/arch/arm/boards/qil-a926x/init.c
index e0b85f6423..819e48e17b 100644
--- a/arch/arm/boards/qil-a926x/init.c
+++ b/arch/arm/boards/qil-a926x/init.c
@@ -15,19 +15,19 @@
 #include <fcntl.h>
 #include <io.h>
 #include <envfs.h>
-#include <mach/hardware.h>
+#include <mach/at91/hardware.h>
 #include <nand.h>
 #include <linux/sizes.h>
 #include <linux/mtd/nand.h>
 #include <linux/mtd/rawnand.h>
 #include <linux/clk.h>
-#include <mach/board.h>
-#include <mach/at91sam9_smc.h>
+#include <mach/at91/board.h>
+#include <mach/at91/at91sam9_smc.h>
 #include <gpio.h>
 #include <led.h>
-#include <mach/iomux.h>
-#include <mach/at91_pmc.h>
-#include <mach/at91_rstc.h>
+#include <mach/at91/iomux.h>
+#include <mach/at91/at91_pmc.h>
+#include <mach/at91/at91_rstc.h>
 
 static void qil_a9260_set_board_type(void)
 {
diff --git a/arch/arm/boards/qil-a926x/lowlevel.c b/arch/arm/boards/qil-a926x/lowlevel.c
index f21d8b8057..314980e84c 100644
--- a/arch/arm/boards/qil-a926x/lowlevel.c
+++ b/arch/arm/boards/qil-a926x/lowlevel.c
@@ -7,11 +7,10 @@
 #include <common.h>
 #include <init.h>
 
-#include <mach/barebox-arm.h>
-
-#include <mach/at91sam9_sdramc.h>
-#include <mach/at91sam9260.h>
-#include <mach/hardware.h>
+#include <mach/at91/barebox-arm.h>
+#include <mach/at91/at91sam9_sdramc.h>
+#include <mach/at91/at91sam9260.h>
+#include <mach/at91/hardware.h>
 
 AT91_ENTRY_FUNCTION(start_qil_a926x, r0, r1, r2)
 {
diff --git a/arch/arm/boards/sama5d27-giantboard/lowlevel.c b/arch/arm/boards/sama5d27-giantboard/lowlevel.c
index fac39dd066..49540bede0 100644
--- a/arch/arm/boards/sama5d27-giantboard/lowlevel.c
+++ b/arch/arm/boards/sama5d27-giantboard/lowlevel.c
@@ -5,11 +5,11 @@
 
 #include <common.h>
 #include <init.h>
-#include <mach/barebox-arm.h>
-#include <mach/sama5d2_ll.h>
-#include <mach/xload.h>
-#include <mach/sama5d2-sip-ddramc.h>
-#include <mach/iomux.h>
+#include <mach/at91/barebox-arm.h>
+#include <mach/at91/sama5d2_ll.h>
+#include <mach/at91/xload.h>
+#include <mach/at91/sama5d2-sip-ddramc.h>
+#include <mach/at91/iomux.h>
 #include <debug_ll.h>
 
 /* PCK = 492MHz, MCK = 164MHz */
diff --git a/arch/arm/boards/sama5d27-som1/lowlevel.c b/arch/arm/boards/sama5d27-som1/lowlevel.c
index 24c08d9722..67300587fe 100644
--- a/arch/arm/boards/sama5d27-som1/lowlevel.c
+++ b/arch/arm/boards/sama5d27-som1/lowlevel.c
@@ -5,12 +5,12 @@
 
 #include <common.h>
 #include <init.h>
-#include <mach/barebox-arm.h>
-#include <mach/sama5d2_ll.h>
-#include <mach/iomux.h>
-#include <mach/xload.h>
+#include <mach/at91/barebox-arm.h>
+#include <mach/at91/sama5d2_ll.h>
+#include <mach/at91/iomux.h>
+#include <mach/at91/xload.h>
 #include <debug_ll.h>
-#include <mach/sama5d2-sip-ddramc.h>
+#include <mach/at91/sama5d2-sip-ddramc.h>
 
 #define RGB_LED_GREEN (1 << 0)
 #define RGB_LED_RED   (1 << 1)
diff --git a/arch/arm/boards/sama5d3_xplained/board.c b/arch/arm/boards/sama5d3_xplained/board.c
index 3e07491419..a5f191191b 100644
--- a/arch/arm/boards/sama5d3_xplained/board.c
+++ b/arch/arm/boards/sama5d3_xplained/board.c
@@ -3,8 +3,8 @@
 #include <common.h>
 #include <init.h>
 #include <envfs.h>
-#include <mach/at91sam9_smc.h>
-#include <mach/hardware.h>
+#include <mach/at91/at91sam9_smc.h>
+#include <mach/at91/hardware.h>
 #include <linux/clk.h>
 
 static struct sam9_smc_config sama5d3_xplained_nand_smc_config = {
diff --git a/arch/arm/boards/sama5d3_xplained/lowlevel.c b/arch/arm/boards/sama5d3_xplained/lowlevel.c
index be6b2960d4..d66b10fa8f 100644
--- a/arch/arm/boards/sama5d3_xplained/lowlevel.c
+++ b/arch/arm/boards/sama5d3_xplained/lowlevel.c
@@ -9,11 +9,11 @@
 
 #include <asm/barebox-arm-head.h>
 #include <debug_ll.h>
-#include <mach/barebox-arm.h>
-#include <mach/iomux.h>
-#include <mach/sama5d3.h>
-#include <mach/sama5d3-xplained-ddramc.h>
-#include <mach/xload.h>
+#include <mach/at91/barebox-arm.h>
+#include <mach/at91/iomux.h>
+#include <mach/at91/sama5d3.h>
+#include <mach/at91/sama5d3-xplained-ddramc.h>
+#include <mach/at91/xload.h>
 
 /* PCK = 528MHz, MCK = 132MHz */
 #define MASTER_CLOCK	132000000
diff --git a/arch/arm/boards/sama5d3xek/init.c b/arch/arm/boards/sama5d3xek/init.c
index d364705056..13e77c16ef 100644
--- a/arch/arm/boards/sama5d3xek/init.c
+++ b/arch/arm/boards/sama5d3xek/init.c
@@ -11,18 +11,18 @@
 #include <fcntl.h>
 #include <io.h>
 #include <envfs.h>
-#include <mach/hardware.h>
+#include <mach/at91/hardware.h>
 #include <nand.h>
 #include <linux/sizes.h>
 #include <linux/mtd/nand.h>
 #include <linux/mtd/rawnand.h>
-#include <mach/board.h>
-#include <mach/at91sam9_smc.h>
+#include <mach/at91/board.h>
+#include <mach/at91/at91sam9_smc.h>
 #include <gpio.h>
-#include <mach/iomux.h>
-#include <mach/at91_pmc.h>
-#include <mach/at91_rstc.h>
-#include <mach/at91sam9x5_matrix.h>
+#include <mach/at91/iomux.h>
+#include <mach/at91/at91_pmc.h>
+#include <mach/at91/at91_rstc.h>
+#include <mach/at91/at91sam9x5_matrix.h>
 #include <input/qt1070.h>
 #include <readkey.h>
 #include <poller.h>
diff --git a/arch/arm/boards/sama5d3xek/lowlevel.c b/arch/arm/boards/sama5d3xek/lowlevel.c
index 28c07d5053..fe5f172127 100644
--- a/arch/arm/boards/sama5d3xek/lowlevel.c
+++ b/arch/arm/boards/sama5d3xek/lowlevel.c
@@ -10,8 +10,8 @@
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
 
-#include <mach/at91_ddrsdrc.h>
-#include <mach/hardware.h>
+#include <mach/at91/at91_ddrsdrc.h>
+#include <mach/at91/hardware.h>
 
 void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
 {
diff --git a/arch/arm/boards/sama5d4_xplained/lowlevel.c b/arch/arm/boards/sama5d4_xplained/lowlevel.c
index 3c58a08f3b..183bd9c5a9 100644
--- a/arch/arm/boards/sama5d4_xplained/lowlevel.c
+++ b/arch/arm/boards/sama5d4_xplained/lowlevel.c
@@ -10,8 +10,8 @@
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
 
-#include <mach/at91_ddrsdrc.h>
-#include <mach/hardware.h>
+#include <mach/at91/at91_ddrsdrc.h>
+#include <mach/at91/hardware.h>
 
 void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
 {
diff --git a/arch/arm/boards/sama5d4_xplained/sama5d4_xplained.c b/arch/arm/boards/sama5d4_xplained/sama5d4_xplained.c
index 8dd9edea60..c88f0d090a 100644
--- a/arch/arm/boards/sama5d4_xplained/sama5d4_xplained.c
+++ b/arch/arm/boards/sama5d4_xplained/sama5d4_xplained.c
@@ -15,18 +15,18 @@
 #include <fs.h>
 #include <fcntl.h>
 #include <io.h>
-#include <mach/hardware.h>
+#include <mach/at91/hardware.h>
 #include <nand.h>
 #include <linux/sizes.h>
 #include <linux/mtd/nand.h>
 #include <linux/mtd/rawnand.h>
-#include <mach/board.h>
-#include <mach/at91sam9_smc.h>
+#include <mach/at91/board.h>
+#include <mach/at91/at91sam9_smc.h>
 #include <gpio.h>
-#include <mach/iomux.h>
-#include <mach/at91_pmc.h>
-#include <mach/at91_rstc.h>
-#include <mach/at91sam9x5_matrix.h>
+#include <mach/at91/iomux.h>
+#include <mach/at91/at91_pmc.h>
+#include <mach/at91/at91_rstc.h>
+#include <mach/at91/at91sam9x5_matrix.h>
 #include <input/qt1070.h>
 #include <readkey.h>
 #include <spi/spi.h>
diff --git a/arch/arm/boards/sama5d4ek/lowlevel.c b/arch/arm/boards/sama5d4ek/lowlevel.c
index 3c58a08f3b..183bd9c5a9 100644
--- a/arch/arm/boards/sama5d4ek/lowlevel.c
+++ b/arch/arm/boards/sama5d4ek/lowlevel.c
@@ -10,8 +10,8 @@
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
 
-#include <mach/at91_ddrsdrc.h>
-#include <mach/hardware.h>
+#include <mach/at91/at91_ddrsdrc.h>
+#include <mach/at91/hardware.h>
 
 void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
 {
diff --git a/arch/arm/boards/sama5d4ek/sama5d4ek.c b/arch/arm/boards/sama5d4ek/sama5d4ek.c
index 350e6c4302..0dda34614a 100644
--- a/arch/arm/boards/sama5d4ek/sama5d4ek.c
+++ b/arch/arm/boards/sama5d4ek/sama5d4ek.c
@@ -15,18 +15,18 @@
 #include <fs.h>
 #include <fcntl.h>
 #include <io.h>
-#include <mach/hardware.h>
+#include <mach/at91/hardware.h>
 #include <nand.h>
 #include <linux/sizes.h>
 #include <linux/mtd/nand.h>
 #include <linux/mtd/rawnand.h>
-#include <mach/board.h>
-#include <mach/at91sam9_smc.h>
+#include <mach/at91/board.h>
+#include <mach/at91/at91sam9_smc.h>
 #include <gpio.h>
-#include <mach/iomux.h>
-#include <mach/at91_pmc.h>
-#include <mach/at91_rstc.h>
-#include <mach/at91sam9x5_matrix.h>
+#include <mach/at91/iomux.h>
+#include <mach/at91/at91_pmc.h>
+#include <mach/at91/at91_rstc.h>
+#include <mach/at91/at91sam9x5_matrix.h>
 #include <input/qt1070.h>
 #include <readkey.h>
 #include <spi/spi.h>
diff --git a/arch/arm/boards/skov-arm9cpu/board.c b/arch/arm/boards/skov-arm9cpu/board.c
index 4af8c9c04a..cf2b424cdc 100644
--- a/arch/arm/boards/skov-arm9cpu/board.c
+++ b/arch/arm/boards/skov-arm9cpu/board.c
@@ -10,11 +10,11 @@
 
 #include <linux/sizes.h>
 
-#include <mach/at91sam9263_matrix.h>
-#include <mach/at91sam9_sdramc.h>
-#include <mach/at91sam9_smc.h>
-#include <mach/hardware.h>
-#include <mach/iomux.h>
+#include <mach/at91/at91sam9263_matrix.h>
+#include <mach/at91/at91sam9_sdramc.h>
+#include <mach/at91/at91sam9_smc.h>
+#include <mach/at91/hardware.h>
+#include <mach/at91/iomux.h>
 
 static struct sam9_smc_config ek_nand_smc_config = {
 	.ncs_read_setup		= 0,
diff --git a/arch/arm/boards/skov-arm9cpu/lowlevel.c b/arch/arm/boards/skov-arm9cpu/lowlevel.c
index d335953a73..bde5b80e6c 100644
--- a/arch/arm/boards/skov-arm9cpu/lowlevel.c
+++ b/arch/arm/boards/skov-arm9cpu/lowlevel.c
@@ -5,8 +5,8 @@
 
 #include <asm/barebox-arm.h>
 
-#include <mach/at91sam926x_board_init.h>
-#include <mach/at91sam9263_matrix.h>
+#include <mach/at91/at91sam926x_board_init.h>
+#include <mach/at91/at91sam9263_matrix.h>
 
 #define MASTER_PLL_MUL		171
 #define MASTER_PLL_DIV		14
diff --git a/arch/arm/boards/telit-evk-pro3/init.c b/arch/arm/boards/telit-evk-pro3/init.c
index 4c853c647c..43f9cbdf3a 100644
--- a/arch/arm/boards/telit-evk-pro3/init.c
+++ b/arch/arm/boards/telit-evk-pro3/init.c
@@ -9,10 +9,10 @@
 #include <linux/clk.h>
 #include <linux/mtd/nand.h>
 #include <linux/mtd/rawnand.h>
-#include <mach/at91_rstc.h>
-#include <mach/at91sam9_smc.h>
-#include <mach/board.h>
-#include <mach/iomux.h>
+#include <mach/at91/at91_rstc.h>
+#include <mach/at91/at91sam9_smc.h>
+#include <mach/at91/board.h>
+#include <mach/at91/iomux.h>
 #include <nand.h>
 
 #define BOOTSTRAP_SIZE	0xC0000
diff --git a/arch/arm/boards/telit-evk-pro3/lowlevel.c b/arch/arm/boards/telit-evk-pro3/lowlevel.c
index bded2ebf5d..550a0740c5 100644
--- a/arch/arm/boards/telit-evk-pro3/lowlevel.c
+++ b/arch/arm/boards/telit-evk-pro3/lowlevel.c
@@ -7,11 +7,10 @@
 #include <common.h>
 #include <init.h>
 
-#include <mach/barebox-arm.h>
-
-#include <mach/at91sam9_sdramc.h>
-#include <mach/at91sam9260.h>
-#include <mach/hardware.h>
+#include <mach/at91/barebox-arm.h>
+#include <mach/at91/at91sam9_sdramc.h>
+#include <mach/at91/at91sam9260.h>
+#include <mach/at91/hardware.h>
 
 AT91_ENTRY_FUNCTION(start_telit_evk_pro3, r0, r1, r2)
 {
diff --git a/arch/arm/boards/tny-a926x/init.c b/arch/arm/boards/tny-a926x/init.c
index a8422f14ee..d9d97e1760 100644
--- a/arch/arm/boards/tny-a926x/init.c
+++ b/arch/arm/boards/tny-a926x/init.c
@@ -11,19 +11,19 @@
 #include <fcntl.h>
 #include <io.h>
 #include <envfs.h>
-#include <mach/hardware.h>
+#include <mach/at91/hardware.h>
 #include <nand.h>
 #include <linux/sizes.h>
 #include <linux/mtd/nand.h>
 #include <linux/mtd/rawnand.h>
 #include <linux/clk.h>
-#include <mach/board.h>
-#include <mach/at91sam9_smc.h>
-#include <mach/at91sam9_sdramc.h>
+#include <mach/at91/board.h>
+#include <mach/at91/at91sam9_smc.h>
+#include <mach/at91/at91sam9_sdramc.h>
 #include <gpio.h>
-#include <mach/iomux.h>
-#include <mach/at91_pmc.h>
-#include <mach/at91_rstc.h>
+#include <mach/at91/iomux.h>
+#include <mach/at91/at91_pmc.h>
+#include <mach/at91/at91_rstc.h>
 #include <spi/eeprom.h>
 
 static void tny_a9260_set_board_type(void)
diff --git a/arch/arm/boards/tny-a926x/tny_a9260_lowlevel.c b/arch/arm/boards/tny-a926x/tny_a9260_lowlevel.c
index aad5b3de59..91bf68e798 100644
--- a/arch/arm/boards/tny-a926x/tny_a9260_lowlevel.c
+++ b/arch/arm/boards/tny-a926x/tny_a9260_lowlevel.c
@@ -7,11 +7,10 @@
 #include <common.h>
 #include <init.h>
 
-#include <mach/barebox-arm.h>
-
-#include <mach/at91sam9_sdramc.h>
-#include <mach/at91sam9260.h>
-#include <mach/hardware.h>
+#include <mach/at91/barebox-arm.h>
+#include <mach/at91/at91sam9_sdramc.h>
+#include <mach/at91/at91sam9260.h>
+#include <mach/at91/hardware.h>
 
 AT91_ENTRY_FUNCTION(start_tny_a9260, r0, r1, r2)
 {
diff --git a/arch/arm/boards/tny-a926x/tny_a9263_bootstrap.c b/arch/arm/boards/tny-a926x/tny_a9263_bootstrap.c
index f26f1eaecb..5739b0f2da 100644
--- a/arch/arm/boards/tny-a926x/tny_a9263_bootstrap.c
+++ b/arch/arm/boards/tny-a926x/tny_a9263_bootstrap.c
@@ -6,7 +6,7 @@
 
 #include <common.h>
 #include <bootstrap.h>
-#include <mach/bootstrap.h>
+#include <mach/at91/bootstrap.h>
 
 #ifdef CONFIG_MTD_DATAFLASH
 void * bootstrap_board_read_dataflash(void)
diff --git a/arch/arm/boards/tny-a926x/tny_a9263_lowlevel.c b/arch/arm/boards/tny-a926x/tny_a9263_lowlevel.c
index 34aa10a12a..d20ffe9c71 100644
--- a/arch/arm/boards/tny-a926x/tny_a9263_lowlevel.c
+++ b/arch/arm/boards/tny-a926x/tny_a9263_lowlevel.c
@@ -7,10 +7,9 @@
 #include <common.h>
 #include <init.h>
 
-#include <mach/barebox-arm.h>
-
-#include <mach/at91sam926x_board_init.h>
-#include <mach/at91sam9263_matrix.h>
+#include <mach/at91/barebox-arm.h>
+#include <mach/at91/at91sam926x_board_init.h>
+#include <mach/at91/at91sam9263_matrix.h>
 
 #define MASTER_CLOCK		180
 
diff --git a/arch/arm/boards/usb-a926x/init.c b/arch/arm/boards/usb-a926x/init.c
index a4c55b6236..f91a6b1454 100644
--- a/arch/arm/boards/usb-a926x/init.c
+++ b/arch/arm/boards/usb-a926x/init.c
@@ -11,21 +11,21 @@
 #include <fcntl.h>
 #include <io.h>
 #include <envfs.h>
-#include <mach/hardware.h>
-#include <mach/at91sam926x.h>
+#include <mach/at91/hardware.h>
+#include <mach/at91/at91sam926x.h>
 #include <nand.h>
 #include <linux/sizes.h>
 #include <linux/mtd/nand.h>
 #include <linux/mtd/rawnand.h>
 #include <linux/clk.h>
-#include <mach/board.h>
-#include <mach/at91sam9_smc.h>
-#include <mach/at91sam9_sdramc.h>
+#include <mach/at91/board.h>
+#include <mach/at91/at91sam9_smc.h>
+#include <mach/at91/at91sam9_sdramc.h>
 #include <gpio.h>
 #include <led.h>
-#include <mach/iomux.h>
-#include <mach/at91_pmc.h>
-#include <mach/at91_rstc.h>
+#include <mach/at91/iomux.h>
+#include <mach/at91/at91_pmc.h>
+#include <mach/at91/at91_rstc.h>
 #include <gpio_keys.h>
 #include <readkey.h>
 #include <spi/spi.h>
diff --git a/arch/arm/boards/usb-a926x/usb_a9260_lowlevel.c b/arch/arm/boards/usb-a926x/usb_a9260_lowlevel.c
index c2c8d0f7fe..66753669d6 100644
--- a/arch/arm/boards/usb-a926x/usb_a9260_lowlevel.c
+++ b/arch/arm/boards/usb-a926x/usb_a9260_lowlevel.c
@@ -7,11 +7,10 @@
 #include <common.h>
 #include <init.h>
 
-#include <mach/barebox-arm.h>
-
-#include <mach/at91sam9_sdramc.h>
-#include <mach/at91sam9260.h>
-#include <mach/hardware.h>
+#include <mach/at91/barebox-arm.h>
+#include <mach/at91/at91sam9_sdramc.h>
+#include <mach/at91/at91sam9260.h>
+#include <mach/at91/hardware.h>
 
 AT91_ENTRY_FUNCTION(start_usb_a9260, r0, r1, r2)
 {
diff --git a/arch/arm/boards/usb-a926x/usb_a9263_bootstrap.c b/arch/arm/boards/usb-a926x/usb_a9263_bootstrap.c
index f26f1eaecb..5739b0f2da 100644
--- a/arch/arm/boards/usb-a926x/usb_a9263_bootstrap.c
+++ b/arch/arm/boards/usb-a926x/usb_a9263_bootstrap.c
@@ -6,7 +6,7 @@
 
 #include <common.h>
 #include <bootstrap.h>
-#include <mach/bootstrap.h>
+#include <mach/at91/bootstrap.h>
 
 #ifdef CONFIG_MTD_DATAFLASH
 void * bootstrap_board_read_dataflash(void)
diff --git a/arch/arm/boards/usb-a926x/usb_a9263_lowlevel.c b/arch/arm/boards/usb-a926x/usb_a9263_lowlevel.c
index 4b0a80fa83..eda534c68e 100644
--- a/arch/arm/boards/usb-a926x/usb_a9263_lowlevel.c
+++ b/arch/arm/boards/usb-a926x/usb_a9263_lowlevel.c
@@ -6,10 +6,9 @@
 
 #include <linux/sizes.h>
 
-#include <mach/barebox-arm.h>
-
-#include <mach/at91sam926x_board_init.h>
-#include <mach/at91sam9263_matrix.h>
+#include <mach/at91/barebox-arm.h>
+#include <mach/at91/at91sam926x_board_init.h>
+#include <mach/at91/at91sam9263_matrix.h>
 
 #define MASTER_CLOCK		180
 
diff --git a/arch/arm/include/asm/debug_ll.h b/arch/arm/include/asm/debug_ll.h
index 96350936f9..2e1d6ba3e4 100644
--- a/arch/arm/include/asm/debug_ll.h
+++ b/arch/arm/include/asm/debug_ll.h
@@ -48,6 +48,8 @@
 #include <mach/digic/debug_ll.h>
 #elif defined CONFIG_ARCH_CLPS711X
 #include <mach/clps711x/debug_ll.h>
+#elif defined CONFIG_ARCH_AT91
+#include <mach/at91/debug_ll.h>
 #else
 #ifndef CONFIG_ARCH_ARM64_VIRT
 #include <mach/debug_ll.h>
diff --git a/arch/arm/mach-at91/aic.c b/arch/arm/mach-at91/aic.c
index b40f1d214b..b57fe57361 100644
--- a/arch/arm/mach-at91/aic.c
+++ b/arch/arm/mach-at91/aic.c
@@ -6,7 +6,7 @@
  * this software without specific prior written permission.
  */
 
-#include <mach/aic.h>
+#include <mach/at91/aic.h>
 #include <io.h>
 
 #define SFR_AICREDIR	0x54
diff --git a/arch/arm/mach-at91/at91_pmc_ll.c b/arch/arm/mach-at91/at91_pmc_ll.c
index e561f20755..0d377b4ca7 100644
--- a/arch/arm/mach-at91/at91_pmc_ll.c
+++ b/arch/arm/mach-at91/at91_pmc_ll.c
@@ -10,10 +10,10 @@
 #define pr_fmt(fmt) "at91pmc: " fmt
 
 #include <common.h>
-#include <mach/hardware.h>
-#include <mach/at91_pmc.h>
-#include <mach/at91_pmc_ll.h>
-#include <mach/early_udelay.h>
+#include <mach/at91/hardware.h>
+#include <mach/at91/at91_pmc.h>
+#include <mach/at91/at91_pmc_ll.h>
+#include <mach/at91/early_udelay.h>
 
 #define SFR_UTMICKTRIM	0x30	/* UTMI Clock Trimming Register */
 #define AT91_UTMICKTRIM_FREQ	0x03
diff --git a/arch/arm/mach-at91/at91rm9200.c b/arch/arm/mach-at91/at91rm9200.c
index ef2430576b..a45bf7cdd3 100644
--- a/arch/arm/mach-at91/at91rm9200.c
+++ b/arch/arm/mach-at91/at91rm9200.c
@@ -3,8 +3,8 @@
 #include <common.h>
 #include <gpio.h>
 #include <init.h>
-#include <mach/hardware.h>
-#include <mach/at91_pmc.h>
+#include <mach/at91/hardware.h>
+#include <mach/at91/at91_pmc.h>
 
 #include "clock.h"
 #include "generic.h"
diff --git a/arch/arm/mach-at91/at91rm9200_devices.c b/arch/arm/mach-at91/at91rm9200_devices.c
index b509926d82..8717aefc77 100644
--- a/arch/arm/mach-at91/at91rm9200_devices.c
+++ b/arch/arm/mach-at91/at91rm9200_devices.c
@@ -7,11 +7,11 @@
 #include <common.h>
 #include <gpio.h>
 #include <asm/armlinux.h>
-#include <mach/hardware.h>
-#include <mach/at91rm9200.h>
-#include <mach/board.h>
-#include <mach/iomux.h>
-#include <mach/at91rm9200_mc.h>
+#include <mach/at91/hardware.h>
+#include <mach/at91/at91rm9200.h>
+#include <mach/at91/board.h>
+#include <mach/at91/iomux.h>
+#include <mach/at91/at91rm9200_mc.h>
 #include <i2c/i2c-gpio.h>
 #include <linux/sizes.h>
 
diff --git a/arch/arm/mach-at91/at91rm9200_time.c b/arch/arm/mach-at91/at91rm9200_time.c
index 110d770881..c8394d3d74 100644
--- a/arch/arm/mach-at91/at91rm9200_time.c
+++ b/arch/arm/mach-at91/at91rm9200_time.c
@@ -6,8 +6,8 @@
 #include <init.h>
 #include <clock.h>
 #include <restart.h>
-#include <mach/hardware.h>
-#include <mach/at91rm9200_st.h>
+#include <mach/at91/hardware.h>
+#include <mach/at91/at91rm9200_st.h>
 #include <io.h>
 
 static void __iomem *st = IOMEM(AT91RM9200_BASE_ST);
diff --git a/arch/arm/mach-at91/at91sam9260.c b/arch/arm/mach-at91/at91sam9260.c
index 457aecde51..623c01605f 100644
--- a/arch/arm/mach-at91/at91sam9260.c
+++ b/arch/arm/mach-at91/at91sam9260.c
@@ -4,10 +4,10 @@
 #include <gpio.h>
 #include <init.h>
 #include <restart.h>
-#include <mach/hardware.h>
-#include <mach/at91_pmc.h>
-#include <mach/board.h>
-#include <mach/at91_rstc.h>
+#include <mach/at91/hardware.h>
+#include <mach/at91/at91_pmc.h>
+#include <mach/at91/board.h>
+#include <mach/at91/at91_rstc.h>
 
 #include "generic.h"
 #include "clock.h"
diff --git a/arch/arm/mach-at91/at91sam9260_devices.c b/arch/arm/mach-at91/at91sam9260_devices.c
index 4fc7f2fcbd..435535a917 100644
--- a/arch/arm/mach-at91/at91sam9260_devices.c
+++ b/arch/arm/mach-at91/at91sam9260_devices.c
@@ -8,14 +8,14 @@
 #include <linux/sizes.h>
 #include <gpio.h>
 #include <asm/armlinux.h>
-#include <mach/hardware.h>
-#include <mach/board.h>
-#include <mach/at91_pmc.h>
-#include <mach/at91sam9260_matrix.h>
-#include <mach/at91sam9_sdramc.h>
-#include <mach/at91_rtt.h>
-#include <mach/iomux.h>
-#include <mach/cpu.h>
+#include <mach/at91/hardware.h>
+#include <mach/at91/board.h>
+#include <mach/at91/at91_pmc.h>
+#include <mach/at91/at91sam9260_matrix.h>
+#include <mach/at91/at91sam9_sdramc.h>
+#include <mach/at91/at91_rtt.h>
+#include <mach/at91/iomux.h>
+#include <mach/at91/cpu.h>
 #include <i2c/i2c-gpio.h>
 
 #include "generic.h"
diff --git a/arch/arm/mach-at91/at91sam9261.c b/arch/arm/mach-at91/at91sam9261.c
index 840c0be382..df35b7239c 100644
--- a/arch/arm/mach-at91/at91sam9261.c
+++ b/arch/arm/mach-at91/at91sam9261.c
@@ -4,10 +4,10 @@
 #include <gpio.h>
 #include <init.h>
 #include <restart.h>
-#include <mach/hardware.h>
-#include <mach/at91_pmc.h>
-#include <mach/board.h>
-#include <mach/at91_rstc.h>
+#include <mach/at91/hardware.h>
+#include <mach/at91/at91_pmc.h>
+#include <mach/at91/board.h>
+#include <mach/at91/at91_rstc.h>
 
 #include "generic.h"
 #include "clock.h"
diff --git a/arch/arm/mach-at91/at91sam9261_devices.c b/arch/arm/mach-at91/at91sam9261_devices.c
index 0c7ef6dade..20446a7077 100644
--- a/arch/arm/mach-at91/at91sam9261_devices.c
+++ b/arch/arm/mach-at91/at91sam9261_devices.c
@@ -8,14 +8,14 @@
 #include <linux/sizes.h>
 #include <gpio.h>
 #include <asm/armlinux.h>
-#include <mach/hardware.h>
-#include <mach/at91_pmc.h>
-#include <mach/at91sam9261_matrix.h>
-#include <mach/at91sam9_sdramc.h>
-#include <mach/at91_rtt.h>
-#include <mach/board.h>
-#include <mach/iomux.h>
-#include <mach/cpu.h>
+#include <mach/at91/hardware.h>
+#include <mach/at91/at91_pmc.h>
+#include <mach/at91/at91sam9261_matrix.h>
+#include <mach/at91/at91sam9_sdramc.h>
+#include <mach/at91/at91_rtt.h>
+#include <mach/at91/board.h>
+#include <mach/at91/iomux.h>
+#include <mach/at91/cpu.h>
 #include <i2c/i2c-gpio.h>
 
 #include "generic.h"
diff --git a/arch/arm/mach-at91/at91sam9263.c b/arch/arm/mach-at91/at91sam9263.c
index 53523d1f9f..2241e568d4 100644
--- a/arch/arm/mach-at91/at91sam9263.c
+++ b/arch/arm/mach-at91/at91sam9263.c
@@ -4,10 +4,10 @@
 #include <gpio.h>
 #include <init.h>
 #include <restart.h>
-#include <mach/hardware.h>
-#include <mach/at91_pmc.h>
-#include <mach/board.h>
-#include <mach/at91_rstc.h>
+#include <mach/at91/hardware.h>
+#include <mach/at91/at91_pmc.h>
+#include <mach/at91/board.h>
+#include <mach/at91/at91_rstc.h>
 
 #include "clock.h"
 #include "generic.h"
diff --git a/arch/arm/mach-at91/at91sam9263_devices.c b/arch/arm/mach-at91/at91sam9263_devices.c
index 0adf1ff0cb..1813eee746 100644
--- a/arch/arm/mach-at91/at91sam9263_devices.c
+++ b/arch/arm/mach-at91/at91sam9263_devices.c
@@ -8,13 +8,13 @@
 #include <linux/sizes.h>
 #include <gpio.h>
 #include <asm/armlinux.h>
-#include <mach/hardware.h>
-#include <mach/at91_pmc.h>
-#include <mach/at91sam9263_matrix.h>
-#include <mach/at91sam9_sdramc.h>
-#include <mach/at91_rtt.h>
-#include <mach/board.h>
-#include <mach/iomux.h>
+#include <mach/at91/hardware.h>
+#include <mach/at91/at91_pmc.h>
+#include <mach/at91/at91sam9263_matrix.h>
+#include <mach/at91/at91sam9_sdramc.h>
+#include <mach/at91/at91_rtt.h>
+#include <mach/at91/board.h>
+#include <mach/at91/iomux.h>
 #include <i2c/i2c-gpio.h>
 
 #include "generic.h"
diff --git a/arch/arm/mach-at91/at91sam9_reset.S b/arch/arm/mach-at91/at91sam9_reset.S
index e50b5e13d5..37d0c8fc5d 100644
--- a/arch/arm/mach-at91/at91sam9_reset.S
+++ b/arch/arm/mach-at91/at91sam9_reset.S
@@ -10,8 +10,8 @@
  */
 
 #include <linux/linkage.h>
-#include <mach/at91sam9_sdramc.h>
-#include <mach/at91_rstc.h>
+#include <mach/at91/at91sam9_sdramc.h>
+#include <mach/at91/at91_rstc.h>
 
 			.arm
 
diff --git a/arch/arm/mach-at91/at91sam9_rst.c b/arch/arm/mach-at91/at91sam9_rst.c
index 741569fa8c..cccbc7e68f 100644
--- a/arch/arm/mach-at91/at91sam9_rst.c
+++ b/arch/arm/mach-at91/at91sam9_rst.c
@@ -9,7 +9,7 @@
 #include <restart.h>
 #include <linux/bitfield.h>
 #include <linux/clk.h>
-#include <mach/at91_rstc.h>
+#include <mach/at91/at91_rstc.h>
 #include <reset_source.h>
 
 struct at91sam9x_rst {
diff --git a/arch/arm/mach-at91/at91sam9_sdramc_ll.c b/arch/arm/mach-at91/at91sam9_sdramc_ll.c
index 805cfbbe43..5305c94248 100644
--- a/arch/arm/mach-at91/at91sam9_sdramc_ll.c
+++ b/arch/arm/mach-at91/at91sam9_sdramc_ll.c
@@ -3,8 +3,8 @@
  * Copyright (c) 2006, Atmel Corporation
  */
 
-#include <mach/at91sam9_sdramc.h>
-#include <mach/early_udelay.h>
+#include <mach/at91/at91sam9_sdramc.h>
+#include <mach/at91/early_udelay.h>
 
 static inline void sdramc_wr(const struct at91sam9_sdramc_config *config,
 			     unsigned int offset,
diff --git a/arch/arm/mach-at91/at91sam9_xload_mmc.c b/arch/arm/mach-at91/at91sam9_xload_mmc.c
index 5cf41c483d..26f268ae91 100644
--- a/arch/arm/mach-at91/at91sam9_xload_mmc.c
+++ b/arch/arm/mach-at91/at91sam9_xload_mmc.c
@@ -8,13 +8,13 @@
 #include <linux/sizes.h>
 #include <asm/cache.h>
 
-#include <mach/at91_pmc_ll.h>
-#include <mach/at91sam9263.h>
-#include <mach/at91sam926x.h>
-#include <mach/hardware.h>
-#include <mach/iomux.h>
-#include <mach/xload.h>
-#include <mach/gpio.h>
+#include <mach/at91/at91_pmc_ll.h>
+#include <mach/at91/at91sam9263.h>
+#include <mach/at91/at91sam926x.h>
+#include <mach/at91/hardware.h>
+#include <mach/at91/iomux.h>
+#include <mach/at91/xload.h>
+#include <mach/at91/gpio.h>
 
 typedef void (*func)(int zero, int arch, void *params);
 
diff --git a/arch/arm/mach-at91/at91sam9g45.c b/arch/arm/mach-at91/at91sam9g45.c
index ee8650db39..0d8d399fc5 100644
--- a/arch/arm/mach-at91/at91sam9g45.c
+++ b/arch/arm/mach-at91/at91sam9g45.c
@@ -4,11 +4,11 @@
 #include <gpio.h>
 #include <init.h>
 #include <restart.h>
-#include <mach/hardware.h>
-#include <mach/at91_pmc.h>
-#include <mach/cpu.h>
-#include <mach/board.h>
-#include <mach/at91_rstc.h>
+#include <mach/at91/hardware.h>
+#include <mach/at91/at91_pmc.h>
+#include <mach/at91/cpu.h>
+#include <mach/at91/board.h>
+#include <mach/at91/at91_rstc.h>
 
 #include "generic.h"
 #include "clock.h"
diff --git a/arch/arm/mach-at91/at91sam9g45_devices.c b/arch/arm/mach-at91/at91sam9g45_devices.c
index d55ab4f9ea..e74ba8e917 100644
--- a/arch/arm/mach-at91/at91sam9g45_devices.c
+++ b/arch/arm/mach-at91/at91sam9g45_devices.c
@@ -8,13 +8,13 @@
 #include <linux/sizes.h>
 #include <gpio.h>
 #include <asm/armlinux.h>
-#include <mach/hardware.h>
-#include <mach/at91_pmc.h>
-#include <mach/at91sam9g45_matrix.h>
-#include <mach/at91_ddrsdrc.h>
-#include <mach/at91_rtt.h>
-#include <mach/board.h>
-#include <mach/iomux.h>
+#include <mach/at91/hardware.h>
+#include <mach/at91/at91_pmc.h>
+#include <mach/at91/at91sam9g45_matrix.h>
+#include <mach/at91/at91_ddrsdrc.h>
+#include <mach/at91/at91_rtt.h>
+#include <mach/at91/board.h>
+#include <mach/at91/iomux.h>
 #include <i2c/i2c-gpio.h>
 
 #include "generic.h"
diff --git a/arch/arm/mach-at91/at91sam9g45_reset.S b/arch/arm/mach-at91/at91sam9g45_reset.S
index 67517bf591..4189c4bfd7 100644
--- a/arch/arm/mach-at91/at91sam9g45_reset.S
+++ b/arch/arm/mach-at91/at91sam9g45_reset.S
@@ -11,8 +11,8 @@
  */
 
 #include <linux/linkage.h>
-#include <mach/at91_ddrsdrc.h>
-#include <mach/at91_rstc.h>
+#include <mach/at91/at91_ddrsdrc.h>
+#include <mach/at91/at91_rstc.h>
 
 			.arm
 
diff --git a/arch/arm/mach-at91/at91sam9n12.c b/arch/arm/mach-at91/at91sam9n12.c
index dbaabc0533..e6f4495fc1 100644
--- a/arch/arm/mach-at91/at91sam9n12.c
+++ b/arch/arm/mach-at91/at91sam9n12.c
@@ -4,11 +4,11 @@
 #include <gpio.h>
 #include <init.h>
 #include <restart.h>
-#include <mach/hardware.h>
-#include <mach/at91_pmc.h>
-#include <mach/cpu.h>
-#include <mach/board.h>
-#include <mach/at91_rstc.h>
+#include <mach/at91/hardware.h>
+#include <mach/at91/at91_pmc.h>
+#include <mach/at91/cpu.h>
+#include <mach/at91/board.h>
+#include <mach/at91/at91_rstc.h>
 
 #include "generic.h"
 #include "clock.h"
diff --git a/arch/arm/mach-at91/at91sam9n12_devices.c b/arch/arm/mach-at91/at91sam9n12_devices.c
index ef432f8758..626b267954 100644
--- a/arch/arm/mach-at91/at91sam9n12_devices.c
+++ b/arch/arm/mach-at91/at91sam9n12_devices.c
@@ -8,13 +8,13 @@
 #include <linux/sizes.h>
 #include <gpio.h>
 #include <asm/armlinux.h>
-#include <mach/hardware.h>
-#include <mach/board.h>
-#include <mach/at91_pmc.h>
-#include <mach/at91sam9n12_matrix.h>
-#include <mach/at91_ddrsdrc.h>
-#include <mach/iomux.h>
-#include <mach/cpu.h>
+#include <mach/at91/hardware.h>
+#include <mach/at91/board.h>
+#include <mach/at91/at91_pmc.h>
+#include <mach/at91/at91sam9n12_matrix.h>
+#include <mach/at91/at91_ddrsdrc.h>
+#include <mach/at91/iomux.h>
+#include <mach/at91/cpu.h>
 #include <i2c/i2c-gpio.h>
 
 #include "generic.h"
diff --git a/arch/arm/mach-at91/at91sam9x5.c b/arch/arm/mach-at91/at91sam9x5.c
index ecc144a37a..0b0fbc6ff3 100644
--- a/arch/arm/mach-at91/at91sam9x5.c
+++ b/arch/arm/mach-at91/at91sam9x5.c
@@ -3,9 +3,9 @@
 #include <common.h>
 #include <init.h>
 #include <restart.h>
-#include <mach/at91sam9x5.h>
-#include <mach/board.h>
-#include <mach/at91_rstc.h>
+#include <mach/at91/at91sam9x5.h>
+#include <mach/at91/board.h>
+#include <mach/at91/at91_rstc.h>
 
 static void at91sam9x5_restart(struct restart_handler *rst)
 {
diff --git a/arch/arm/mach-at91/at91sam9x5_devices.c b/arch/arm/mach-at91/at91sam9x5_devices.c
index a2c9f3085c..c5dea4e3d7 100644
--- a/arch/arm/mach-at91/at91sam9x5_devices.c
+++ b/arch/arm/mach-at91/at91sam9x5_devices.c
@@ -7,13 +7,13 @@
 #include <linux/sizes.h>
 #include <gpio.h>
 #include <asm/armlinux.h>
-#include <mach/hardware.h>
-#include <mach/board.h>
-#include <mach/at91_pmc.h>
-#include <mach/at91sam9x5_matrix.h>
-#include <mach/at91_ddrsdrc.h>
-#include <mach/iomux.h>
-#include <mach/cpu.h>
+#include <mach/at91/hardware.h>
+#include <mach/at91/board.h>
+#include <mach/at91/at91_pmc.h>
+#include <mach/at91/at91sam9x5_matrix.h>
+#include <mach/at91/at91_ddrsdrc.h>
+#include <mach/at91/iomux.h>
+#include <mach/at91/cpu.h>
 #include <i2c/i2c-gpio.h>
 
 #include "generic.h"
diff --git a/arch/arm/mach-at91/bootm-barebox.c b/arch/arm/mach-at91/bootm-barebox.c
index 77aa4577c6..5540b8fad3 100644
--- a/arch/arm/mach-at91/bootm-barebox.c
+++ b/arch/arm/mach-at91/bootm-barebox.c
@@ -6,7 +6,7 @@
 #include <common.h>
 #include <init.h>
 #include <memory.h>
-#include <mach/sama5_bootsource.h>
+#include <mach/at91/sama5_bootsource.h>
 
 unsigned long at91_bootsource;
 EXPORT_SYMBOL(at91_bootsource);
diff --git a/arch/arm/mach-at91/bootstrap.c b/arch/arm/mach-at91/bootstrap.c
index 0b1567cd23..fbf5fa78a1 100644
--- a/arch/arm/mach-at91/bootstrap.c
+++ b/arch/arm/mach-at91/bootstrap.c
@@ -6,7 +6,7 @@
 
 #include <common.h>
 #include <bootstrap.h>
-#include <mach/bootstrap.h>
+#include <mach/at91/bootstrap.h>
 #include <linux/sizes.h>
 #include <malloc.h>
 #include <restart.h>
diff --git a/arch/arm/mach-at91/clock.c b/arch/arm/mach-at91/clock.c
index 8fe0115765..a3071189bb 100644
--- a/arch/arm/mach-at91/clock.c
+++ b/arch/arm/mach-at91/clock.c
@@ -13,10 +13,10 @@
 #include <linux/clk.h>
 #include <init.h>
 
-#include <mach/hardware.h>
-#include <mach/at91_pmc.h>
-#include <mach/cpu.h>
-#include <mach/board.h>
+#include <mach/at91/hardware.h>
+#include <mach/at91/at91_pmc.h>
+#include <mach/at91/cpu.h>
+#include <mach/at91/board.h>
 
 #include "clock.h"
 #include "generic.h"
diff --git a/arch/arm/mach-at91/ddramc.c b/arch/arm/mach-at91/ddramc.c
index 1e94fbf9ee..4f348c709f 100644
--- a/arch/arm/mach-at91/ddramc.c
+++ b/arch/arm/mach-at91/ddramc.c
@@ -5,11 +5,11 @@
 
 #include <common.h>
 #include <init.h>
-#include <mach/ddramc.h>
-#include <mach/hardware.h>
+#include <mach/at91/ddramc.h>
+#include <mach/at91/hardware.h>
 #include <asm/barebox-arm.h>
-#include <mach/at91_ddrsdrc.h>
-#include <mach/sama5_bootsource.h>
+#include <mach/at91/at91_ddrsdrc.h>
+#include <mach/at91/sama5_bootsource.h>
 #include <asm/memory.h>
 #include <pbl.h>
 #include <io.h>
diff --git a/arch/arm/mach-at91/ddramc_ll.c b/arch/arm/mach-at91/ddramc_ll.c
index 77d03720cc..001d3d7a22 100644
--- a/arch/arm/mach-at91/ddramc_ll.c
+++ b/arch/arm/mach-at91/ddramc_ll.c
@@ -6,9 +6,9 @@
 
 #include <linux/kconfig.h>
 #include <asm/system.h>
-#include <mach/at91_ddrsdrc.h>
-#include <mach/ddramc.h>
-#include <mach/early_udelay.h>
+#include <mach/at91/at91_ddrsdrc.h>
+#include <mach/at91/ddramc.h>
+#include <mach/at91/early_udelay.h>
 
 void at91_ddram_initialize(void __iomem *base_address,
 			   void __iomem *ram_address,
diff --git a/arch/arm/mach-at91/early_udelay.c b/arch/arm/mach-at91/early_udelay.c
index 632e797beb..c1a22d901a 100644
--- a/arch/arm/mach-at91/early_udelay.c
+++ b/arch/arm/mach-at91/early_udelay.c
@@ -3,11 +3,11 @@
  * Copyright (c) 2012, Atmel Corporation
  */
 
-#include <mach/hardware.h>
+#include <mach/at91/hardware.h>
 #include <asm/io.h>
-#include <mach/at91_pmc_ll.h>
-#include <mach/at91_pit.h>
-#include <mach/early_udelay.h>
+#include <mach/at91/at91_pmc_ll.h>
+#include <mach/at91/at91_pit.h>
+#include <mach/at91/early_udelay.h>
 
 static unsigned int master_clock;
 static void __iomem *pmc, *pit;
diff --git a/arch/arm/mach-at91/matrix.c b/arch/arm/mach-at91/matrix.c
index b2e7345ec1..39ac3648f4 100644
--- a/arch/arm/mach-at91/matrix.c
+++ b/arch/arm/mach-at91/matrix.c
@@ -7,8 +7,8 @@
  */
 
 #include <io.h>
-#include <mach/tz_matrix.h>
-#include <mach/matrix.h>
+#include <mach/at91/tz_matrix.h>
+#include <mach/at91/matrix.h>
 
 static inline void matrix_write(void __iomem *base,
 				unsigned int offset,
diff --git a/arch/arm/mach-at91/sam9263_ll.c b/arch/arm/mach-at91/sam9263_ll.c
index ffde065f6e..2beeaccd61 100644
--- a/arch/arm/mach-at91/sam9263_ll.c
+++ b/arch/arm/mach-at91/sam9263_ll.c
@@ -1,11 +1,11 @@
 // SPDX-License-Identifier: GPL-2.0-only AND BSD-1-Clause
 // SPDX-FileCopyrightText: 2017, Microchip Corporation
 
-#include <mach/at91sam9263_matrix.h>
-#include <mach/barebox-arm.h>
-#include <mach/at91_rstc.h>
-#include <mach/at91_wdt.h>
-#include <mach/sam92_ll.h>
+#include <mach/at91/at91sam9263_matrix.h>
+#include <mach/at91/barebox-arm.h>
+#include <mach/at91/at91_rstc.h>
+#include <mach/at91/at91_wdt.h>
+#include <mach/at91/sam92_ll.h>
 
 static void sam9263_pmc_init(const struct sam92_pmc_config *config)
 {
diff --git a/arch/arm/mach-at91/sam9_smc.c b/arch/arm/mach-at91/sam9_smc.c
index 51e6cf4a83..ef58a0153a 100644
--- a/arch/arm/mach-at91/sam9_smc.c
+++ b/arch/arm/mach-at91/sam9_smc.c
@@ -6,11 +6,11 @@
 #include <common.h>
 #include <init.h>
 #include <io.h>
-#include <mach/hardware.h>
-#include <mach/cpu.h>
+#include <mach/at91/hardware.h>
+#include <mach/at91/cpu.h>
 #include <linux/err.h>
 
-#include <mach/at91sam9_smc.h>
+#include <mach/at91/at91sam9_smc.h>
 
 #define AT91_SAM9_SMC_CS_STRIDE		0x10
 #define AT91_SAMA5_SMC_CS_STRIDE	0x14
diff --git a/arch/arm/mach-at91/sama5_bootsource.c b/arch/arm/mach-at91/sama5_bootsource.c
index 1cbfb4da7d..4ede256e8f 100644
--- a/arch/arm/mach-at91/sama5_bootsource.c
+++ b/arch/arm/mach-at91/sama5_bootsource.c
@@ -1,6 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0-only
 
-#include <mach/sama5_bootsource.h>
+#include <mach/at91/sama5_bootsource.h>
 #include <linux/export.h>
 #include <bootsource.h>
 #include <init.h>
diff --git a/arch/arm/mach-at91/sama5d2.c b/arch/arm/mach-at91/sama5d2.c
index b0a04beb63..f629d1df33 100644
--- a/arch/arm/mach-at91/sama5d2.c
+++ b/arch/arm/mach-at91/sama5d2.c
@@ -3,11 +3,11 @@
 #include <common.h>
 #include <of.h>
 #include <init.h>
-#include <mach/aic.h>
-#include <mach/sama5d2.h>
+#include <mach/at91/aic.h>
+#include <mach/at91/sama5d2.h>
 #include <asm/cache-l2x0.h>
 #include <asm/mmu.h>
-#include <mach/cpu.h>
+#include <mach/at91/cpu.h>
 
 #define SFR_CAN		0x48
 #define SFR_L2CC_HRAMC	0x58
diff --git a/arch/arm/mach-at91/sama5d2_ll.c b/arch/arm/mach-at91/sama5d2_ll.c
index 3366a50e8f..c0adf220a2 100644
--- a/arch/arm/mach-at91/sama5d2_ll.c
+++ b/arch/arm/mach-at91/sama5d2_ll.c
@@ -6,13 +6,13 @@
  * from this software without specific prior written permission.
  */
 
-#include <mach/sama5d2_ll.h>
-#include <mach/at91_ddrsdrc.h>
-#include <mach/ddramc.h>
-#include <mach/early_udelay.h>
-#include <mach/tz_matrix.h>
-#include <mach/matrix.h>
-#include <mach/at91_rstc.h>
+#include <mach/at91/sama5d2_ll.h>
+#include <mach/at91/at91_ddrsdrc.h>
+#include <mach/at91/ddramc.h>
+#include <mach/at91/early_udelay.h>
+#include <mach/at91/tz_matrix.h>
+#include <mach/at91/matrix.h>
+#include <mach/at91/at91_rstc.h>
 #include <asm/barebox-arm.h>
 
 #define sama5d2_pmc_write(off, val) writel(val, SAMA5D2_BASE_PMC + off)
diff --git a/arch/arm/mach-at91/sama5d3.c b/arch/arm/mach-at91/sama5d3.c
index 0c9d9cb023..447ac711b4 100644
--- a/arch/arm/mach-at91/sama5d3.c
+++ b/arch/arm/mach-at91/sama5d3.c
@@ -4,11 +4,11 @@
 #include <gpio.h>
 #include <init.h>
 #include <restart.h>
-#include <mach/hardware.h>
-#include <mach/at91_pmc.h>
-#include <mach/cpu.h>
-#include <mach/board.h>
-#include <mach/at91_rstc.h>
+#include <mach/at91/hardware.h>
+#include <mach/at91/at91_pmc.h>
+#include <mach/at91/cpu.h>
+#include <mach/at91/board.h>
+#include <mach/at91/at91_rstc.h>
 #include <linux/clk.h>
 
 #include "generic.h"
diff --git a/arch/arm/mach-at91/sama5d3_devices.c b/arch/arm/mach-at91/sama5d3_devices.c
index 75f588deff..f6d5617e5f 100644
--- a/arch/arm/mach-at91/sama5d3_devices.c
+++ b/arch/arm/mach-at91/sama5d3_devices.c
@@ -8,13 +8,13 @@
 #include <linux/sizes.h>
 #include <gpio.h>
 #include <asm/armlinux.h>
-#include <mach/hardware.h>
-#include <mach/board.h>
-#include <mach/at91_pmc.h>
-#include <mach/at91sam9x5_matrix.h>
-#include <mach/at91_ddrsdrc.h>
-#include <mach/iomux.h>
-#include <mach/cpu.h>
+#include <mach/at91/hardware.h>
+#include <mach/at91/board.h>
+#include <mach/at91/at91_pmc.h>
+#include <mach/at91/at91sam9x5_matrix.h>
+#include <mach/at91/at91_ddrsdrc.h>
+#include <mach/at91/iomux.h>
+#include <mach/at91/cpu.h>
 #include <i2c/i2c-gpio.h>
 
 #include "generic.h"
diff --git a/arch/arm/mach-at91/sama5d3_ll.c b/arch/arm/mach-at91/sama5d3_ll.c
index 4650593699..65eea93723 100644
--- a/arch/arm/mach-at91/sama5d3_ll.c
+++ b/arch/arm/mach-at91/sama5d3_ll.c
@@ -1,9 +1,9 @@
 // SPDX-License-Identifier: GPL-2.0-only AND BSD-1-Clause
 // SPDX-FileCopyrightText: 2017, Microchip Corporation
 
-#include <mach/at91_wdt.h>
-#include <mach/barebox-arm.h>
-#include <mach/sama5d3_ll.h>
+#include <mach/at91/at91_wdt.h>
+#include <mach/at91/barebox-arm.h>
+#include <mach/at91/sama5d3_ll.h>
 
 void sama5d3_lowlevel_init(void)
 {
diff --git a/arch/arm/mach-at91/sama5d4.c b/arch/arm/mach-at91/sama5d4.c
index 62e466fe51..8417dedbd1 100644
--- a/arch/arm/mach-at91/sama5d4.c
+++ b/arch/arm/mach-at91/sama5d4.c
@@ -11,11 +11,11 @@
 #include <gpio.h>
 #include <init.h>
 #include <restart.h>
-#include <mach/hardware.h>
-#include <mach/at91_pmc.h>
-#include <mach/cpu.h>
-#include <mach/board.h>
-#include <mach/at91_rstc.h>
+#include <mach/at91/hardware.h>
+#include <mach/at91/at91_pmc.h>
+#include <mach/at91/cpu.h>
+#include <mach/at91/board.h>
+#include <mach/at91/at91_rstc.h>
 #include <linux/clk.h>
 
 #include "generic.h"
diff --git a/arch/arm/mach-at91/sama5d4_devices.c b/arch/arm/mach-at91/sama5d4_devices.c
index 6af1d3a4de..e438bd0d10 100644
--- a/arch/arm/mach-at91/sama5d4_devices.c
+++ b/arch/arm/mach-at91/sama5d4_devices.c
@@ -8,13 +8,13 @@
 #include <linux/sizes.h>
 #include <gpio.h>
 #include <asm/armlinux.h>
-#include <mach/hardware.h>
-#include <mach/board.h>
-#include <mach/at91_pmc.h>
-#include <mach/at91sam9x5_matrix.h>
-#include <mach/at91_ddrsdrc.h>
-#include <mach/iomux.h>
-#include <mach/cpu.h>
+#include <mach/at91/hardware.h>
+#include <mach/at91/board.h>
+#include <mach/at91/at91_pmc.h>
+#include <mach/at91/at91sam9x5_matrix.h>
+#include <mach/at91/at91_ddrsdrc.h>
+#include <mach/at91/iomux.h>
+#include <mach/at91/cpu.h>
 #include <i2c/i2c-gpio.h>
 
 #include "generic.h"
diff --git a/arch/arm/mach-at91/setup.c b/arch/arm/mach-at91/setup.c
index 3d49624cd5..708c946192 100644
--- a/arch/arm/mach-at91/setup.c
+++ b/arch/arm/mach-at91/setup.c
@@ -11,11 +11,11 @@
 #include <restart.h>
 #include <linux/clk.h>
 
-#include <mach/hardware.h>
-#include <mach/cpu.h>
-#include <mach/at91_dbgu.h>
-#include <mach/at91_rstc.h>
-#include <mach/board.h>
+#include <mach/at91/hardware.h>
+#include <mach/at91/cpu.h>
+#include <mach/at91/at91_dbgu.h>
+#include <mach/at91/at91_rstc.h>
+#include <mach/at91/board.h>
 
 #include "generic.h"
 
diff --git a/arch/arm/mach-at91/xload-mmc.c b/arch/arm/mach-at91/xload-mmc.c
index 33e5b203fe..9c03d2119c 100644
--- a/arch/arm/mach-at91/xload-mmc.c
+++ b/arch/arm/mach-at91/xload-mmc.c
@@ -1,12 +1,12 @@
 // SPDX-License-Identifier: GPL-2.0-only
 
 #include <common.h>
-#include <mach/xload.h>
-#include <mach/sama5_bootsource.h>
-#include <mach/hardware.h>
-#include <mach/sama5d2_ll.h>
-#include <mach/sama5d3_ll.h>
-#include <mach/gpio.h>
+#include <mach/at91/xload.h>
+#include <mach/at91/sama5_bootsource.h>
+#include <mach/at91/hardware.h>
+#include <mach/at91/sama5d2_ll.h>
+#include <mach/at91/sama5d3_ll.h>
+#include <mach/at91/gpio.h>
 #include <linux/sizes.h>
 #include <asm/cache.h>
 #include <pbl/bio.h>
diff --git a/drivers/clocksource/timer-atmel-pit.c b/drivers/clocksource/timer-atmel-pit.c
index 1b0f2150db..63244faad0 100644
--- a/drivers/clocksource/timer-atmel-pit.c
+++ b/drivers/clocksource/timer-atmel-pit.c
@@ -15,8 +15,8 @@
 #include <common.h>
 #include <init.h>
 #include <clock.h>
-#include <mach/hardware.h>
-#include <mach/at91_pit.h>
+#include <mach/at91/hardware.h>
+#include <mach/at91/at91_pit.h>
 #include <io.h>
 #include <linux/clk.h>
 #include <linux/err.h>
diff --git a/drivers/mci/atmel-sdhci-common.c b/drivers/mci/atmel-sdhci-common.c
index 129480aa55..05a019beb6 100644
--- a/drivers/mci/atmel-sdhci-common.c
+++ b/drivers/mci/atmel-sdhci-common.c
@@ -13,7 +13,7 @@
 #include <mci.h>
 #include <linux/bitfield.h>
 
-#include <mach/early_udelay.h>
+#include <mach/at91/early_udelay.h>
 
 #ifdef __PBL__
 #define udelay early_udelay
diff --git a/drivers/mci/atmel-sdhci-pbl.c b/drivers/mci/atmel-sdhci-pbl.c
index 2c5f107abd..f5a7279bff 100644
--- a/drivers/mci/atmel-sdhci-pbl.c
+++ b/drivers/mci/atmel-sdhci-pbl.c
@@ -11,10 +11,10 @@
 #include <pbl/bio.h>
 #include <mci.h>
 #include <debug_ll.h>
-#include <mach/xload.h>
+#include <mach/at91/xload.h>
 #include "atmel-sdhci.h"
 
-#include <mach/early_udelay.h>
+#include <mach/at91/early_udelay.h>
 
 #ifdef __PBL__
 #define udelay early_udelay
diff --git a/drivers/mci/atmel_mci_pbl.c b/drivers/mci/atmel_mci_pbl.c
index 65d8b3632a..7483e9375f 100644
--- a/drivers/mci/atmel_mci_pbl.c
+++ b/drivers/mci/atmel_mci_pbl.c
@@ -1,7 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0-only
 
 #include <common.h>
-#include <mach/xload.h>
+#include <mach/at91/xload.h>
 #include <mci.h>
 
 #include "atmel-mci-regs.h"
diff --git a/drivers/mtd/nand/atmel/legacy.c b/drivers/mtd/nand/atmel/legacy.c
index 1f804eb537..44cd4d07e8 100644
--- a/drivers/mtd/nand/atmel/legacy.c
+++ b/drivers/mtd/nand/atmel/legacy.c
@@ -29,7 +29,7 @@
 #include <linux/err.h>
 
 #include <io.h>
-#include <mach/board.h>
+#include <mach/at91/board.h>
 
 #include <errno.h>
 
diff --git a/drivers/net/at91_ether.c b/drivers/net/at91_ether.c
index 6cf700ad90..5cebb8b44c 100644
--- a/drivers/net/at91_ether.c
+++ b/drivers/net/at91_ether.c
@@ -15,9 +15,9 @@
 #include <xfuncs.h>
 #include <init.h>
 #include <asm/io.h>
-#include <mach/hardware.h>
-#include <mach/at91rm9200_emac.h>
-#include <mach/board.h>
+#include <mach/at91/hardware.h>
+#include <mach/at91/at91rm9200_emac.h>
+#include <mach/at91/board.h>
 #include <generated/mach-types.h>
 #include <linux/clk.h>
 #include <linux/mii.h>
diff --git a/drivers/pinctrl/pinctrl-at91-pio4.c b/drivers/pinctrl/pinctrl-at91-pio4.c
index 7f507bedb4..c9203d6049 100644
--- a/drivers/pinctrl/pinctrl-at91-pio4.c
+++ b/drivers/pinctrl/pinctrl-at91-pio4.c
@@ -11,7 +11,7 @@
 #include <pinctrl.h>
 #include <malloc.h>
 #include <gpio.h>
-#include <mach/gpio.h>
+#include <mach/at91/gpio.h>
 #include <linux/clk.h>
 
 #include <dt-bindings/pinctrl/at91.h>
diff --git a/drivers/pinctrl/pinctrl-at91.c b/drivers/pinctrl/pinctrl-at91.c
index b80fa85f82..93a7ad0a65 100644
--- a/drivers/pinctrl/pinctrl-at91.c
+++ b/drivers/pinctrl/pinctrl-at91.c
@@ -18,9 +18,9 @@
 #include <getopt.h>
 #include <deep-probe.h>
 
-#include <mach/at91_pio.h>
-#include <mach/gpio.h>
-#include <mach/iomux.h>
+#include <mach/at91/at91_pio.h>
+#include <mach/at91/gpio.h>
+#include <mach/at91/iomux.h>
 
 #include <pinctrl.h>
 
diff --git a/drivers/spi/atmel_spi.c b/drivers/spi/atmel_spi.c
index 9bf85874c5..166531feb8 100644
--- a/drivers/spi/atmel_spi.c
+++ b/drivers/spi/atmel_spi.c
@@ -21,9 +21,9 @@
 #include <of_gpio.h>
 #include <io.h>
 #include <spi/spi.h>
-#include <mach/iomux.h>
-#include <mach/board.h>
-#include <mach/cpu.h>
+#include <mach/at91/iomux.h>
+#include <mach/at91/board.h>
+#include <mach/at91/cpu.h>
 #include <linux/clk.h>
 #include <linux/err.h>
 
diff --git a/drivers/usb/gadget/at91_udc.c b/drivers/usb/gadget/at91_udc.c
index 9a1a376a7a..fc5f24021d 100644
--- a/drivers/usb/gadget/at91_udc.c
+++ b/drivers/usb/gadget/at91_udc.c
@@ -26,11 +26,11 @@
 
 #include <asm/byteorder.h>
 
-#include <mach/hardware.h>
-#include <mach/at91sam9261.h>
-#include <mach/board.h>
-#include <mach/cpu.h>
-#include <mach/at91sam9261_matrix.h>
+#include <mach/at91/hardware.h>
+#include <mach/at91/at91sam9261.h>
+#include <mach/at91/board.h>
+#include <mach/at91/cpu.h>
+#include <mach/at91/at91sam9261_matrix.h>
 
 #include "at91_udc.h"
 
diff --git a/drivers/usb/host/ohci-at91.c b/drivers/usb/host/ohci-at91.c
index 0738c03890..b1416a20d3 100644
--- a/drivers/usb/host/ohci-at91.c
+++ b/drivers/usb/host/ohci-at91.c
@@ -14,7 +14,7 @@
 #include <of_gpio.h>
 #include <io.h>
 
-#include <mach/board.h>
+#include <mach/at91/board.h>
 
 #include "ohci.h"
 
diff --git a/drivers/video/atmel_hlcdfb.c b/drivers/video/atmel_hlcdfb.c
index 9817c33ae5..0a24493907 100644
--- a/drivers/video/atmel_hlcdfb.c
+++ b/drivers/video/atmel_hlcdfb.c
@@ -9,9 +9,9 @@
 #include <io.h>
 #include <init.h>
 #include <linux/clk.h>
-#include <mach/hardware.h>
-#include <mach/atmel_hlcdc.h>
-#include <mach/cpu.h>
+#include <mach/at91/hardware.h>
+#include <mach/at91/atmel_hlcdc.h>
+#include <mach/at91/cpu.h>
 #include <errno.h>
 
 #include "atmel_lcdfb.h"
diff --git a/drivers/video/atmel_lcdfb.c b/drivers/video/atmel_lcdfb.c
index 8c056a8ffb..2d95a37722 100644
--- a/drivers/video/atmel_lcdfb.c
+++ b/drivers/video/atmel_lcdfb.c
@@ -8,7 +8,7 @@
 #include <common.h>
 #include <io.h>
 #include <init.h>
-#include <mach/hardware.h>
+#include <mach/at91/hardware.h>
 #include <errno.h>
 #include <linux/clk.h>
 
diff --git a/drivers/video/atmel_lcdfb_core.c b/drivers/video/atmel_lcdfb_core.c
index 158fe8bbf9..9d3e6682b6 100644
--- a/drivers/video/atmel_lcdfb_core.c
+++ b/drivers/video/atmel_lcdfb_core.c
@@ -14,7 +14,7 @@
 #include <linux/clk.h>
 #include <malloc.h>
 
-#include <mach/cpu.h>
+#include <mach/at91/cpu.h>
 
 #include "atmel_lcdfb.h"
 
diff --git a/drivers/watchdog/at91sam9_wdt.c b/drivers/watchdog/at91sam9_wdt.c
index 1b33529124..d5a83cbb85 100644
--- a/drivers/watchdog/at91sam9_wdt.c
+++ b/drivers/watchdog/at91sam9_wdt.c
@@ -8,7 +8,7 @@
 #include <io.h>
 #include <watchdog.h>
 #include <linux/clk.h>
-#include <mach/at91_wdt.h>
+#include <mach/at91/at91_wdt.h>
 
 #define MIN_WDT_TIMEOUT		1
 #define MAX_WDT_TIMEOUT		16
diff --git a/arch/arm/mach-at91/include/mach/aic.h b/include/mach/at91/aic.h
similarity index 100%
rename from arch/arm/mach-at91/include/mach/aic.h
rename to include/mach/at91/aic.h
diff --git a/arch/arm/mach-at91/include/mach/at91_dbgu.h b/include/mach/at91/at91_dbgu.h
similarity index 100%
rename from arch/arm/mach-at91/include/mach/at91_dbgu.h
rename to include/mach/at91/at91_dbgu.h
diff --git a/arch/arm/mach-at91/include/mach/at91_ddrsdrc.h b/include/mach/at91/at91_ddrsdrc.h
similarity index 99%
rename from arch/arm/mach-at91/include/mach/at91_ddrsdrc.h
rename to include/mach/at91/at91_ddrsdrc.h
index 7d70fe4cb4..b9b0eb20b3 100644
--- a/arch/arm/mach-at91/include/mach/at91_ddrsdrc.h
+++ b/include/mach/at91/at91_ddrsdrc.h
@@ -295,7 +295,7 @@
 #ifndef __ASSEMBLY__
 #include <common.h>
 #include <io.h>
-#include <mach/hardware.h>
+#include <mach/at91/hardware.h>
 
 static inline u32 at91_get_ddram_size(void __iomem *base, bool is_nb)
 {
diff --git a/arch/arm/mach-at91/include/mach/at91_pio.h b/include/mach/at91/at91_pio.h
similarity index 100%
rename from arch/arm/mach-at91/include/mach/at91_pio.h
rename to include/mach/at91/at91_pio.h
diff --git a/arch/arm/mach-at91/include/mach/at91_pit.h b/include/mach/at91/at91_pit.h
similarity index 100%
rename from arch/arm/mach-at91/include/mach/at91_pit.h
rename to include/mach/at91/at91_pit.h
diff --git a/arch/arm/mach-at91/include/mach/at91_pmc.h b/include/mach/at91/at91_pmc.h
similarity index 100%
rename from arch/arm/mach-at91/include/mach/at91_pmc.h
rename to include/mach/at91/at91_pmc.h
diff --git a/arch/arm/mach-at91/include/mach/at91_pmc_ll.h b/include/mach/at91/at91_pmc_ll.h
similarity index 99%
rename from arch/arm/mach-at91/include/mach/at91_pmc_ll.h
rename to include/mach/at91/at91_pmc_ll.h
index 85896a01d5..9832712fe5 100644
--- a/arch/arm/mach-at91/include/mach/at91_pmc_ll.h
+++ b/include/mach/at91/at91_pmc_ll.h
@@ -8,7 +8,7 @@
 
 #include <errno.h>
 #include <asm/io.h>
-#include <mach/at91_pmc.h>
+#include <mach/at91/at91_pmc.h>
 
 #define AT91_PMC_LL_FLAG_SAM9X5_PMC	(1 << 0)
 #define AT91_PMC_LL_FLAG_MEASURE_XTAL	(1 << 1)
diff --git a/arch/arm/mach-at91/include/mach/at91_rstc.h b/include/mach/at91/at91_rstc.h
similarity index 100%
rename from arch/arm/mach-at91/include/mach/at91_rstc.h
rename to include/mach/at91/at91_rstc.h
diff --git a/arch/arm/mach-at91/include/mach/at91_rtt.h b/include/mach/at91/at91_rtt.h
similarity index 100%
rename from arch/arm/mach-at91/include/mach/at91_rtt.h
rename to include/mach/at91/at91_rtt.h
diff --git a/arch/arm/mach-at91/include/mach/at91_wdt.h b/include/mach/at91/at91_wdt.h
similarity index 100%
rename from arch/arm/mach-at91/include/mach/at91_wdt.h
rename to include/mach/at91/at91_wdt.h
diff --git a/arch/arm/mach-at91/include/mach/at91rm9200.h b/include/mach/at91/at91rm9200.h
similarity index 100%
rename from arch/arm/mach-at91/include/mach/at91rm9200.h
rename to include/mach/at91/at91rm9200.h
diff --git a/arch/arm/mach-at91/include/mach/at91rm9200_emac.h b/include/mach/at91/at91rm9200_emac.h
similarity index 100%
rename from arch/arm/mach-at91/include/mach/at91rm9200_emac.h
rename to include/mach/at91/at91rm9200_emac.h
diff --git a/arch/arm/mach-at91/include/mach/at91rm9200_mc.h b/include/mach/at91/at91rm9200_mc.h
similarity index 99%
rename from arch/arm/mach-at91/include/mach/at91rm9200_mc.h
rename to include/mach/at91/at91rm9200_mc.h
index 41ee1caba7..ea5213aa82 100644
--- a/arch/arm/mach-at91/include/mach/at91rm9200_mc.h
+++ b/include/mach/at91/at91rm9200_mc.h
@@ -155,7 +155,7 @@
 
 #ifndef __ASSEMBLY__
 #include <io.h>
-#include <mach/at91rm9200.h>
+#include <mach/at91/at91rm9200.h>
 static inline u32 at91rm9200_get_sdram_size(void)
 {
 	u32 cr, mr;
diff --git a/arch/arm/mach-at91/include/mach/at91rm9200_st.h b/include/mach/at91/at91rm9200_st.h
similarity index 100%
rename from arch/arm/mach-at91/include/mach/at91rm9200_st.h
rename to include/mach/at91/at91rm9200_st.h
diff --git a/arch/arm/mach-at91/include/mach/at91sam9260.h b/include/mach/at91/at91sam9260.h
similarity index 100%
rename from arch/arm/mach-at91/include/mach/at91sam9260.h
rename to include/mach/at91/at91sam9260.h
diff --git a/arch/arm/mach-at91/include/mach/at91sam9260_matrix.h b/include/mach/at91/at91sam9260_matrix.h
similarity index 100%
rename from arch/arm/mach-at91/include/mach/at91sam9260_matrix.h
rename to include/mach/at91/at91sam9260_matrix.h
diff --git a/arch/arm/mach-at91/include/mach/at91sam9261.h b/include/mach/at91/at91sam9261.h
similarity index 100%
rename from arch/arm/mach-at91/include/mach/at91sam9261.h
rename to include/mach/at91/at91sam9261.h
diff --git a/arch/arm/mach-at91/include/mach/at91sam9261_matrix.h b/include/mach/at91/at91sam9261_matrix.h
similarity index 100%
rename from arch/arm/mach-at91/include/mach/at91sam9261_matrix.h
rename to include/mach/at91/at91sam9261_matrix.h
diff --git a/arch/arm/mach-at91/include/mach/at91sam9263.h b/include/mach/at91/at91sam9263.h
similarity index 100%
rename from arch/arm/mach-at91/include/mach/at91sam9263.h
rename to include/mach/at91/at91sam9263.h
diff --git a/arch/arm/mach-at91/include/mach/at91sam9263_matrix.h b/include/mach/at91/at91sam9263_matrix.h
similarity index 100%
rename from arch/arm/mach-at91/include/mach/at91sam9263_matrix.h
rename to include/mach/at91/at91sam9263_matrix.h
diff --git a/arch/arm/mach-at91/include/mach/at91sam926x.h b/include/mach/at91/at91sam926x.h
similarity index 100%
rename from arch/arm/mach-at91/include/mach/at91sam926x.h
rename to include/mach/at91/at91sam926x.h
diff --git a/arch/arm/mach-at91/include/mach/at91sam926x_board_init.h b/include/mach/at91/at91sam926x_board_init.h
similarity index 92%
rename from arch/arm/mach-at91/include/mach/at91sam926x_board_init.h
rename to include/mach/at91/at91sam926x_board_init.h
index 3dab64b71a..c309d45494 100644
--- a/arch/arm/mach-at91/include/mach/at91sam926x_board_init.h
+++ b/include/mach/at91/at91sam926x_board_init.h
@@ -10,15 +10,15 @@
 #include <common.h>
 #include <init.h>
 
-#include <mach/at91sam9_sdramc.h>
-#include <mach/at91sam9_smc.h>
-#include <mach/at91_rstc.h>
-#include <mach/at91_pio.h>
-#include <mach/at91_pmc.h>
-#include <mach/at91_wdt.h>
-#include <mach/hardware.h>
-#include <mach/gpio.h>
-#include <mach/at91sam926x.h>
+#include <mach/at91/at91sam9_sdramc.h>
+#include <mach/at91/at91sam9_smc.h>
+#include <mach/at91/at91_rstc.h>
+#include <mach/at91/at91_pio.h>
+#include <mach/at91/at91_pmc.h>
+#include <mach/at91/at91_wdt.h>
+#include <mach/at91/hardware.h>
+#include <mach/at91/gpio.h>
+#include <mach/at91/at91sam926x.h>
 
 struct at91sam926x_board_cfg {
 	/* SoC specific */
@@ -183,19 +183,19 @@ static void __always_inline at91sam926x_board_init(void __iomem *smcbase,
 	writel(0xffffffff, pmc + AT91_PMC_PCER);
 }
 
-#include <mach/at91sam9260.h>
+#include <mach/at91/at91sam9260.h>
 static void __always_inline at91sam9260_board_init(struct at91sam926x_board_cfg *cfg)
 {
 	at91sam926x_board_init(IOMEM(AT91SAM9260_BASE_SMC), cfg);
 }
 
-#include <mach/at91sam9261.h>
+#include <mach/at91/at91sam9261.h>
 static void __always_inline at91sam9261_board_init(struct at91sam926x_board_cfg *cfg)
 {
 	at91sam926x_board_init(IOMEM(AT91SAM9261_BASE_SMC), cfg);
 }
 
-#include <mach/at91sam9263.h>
+#include <mach/at91/at91sam9263.h>
 static void __always_inline at91sam9263_board_init(struct at91sam926x_board_cfg *cfg)
 {
 	at91sam926x_board_init(IOMEM(AT91SAM9263_BASE_SMC0), cfg);
diff --git a/arch/arm/mach-at91/include/mach/at91sam9_sdramc.h b/include/mach/at91/at91sam9_sdramc.h
similarity index 98%
rename from arch/arm/mach-at91/include/mach/at91sam9_sdramc.h
rename to include/mach/at91/at91sam9_sdramc.h
index 0e05387aa0..a4c88b24d4 100644
--- a/arch/arm/mach-at91/include/mach/at91sam9_sdramc.h
+++ b/include/mach/at91/at91sam9_sdramc.h
@@ -177,9 +177,9 @@
 
 #ifndef __ASSEMBLY__
 #include <io.h>
-#include <mach/at91sam9260.h>
-#include <mach/at91sam9261.h>
-#include <mach/at91sam9263.h>
+#include <mach/at91/at91sam9260.h>
+#include <mach/at91/at91sam9261.h>
+#include <mach/at91/at91sam9263.h>
 
 struct at91sam9_sdramc_config {
 	void __iomem *sdramc;
diff --git a/arch/arm/mach-at91/include/mach/at91sam9_smc.h b/include/mach/at91/at91sam9_smc.h
similarity index 100%
rename from arch/arm/mach-at91/include/mach/at91sam9_smc.h
rename to include/mach/at91/at91sam9_smc.h
diff --git a/arch/arm/mach-at91/include/mach/at91sam9g45.h b/include/mach/at91/at91sam9g45.h
similarity index 100%
rename from arch/arm/mach-at91/include/mach/at91sam9g45.h
rename to include/mach/at91/at91sam9g45.h
diff --git a/arch/arm/mach-at91/include/mach/at91sam9g45_matrix.h b/include/mach/at91/at91sam9g45_matrix.h
similarity index 100%
rename from arch/arm/mach-at91/include/mach/at91sam9g45_matrix.h
rename to include/mach/at91/at91sam9g45_matrix.h
diff --git a/arch/arm/mach-at91/include/mach/at91sam9n12.h b/include/mach/at91/at91sam9n12.h
similarity index 100%
rename from arch/arm/mach-at91/include/mach/at91sam9n12.h
rename to include/mach/at91/at91sam9n12.h
diff --git a/arch/arm/mach-at91/include/mach/at91sam9n12_matrix.h b/include/mach/at91/at91sam9n12_matrix.h
similarity index 100%
rename from arch/arm/mach-at91/include/mach/at91sam9n12_matrix.h
rename to include/mach/at91/at91sam9n12_matrix.h
diff --git a/arch/arm/mach-at91/include/mach/at91sam9x5.h b/include/mach/at91/at91sam9x5.h
similarity index 100%
rename from arch/arm/mach-at91/include/mach/at91sam9x5.h
rename to include/mach/at91/at91sam9x5.h
diff --git a/arch/arm/mach-at91/include/mach/at91sam9x5_matrix.h b/include/mach/at91/at91sam9x5_matrix.h
similarity index 100%
rename from arch/arm/mach-at91/include/mach/at91sam9x5_matrix.h
rename to include/mach/at91/at91sam9x5_matrix.h
diff --git a/arch/arm/mach-at91/include/mach/atmel_hlcdc.h b/include/mach/at91/atmel_hlcdc.h
similarity index 100%
rename from arch/arm/mach-at91/include/mach/atmel_hlcdc.h
rename to include/mach/at91/atmel_hlcdc.h
diff --git a/arch/arm/mach-at91/include/mach/barebox-arm.h b/include/mach/at91/barebox-arm.h
similarity index 96%
rename from arch/arm/mach-at91/include/mach/barebox-arm.h
rename to include/mach/at91/barebox-arm.h
index a0c51118c9..f1014542be 100644
--- a/arch/arm/mach-at91/include/mach/barebox-arm.h
+++ b/include/mach/at91/barebox-arm.h
@@ -4,8 +4,8 @@
 
 #include <asm/barebox-arm.h>
 #include <asm/common.h>
-#include <mach/sama5d3.h>
-#include <mach/sama5d4.h>
+#include <mach/at91/sama5d3.h>
+#include <mach/at91/sama5d4.h>
 
 #ifdef CONFIG_AT91_LOAD_BAREBOX_SRAM
 #define AT91_EXV6	".word _barebox_image_size\n"
diff --git a/arch/arm/mach-at91/include/mach/board.h b/include/mach/at91/board.h
similarity index 98%
rename from arch/arm/mach-at91/include/mach/board.h
rename to include/mach/at91/board.h
index e426e0b3f5..5f04f9c849 100644
--- a/arch/arm/mach-at91/include/mach/board.h
+++ b/include/mach/at91/board.h
@@ -6,7 +6,7 @@
 #ifndef __ASM_ARCH_BOARD_H
 #define __ASM_ARCH_BOARD_H
 
-#include <mach/hardware.h>
+#include <mach/at91/hardware.h>
 #include <linux/sizes.h>
 #include <net.h>
 #include <i2c/i2c.h>
@@ -14,7 +14,7 @@
 #include <linux/mtd/mtd.h>
 #include <fb.h>
 #include <video/atmel_lcdc.h>
-#include <mach/atmel_hlcdc.h>
+#include <mach/at91/atmel_hlcdc.h>
 #include <linux/phy.h>
 #include <platform_data/macb.h>
 
diff --git a/arch/arm/mach-at91/include/mach/bootstrap.h b/include/mach/at91/bootstrap.h
similarity index 100%
rename from arch/arm/mach-at91/include/mach/bootstrap.h
rename to include/mach/at91/bootstrap.h
diff --git a/arch/arm/mach-at91/include/mach/cpu.h b/include/mach/at91/cpu.h
similarity index 100%
rename from arch/arm/mach-at91/include/mach/cpu.h
rename to include/mach/at91/cpu.h
diff --git a/arch/arm/mach-at91/include/mach/ddramc.h b/include/mach/at91/ddramc.h
similarity index 100%
rename from arch/arm/mach-at91/include/mach/ddramc.h
rename to include/mach/at91/ddramc.h
diff --git a/arch/arm/mach-at91/include/mach/debug_ll.h b/include/mach/at91/debug_ll.h
similarity index 90%
rename from arch/arm/mach-at91/include/mach/debug_ll.h
rename to include/mach/at91/debug_ll.h
index b3cbdbc26f..b09ba5f64a 100644
--- a/arch/arm/mach-at91/include/mach/debug_ll.h
+++ b/include/mach/at91/debug_ll.h
@@ -9,9 +9,9 @@
 #define __MACH_DEBUG_LL_H__
 
 #include <asm/io.h>
-#include <mach/gpio.h>
-#include <mach/hardware.h>
-#include <mach/at91_dbgu.h>
+#include <mach/at91/gpio.h>
+#include <mach/at91/hardware.h>
+#include <mach/at91/at91_dbgu.h>
 
 #define ATMEL_US_CSR		0x0014
 #define ATMEL_US_THR		0x001c
diff --git a/arch/arm/mach-at91/include/mach/early_udelay.h b/include/mach/at91/early_udelay.h
similarity index 100%
rename from arch/arm/mach-at91/include/mach/early_udelay.h
rename to include/mach/at91/early_udelay.h
diff --git a/arch/arm/mach-at91/include/mach/gpio.h b/include/mach/at91/gpio.h
similarity index 99%
rename from arch/arm/mach-at91/include/mach/gpio.h
rename to include/mach/at91/gpio.h
index 7f84f41e5b..73f14caa34 100644
--- a/arch/arm/mach-at91/include/mach/gpio.h
+++ b/include/mach/at91/gpio.h
@@ -9,7 +9,7 @@
 
 #include <dt-bindings/gpio/gpio.h>
 #include <asm/io.h>
-#include <mach/at91_pio.h>
+#include <mach/at91/at91_pio.h>
 
 #define MAX_NB_GPIO_PER_BANK	32
 
diff --git a/arch/arm/mach-at91/include/mach/hardware.h b/include/mach/at91/hardware.h
similarity index 75%
rename from arch/arm/mach-at91/include/mach/hardware.h
rename to include/mach/at91/hardware.h
index 0d08a99fe4..c34868cc9f 100644
--- a/arch/arm/mach-at91/include/mach/hardware.h
+++ b/include/mach/at91/hardware.h
@@ -15,16 +15,16 @@
 /* sama5d4 */
 #define AT91_BASE_DBGU2	0xfc069000
 
-#include <mach/at91rm9200.h>
-#include <mach/at91sam9260.h>
-#include <mach/at91sam9261.h>
-#include <mach/at91sam9263.h>
-#include <mach/at91sam9g45.h>
-#include <mach/at91sam9n12.h>
-#include <mach/at91sam9x5.h>
-#include <mach/sama5d2.h>
-#include <mach/sama5d3.h>
-#include <mach/sama5d4.h>
+#include <mach/at91/at91rm9200.h>
+#include <mach/at91/at91sam9260.h>
+#include <mach/at91/at91sam9261.h>
+#include <mach/at91/at91sam9263.h>
+#include <mach/at91/at91sam9g45.h>
+#include <mach/at91/at91sam9n12.h>
+#include <mach/at91/at91sam9x5.h>
+#include <mach/at91/sama5d2.h>
+#include <mach/at91/sama5d3.h>
+#include <mach/at91/sama5d4.h>
 
 /* External Memory Map */
 #define AT91_CHIPSELECT_0	0x10000000
diff --git a/arch/arm/mach-at91/include/mach/iomux.h b/include/mach/at91/iomux.h
similarity index 98%
rename from arch/arm/mach-at91/include/mach/iomux.h
rename to include/mach/at91/iomux.h
index bdd34bed94..84b50e05e0 100644
--- a/arch/arm/mach-at91/include/mach/iomux.h
+++ b/include/mach/at91/iomux.h
@@ -8,9 +8,9 @@
 
 #include <io.h>
 #include <asm-generic/errno.h>
-#include <mach/at91_pio.h>
-#include <mach/hardware.h>
-#include <mach/gpio.h>
+#include <mach/at91/at91_pio.h>
+#include <mach/at91/hardware.h>
+#include <mach/at91/gpio.h>
 
 #define	AT91_PIN_PA0	(0x00 + 0)
 #define	AT91_PIN_PA1	(0x00 + 1)
diff --git a/arch/arm/mach-at91/include/mach/matrix.h b/include/mach/at91/matrix.h
similarity index 100%
rename from arch/arm/mach-at91/include/mach/matrix.h
rename to include/mach/at91/matrix.h
diff --git a/arch/arm/mach-at91/include/mach/sam92_ll.h b/include/mach/at91/sam92_ll.h
similarity index 80%
rename from arch/arm/mach-at91/include/mach/sam92_ll.h
rename to include/mach/at91/sam92_ll.h
index f5cef197d3..8cfccd6402 100644
--- a/arch/arm/mach-at91/include/mach/sam92_ll.h
+++ b/include/mach/at91/sam92_ll.h
@@ -6,14 +6,14 @@
 #include <debug_ll.h>
 #include <common.h>
 
-#include <mach/at91_pmc_ll.h>
-#include <mach/at91sam9260.h>
-#include <mach/at91sam9261.h>
-#include <mach/at91sam9263.h>
-#include <mach/at91sam926x.h>
-#include <mach/debug_ll.h>
-#include <mach/early_udelay.h>
-#include <mach/iomux.h>
+#include <mach/at91/at91_pmc_ll.h>
+#include <mach/at91/at91sam9260.h>
+#include <mach/at91/at91sam9261.h>
+#include <mach/at91/at91sam9263.h>
+#include <mach/at91/at91sam926x.h>
+#include <mach/at91/debug_ll.h>
+#include <mach/at91/early_udelay.h>
+#include <mach/at91/iomux.h>
 
 struct sam92_pmc_config {
 	unsigned int diva;
diff --git a/arch/arm/mach-at91/include/mach/sama5_bootsource.h b/include/mach/at91/sama5_bootsource.h
similarity index 98%
rename from arch/arm/mach-at91/include/mach/sama5_bootsource.h
rename to include/mach/at91/sama5_bootsource.h
index 8072e7c251..2fb65ce10f 100644
--- a/arch/arm/mach-at91/include/mach/sama5_bootsource.h
+++ b/include/mach/at91/sama5_bootsource.h
@@ -6,7 +6,7 @@
 #include <bootsource.h>
 #include <linux/bitops.h>
 #include <linux/bitfield.h>
-#include <mach/hardware.h>
+#include <mach/at91/hardware.h>
 
 /* Boot modes stored by BootROM in r4 */
 #define SAMA5_BOOTSOURCE_SPI	0
diff --git a/arch/arm/mach-at91/include/mach/sama5d2-sip-ddramc.h b/include/mach/at91/sama5d2-sip-ddramc.h
similarity index 91%
rename from arch/arm/mach-at91/include/mach/sama5d2-sip-ddramc.h
rename to include/mach/at91/sama5d2-sip-ddramc.h
index 6a75ac71fc..6b8d1dbf86 100644
--- a/arch/arm/mach-at91/include/mach/sama5d2-sip-ddramc.h
+++ b/include/mach/at91/sama5d2-sip-ddramc.h
@@ -5,9 +5,9 @@
  * SAMA5D27 System-in-Package DDRAMC configuration
  */
 
-#include <mach/at91_ddrsdrc.h>
-#include <mach/ddramc.h>
-#include <mach/sama5d2_ll.h>
+#include <mach/at91/at91_ddrsdrc.h>
+#include <mach/at91/ddramc.h>
+#include <mach/at91/sama5d2_ll.h>
 
 static inline void sama5d2_d1g_ddrconf(void) /* DDR2 1Gbit SDRAM */
 {
diff --git a/arch/arm/mach-at91/include/mach/sama5d2.h b/include/mach/at91/sama5d2.h
similarity index 100%
rename from arch/arm/mach-at91/include/mach/sama5d2.h
rename to include/mach/at91/sama5d2.h
diff --git a/arch/arm/mach-at91/include/mach/sama5d2_ll.h b/include/mach/at91/sama5d2_ll.h
similarity index 94%
rename from arch/arm/mach-at91/include/mach/sama5d2_ll.h
rename to include/mach/at91/sama5d2_ll.h
index c78279d7fc..199730d460 100644
--- a/arch/arm/mach-at91/include/mach/sama5d2_ll.h
+++ b/include/mach/at91/sama5d2_ll.h
@@ -3,12 +3,12 @@
 #ifndef __MACH_SAMA5D2_LL__
 #define __MACH_SAMA5D2_LL__
 
-#include <mach/sama5d2.h>
-#include <mach/at91_pmc_ll.h>
-#include <mach/iomux.h>
-#include <mach/debug_ll.h>
-#include <mach/early_udelay.h>
-#include <mach/ddramc.h>
+#include <mach/at91/sama5d2.h>
+#include <mach/at91/at91_pmc_ll.h>
+#include <mach/at91/iomux.h>
+#include <mach/at91/debug_ll.h>
+#include <mach/at91/early_udelay.h>
+#include <mach/at91/ddramc.h>
 
 #include <common.h>
 
diff --git a/arch/arm/mach-at91/include/mach/sama5d3-xplained-ddramc.h b/include/mach/at91/sama5d3-xplained-ddramc.h
similarity index 96%
rename from arch/arm/mach-at91/include/mach/sama5d3-xplained-ddramc.h
rename to include/mach/at91/sama5d3-xplained-ddramc.h
index 6f829282c6..675634766e 100644
--- a/arch/arm/mach-at91/include/mach/sama5d3-xplained-ddramc.h
+++ b/include/mach/at91/sama5d3-xplained-ddramc.h
@@ -5,9 +5,9 @@
  * SAMA5D27 System-in-Package DDRAMC configuration
  */
 
-#include <mach/at91_ddrsdrc.h>
-#include <mach/ddramc.h>
-#include <mach/sama5d3_ll.h>
+#include <mach/at91/at91_ddrsdrc.h>
+#include <mach/at91/ddramc.h>
+#include <mach/at91/sama5d3_ll.h>
 
 static inline void sama5d3_xplained_ddrconf(void)
 {
diff --git a/arch/arm/mach-at91/include/mach/sama5d3.h b/include/mach/at91/sama5d3.h
similarity index 100%
rename from arch/arm/mach-at91/include/mach/sama5d3.h
rename to include/mach/at91/sama5d3.h
diff --git a/arch/arm/mach-at91/include/mach/sama5d3_ll.h b/include/mach/at91/sama5d3_ll.h
similarity index 82%
rename from arch/arm/mach-at91/include/mach/sama5d3_ll.h
rename to include/mach/at91/sama5d3_ll.h
index b5b6b5d820..d9f18794de 100644
--- a/arch/arm/mach-at91/include/mach/sama5d3_ll.h
+++ b/include/mach/at91/sama5d3_ll.h
@@ -3,9 +3,9 @@
 #ifndef __SAMA5D3_LL_H__
 #define __SAMA5D3_LL_H__
 
-#include <mach/at91_pmc_ll.h>
-#include <mach/debug_ll.h>
-#include <mach/early_udelay.h>
+#include <mach/at91/at91_pmc_ll.h>
+#include <mach/at91/debug_ll.h>
+#include <mach/at91/early_udelay.h>
 
 void sama5d3_lowlevel_init(void);
 
diff --git a/arch/arm/mach-at91/include/mach/sama5d4.h b/include/mach/at91/sama5d4.h
similarity index 100%
rename from arch/arm/mach-at91/include/mach/sama5d4.h
rename to include/mach/at91/sama5d4.h
diff --git a/arch/arm/mach-at91/include/mach/tz_matrix.h b/include/mach/at91/tz_matrix.h
similarity index 100%
rename from arch/arm/mach-at91/include/mach/tz_matrix.h
rename to include/mach/at91/tz_matrix.h
diff --git a/arch/arm/mach-at91/include/mach/xload.h b/include/mach/at91/xload.h
similarity index 100%
rename from arch/arm/mach-at91/include/mach/xload.h
rename to include/mach/at91/xload.h
-- 
2.30.2



