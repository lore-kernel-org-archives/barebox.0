Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.x-arc.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RoLxd-0003hc-Vw
 for barebox@lists.infradead.org; Fri, 20 Jan 2012 21:25:27 +0000
From: Juergen Kilb <J.Kilb@phytec.de>
Date: Fri, 20 Jan 2012 22:25:00 +0100
Message-Id: <1327094703-6958-1-git-send-email-J.Kilb@phytec.de>
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
Subject: [PATCH] ARM pca-a-l1: call omap3_core_init from board code
To: barebox@lists.infradead.org
Cc: Juergen Kilb <J.Kilb@phytec.de>

since commit ae2ac15105cbf198ebd2b7ac0428641423b83c08
a_init was renamed to omap3_core_init and called from board code.

Signed-off-by: Juergen Kilb <J.Kilb@phytec.de>
---
 arch/arm/boards/phycard-a-l1/pca-a-l1.c |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/arch/arm/boards/phycard-a-l1/pca-a-l1.c b/arch/arm/boards/phycard-a-l1/pca-a-l1.c
index 0518894..8015087 100644
--- a/arch/arm/boards/phycard-a-l1/pca-a-l1.c
+++ b/arch/arm/boards/phycard-a-l1/pca-a-l1.c
@@ -226,6 +226,8 @@ static int pcaal1_board_init(void)
 {
 	int in_sdram = running_in_sdram();
 
+	omap3_core_init();
+
 	pcaal1_mux_config();
 
 	/* Dont reconfigure SDRAM while running in SDRAM! */
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
