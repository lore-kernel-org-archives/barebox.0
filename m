Delivery-date: Mon, 25 Apr 2022 08:27:19 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nisBt-00ERQ4-8F
	for lore@lore.pengutronix.de; Mon, 25 Apr 2022 08:27:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nisBq-0000Ef-5p
	for lore@pengutronix.de; Mon, 25 Apr 2022 08:27:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rCw3HGsZR1aT/ENXCpN7B88i24XqiEyPD9rcSRpRK3k=; b=l5ckIhITf6AZKz
	h/Ir0+fn9itlug1PVVNzMxLaSULgG63Lh92vCgPR6oW+UDFDurBXVFiyDSybLzFvC8m7cepCk6BPR
	CSG4bv3xDO2JxJCZd6xxIdNYPFz7xw9wUIglfqVi1O9oo/Rr9zmpOe72WXrU1fpb3Gi/eTNAvjgLN
	Z8c6dzcLJhLPj2+EZYIZDJ3Ioyt9taFGJWuNdc6zomWO+TWNaCWIIGJnacjlIBff3vRz5S+Q2BO9o
	HvPH6M8qmNlZd6LWQ0JDoIu+nq/eFfryAFeM7Ar0iJw1FSWHYKK6MoeXYT9ZFjNjuBee8mCy8Ezc6
	aAHQCbZEMOoJw9D90ucg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nisAH-008Tba-Tz; Mon, 25 Apr 2022 06:25:42 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nisAB-008TZk-Qa
 for barebox@lists.infradead.org; Mon, 25 Apr 2022 06:25:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1nisA4-0008Kh-WD; Mon, 25 Apr 2022 08:25:29 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nisA4-0055zA-VI; Mon, 25 Apr 2022 08:25:27 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nisA2-0004Yn-O1; Mon, 25 Apr 2022 08:25:26 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: ore@pengutronix.de
Date: Mon, 25 Apr 2022 08:25:20 +0200
Message-Id: <20220425062523.17478-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220424_232535_908706_3BD71D9C 
X-CRM114-Status: UNSURE (   9.90  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master v2 0/3] ARM: rpi3: fix misc recent breakage
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

barebox v2022.04.0 on the Raspberry Pi 3b is malformated, silent on the
mini UART and slow. Fix the root causes behind these issues.

This series is a bit bigger than what normally goes direct into master,
but I'd prefer it's applied directly to master, so we have the proper
fixes in v2022.05.0.

v1 -> v2:
  - remove duplicated __ARM_SETUP_STACK

Ahmad Fatoum (3):
  ARM: asm: fix miscompilation of 32-bit ENTRY_FUNCTION_WITHSTACK
  clk: add BCM2835 auxiliary peripheral clock driver
  clocksource: assign non-zero priorities to all clocksources

 arch/arm/include/asm/barebox-arm.h          | 10 +++-
 arch/arm/mach-at91/at91rm9200_time.c        |  1 +
 arch/arm/mach-davinci/time.c                |  1 +
 arch/arm/mach-ep93xx/clocksource.c          |  1 +
 arch/arm/mach-mxs/clocksource-imx23.c       |  1 +
 arch/arm/mach-mxs/clocksource-imx28.c       |  1 +
 arch/arm/mach-pxa/clocksource.c             |  1 +
 arch/arm/mach-samsung/s3c-timer.c           |  1 +
 arch/arm/mach-tegra/tegra20-timer.c         |  1 +
 arch/arm/mach-versatile/core.c              |  1 +
 arch/mips/lib/csrc-r4k.c                    |  1 +
 arch/mips/mach-xburst/csrc-jz4750.c         |  1 +
 arch/openrisc/lib/clock.c                   |  1 +
 arch/powerpc/mach-mpc5xxx/time.c            |  1 +
 arch/powerpc/mach-mpc85xx/time.c            |  1 +
 arch/sandbox/board/clock.c                  |  1 +
 drivers/clk/Makefile                        |  1 +
 drivers/clk/bcm/Makefile                    |  2 +
 drivers/clk/bcm/clk-bcm2835-aux.c           | 66 +++++++++++++++++++++
 drivers/clocksource/amba-sp804.c            |  1 +
 drivers/clocksource/arm_architected_timer.c |  1 +
 drivers/clocksource/arm_global_timer.c      |  1 +
 drivers/clocksource/arm_smp_twd.c           |  1 +
 drivers/clocksource/armv7m_systick.c        |  1 +
 drivers/clocksource/bcm2835.c               |  1 +
 drivers/clocksource/clps711x.c              |  1 +
 drivers/clocksource/digic.c                 |  1 +
 drivers/clocksource/dw_apb_timer.c          |  1 +
 drivers/clocksource/efi.c                   |  1 +
 drivers/clocksource/kvx_timer.c             |  1 +
 drivers/clocksource/mvebu.c                 |  1 +
 drivers/clocksource/nomadik.c               |  1 +
 drivers/clocksource/orion.c                 |  1 +
 drivers/clocksource/rk_timer.c              |  1 +
 drivers/clocksource/timer-atmel-pit.c       |  1 +
 drivers/clocksource/timer-imx-gpt.c         |  1 +
 drivers/clocksource/timer-ti-32k.c          |  1 +
 drivers/clocksource/timer-ti-dm.c           |  1 +
 drivers/clocksource/uemd.c                  |  1 +
 39 files changed, 112 insertions(+), 2 deletions(-)
 create mode 100644 drivers/clk/bcm/Makefile
 create mode 100644 drivers/clk/bcm/clk-bcm2835-aux.c

-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

