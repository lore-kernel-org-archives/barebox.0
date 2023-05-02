Delivery-date: Tue, 02 May 2023 11:15:32 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ptm6f-002Abs-Hz
	for lore@lore.pengutronix.de; Tue, 02 May 2023 11:15:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ptm6d-00024I-3z
	for lore@pengutronix.de; Tue, 02 May 2023 11:15:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DyyO5KNuKnRUuXcKhQg3KqIBQ/uaBTIHeBeMZNIHLps=; b=Mqt5aW4S0hkyHRZo4I3aqyEqN/
	YLURIFhG7ndtJ7+JLOzVnvz4626B5UMIOrG7P1aECWjMlvLnswosvLraKrdY7QhuoRTikwy4wo/kW
	R64Lp6WNsIzRRFeos+VmnktGoFq1G9jZ0jnMQaMw1nSRmoBWtyz/iYEp+5h0BGTgZ9jaIL/aAdhs5
	cNBT2PRRwcB1SoeEtXAu8t5j+11BdAtPYm16bbnsObZeJkhUpy/0Rhvx+KYGoF9ZHR8Qmx+kmMYeE
	RuIOLf3neoD589NODYMzh+tc5fdGusN4qk2FIjhrpHCnop0GnSm4XzGOlzVMYhwymvZ89sAkiTWWH
	3ZPGlQhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ptm5d-000jLg-0Y;
	Tue, 02 May 2023 09:14:29 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ptm5X-000jGq-2B
	for barebox@lists.infradead.org;
	Tue, 02 May 2023 09:14:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ptm5W-00019y-Fk; Tue, 02 May 2023 11:14:22 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1ptm5V-000YjV-W4; Tue, 02 May 2023 11:14:22 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1ptm5U-00Aqz1-4U; Tue, 02 May 2023 11:14:20 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue,  2 May 2023 11:14:09 +0200
Message-Id: <20230502091419.2551228-3-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230502091419.2551228-1-s.hauer@pengutronix.de>
References: <20230502091419.2551228-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230502_021423_714964_5E1EB327 
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 02/12] ARM: versatile: Use common clk framework
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Kconfig               |  2 ++
 arch/arm/mach-versatile/core.c | 49 ----------------------------------
 2 files changed, 2 insertions(+), 49 deletions(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 5aef8fcd3b..1da6b396e7 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -161,6 +161,8 @@ config ARCH_VERSATILE
 	select GPIOLIB
 	select HAVE_CLK
 	select HAS_DEBUG_LL
+	select COMMON_CLK
+	select COMMON_CLK_OF_PROVIDER
 
 config ARCH_TEGRA
 	bool "NVIDIA Tegra"
diff --git a/arch/arm/mach-versatile/core.c b/arch/arm/mach-versatile/core.c
index 1e1ee92c2d..69ff82e9a5 100644
--- a/arch/arm/mach-versatile/core.c
+++ b/arch/arm/mach-versatile/core.c
@@ -41,39 +41,6 @@
 #include <mach/versatile/platform.h>
 #include <mach/versatile/init.h>
 
-struct clk {
-	unsigned long rate;
-};
-
-static struct clk ref_clk_dummy;
-
-static struct clk ref_clk_24 = {
-	.rate = 24000000,
-};
-
-unsigned long clk_get_rate(struct clk *clk)
-{
-	return clk->rate;
-}
-EXPORT_SYMBOL(clk_get_rate);
-
-/* enable and disable do nothing */
-int clk_set_rate(struct clk *clk, unsigned long rate)
-{
-	return 0;
-}
-EXPORT_SYMBOL(clk_set_rate);
-
-int clk_enable(struct clk *clk)
-{
-	return 0;
-}
-EXPORT_SYMBOL(clk_enable);
-
-void clk_disable(struct clk *clk)
-{
-}
-EXPORT_SYMBOL(clk_disable);
 
 /* 1Mhz / 256 */
 #define TIMER_FREQ (1000000/256)
@@ -134,22 +101,6 @@ static int vpb_clocksource_init(void)
 
 core_initcall(vpb_clocksource_init);
 
-static struct clk_lookup clocks_lookups[] = {
-	CLKDEV_CON_ID("apb_pclk", &ref_clk_dummy),
-	CLKDEV_DEV_ID("uart-pl0110", &ref_clk_24),
-	CLKDEV_DEV_ID("uart-pl0111", &ref_clk_24),
-	CLKDEV_DEV_ID("uart-pl0112", &ref_clk_24),
-	CLKDEV_DEV_ID("uart-pl0113", &ref_clk_24),
-};
-
-static int versatile_clkdev_init(void)
-{
-	clkdev_add_table(clocks_lookups, ARRAY_SIZE(clocks_lookups));
-
-	return 0;
-}
-postcore_initcall(versatile_clkdev_init);
-
 void versatile_register_uart(unsigned id)
 {
 	resource_size_t start;
-- 
2.39.2



