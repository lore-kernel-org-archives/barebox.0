Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pw0-f49.google.com ([209.85.160.49])
	by bombadil.infradead.org with esmtp (Exim 4.69 #1 (Red Hat Linux))
	id 1OCNvy-0003rT-Pp
	for barebox@lists.infradead.org; Thu, 13 May 2010 02:13:59 +0000
Received: by mail-pw0-f49.google.com with SMTP id 6so409800pwj.36
	for <barebox@lists.infradead.org>; Wed, 12 May 2010 19:13:58 -0700 (PDT)
From: Marc Reilly <marc@cpdesign.com.au>
Date: Thu, 13 May 2010 12:47:00 +1000
Message-Id: <1273718822-16800-5-git-send-email-marc@cpdesign.com.au>
In-Reply-To: <1273718822-16800-4-git-send-email-marc@cpdesign.com.au>
References: <1273718822-16800-1-git-send-email-marc@cpdesign.com.au>
	<1273718822-16800-2-git-send-email-marc@cpdesign.com.au>
	<1273718822-16800-3-git-send-email-marc@cpdesign.com.au>
	<1273718822-16800-4-git-send-email-marc@cpdesign.com.au>
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
Subject: [PATCH 4/6] imx35pdk: correct mode for display contrast pin
To: barebox@lists.infradead.org

---
 board/freescale-mx35-3-stack/3stack.c |    7 +++----
 1 files changed, 3 insertions(+), 4 deletions(-)

diff --git a/board/freescale-mx35-3-stack/3stack.c b/board/freescale-mx35-3-stack/3stack.c
index fcb87cf..d09de65 100644
--- a/board/freescale-mx35-3-stack/3stack.c
+++ b/board/freescale-mx35-3-stack/3stack.c
@@ -201,10 +201,8 @@ device_initcall(f3s_devices_init);
 
 static int f3s_enable_display(void)
 {
-	gpio_direction_output(1, 1);
-
 	/* Enable power to the LCD. (bit 6 hi.) */
-	mc9sdz60_set_bits( mc9sdz60_get(), MC9SDZ60_REG_GPIO_1, 0x40, 0x40);
+	mc9sdz60_set_bits(mc9sdz60_get(), MC9SDZ60_REG_GPIO_1, 0x40, 0x40);
 
 	return 0;
 }
@@ -270,10 +268,11 @@ static struct pad_desc f3s_pads[] = {
 	MX35_PAD_D3_HSYNC__IPU_DISPB_D3_HSYNC,
 	MX35_PAD_D3_FPSHIFT__IPU_DISPB_D3_CLK,
 	MX35_PAD_D3_DRDY__IPU_DISPB_D3_DRDY,
-	MX35_PAD_CONTRAST__GPIO1_1,
+	MX35_PAD_CONTRAST__IPU_DISPB_CONTR,
 	MX35_PAD_D3_VSYNC__IPU_DISPB_D3_VSYNC,
 	MX35_PAD_D3_REV__IPU_DISPB_D3_REV,
 	MX35_PAD_D3_CLS__IPU_DISPB_D3_CLS,
+	
 };
 
 static int f3s_console_init(void)
-- 
1.6.4.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
