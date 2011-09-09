Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-fx0-f49.google.com ([209.85.161.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1R1zXz-0008WR-1l
	for barebox@lists.infradead.org; Fri, 09 Sep 2011 11:47:03 +0000
Received: by mail-fx0-f49.google.com with SMTP id 20so2907784fxd.36
	for <barebox@lists.infradead.org>; Fri, 09 Sep 2011 04:47:02 -0700 (PDT)
From: Hubert Feurstein <h.feurstein@gmail.com>
Date: Fri,  9 Sep 2011 13:46:49 +0200
Message-Id: <1315568809-17776-3-git-send-email-h.feurstein@gmail.com>
In-Reply-To: <1315568809-17776-1-git-send-email-h.feurstein@gmail.com>
References: <1315568809-17776-1-git-send-email-h.feurstein@gmail.com>
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
Subject: [PATCH 4/4] at91sam9g45: add missing spi clock entries
To: barebox@lists.infradead.org

Signed-off-by: Hubert Feurstein <h.feurstein@gmail.com>
---
 arch/arm/mach-at91/at91sam9g45.c |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/arch/arm/mach-at91/at91sam9g45.c b/arch/arm/mach-at91/at91sam9g45.c
index d4c27f8..9c478cd 100644
--- a/arch/arm/mach-at91/at91sam9g45.c
+++ b/arch/arm/mach-at91/at91sam9g45.c
@@ -191,6 +191,8 @@ static struct clk_lookup periph_clocks_lookups[] = {
 	CLKDEV_CON_ID("ohci_clk", &uhphs_clk),
 	CLKDEV_CON_DEV_ID("mci_clk", "atmel_mci0", &mmc0_clk),
 	CLKDEV_CON_DEV_ID("mci_clk", "atmel_mci1", &mmc1_clk),
+	CLKDEV_CON_DEV_ID("spi_clk", "atmel_spi0", &spi0_clk),
+	CLKDEV_CON_DEV_ID("spi_clk", "atmel_spi1", &spi1_clk),
 };
 
 static struct clk_lookup usart_clocks_lookups[] = {
-- 
1.7.4.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
