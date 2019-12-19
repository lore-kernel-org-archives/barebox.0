Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihxaO-0005Nz-Ol
 for barebox@lists.infradead.org; Thu, 19 Dec 2019 15:19:36 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>) id 1ihxaL-0005so-Lj
 for barebox@lists.infradead.org; Thu, 19 Dec 2019 16:19:29 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Thu, 19 Dec 2019 16:19:28 +0100
Message-Id: <20191219151929.19521-3-l.stach@pengutronix.de>
In-Reply-To: <20191219151929.19521-1-l.stach@pengutronix.de>
References: <20191219151929.19521-1-l.stach@pengutronix.de>
MIME-Version: 1.0
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 3/4] ARM: nxp-imx8mq-evk: clean up nxp_imx8mq_evk_start
To: barebox@lists.infradead.org

Mostly cosmetic changes:
- reduce scope of local variabes
- wrap comment to fir 80 char limit
- check return value from imx8_esdhc_load_piggy
- drop intermediate function that only wraps a single other function

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/boards/nxp-imx8mq-evk/lowlevel.c | 24 +++++++++++------------
 1 file changed, 11 insertions(+), 13 deletions(-)

diff --git a/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c b/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c
index c2f3071e3a9a..213ab7068271 100644
--- a/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c
+++ b/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c
@@ -42,11 +42,6 @@ static void setup_uart(void)
 	putc_ll('>');
 }
 
-static void nxp_imx8mq_evk_sram_setup(void)
-{
-	ddr_init();
-}
-
 /*
  * Power-on execution flow of start_nxp_imx8mq_evk() might not be
  * obvious for a very first read, so here's, hopefully helpful,
@@ -72,8 +67,6 @@ static __noreturn noinline void nxp_imx8mq_evk_start(void)
 	enum bootsource src = BOOTSOURCE_UNKNOWN;
 	int instance = BOOTSOURCE_INSTANCE_UNKNOWN;
 	int ret = -ENOTSUPP;
-	const u8 *bl31;
-	size_t bl31_size;
 
 	if (IS_ENABLED(CONFIG_DEBUG_LL))
 		setup_uart();
@@ -84,14 +77,18 @@ static __noreturn noinline void nxp_imx8mq_evk_start(void)
 	 * to DRAM in EL2.
 	 */
 	if (current_el() == 3) {
-		nxp_imx8mq_evk_sram_setup();
-		get_builtin_firmware(imx8mq_bl31_bin, &bl31, &bl31_size);
+		const u8 *bl31;
+		size_t bl31_size;
+
+		ddr_init();
 		/*
-		 * On completion the TF-A will jump to MX8MQ_ATF_BL33_BASE_ADDR in
-		 * EL2. Copy ourselves there.
+		 * On completion the TF-A will jump to MX8MQ_ATF_BL33_BASE_ADDR
+		 * in EL2. Copy ourselves there.
 		 */
 		memcpy((void *)MX8MQ_ATF_BL33_BASE_ADDR,
 		       __image_start, barebox_pbl_size);
+
+		get_builtin_firmware(imx8mq_bl31_bin, &bl31, &bl31_size);
 		imx8mq_atf_load_bl31(bl31, bl31_size);
 		/* not reached */
 	}
@@ -100,8 +97,9 @@ static __noreturn noinline void nxp_imx8mq_evk_start(void)
 
 	if (src == BOOTSOURCE_MMC)
 		ret = imx8_esdhc_load_piggy(instance);
-	else
-		BUG_ON(ret);
+
+	BUG_ON(ret);
+
 	/*
 	 * Standard entry we hit once we initialized both DDR and ATF
 	 */
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
