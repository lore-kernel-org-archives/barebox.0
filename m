Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 3.mo2.mail-out.ovh.net ([46.105.58.226]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TOY14-0003w6-Ax
 for barebox@lists.infradead.org; Wed, 17 Oct 2012 18:06:51 +0000
Received: from mail426.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 956F0DC22C6
 for <barebox@lists.infradead.org>; Wed, 17 Oct 2012 20:13:24 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 17 Oct 2012 20:04:24 +0200
Message-Id: <1350497065-21893-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1350497065-21893-1-git-send-email-plagnioj@jcrosoft.com>
References: <20121017180024.GB446@game.jcrosoft.org>
 <1350497065-21893-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/3] at91sam9x5: add pmecc support
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/mach-at91/at91sam9x5_devices.c |   16 ++++++++++++++--
 1 file changed, 14 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-at91/at91sam9x5_devices.c b/arch/arm/mach-at91/at91sam9x5_devices.c
index 26a380d..4e59d8d 100644
--- a/arch/arm/mach-at91/at91sam9x5_devices.c
+++ b/arch/arm/mach-at91/at91sam9x5_devices.c
@@ -135,9 +135,19 @@ static struct resource nand_resources[] = {
 	},
 	[1] = {
 		.start	= AT91_BASE_SYS + AT91_PMECC,
-		.end	= AT91_BASE_SYS + AT91_PMECC + 512 - 1,
+		.end	= AT91_BASE_SYS + AT91_PMECC + 0x600 - 1,
 		.flags	= IORESOURCE_MEM,
-	}
+	},
+	[2] = {
+		.start	= AT91_BASE_SYS + AT91_PMERRLOC,
+		.end	= AT91_BASE_SYS + AT91_PMERRLOC + 0x200 - 1,
+		.flags	= IORESOURCE_MEM,
+	},
+	[3] = {
+		.start	= AT91SAM9X5_ROM_BASE,
+		.end	= AT91SAM9X5_ROM_BASE + AT91SAM9X5_ROM_SIZE - 1,
+		.flags	= IORESOURCE_MEM,
+	},
 };
 
 void __init at91_add_device_nand(struct atmel_nand_data *data)
@@ -150,6 +160,8 @@ void __init at91_add_device_nand(struct atmel_nand_data *data)
 	csa = at91_sys_read(AT91_MATRIX_EBICSA);
 	at91_sys_write(AT91_MATRIX_EBICSA, csa | AT91_MATRIX_EBI_CS3A_SMC_NANDFLASH);
 
+	data->pmecc_lookup_table_offset = 0x8000;
+
 	/* enable pin */
 	if (data->enable_pin)
 		at91_set_gpio_output(data->enable_pin, 1);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
