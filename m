Delivery-date: Tue, 02 May 2023 11:15:46 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ptm6t-002AgL-7w
	for lore@lore.pengutronix.de; Tue, 02 May 2023 11:15:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ptm6q-0002LE-S0
	for lore@pengutronix.de; Tue, 02 May 2023 11:15:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=X1BvNc7iW/1JJkbUFhqXqodlrFYUaco6WEOmugHTCXI=; b=lHuXspf3ksuj6oajEWbenDs3k5
	iS66kc4oxWqM+idJwuVG/f8dSTuVXyf6Ysv+IC9lTbyj8MhEz+ZpnpNjopWhSjd/5uKB+jmgILJTu
	prd/7dRZ9OKa+nA6YvD/0s9VUZ17kDhm20ObHQ/iHDpILk/KpSl1yFqvaVGMY3WTv4HIMeo2bgN1O
	oolpHQAhYFcVVI/4/UE8XCnAJZ+8CW59+x6C+R/TO1MSaIMLP4hexXeZf+iwutjkT7fHikTpWEd4q
	kpq0a5I9GwvdUeghhiBRyC9+YSH8MAdqHnkGTqH30f7RBoqpPSnQ/vl/m14Nn3lScVMhdSoyueUNO
	yVdrxhuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ptm5j-000jSk-36;
	Tue, 02 May 2023 09:14:36 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ptm5Y-000jH3-0c
	for barebox@lists.infradead.org;
	Tue, 02 May 2023 09:14:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ptm5W-0001B1-Uu; Tue, 02 May 2023 11:14:22 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1ptm5W-000Yjv-GS; Tue, 02 May 2023 11:14:22 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1ptm5U-00Ar0K-Ap; Tue, 02 May 2023 11:14:20 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue,  2 May 2023 11:14:18 +0200
Message-Id: <20230502091419.2551228-12-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230502091419.2551228-1-s.hauer@pengutronix.de>
References: <20230502091419.2551228-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230502_021424_225309_B4A1BF97 
X-CRM114-Status: GOOD (  14.13  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 11/12] ARM: versatile: Use existing clocksource driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We already have a SP804 driver in drivers/clocksource/. Use that instead
of the open coded arch clocksource.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Kconfig               |  2 ++
 arch/arm/mach-versatile/core.c | 60 ----------------------------------
 2 files changed, 2 insertions(+), 60 deletions(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index ef3adbbe9d..1d2734975a 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -275,6 +275,8 @@ config ARCH_VERSATILE
 	bool "ARM Versatile boards (ARM926EJ-S)"
 	depends on 32BIT
 	select GPIOLIB
+	select ARM_AMBA
+	select AMBA_SP804
 	select HAVE_CLK
 	select HAS_DEBUG_LL
 	select COMMON_CLK
diff --git a/arch/arm/mach-versatile/core.c b/arch/arm/mach-versatile/core.c
index 74af8c0804..b0124b700c 100644
--- a/arch/arm/mach-versatile/core.c
+++ b/arch/arm/mach-versatile/core.c
@@ -35,69 +35,10 @@
 #include <linux/amba/bus.h>
 
 #include <io.h>
-#include <asm/hardware/arm_timer.h>
 #include <asm/armlinux.h>
 
 #include <mach/versatile/platform.h>
 
-
-/* 1Mhz / 256 */
-#define TIMER_FREQ (1000000/256)
-
-#define TIMER0_BASE (VERSATILE_TIMER0_1_BASE)
-#define TIMER1_BASE ((VERSATILE_TIMER0_1_BASE) + 0x20)
-#define TIMER2_BASE (VERSATILE_TIMER2_3_BASE)
-#define TIMER3_BASE ((VERSATILE_TIMER2_3_BASE) + 0x20)
-
-static uint64_t vpb_clocksource_read(void)
-{
-	return ~readl(TIMER0_BASE + TIMER_VALUE);
-}
-
-static struct clocksource vpb_cs = {
-	.read = vpb_clocksource_read,
-	.mask = CLOCKSOURCE_MASK(32),
-	.shift = 10,
-	.priority = 80,
-};
-
-/* From Linux v2.6.35
- * arch/arm/mach-versatile/core.c */
-static void versatile_timer_init (void)
-{
-	u32 val;
-
-	/*
-	 * set clock frequency:
-	 *      VERSATILE_REFCLK is 32KHz
-	 *      VERSATILE_TIMCLK is 1MHz
-	 */
-
-	val = readl(VERSATILE_SCTL_BASE);
-	val |= (VERSATILE_TIMCLK << VERSATILE_TIMER1_EnSel);
-	writel(val, VERSATILE_SCTL_BASE);
-
-	/*
-	 * Disable all timers, just to be sure.
-	 */
-
-	writel(0, TIMER0_BASE + TIMER_CTRL);
-	writel(0, TIMER1_BASE + TIMER_CTRL);
-	writel(0, TIMER2_BASE + TIMER_CTRL);
-	writel(0, TIMER3_BASE + TIMER_CTRL);
-
-	writel(TIMER_CTRL_32BIT | TIMER_CTRL_ENABLE | TIMER_CTRL_DIV256,
-					TIMER0_BASE + TIMER_CTRL);
-}
-
-static int vpb_clocksource_init(void)
-{
-	versatile_timer_init();
-	vpb_cs.mult = clocksource_hz2mult(TIMER_FREQ, vpb_cs.shift);
-
-	return init_clock(&vpb_cs);
-}
-
 static void __noreturn versatile_reset_soc(struct restart_handler *rst)
 {
 	u32 val;
@@ -118,7 +59,6 @@ static int versatile_init(void)
 	    !of_machine_is_compatible("arm,versatile-ab"))
 		return 0;
 
-	vpb_clocksource_init();
 	restart_handler_register_fn("soc", versatile_reset_soc);
 	return 0;
 }
-- 
2.39.2



