Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcoRg-0002IQ-NQ
 for barebox@lists.infradead.org; Mon, 17 Jun 2019 10:01:03 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.lab.pengutronix.de)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1hcoRf-0003Tz-Cg
 for barebox@lists.infradead.org; Mon, 17 Jun 2019 12:00:59 +0200
Received: from mfe by dude02.lab.pengutronix.de with local (Exim 4.89)
 (envelope-from <mfe@pengutronix.de>) id 1hcoRf-0001xw-2d
 for barebox@lists.infradead.org; Mon, 17 Jun 2019 12:00:59 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Mon, 17 Jun 2019 12:00:55 +0200
Message-Id: <20190617100056.25331-4-m.felsch@pengutronix.de>
In-Reply-To: <20190617100056.25331-1-m.felsch@pengutronix.de>
References: <20190617100056.25331-1-m.felsch@pengutronix.de>
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
Subject: [PATCH 3/4] commands: mmc_extcsd: fix extcsd value meanings
To: barebox@lists.infradead.org

As specified by the JEDEC Standard No. 84-A441 the RESET_BOOT_BUS_WIDTH
(Bit[2]) is specified the other way around. Also the BOOT_MODE is a two
bit register.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 commands/mmc_extcsd.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/commands/mmc_extcsd.c b/commands/mmc_extcsd.c
index 889a6c614a..c27bb722ea 100644
--- a/commands/mmc_extcsd.c
+++ b/commands/mmc_extcsd.c
@@ -861,10 +861,10 @@ static int print_field(u8 *reg, int index)
 			str);
 		val = get_field_val(EXT_CSD_BOOT_BUS_CONDITIONS, 2, 0x1);
 		if (val)
-			str = "Reset bus width to x1, SDR and backward compatible timings after boot operation";
-		else
 			str = "Retain BOOT_BUS_WIDTH and BOOT_MODE values after boot operation";
-		printf("\t[2] RESET_BOOT_BUS_CONDITIONS: %s", str);
+		else
+			str = "Reset bus width to x1, SDR and backward compatible timings after boot operation";
+		printf("\t[2] RESET_BOOT_BUS_CONDITIONS: %s\n", str);
 		val = get_field_val(EXT_CSD_BOOT_BUS_CONDITIONS, 3, 0x3);
 		switch (val) {
 		case 0x0:
@@ -877,7 +877,7 @@ static int print_field(u8 *reg, int index)
 			str = "Use DDR in boot operation";
 			break;
 		}
-		printf("\t[3] BOOT_MODE: %s\n", str);
+		printf("\t[4-3] BOOT_MODE: %s\n", str);
 		return 1;
 
 	case EXT_CSD_BOOT_CONFIG_PROT:
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
