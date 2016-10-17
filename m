Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bw1MK-00036u-K0
 for barebox@lists.infradead.org; Mon, 17 Oct 2016 06:25:17 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 17 Oct 2016 08:24:52 +0200
Message-Id: <20161017062452.14988-1-s.hauer@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] ARM: i.MX Freescale Sabrelite: Use correct device tree for dl
 variant
To: Barebox List <barebox@lists.infradead.org>

The i.MX6dl variant also uses the i.MX6q device tree which is wrong.
Use the correct one.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/freescale-mx6-sabrelite/lowlevel.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/freescale-mx6-sabrelite/lowlevel.c b/arch/arm/boards/freescale-mx6-sabrelite/lowlevel.c
index 3b51e01..c2d7a3c 100644
--- a/arch/arm/boards/freescale-mx6-sabrelite/lowlevel.c
+++ b/arch/arm/boards/freescale-mx6-sabrelite/lowlevel.c
@@ -53,9 +53,9 @@ static noinline void imx6dl_sabrelite_start(void)
 	imx6_uart_setup(uart);
 	pbl_set_putc(imx_uart_putc, uart);
 
-	pr_debug("Freescale i.MX6q SabreLite\n");
+	pr_debug("Freescale i.MX6dl SabreLite\n");
 
-	imx6q_barebox_entry(__dtb_imx6q_sabrelite_start);
+	imx6q_barebox_entry(__dtb_imx6dl_sabrelite_start);
 }
 
 ENTRY_FUNCTION(start_imx6dl_sabrelite, r0, r1, r2)
-- 
2.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
