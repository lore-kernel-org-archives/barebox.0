Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo6-p00-ob.rzone.de ([2a01:238:20a:202:5300::1])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T6FTx-0007FB-Ty
 for barebox@lists.infradead.org; Tue, 28 Aug 2012 06:41:03 +0000
Received: from [192.168.1.10]
 (ALyon-754-1-1-147.w90-15.abo.wanadoo.fr [90.15.40.147])
 by smtp.strato.de (jored mo49) (RZmta 30.12 DYNA|AUTH)
 with ESMTPA id Y01647o7S5SqJ4 for <barebox@lists.infradead.org>;
 Tue, 28 Aug 2012 08:40:58 +0200 (CEST)
Message-ID: <503C67F9.7090703@calao-systems.com>
Date: Tue, 28 Aug 2012 08:40:57 +0200
From: gregory hermant <gregory.hermant@calao-systems.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] NAND Flash SMC timings update (nwe_pulse) for calao board
 based on AT91SAM9G20 SoC
To: barebox@lists.infradead.org

Signed-off-by: Gregory Hermant <gregory.hermant@calao-systems.com>
---
 arch/arm/boards/tny-a926x/init.c |    2 +-
 arch/arm/boards/usb-a926x/init.c |    2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/tny-a926x/init.c b/arch/arm/boards/tny-a926x/init.c
index d58132a..5538a44 100644
--- a/arch/arm/boards/tny-a926x/init.c
+++ b/arch/arm/boards/tny-a926x/init.c
@@ -89,7 +89,7 @@ static struct sam9_smc_config tny_a9g20_nand_smc_config = {
 	.ncs_read_pulse		= 4,
 	.nrd_pulse		= 4,
 	.ncs_write_pulse	= 4,
-	.nwe_pulse		= 2,
+	.nwe_pulse		= 4,
 
 	.read_cycle		= 7,
 	.write_cycle		= 7,
diff --git a/arch/arm/boards/usb-a926x/init.c b/arch/arm/boards/usb-a926x/init.c
index 7e63876..00a215d 100644
--- a/arch/arm/boards/usb-a926x/init.c
+++ b/arch/arm/boards/usb-a926x/init.c
@@ -90,7 +90,7 @@ static struct sam9_smc_config usb_a9g20_nand_smc_config = {
 	.ncs_read_pulse		= 4,
 	.nrd_pulse		= 4,
 	.ncs_write_pulse	= 4,
-	.nwe_pulse		= 2,
+	.nwe_pulse		= 4,
 
 	.read_cycle		= 7,
 	.write_cycle		= 7,
-- 
1.5.6.3



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
