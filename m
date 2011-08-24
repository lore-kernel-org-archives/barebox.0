Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yx0-f177.google.com ([209.85.213.177])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1Qw13r-0007yg-Fq
	for barebox@lists.infradead.org; Wed, 24 Aug 2011 00:11:16 +0000
Received: by yxk8 with SMTP id 8so639640yxk.36
	for <barebox@lists.infradead.org>; Tue, 23 Aug 2011 17:11:12 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
Date: Tue, 23 Aug 2011 21:11:04 -0300
Message-Id: <1314144664-2752-1-git-send-email-festevam@gmail.com>
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
Subject: [PATCH] ARM: mx53loco: Fix DD3 initialization
To: barebox@lists.infradead.org
Cc: Fabio Estevam <fabio.estevam@freescale.com>

Updated mx53 ddr3 script in order to align with the latest Freescale version from July 8, 2011:

-change ESDREF[REF_SEL]=01 (for 32KHz), from incorrect setting of 00 (64KHz)

-change DDR3 MR0 write to "setmem /32 0x63fd901c = 0x052080b0" from "0x092080b0". 

This changes write recovery from 8 clocks to 6 clocks(in line with ESDCFG1[tWR])

Signed-off-by: Fabio Estevam <fabio.estevam@freescale.com>
---
 arch/arm/boards/freescale-mx53-loco/flash_header.c |    6 +++---
 1 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boards/freescale-mx53-loco/flash_header.c b/arch/arm/boards/freescale-mx53-loco/flash_header.c
index d6ff898..490e223 100644
--- a/arch/arm/boards/freescale-mx53-loco/flash_header.c
+++ b/arch/arm/boards/freescale-mx53-loco/flash_header.c
@@ -63,14 +63,14 @@ struct imx_dcd_v2_entry __dcd_entry_section dcd_entry[] = {
 	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x00008032), },
 	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x00008033), },
 	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x00028031), },
-	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x092080b0), },
+	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x052080b0), },
 	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x04008040), },
 	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x0000803a), },
 	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x0000803b), },
 	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x00028039), },
-	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x09208138), },
+	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x05208138), },
 	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x04008048), },
-	{ .addr = cpu_to_be32(0x63fd9020), .val = cpu_to_be32(0x00001800), },
+	{ .addr = cpu_to_be32(0x63fd9020), .val = cpu_to_be32(0x00005800), },
 	{ .addr = cpu_to_be32(0x63fd9040), .val = cpu_to_be32(0x04b80003), },
 	{ .addr = cpu_to_be32(0x63fd9058), .val = cpu_to_be32(0x00022227), },
 	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x00000000), },
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
