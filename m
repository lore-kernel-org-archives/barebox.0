Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phycard.co.uk ([217.6.246.34] helo=root.phytec.de)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QUyFx-000387-DN
	for barebox@lists.infradead.org; Fri, 10 Jun 2011 09:43:58 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
	by root.phytec.de (Postfix) with ESMTP id D9086BF0CE
	for <barebox@lists.infradead.org>;
	Fri, 10 Jun 2011 11:46:42 +0200 (CEST)
From: Jan Weitzel <j.weitzel@phytec.de>
Date: Fri, 10 Jun 2011 11:43:49 +0200
Message-Id: <1307699029-10771-1-git-send-email-j.weitzel@phytec.de>
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
Subject: [PATCH] pcm049: use gpmc_generic_init
To: barebox@lists.infradead.org

If booting from NAND GPMC_IRQ_ENABLE is not cleared, causing crash if kernel
request the gpmc irq. gpmc_generic_init clears GPMC_IRQ_ENABLE

Signed-off-by: Jan Weitzel <j.weitzel@phytec.de>
---
 arch/arm/boards/pcm049/board.c |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/arch/arm/boards/pcm049/board.c b/arch/arm/boards/pcm049/board.c
index a33a877..2303a9c 100644
--- a/arch/arm/boards/pcm049/board.c
+++ b/arch/arm/boards/pcm049/board.c
@@ -145,6 +145,8 @@ static int pcm049_devices_init(void)
 	register_device(&sram_dev);
 	register_device(&hsmmc_dev);
 
+	gpmc_generic_init(0x10);
+
 	pcm049_network_init();
 
 	gpmc_generic_nand_devices_init(0, 8, OMAP_ECC_BCH8_CODE_HW);
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
