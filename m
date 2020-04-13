Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNtt9-0005Qt-NT
 for barebox@lists.infradead.org; Mon, 13 Apr 2020 07:52:16 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1jNtt8-0003Qo-Jo
 for barebox@lists.infradead.org; Mon, 13 Apr 2020 09:52:14 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1jNtt8-0005DN-BG
 for barebox@lists.infradead.org; Mon, 13 Apr 2020 09:52:14 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 13 Apr 2020 09:51:45 +0200
Message-Id: <20200413075204.17544-3-a.fatoum@pengutronix.de>
In-Reply-To: <20200413075204.17544-1-a.fatoum@pengutronix.de>
References: <20200413075204.17544-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 02/21] mfd: syscon: refactor of_syscon_register compatible
 check
To: barebox@lists.infradead.org

Linux also provides a device_node_to_regmap function that doesn't do a
compatible = "syscon" check. In preparation for having it in barebox,
factor out the compatible check into the callers.

While at it make the clock checking explicit, so the diff clearly
indicates, we touched all instances and to prepare for follow-up
commits.

No functional change.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mfd/syscon.c | 19 ++++++++++++-------
 1 file changed, 12 insertions(+), 7 deletions(-)

diff --git a/drivers/mfd/syscon.c b/drivers/mfd/syscon.c
index ba0489bf95a8..5f391dc08b10 100644
--- a/drivers/mfd/syscon.c
+++ b/drivers/mfd/syscon.c
@@ -46,9 +46,6 @@ static struct syscon *of_syscon_register(struct device_node *np, bool check_clk)
 	int ret;
 	struct resource res;
 
-	if (!of_device_is_compatible(np, "syscon"))
-		return ERR_PTR(-EINVAL);
-
 	syscon = xzalloc(sizeof(*syscon));
 
 	if (of_address_to_resource(np, 0, &res)) {
@@ -106,7 +103,7 @@ err_map:
 	return ERR_PTR(ret);
 }
 
-static struct syscon *node_to_syscon(struct device_node *np)
+static struct syscon *node_to_syscon(struct device_node *np, bool check_clk)
 {
 	struct syscon *entry, *syscon = NULL;
 
@@ -117,7 +114,7 @@ static struct syscon *node_to_syscon(struct device_node *np)
 		}
 
 	if (!syscon)
-		syscon = of_syscon_register(np, true);
+		syscon = of_syscon_register(np, check_clk);
 
 	if (IS_ERR(syscon))
 		return ERR_CAST(syscon);
@@ -127,9 +124,13 @@ static struct syscon *node_to_syscon(struct device_node *np)
 
 static void __iomem *syscon_node_to_base(struct device_node *np)
 {
-	struct syscon *syscon = node_to_syscon(np);
+	struct syscon *syscon;
 	struct clk *clk;
 
+	if (!of_device_is_compatible(np, "syscon"))
+		return ERR_PTR(-EINVAL);
+
+	syscon = node_to_syscon(np, true);
 	if (IS_ERR(syscon))
 		return ERR_CAST(syscon);
 
@@ -172,8 +173,12 @@ void __iomem *syscon_base_lookup_by_phandle(struct device_node *np,
 
 struct regmap *syscon_node_to_regmap(struct device_node *np)
 {
-	struct syscon *syscon = node_to_syscon(np);
+	struct syscon *syscon;
+
+	if (!of_device_is_compatible(np, "syscon"))
+		return ERR_PTR(-EINVAL);
 
+	syscon = node_to_syscon(np, true);
 	if (IS_ERR(syscon))
 		return ERR_CAST(syscon);
 
-- 
2.26.0.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
