Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aQYyD-00081R-Eq
 for barebox@lists.infradead.org; Tue, 02 Feb 2016 11:18:08 +0000
From: Philipp Zabel <p.zabel@pengutronix.de>
Date: Tue,  2 Feb 2016 12:17:30 +0100
Message-Id: <1454411855-4839-1-git-send-email-p.zabel@pengutronix.de>
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
Subject: [PATCH 1/6] net: phy: micrel: Staticise ksz8873mll_read_status()
To: barebox@lists.infradead.org

Based on kernel commit 32d73b144eac ("net: phy: micrel: Staticise
ksz8873mll_read_status()") by Jingoo Han <jg1.han@samsung.com>:

    ksz8873mll_read_status() is used only in this file.
    Fix the following sparse warning:

    drivers/net/phy/micrel.c:147:5: warning: symbol 'ksz8873mll_read_status' was not declared. Should it be static?

Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
---
 drivers/net/phy/micrel.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/phy/micrel.c b/drivers/net/phy/micrel.c
index 095563a..2f31906 100644
--- a/drivers/net/phy/micrel.c
+++ b/drivers/net/phy/micrel.c
@@ -233,7 +233,7 @@ static int ksz9031_config_init(struct phy_device *phydev)
 #define KSZ8873MLL_GLOBAL_CONTROL_4	0x06
 #define KSZ8873MLL_GLOBAL_CONTROL_4_DUPLEX	(1 << 6)
 #define KSZ8873MLL_GLOBAL_CONTROL_4_SPEED	(1 << 4)
-int ksz8873mll_read_status(struct phy_device *phydev)
+static int ksz8873mll_read_status(struct phy_device *phydev)
 {
 	int regval;
 
-- 
2.7.0.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
