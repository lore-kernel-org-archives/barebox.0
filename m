Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bK0Ac-00061D-FK
 for barebox@lists.infradead.org; Mon, 04 Jul 2016 09:28:03 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  4 Jul 2016 11:27:36 +0200
Message-Id: <1467624459-16448-10-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1467624459-16448-1-git-send-email-s.hauer@pengutronix.de>
References: <1467624459-16448-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 09/12] ARM: i.MX53 Vincell: Add PBL console support
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/guf-vincell/lowlevel.c | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

diff --git a/arch/arm/boards/guf-vincell/lowlevel.c b/arch/arm/boards/guf-vincell/lowlevel.c
index a72eaf8..f4bd44e 100644
--- a/arch/arm/boards/guf-vincell/lowlevel.c
+++ b/arch/arm/boards/guf-vincell/lowlevel.c
@@ -137,12 +137,11 @@ static noinline void imx53_guf_vincell_init(void *fdt)
 
 	imx53_init_lowlevel_early(800);
 
-	if (IS_ENABLED(CONFIG_DEBUG_LL)) {
-		writel(0x3, MX53_IOMUXC_BASE_ADDR + 0x27c);
-		writel(0x3, MX53_IOMUXC_BASE_ADDR + 0x278);
-		imx53_uart_setup_ll();
-		putc_ll('>');
-	}
+	writel(0x3, MX53_IOMUXC_BASE_ADDR + 0x27c);
+	writel(0x3, MX53_IOMUXC_BASE_ADDR + 0x278);
+	imx53_uart_setup(IOMEM(MX53_UART4_BASE_ADDR));
+	putc_ll('>');
+	pbl_set_putc(imx_uart_putc, (void *)MX53_UART4_BASE_ADDR);
 
 	/* Skip SDRAM initialization if we run from RAM */
 	r = get_pc();
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
