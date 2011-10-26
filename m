Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-gy0-f177.google.com ([209.85.160.177])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1RIsBM-0006ob-OM
	for barebox@lists.infradead.org; Wed, 26 Oct 2011 01:21:29 +0000
Received: by gyd10 with SMTP id 10so1195143gyd.36
	for <barebox@lists.infradead.org>; Tue, 25 Oct 2011 18:21:24 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
Date: Tue, 25 Oct 2011 23:21:15 -0200
Message-Id: <1319592075-2212-1-git-send-email-festevam@gmail.com>
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
Subject: [PATCH] ARM: mx53-loco: Remove duplicate call to loco_fec_reset()
To: barebox@lists.infradead.org
Cc: Fabio Estevam <fabio.estevam@freescale.com>, kernel@pengutronix.de

Remove duplicate call to loco_fec_reset().

Signed-off-by: Fabio Estevam <fabio.estevam@freescale.com>
---
 arch/arm/boards/freescale-mx53-loco/board.c |    2 --
 1 files changed, 0 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/freescale-mx53-loco/board.c b/arch/arm/boards/freescale-mx53-loco/board.c
index 24df9ae..36f1b57 100644
--- a/arch/arm/boards/freescale-mx53-loco/board.c
+++ b/arch/arm/boards/freescale-mx53-loco/board.c
@@ -102,8 +102,6 @@ static int loco_devices_init(void)
 	armlinux_set_bootparams((void *)0x70000100);
 	armlinux_set_architecture(MACH_TYPE_MX53_LOCO);
 
-	loco_fec_reset();
-
 	return 0;
 }
 
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
