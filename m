Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phycard.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WjpHk-0003EH-G0
 for barebox@lists.infradead.org; Mon, 12 May 2014 12:24:49 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 67C88BF0F4
 for <barebox@lists.infradead.org>; Mon, 12 May 2014 14:24:23 +0200 (CEST)
From: Wadim Egorov <w.egorov@phytec.de>
Date: Mon, 12 May 2014 14:24:22 +0200
Message-Id: <1399897462-21433-4-git-send-email-w.egorov@phytec.de>
In-Reply-To: <1399897462-21433-1-git-send-email-w.egorov@phytec.de>
References: <1399897462-21433-1-git-send-email-w.egorov@phytec.de>
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
Subject: [PATCH 4/4] phycore-am335x: Added bbu nand xloadslots handler
To: barebox@lists.infradead.org

Added bbu nand xloadslots handler to phycore-am335x.

Signed-off-by: Wadim Egorov <w.egorov@phytec.de>
---
 arch/arm/boards/phytec-phycore-am335x/board.c |    5 +++++
 1 files changed, 5 insertions(+), 0 deletions(-)

diff --git a/arch/arm/boards/phytec-phycore-am335x/board.c b/arch/arm/boards/phytec-phycore-am335x/board.c
index 59de42b..d790d97 100644
--- a/arch/arm/boards/phytec-phycore-am335x/board.c
+++ b/arch/arm/boards/phytec-phycore-am335x/board.c
@@ -69,6 +69,11 @@ static int pcm051_devices_init(void)
 	armlinux_set_architecture(MACH_TYPE_PCM051);
 
 	am33xx_bbu_spi_nor_mlo_register_handler("MLO.spi", "/dev/m25p0.xload");
+	am33xx_bbu_nand_xloadslots_register_handler("xloadslots",
+		"/dev/nand0.xload.bb"
+		",/dev/nand0.xload_backup1.bb"
+		",/dev/nand0.xload_backup2.bb"
+		",/dev/nand0.xload_backup3.bb");
 
 	return 0;
 }
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
