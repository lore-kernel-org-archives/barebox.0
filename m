Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-px0-f177.google.com ([209.85.212.177])
	by bombadil.infradead.org with esmtp (Exim 4.69 #1 (Red Hat Linux))
	id 1OCNw3-0003sk-8F
	for barebox@lists.infradead.org; Thu, 13 May 2010 02:14:03 +0000
Received: by mail-px0-f177.google.com with SMTP id 1so418794pxi.36
	for <barebox@lists.infradead.org>; Wed, 12 May 2010 19:14:03 -0700 (PDT)
From: Marc Reilly <marc@cpdesign.com.au>
Date: Thu, 13 May 2010 12:47:02 +1000
Message-Id: <1273718822-16800-7-git-send-email-marc@cpdesign.com.au>
In-Reply-To: <1273718822-16800-6-git-send-email-marc@cpdesign.com.au>
References: <1273718822-16800-1-git-send-email-marc@cpdesign.com.au>
	<1273718822-16800-2-git-send-email-marc@cpdesign.com.au>
	<1273718822-16800-3-git-send-email-marc@cpdesign.com.au>
	<1273718822-16800-4-git-send-email-marc@cpdesign.com.au>
	<1273718822-16800-5-git-send-email-marc@cpdesign.com.au>
	<1273718822-16800-6-git-send-email-marc@cpdesign.com.au>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 6/6] imx35pdk: make COMPARE pad a GPIO1_5 output
To: barebox@lists.infradead.org

This pad is an interrupt source, active low for one of the external ICs.
---
 board/freescale-mx35-3-stack/3stack.c |    7 ++++++-
 1 files changed, 6 insertions(+), 1 deletions(-)

diff --git a/board/freescale-mx35-3-stack/3stack.c b/board/freescale-mx35-3-stack/3stack.c
index 4dc25e6..797e517 100644
--- a/board/freescale-mx35-3-stack/3stack.c
+++ b/board/freescale-mx35-3-stack/3stack.c
@@ -280,6 +280,8 @@ static struct pad_desc f3s_pads[] = {
 	MX35_PAD_I2C1_DAT__I2C1_SDA,
 
 	MX35_PAD_WDOG_RST__GPIO1_6,
+	MX35_PAD_COMPARE__GPIO1_5,
+	
 	/* Display */
 	MX35_PAD_LD0__IPU_DISPB_DAT_0,
 	MX35_PAD_LD1__IPU_DISPB_DAT_1,
@@ -332,7 +334,7 @@ static int f3s_core_init(void)
 	reg |= 0x3 << CCM_CGR1_FEC_SHIFT;
 	reg |= 0x3 << CCM_CGR1_I2C1_SHIFT;
 	reg = writel(reg, IMX_CCM_BASE + CCM_CGR1);
-
+	
 	/* AIPS setup - Only setup MPROTx registers. The PACR default values are good.*/
 	/*
 	 * Set all MPROTx to be non-bufferable, trusted for R/W,
@@ -414,6 +416,9 @@ static int f3s_pmic_init_v2(struct mc13892 *mc13892)
 {
 	int err = 0;
 
+	/* COMPARE pin (GPIO1_5) as output and set high */
+	gpio_direction_output( 32*0 + 5 , 1);
+	
 	err |= mc13892_set_bits(mc13892, MC13892_REG_SETTING_0, 0x03, 0x03);
 	err |= mc13892_set_bits(mc13892, MC13892_REG_MODE_0, 0x01, 0x01);
 	if (err)
-- 
1.6.4.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
