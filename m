Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h3Krh-0006La-Ua
 for barebox@lists.infradead.org; Mon, 11 Mar 2019 13:21:15 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 11 Mar 2019 14:21:09 +0100
Message-Id: <20190311132111.27237-1-s.hauer@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/3] net: phy: Add PHY_ID_MATCH_* macros
To: Barebox List <barebox@lists.infradead.org>

Linux has some macros to describe matching phy ids to vendors and
models. Add them to barebox for upcoming realtek phy driver.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/linux/phy.h | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/include/linux/phy.h b/include/linux/phy.h
index 82c8da03ce..ce72861bfc 100644
--- a/include/linux/phy.h
+++ b/include/linux/phy.h
@@ -274,6 +274,10 @@ struct phy_driver {
 #define PHY_ANY_ID "MATCH ANY PHY"
 #define PHY_ANY_UID 0xffffffff
 
+#define PHY_ID_MATCH_EXACT(id) .phy_id = (id), .phy_id_mask = GENMASK(31, 0)
+#define PHY_ID_MATCH_MODEL(id) .phy_id = (id), .phy_id_mask = GENMASK(31, 4)
+#define PHY_ID_MATCH_VENDOR(id) .phy_id = (id), .phy_id_mask = GENMASK(31, 10)
+
 /* A Structure for boards to register fixups with the PHY Lib */
 struct phy_fixup {
 	struct list_head list;
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
