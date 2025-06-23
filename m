Delivery-date: Mon, 23 Jun 2025 19:06:34 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uTkcs-00AKdf-2D
	for lore@lore.pengutronix.de;
	Mon, 23 Jun 2025 19:06:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uTkcq-00043w-4p
	for lore@pengutronix.de; Mon, 23 Jun 2025 19:06:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=djv1lsDgYav2BOIJJgcJCmnDP9IaWOo5oFhAoqMg0dE=; b=3jxbg0CXqnSpUY9wuyqTZcBp2G
	BxQes/sw/7YjMyTsdUE77tBPrf8reT8QCcqFHzsGHgtHQV63lcahgD7+6tieYnlvzYM2osD9Yunn6
	c+k/iLMILEsP9kiYKLd1OwCxJD0+zm1VthdX8Ux8xgPpXJ+QKhzvCHjg/vMzkr/AjmEZ8J8qioP+d
	wwI/znO/1S0uyVdSFomGhB9UnyiNL5394g/V2ygFgja5y94uHJsCtrD/yT5sPqXJ8F2877V+2VeX/
	FcW3F/f/B3mshm9Yl93zdWdEnTciKcjes5xguPg4E+KUYQciezb/HZUu7R70tVkxQryx5D8beBga2
	yzc2y5RA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTkc7-00000003Vhy-16lJ;
	Mon, 23 Jun 2025 17:05:47 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uThgR-00000002xMT-0y8C
	for barebox@bombadil.infradead.org;
	Mon, 23 Jun 2025 13:58:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=djv1lsDgYav2BOIJJgcJCmnDP9IaWOo5oFhAoqMg0dE=; b=M1WHVx/4JIK9dJ8a27j5S3T2/4
	TNu1aZ8PxBMSI/rJhkuAbplkYqzi/wDFzwViskQYN4oDViJVPfjX3dOtEsw4QqBi2QlPVvZvIFehH
	kM/pqYQZKqroNsfgLDlfrpbbY6dCk4K7/BDQgNnKf/qzRny+gCmChi8ydZla9i6prkbxlGwBSQTLd
	TvjgwlEIN1QFxfYQyHVZHuPMmFafcuX/sOt3q+iCaYp5zjw2OFOcQx36Jn/Fwnuk0DEHUNdmz08DB
	w9kn6RuCpRKuQ6L9UfwDhsamOvjyePzMIINOYdanzGY1ETGQPnoNdouS+E4ReZEPZDe6q56TZ2Irz
	w4CCT2QQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uThgO-00000005EPD-0NpB
	for barebox@lists.infradead.org;
	Mon, 23 Jun 2025 13:58:02 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.trumtrar.info)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1uThgM-0000r6-Fn; Mon, 23 Jun 2025 15:57:58 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Mon, 23 Jun 2025 15:57:51 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250623-v2024-10-0-topic-socfpga-agilex5-v3-6-e9de9e31b2c1@pengutronix.de>
References: <20250623-v2024-10-0-topic-socfpga-agilex5-v3-0-e9de9e31b2c1@pengutronix.de>
In-Reply-To: <20250623-v2024-10-0-topic-socfpga-agilex5-v3-0-e9de9e31b2c1@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250623_145800_294673_A1A5FBC0 
X-CRM114-Status: GOOD (  16.63  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v3 06/10] clk: support init->parent_data
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Linux clk driver supports matching parents via init->parent_data instead
of init->parent_names.

Add support for this feature to barebox, too.
Linux however supports setting a "name" and "fw_name" for a parent
clock. "fw_name" is a local name for the provider registering the clock
and "name" is a globally unique parent name. For the time being, only
support the globally unique "name" field.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 drivers/clk/clk.c | 48 ++++++++++++++++++++++++++++++++++++++++--------
 1 file changed, 40 insertions(+), 8 deletions(-)

diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
index 9b21d0650b6c6b510d909b15324eecce8540aaef..6b57fbffb3726d3a4147a88edf7648306e1f8b56 100644
--- a/drivers/clk/clk.c
+++ b/drivers/clk/clk.c
@@ -483,11 +483,28 @@ int bclk_register(struct clk *clk)
 	return ret;
 }
 
+static int clk_cpy_name(const char **dst_p, const char *src, bool must_exist)
+{
+	const char *dst;
+
+	if (!src) {
+		if (must_exist)
+			return -EINVAL;
+		return 0;
+	}
+
+	*dst_p = dst = xstrdup(src);
+	if (!dst)
+		return -ENOMEM;
+
+	return 0;
+}
+
 struct clk *clk_register(struct device *dev, struct clk_hw *hw)
 {
 	struct clk *clk;
 	const struct clk_init_data *init = hw->init;
-	char **parent_names = NULL;
+	const char **parent_names = NULL;
 	int i, ret;
 
 	if (!hw->init)
@@ -503,14 +520,29 @@ struct clk *clk_register(struct device *dev, struct clk_hw *hw)
 
 	clk->parents = xzalloc(sizeof(struct clk *) * clk->num_parents);
 
-	if (init->parent_names) {
+	if (init->parent_names || init->parent_data) {
 		parent_names = xzalloc(init->num_parents * sizeof(char *));
 
-		for (i = 0; i < init->num_parents; i++)
-			parent_names[i] = xstrdup(init->parent_names[i]);
-
-		clk->parent_names = (const char *const*)parent_names;
-
+		for (i = 0; i < init->num_parents; i++) {
+			if (init->parent_names) {
+				ret = clk_cpy_name(&parent_names[i],
+						   init->parent_names[i], true);
+			} else if (init->parent_data) {
+				/* Linux copies fw_name and if successful also name.
+				 * As fw_name is not handled in barebox, just copy the
+				 * name field and fallback to hw->clk.name if it doesn't
+				 * exist.
+				 */
+				ret = clk_cpy_name(&parent_names[i],
+						   init->parent_data[i].name,
+						   true);
+				if (ret)
+					ret = clk_cpy_name(&parent_names[i],
+							   init->parent_data[i].hw->clk.name,
+							   false);
+			}
+		}
+		clk->parent_names = (const char *const *)parent_names;
 	} else {
 		for (i = 0; i < init->num_parents; i++)
 			clk->parents[i] = clk_hw_to_clk(init->parent_hws[i]);
@@ -522,7 +554,7 @@ struct clk *clk_register(struct device *dev, struct clk_hw *hw)
 	if (ret) {
 		if (parent_names) {
 			for (i = 0; i < init->num_parents; i++)
-				free(parent_names[i]);
+				free(&parent_names[i]);
 			free(parent_names);
 		}
 		free(clk->parents);

-- 
2.46.0



