Delivery-date: Mon, 27 Oct 2025 07:54:01 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDH7B-00CFeV-1x
	for lore@lore.pengutronix.de;
	Mon, 27 Oct 2025 07:54:01 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDH7A-0001x9-U1
	for lore@pengutronix.de; Mon, 27 Oct 2025 07:54:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=pJ7PSq/H7tqdBWadW5qyFVBVRUSzJItJ5ylo2Mwtq+8=; b=uqmajtbna4Acb0u7vObyX2w3T1
	YveGTuVjBkqKy8dm2Rfqw+SdlPQtLrUrsxE6w+fOO1L60Y69UMbbyvSBAhuu/uFEDR+Aa0oji4shp
	WJTSEQNfzAO/k+Cgs4+xedTagjacqlXHHOwPI9aPuIur2ASg+J6emPAb77S/0wvDLyW7NcU7Wg/1c
	UpdIjvf2ht0uydhwu4WtN+d8tUIgYO2hBhxo+FptEzWM0j7mWJvl/KCKtqzObFs9hKCHSvIw6ligv
	pvjXvw8fF3i3WklppMrdKzgzZl0BLfvL/XPm+nVi7Bj+BolR7GKmPsV+aZaONhj9y/Cz0FxCqW4G/
	t0HLAf5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDH6b-0000000DE3Q-19MV;
	Mon, 27 Oct 2025 06:53:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDH6Y-0000000DE1n-3XYD
	for barebox@lists.infradead.org;
	Mon, 27 Oct 2025 06:53:24 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vDH6W-0001gg-Vz; Mon, 27 Oct 2025 07:53:21 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 27 Oct 2025 07:53:04 +0100
Message-ID: <20251027065315.2419160-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251026_235322_883051_A1B5F7E0 
X-CRM114-Status: GOOD (  16.68  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 1/5] regulator: implement dev_of_regulator_get
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Regulators for a device need not be listed in the main node associated
with a device. Export dev_of_regulator_get for these use cases to
simplify porting Linux drivers.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/regulator/core.c | 20 ++++++++++++--------
 include/regulator.h      | 27 ++++++++++++++++++++++-----
 2 files changed, 34 insertions(+), 13 deletions(-)

diff --git a/drivers/regulator/core.c b/drivers/regulator/core.c
index f18622cba80c..cd0795589403 100644
--- a/drivers/regulator/core.c
+++ b/drivers/regulator/core.c
@@ -329,7 +329,8 @@ int of_regulator_register(struct regulator_dev *rdev, struct device_node *node)
 }
 
 static struct regulator_dev *of_regulator_get(struct device *dev,
-						   const char *supply)
+					      struct device_node *np,
+					      const char *supply)
 {
 	char *propname;
 	struct regulator_dev *rdev;
@@ -339,7 +340,7 @@ static struct regulator_dev *of_regulator_get(struct device *dev,
 	/*
 	 * If the device does have a device node return the dummy regulator.
 	 */
-	if (!dev->of_node)
+	if (!np)
 		return NULL;
 
 	propname = basprintf("%s-supply", supply);
@@ -348,7 +349,7 @@ static struct regulator_dev *of_regulator_get(struct device *dev,
 	 * If the device node does not contain a supply property, this device doesn't
 	 * need a regulator. Return the dummy regulator in this case.
 	 */
-	if (!of_get_property(dev->of_node, propname, NULL)) {
+	if (!of_get_property(np, propname, NULL)) {
 		dev_dbg(dev, "No %s-supply node found, using dummy regulator\n",
 				supply);
 		rdev = NULL;
@@ -359,7 +360,7 @@ static struct regulator_dev *of_regulator_get(struct device *dev,
 	 * The device node specifies a supply, so it's mandatory. Return an error when
 	 * something goes wrong below.
 	 */
-	node = of_parse_phandle(dev->of_node, propname, 0);
+	node = of_parse_phandle(np, propname, 0);
 	if (!node) {
 		dev_dbg(dev, "No %s node found\n", propname);
 		rdev = ERR_PTR(-EINVAL);
@@ -408,7 +409,8 @@ static struct regulator_dev *of_regulator_get(struct device *dev,
 }
 #else
 static struct regulator_dev *of_regulator_get(struct device *dev,
-						   const char *supply)
+					      struct device_node *np,
+					      const char *supply)
 {
 	return NULL;
 }
@@ -505,14 +507,16 @@ static struct regulator_dev *dev_regulator_get(struct device *dev,
  *
  * Return: a regulator object or an error pointer
  */
-struct regulator *regulator_get(struct device *dev, const char *supply)
+struct regulator *dev_of_regulator_get(struct device *dev,
+				       struct device_node *np,
+				       const char *supply)
 {
 	struct regulator_dev *rdev = NULL;
 	struct regulator *r;
 	int ret;
 
-	if (dev->of_node && supply) {
-		rdev = of_regulator_get(dev, supply);
+	if (np && supply) {
+		rdev = of_regulator_get(dev, np, supply);
 		if (IS_ERR(rdev))
 			return ERR_CAST(rdev);
 	}
diff --git a/include/regulator.h b/include/regulator.h
index cb542b05c696..401cb8ba464e 100644
--- a/include/regulator.h
+++ b/include/regulator.h
@@ -4,8 +4,7 @@
 
 #include <linux/bitops.h>
 #include <linux/err.h>
-
-struct device;
+#include <device.h>
 
 /* struct regulator is an opaque object for consumers */
 struct regulator;
@@ -212,7 +211,9 @@ const char *rdev_get_name(struct regulator_dev *rdev);
 
 #ifdef CONFIG_REGULATOR
 
-struct regulator *regulator_get(struct device *, const char *);
+struct regulator *dev_of_regulator_get(struct device *dev,
+				       struct device_node *np,
+				       const char *supply);
 void regulator_put(struct regulator *r);
 struct regulator *regulator_get_name(const char *name);
 int regulator_enable(struct regulator *);
@@ -265,8 +266,9 @@ int regulator_list_voltage_table(struct regulator_dev *rdev,
 				  unsigned int selector);
 #else
 
-static inline struct regulator *regulator_get(struct device *dev,
-					      const char *id)
+struct regulator *dev_of_regulator_get(struct device *dev,
+				       struct device_node *np,
+				       const char *supply)
 {
 	return NULL;
 }
@@ -327,6 +329,21 @@ static inline int regulator_get_voltage(struct regulator *regulator)
 
 #endif
 
+/*
+ * regulator_get - get the supply for a device.
+ * @dev:	the device a supply is requested for
+ * @supply:     the supply name
+ *
+ * This returns a supply for a device. Check the result with IS_ERR().
+ * NULL is a valid regulator, the dummy regulator.
+ *
+ * Return: a regulator object or an error pointer
+ */
+static inline struct regulator *regulator_get(struct device *dev, const char *id)
+{
+	return dev_of_regulator_get(dev, dev_of_node(dev), id);
+}
+
 static inline struct regulator *regulator_get_optional(struct device *dev,
 						       const char *id)
 {
-- 
2.47.3



