Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PrqB4-0005iz-Bu
	for barebox@lists.infradead.org; Tue, 22 Feb 2011 11:13:11 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Tue, 22 Feb 2011 12:13:04 +0100
Message-Id: <1298373185-27624-3-git-send-email-mkl@pengutronix.de>
In-Reply-To: <1298373185-27624-1-git-send-email-mkl@pengutronix.de>
References: <1298373185-27624-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH 2/3] at91sam9g45_devices: don't hardcode nand ecc mode
To: barebox@lists.infradead.org
Cc: sha@pengutronix.de

Hardware is currently not working on the at91sam9g45. So give the user a
change to specify software ecc mode.

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/mach-at91/at91sam9g45_devices.c |    1 -
 1 files changed, 0 insertions(+), 1 deletions(-)

diff --git a/arch/arm/mach-at91/at91sam9g45_devices.c b/arch/arm/mach-at91/at91sam9g45_devices.c
index 306d1e4..9e2c572 100644
--- a/arch/arm/mach-at91/at91sam9g45_devices.c
+++ b/arch/arm/mach-at91/at91sam9g45_devices.c
@@ -99,7 +99,6 @@ void at91_add_device_nand(struct atmel_nand_data *data)
 		return;
 
 	data->ecc_base = (void __iomem *)(AT91_BASE_SYS + AT91_ECC);
-	data->ecc_mode = NAND_ECC_HW;
 
 	csa = at91_sys_read(AT91_MATRIX_EBICSA);
 	at91_sys_write(AT91_MATRIX_EBICSA, csa | AT91_MATRIX_EBI_CS3A_SMC_SMARTMEDIA);
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
