Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ukvzb-0003uC-UN
 for barebox@lists.infradead.org; Fri, 07 Jun 2013 12:42:13 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Fri,  7 Jun 2013 14:41:30 +0200
Message-Id: <1370608890-13776-4-git-send-email-s.trumtrar@pengutronix.de>
In-Reply-To: <1370608890-13776-1-git-send-email-s.trumtrar@pengutronix.de>
References: <1370608890-13776-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 3/3] ARM: i.MX53: tqma53: update flash_header
To: barebox@lists.infradead.org
Cc: Markus Niebel <Markus.Niebel@tqs.de>, Steffen Trumtrar <s.trumtrar@pengutronix.de>

From: Markus Niebel <Markus.Niebel@tqs.de>

Integrate errata fixes for SDCTL settings.

Signed-off-by: Markus Niebel <Markus.Niebel@tqs.de>
Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/boards/tqma53/flash_header.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boards/tqma53/flash_header.c b/arch/arm/boards/tqma53/flash_header.c
index a6bcdad..ea649af 100644
--- a/arch/arm/boards/tqma53/flash_header.c
+++ b/arch/arm/boards/tqma53/flash_header.c
@@ -56,7 +56,8 @@ struct imx_dcd_v2_entry __dcd_entry_section dcd_entry[] = {
 	{ .addr = cpu_to_be32(0x63fd9080), .val = cpu_to_be32(0x013b013c), },
 	{ .addr = cpu_to_be32(0x63fd90f8), .val = cpu_to_be32(0x00000800), },
 #ifdef CONFIG_MACH_TQMA53_1GB_RAM
-	{ .addr = cpu_to_be32(0x63fd9018), .val = cpu_to_be32(0x00001740), },
+	/* sync with u-boot: add WALAT for 4 chip variant */
+	{ .addr = cpu_to_be32(0x63fd9018), .val = cpu_to_be32(0x00011740), },
 	{ .addr = cpu_to_be32(0x63fd9000), .val = cpu_to_be32(0xc3190000), },
 #else
 	{ .addr = cpu_to_be32(0x63fd9018), .val = cpu_to_be32(0x00101740), },
@@ -66,7 +67,8 @@ struct imx_dcd_v2_entry __dcd_entry_section dcd_entry[] = {
 	{ .addr = cpu_to_be32(0x63fd9010), .val = cpu_to_be32(0xb68e8a63), },
 	{ .addr = cpu_to_be32(0x63fd9014), .val = cpu_to_be32(0x01ff00db), },
 	{ .addr = cpu_to_be32(0x63fd902c), .val = cpu_to_be32(0x000026d2), },
-	{ .addr = cpu_to_be32(0x63fd9030), .val = cpu_to_be32(0x009f0e21), },
+	/* Engcm12377 / errata sheet 03/2013 */
+	{ .addr = cpu_to_be32(0x63fd9030), .val = cpu_to_be32(0x009f0e23), },
 	{ .addr = cpu_to_be32(0x63fd9008), .val = cpu_to_be32(0x12273030), },
 	{ .addr = cpu_to_be32(0x63fd9004), .val = cpu_to_be32(0x0002002d), },
 	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x00008032), },
@@ -80,7 +82,8 @@ struct imx_dcd_v2_entry __dcd_entry_section dcd_entry[] = {
 	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x05208138), },
 	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x04008048), },
 	{ .addr = cpu_to_be32(0x63fd9020), .val = cpu_to_be32(0x00005800), },
-	{ .addr = cpu_to_be32(0x63fd9040), .val = cpu_to_be32(0x04b80003), },
+	/* prevent reserved value, use default TZQ_CS */
+	{ .addr = cpu_to_be32(0x63fd9040), .val = cpu_to_be32(0x05380003), },
 	{ .addr = cpu_to_be32(0x63fd9058), .val = cpu_to_be32(0x00022227), },
 	{ .addr = cpu_to_be32(0x63fd901C), .val = cpu_to_be32(0x00000000), },
 };
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
