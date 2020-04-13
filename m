Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNttA-0005R8-D4
 for barebox@lists.infradead.org; Mon, 13 Apr 2020 07:52:18 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1jNtt9-0003Qt-8x
 for barebox@lists.infradead.org; Mon, 13 Apr 2020 09:52:15 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1jNtt9-0005DV-0G
 for barebox@lists.infradead.org; Mon, 13 Apr 2020 09:52:15 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 13 Apr 2020 09:51:46 +0200
Message-Id: <20200413075204.17544-4-a.fatoum@pengutronix.de>
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
Subject: [PATCH 03/21] mfd: syscon: implement device_node_to_regmap
To: barebox@lists.infradead.org

Extend our syscon API with a device_node_to_regmap function that has the
same semantics as upstream:

 __________________________________________________________________________
| Linux commit 39233b7c611248c0d05209b4854bc63e26485655
| CommitDate: Thu Aug 8 15:30:07 2019 -0700
|
| mfd/syscon: Add device_node_to_regmap()
|
| device_node_to_regmap() is exactly like syscon_node_to_regmap(), but it
| does not check that the node is compatible with "syscon", and won't
| attach the first clock it finds to the regmap.
|
| The rationale behind this, is that one device node with a standard
| compatible string "foo,bar" can be covered by multiple drivers sharing a
| regmap, or by a single driver doing all the job without a regmap, but
| these are implementation details which shouldn't reflect on the
| devicetree.
|
| Signed-off-by: Paul Cercueil <paul@crapouillou.net>
| Acked-by: Arnd Bergmann <arnd@arndb.de>
| Signed-off-by: Paul Burton <paul.burton@mips.com>
|__________________________________________________________________________

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mfd/syscon.c | 21 ++++++++++++++++-----
 include/mfd/syscon.h |  5 +++++
 2 files changed, 21 insertions(+), 5 deletions(-)

diff --git a/drivers/mfd/syscon.c b/drivers/mfd/syscon.c
index 5f391dc08b10..2d7a31095b31 100644
--- a/drivers/mfd/syscon.c
+++ b/drivers/mfd/syscon.c
@@ -171,20 +171,31 @@ void __iomem *syscon_base_lookup_by_phandle(struct device_node *np,
 	return syscon_node_to_base(syscon_np);
 }
 
-struct regmap *syscon_node_to_regmap(struct device_node *np)
+static struct regmap *__device_node_to_regmap(struct device_node *np,
+					      bool check_clk)
 {
 	struct syscon *syscon;
 
-	if (!of_device_is_compatible(np, "syscon"))
-		return ERR_PTR(-EINVAL);
-
-	syscon = node_to_syscon(np, true);
+	syscon = node_to_syscon(np, check_clk);
 	if (IS_ERR(syscon))
 		return ERR_CAST(syscon);
 
 	return syscon->regmap;
 }
 
+struct regmap *device_node_to_regmap(struct device_node *np)
+{
+	return __device_node_to_regmap(np, false);
+}
+
+struct regmap *syscon_node_to_regmap(struct device_node *np)
+{
+	if (!of_device_is_compatible(np, "syscon"))
+		return ERR_PTR(-EINVAL);
+
+	return __device_node_to_regmap(np, true);
+}
+
 struct regmap *syscon_regmap_lookup_by_compatible(const char *s)
 {
 	struct device_node *syscon_np;
diff --git a/include/mfd/syscon.h b/include/mfd/syscon.h
index ac33f2d34747..b47aa1e160e6 100644
--- a/include/mfd/syscon.h
+++ b/include/mfd/syscon.h
@@ -21,6 +21,7 @@ void __iomem *syscon_base_lookup_by_pdevname(const char *s);
 void __iomem *syscon_base_lookup_by_phandle
 	(struct device_node *np, const char *property);
 struct regmap *syscon_node_to_regmap(struct device_node *np);
+struct regmap *device_node_to_regmap(struct device_node *np);
 struct regmap *syscon_regmap_lookup_by_compatible(const char *s);
 extern struct regmap *syscon_regmap_lookup_by_phandle(
 					struct device_node *np,
@@ -41,6 +42,10 @@ static inline struct regmap *syscon_node_to_regmap(struct device_node *np)
 {
 	return ERR_PTR(-ENOSYS);
 }
+static inline struct regmap *device_node_to_regmap(struct device_node *np)
+{
+	return ERR_PTR(-ENOSYS);
+}
 static inline struct regmap *syscon_regmap_lookup_by_compatible(const char *s)
 {
 	return ERR_PTR(-ENOSYS);
-- 
2.26.0.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
