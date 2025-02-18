Delivery-date: Tue, 18 Feb 2025 10:39:34 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tkK4l-003qyw-1W
	for lore@lore.pengutronix.de;
	Tue, 18 Feb 2025 10:39:34 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tkK4h-00044e-7c
	for lore@pengutronix.de; Tue, 18 Feb 2025 10:39:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7Wp67guw2Wa4Ve2c77LcbLVH0XNUJEDU9oZXgDa4CDg=; b=WEL4isbYWm4qGgdOg02vqLwu5c
	K5sZ2kYcA3hWXDnNHa33dqpnJh+WWk6Smrhf+lfyu4U6O71QwB89f4FG96XaNpGSkVCoOEZJr/4JW
	qOtDu3zikhvEFhAu1zXqHsDeE7D19JDtW3SkxUjFi5efCqIBGh/GiWRudcI37vTqNRWBm/HgqXfwT
	Ng0UsFG+mQdT/3p7E9dBRnBK29XSRJ75xl3znp6z/MkHAZlU39DoTrkZioGOqNHdpIJIjB29JaxmD
	J63X0hEWuPwB3yRfNJb0pfGCBrlzo0StkR7CqR2QSdgGXPxcTiLDM3iRns7SGE9B4/i3o4JkDHwJw
	sfJq1/Ew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tkK46-00000007YWN-0Afo;
	Tue, 18 Feb 2025 09:38:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tkJnY-00000007UJa-2bYS
	for barebox@lists.infradead.org;
	Tue, 18 Feb 2025 09:21:51 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.trumtrar.info)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1tkJnW-0000aY-5k; Tue, 18 Feb 2025 10:21:46 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Tue, 18 Feb 2025 10:21:31 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250218-v2024-10-0-topic-socfpga-agilex5-v2-6-30b6f507810b@pengutronix.de>
References: <20250218-v2024-10-0-topic-socfpga-agilex5-v2-0-30b6f507810b@pengutronix.de>
In-Reply-To: <20250218-v2024-10-0-topic-socfpga-agilex5-v2-0-30b6f507810b@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250218_012148_717861_885E61FA 
X-CRM114-Status: GOOD (  16.78  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 06/10] clk: support init->parent_data
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
index bd368782804c9a2cce1ced7826501363c0c2ab2d..be4060e6d5a0d7ecbed729b4d96570d7980f5857 100644
--- a/drivers/clk/clk.c
+++ b/drivers/clk/clk.c
@@ -476,11 +476,28 @@ int bclk_register(struct clk *clk)
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
@@ -496,14 +513,29 @@ struct clk *clk_register(struct device *dev, struct clk_hw *hw)
 
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
@@ -515,7 +547,7 @@ struct clk *clk_register(struct device *dev, struct clk_hw *hw)
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



