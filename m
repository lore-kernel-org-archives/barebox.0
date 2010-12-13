Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PS62I-000204-Sm
	for barebox@lists.infradead.org; Mon, 13 Dec 2010 10:53:47 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.71)
	(envelope-from <jbe@pengutronix.de>) id 1PS62F-0008Qi-Ol
	for barebox@lists.infradead.org; Mon, 13 Dec 2010 11:53:39 +0100
Received: from jbe by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <jbe@pengutronix.de>) id 1PS62F-0002IL-NN
	for barebox@lists.infradead.org; Mon, 13 Dec 2010 11:53:39 +0100
From: Juergen Beisert <jbe@pengutronix.de>
Date: Mon, 13 Dec 2010 11:53:24 +0100
Message-Id: <1292237617-7064-2-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1292237617-7064-1-git-send-email-jbe@pengutronix.de>
References: <1292237617-7064-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 01/14] Make DIV_ROUND_UP macro globally available
To: barebox@lists.infradead.org

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 arch/arm/mach-stm/speed-imx23.c |    3 +--
 drivers/spi/imx_spi.c           |    3 ---
 include/common.h                |    2 ++
 3 files changed, 3 insertions(+), 5 deletions(-)

diff --git a/arch/arm/mach-stm/speed-imx23.c b/arch/arm/mach-stm/speed-imx23.c
index 7418ad5..f32ae92 100644
--- a/arch/arm/mach-stm/speed-imx23.c
+++ b/arch/arm/mach-stm/speed-imx23.c
@@ -244,8 +244,7 @@ unsigned imx_set_sspclk(unsigned index, unsigned nc, int high)
 		printf("Cannot setup SSP unit clock to %u Hz, base clock is only %u Hz\n", nc, ssp_div);
 		ssp_div = 1U;
 	} else {
-		ssp_div += nc - 1U;
-		ssp_div /= nc;
+		ssp_div = DIV_ROUND_UP(ssp_div, nc);
 		if (ssp_div > CLKCTRL_SSP_DIV_MASK)
 			ssp_div = CLKCTRL_SSP_DIV_MASK;
 	}
diff --git a/drivers/spi/imx_spi.c b/drivers/spi/imx_spi.c
index 2ad1bfa..1857d6c 100644
--- a/drivers/spi/imx_spi.c
+++ b/drivers/spi/imx_spi.c
@@ -224,9 +224,6 @@ static unsigned int cspi_2_3_xchg_single(struct imx_spi *imx, unsigned int data)
 	return readl(base + CSPI_2_3_RXDATA);
 }
 
-/* FIXME: include/linux/kernel.h */
-#define DIV_ROUND_UP(n,d) (((n) + (d) - 1) / (d))
-
 static unsigned int cspi_2_3_clkdiv(unsigned int fin, unsigned int fspi)
 {
 	/*
diff --git a/include/common.h b/include/common.h
index a14bfc1..be83a31 100644
--- a/include/common.h
+++ b/include/common.h
@@ -222,4 +222,6 @@ extern const char version_string[];
 
 #define IOMEM(addr)	((void __force __iomem *)(addr))
 
+#define DIV_ROUND_UP(n,d)	(((n) + (d) - 1) / (d))
+
 #endif	/* __COMMON_H_ */
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
