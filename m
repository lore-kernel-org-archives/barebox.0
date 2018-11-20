Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.17.21])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gPCJC-0002Oi-Bd
 for barebox@lists.infradead.org; Tue, 20 Nov 2018 20:07:46 +0000
From: Oleksij Rempel <linux@rempel-privat.de>
Date: Tue, 20 Nov 2018 21:07:06 +0100
Message-Id: <20181120200714.3692-2-linux@rempel-privat.de>
In-Reply-To: <20181120200714.3692-1-linux@rempel-privat.de>
References: <20181120200714.3692-1-linux@rempel-privat.de>
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
Subject: [PATCH v1 1/9] net: e1000: fix "Uninitialized variable: phy_data"
 warning
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <linux@rempel-privat.de>

After carefully reading the code, this situation should
never happen. This patch is to reduce warning noise.

Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
---
 drivers/net/e1000/main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/e1000/main.c b/drivers/net/e1000/main.c
index bb6ab4eb0..caa7274a8 100644
--- a/drivers/net/e1000/main.c
+++ b/drivers/net/e1000/main.c
@@ -1130,7 +1130,7 @@ static int32_t e1000_set_d3_lplu_state_off(struct e1000_hw *hw)
 {
 	uint32_t phy_ctrl = 0;
 	int32_t ret_val;
-	uint16_t phy_data;
+	uint16_t phy_data = 0;
 	DEBUGFUNC();
 
 	/* During driver activity LPLU should not be used or it will attain link
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
