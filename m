Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lpp01m010-f49.google.com ([209.85.215.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SCDjG-0005Rw-Ew
 for barebox@lists.infradead.org; Mon, 26 Mar 2012 17:29:16 +0000
Received: by lagy4 with SMTP id y4so4899584lag.36
 for <barebox@lists.infradead.org>; Mon, 26 Mar 2012 10:29:10 -0700 (PDT)
From: esben.haabendal@gmail.com
Date: Mon, 26 Mar 2012 19:29:04 +0200
Message-Id: <1332782947-3407-2-git-send-email-esben.haabendal@gmail.com>
In-Reply-To: <1332782947-3407-1-git-send-email-esben.haabendal@gmail.com>
References: <1332782947-3407-1-git-send-email-esben.haabendal@gmail.com>
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
Subject: [PATCH 1/4] mxs: Fix support for BITKEEPER() macro
To: barebox@lists.infradead.org
Cc: Esben Haabendal <esben.haabendal@prevas.dk>

From: Esben Haabendal <esben.haabendal@gmail.com>

There was no check for BE, so any BITKEEPER(1) iomux configurations
were not being applied.

Signed-off-by: Esben Haabendal <esben.haabendal@prevas.dk>
---
 arch/arm/mach-mxs/iomux-imx.c |    6 ++++++
 1 files changed, 6 insertions(+), 0 deletions(-)

diff --git a/arch/arm/mach-mxs/iomux-imx.c b/arch/arm/mach-mxs/iomux-imx.c
index 3161a5d..6bcde03 100644
--- a/arch/arm/mach-mxs/iomux-imx.c
+++ b/arch/arm/mach-mxs/iomux-imx.c
@@ -128,6 +128,12 @@ void imx_gpio_mode(uint32_t m)
 				(GET_PULLUP(m) == 1 ? BIT_SET : BIT_CLR));
 	}
 
+	if (BK_PRESENT(m)) {
+		reg_offset = calc_pullup_reg(gpio_pin);
+		writel(0x1 << (gpio_pin % 32), IMX_IOMUXC_BASE + reg_offset +
+				(GET_BITKEEPER(m) == 1 ? BIT_SET : BIT_CLR));
+	}
+
 	if (GET_FUNC(m) == IS_GPIO) {
 		if (GET_GPIODIR(m) == 1) {
 			/* first set the output value */
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
