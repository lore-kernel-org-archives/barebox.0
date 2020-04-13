Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNttS-0005mN-70
 for barebox@lists.infradead.org; Mon, 13 Apr 2020 07:52:47 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1jNttQ-0003Xu-RR
 for barebox@lists.infradead.org; Mon, 13 Apr 2020 09:52:32 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1jNttP-0005Fd-Qk
 for barebox@lists.infradead.org; Mon, 13 Apr 2020 09:52:31 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 13 Apr 2020 09:51:58 +0200
Message-Id: <20200413075204.17544-16-a.fatoum@pengutronix.de>
In-Reply-To: <20200413075204.17544-1-a.fatoum@pengutronix.de>
References: <20200413075204.17544-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 15/21] clk: at91: compile dt-compat for all platforms that
 require it
To: barebox@lists.infradead.org

We have so far compiled in dt-compat only for CONFIG_SOC_SAMA5D3,
but we require it for device tree support of CONFIG_SOC_AT91SAM9
as well. Fix this.

While at it move around the obj- rules a bit to minimize the diff to
upstream.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/clk/at91/Makefile | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/drivers/clk/at91/Makefile b/drivers/clk/at91/Makefile
index 593d34e3487e..d07baedf580c 100644
--- a/drivers/clk/at91/Makefile
+++ b/drivers/clk/at91/Makefile
@@ -12,9 +12,7 @@ obj-$(CONFIG_HAVE_AT91_USB_CLK)		+= clk-usb.o
 obj-$(CONFIG_HAVE_AT91_SMD)		+= clk-smd.o
 obj-$(CONFIG_HAVE_AT91_H32MX)		+= clk-h32mx.o
 obj-$(CONFIG_HAVE_AT91_GENERATED_CLK)	+= clk-generated.o
-obj-$(CONFIG_SOC_AT91SAM9) 		+= at91sam9260.o
-obj-$(CONFIG_SOC_AT91SAM9) 		+= at91sam9rl.o
-obj-$(CONFIG_SOC_AT91SAM9) 		+= at91sam9x5.o
-obj-$(CONFIG_SOC_SAMA5D2) 		+= sama5d2.o
-obj-$(CONFIG_SOC_SAMA5D3)		+= dt-compat.o
-obj-$(CONFIG_SOC_SAMA5D4) 		+= sama5d4.o
+obj-$(CONFIG_SOC_AT91SAM9) += at91sam9260.o at91sam9rl.o at91sam9x5.o dt-compat.o
+obj-$(CONFIG_SOC_SAMA5D4) += sama5d4.o
+obj-$(CONFIG_SOC_SAMA5D3) += dt-compat.o
+obj-$(CONFIG_SOC_SAMA5D2) += sama5d2.o
-- 
2.26.0.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
