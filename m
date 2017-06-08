Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vs81.iboxed.net ([185.82.85.146])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dJ2P1-0000kb-3m
 for barebox@lists.infradead.org; Thu, 08 Jun 2017 18:43:29 +0000
From: Alexander Kurz <akurz@blala.de>
Date: Thu,  8 Jun 2017 20:41:36 +0200
Message-Id: <1496947297-23502-3-git-send-email-akurz@blala.de>
In-Reply-To: <1496947297-23502-1-git-send-email-akurz@blala.de>
References: <1496947297-23502-1-git-send-email-akurz@blala.de>
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
Subject: [PATCH 3/4] ARM: i.MX6 Wandboard: enable Wandboard Quad
To: barebox@lists.infradead.org
Cc: Alexander Kurz <akurz@blala.de>

Extend the DT compatibility check to actually use the Wandboard Quad.

Signed-off-by: Alexander Kurz <akurz@blala.de>
---
 arch/arm/boards/technexion-wandboard/board.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boards/technexion-wandboard/board.c b/arch/arm/boards/technexion-wandboard/board.c
index e7b51cc..2e1f625 100644
--- a/arch/arm/boards/technexion-wandboard/board.c
+++ b/arch/arm/boards/technexion-wandboard/board.c
@@ -63,7 +63,8 @@ static int ar8031_phy_fixup(struct phy_device *dev)
 
 static int wandboard_device_init(void)
 {
-	if (!of_machine_is_compatible("wand,imx6dl-wandboard"))
+	if (!of_machine_is_compatible("wand,imx6dl-wandboard") &&
+	    !of_machine_is_compatible("wand,imx6q-wandboard"))
 		return 0;
 
 	phy_register_fixup_for_uid(PHY_ID_AR8031, AR_PHY_ID_MASK, ar8031_phy_fixup);
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
