Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1c1Fus-0002US-5S
 for barebox@lists.infradead.org; Mon, 31 Oct 2016 16:58:36 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.80)
 (envelope-from <l.stach@pengutronix.de>) id 1c1FuW-0008O0-C5
 for barebox@lists.infradead.org; Mon, 31 Oct 2016 17:58:12 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Mon, 31 Oct 2016 17:58:12 +0100
Message-Id: <20161031165812.9958-1-l.stach@pengutronix.de>
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
Subject: [PATCH v2] net: e1000: fix i210 register remapping
To: barebox@lists.infradead.org

Don't mask out the remapping flag before checking the register offset,
otherwise none of the switch statements will ever match.

Fixes: ff6a64d42ffc (e1000: Consolidate register offset fixups)
Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
v2: don't break it the other way around
---
 drivers/net/e1000/regio.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/net/e1000/regio.c b/drivers/net/e1000/regio.c
index b2e9d7b6a7df..1610d5851f05 100644
--- a/drivers/net/e1000/regio.c
+++ b/drivers/net/e1000/regio.c
@@ -5,8 +5,6 @@
 static uint32_t e1000_true_offset(struct e1000_hw *hw, uint32_t reg)
 {
 	if (reg & E1000_MIGHT_BE_REMAPPED) {
-		reg &= ~E1000_MIGHT_BE_REMAPPED;
-
 		if (hw->mac_type == e1000_igb) {
 			switch (reg) {
 			case E1000_EEWR:
@@ -19,7 +17,8 @@ static uint32_t e1000_true_offset(struct e1000_hw *hw, uint32_t reg)
 				reg = E1000_I210_EEMNGCTL;
 				break;
 			}
-		};
+		}
+		reg &= ~E1000_MIGHT_BE_REMAPPED;
 	}
 
 	return reg;
-- 
2.10.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
