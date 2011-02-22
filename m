Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PrqB4-0005iy-Bq
	for barebox@lists.infradead.org; Tue, 22 Feb 2011 11:13:11 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Tue, 22 Feb 2011 12:13:03 +0100
Message-Id: <1298373185-27624-2-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH 1/3] at91sam9g45_devices: fix compilation if NAND driver is
	enabled
To: barebox@lists.infradead.org
Cc: sha@pengutronix.de

From: Juergen Beisert <jbe@pengutronix.de>

Enabling the AT91 NAND driver fails with the following error:

arch/arm/mach-at91/at91sam9g45_devices.c: In function 'at91_add_device_nand':
arch/arm/mach-at91/at91sam9g45_devices.c:101: error: 'NAND_ECC_HW' undeclared (first use in this function)

Include the missing "nand.h".

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 arch/arm/mach-at91/at91sam9g45_devices.c |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/arch/arm/mach-at91/at91sam9g45_devices.c b/arch/arm/mach-at91/at91sam9g45_devices.c
index ddb005a..306d1e4 100644
--- a/arch/arm/mach-at91/at91sam9g45_devices.c
+++ b/arch/arm/mach-at91/at91sam9g45_devices.c
@@ -17,6 +17,7 @@
 #include <mach/board.h>
 #include <mach/gpio.h>
 #include <mach/io.h>
+#include <linux/mtd/nand.h>
 
 #include "generic.h"
 
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
