Delivery-date: Mon, 07 Jul 2025 13:55:42 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uYkRi-00F10u-1b
	for lore@lore.pengutronix.de;
	Mon, 07 Jul 2025 13:55:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uYkRf-0002oB-EN
	for lore@pengutronix.de; Mon, 07 Jul 2025 13:55:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fuc8h418mU5GrSK4XN645MYaLU4vkgVQxYJhd6NFD4w=; b=v5hTaB7stEj9474nHAsaDj4u/i
	zA9Qgjb6AfhxRH9wFg7DLRIZsWYw3qqHanAacaLeEdu6gs8qI6hAoLDrg+3SSg2RDF55ZsfnMNMpb
	GgLiQ9UxiNBw8Fdj/ePMCxMwRFpQAhKJsf25Sc5cL5SDXj0utq4cyAFCu0i9luCclxEfVXfcwAiVR
	LbsWzN3rMdAzBvAWhZ/qC217IuzWR2UVPPZnsS5cReBt8sus72zOdbfYuCVcRaPZNKxc15MvCkJeQ
	nynFcsrcstbBqhTNuSYquR25SC3XGm4HVpLXg8NW+nPS4rq8GpAKgb0NhigWTWszV+TL9rnBspgZ7
	RKQnx11Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uYkQu-00000002LVI-1ucT;
	Mon, 07 Jul 2025 11:54:52 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uYjwD-00000002GjU-2DRI
	for barebox@bombadil.infradead.org;
	Mon, 07 Jul 2025 11:23:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=fuc8h418mU5GrSK4XN645MYaLU4vkgVQxYJhd6NFD4w=; b=Mm1AUNZMxRJdqF42EMnHaIqbl1
	csBAQ9WwaSHR4szYdaDurjEh3tMBiTLc7rWGxWaHTORc6KDnj1jextIJXvcRntMSyOHlA+7le6KR9
	ve9Z3NVpCgFYmoR0KWMreiWBU0v/Qh+36eU5y4YegucmHkwCmIafiM7xzUMqDjy8ywg5756/+m80T
	J0GMphMu7l4iDaK8mSV8PomO76xxmqOrJ9jP2ocewWSmatVeVqgk5b6JIw9PKN7g4Gou2FHcmWv5T
	24lUBKaurEC/4ghxEM4/PbhipgZCk6ekeuOH4bdwwXJlKYtXGcXoq+Ipp5HzfZWCEts1I9PW8O6D4
	xIQr8sEg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uYjw8-00000008Ta9-3fAL
	for barebox@lists.infradead.org;
	Mon, 07 Jul 2025 11:23:08 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.trumtrar.info)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1uYjvv-0001uY-MW; Mon, 07 Jul 2025 13:22:51 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Mon, 07 Jul 2025 13:22:47 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250707-v2024-10-0-topic-socfpga-agilex5-v4-5-af7ee9182480@pengutronix.de>
References: <20250707-v2024-10-0-topic-socfpga-agilex5-v4-0-af7ee9182480@pengutronix.de>
In-Reply-To: <20250707-v2024-10-0-topic-socfpga-agilex5-v4-0-af7ee9182480@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250707_122305_781166_40E7F7E6 
X-CRM114-Status: GOOD (  16.04  )
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
Subject: [PATCH v4 05/10] clk: support init->parent_data
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
 drivers/clk/clk.c | 49 ++++++++++++++++++++++++++++++++++++++++++-------
 1 file changed, 42 insertions(+), 7 deletions(-)

diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
index ec8c06b61bfb65dbef365d77b6a7445557ce72e5..d7f9ec23b06876da4159d6b82539b047f335f678 100644
--- a/drivers/clk/clk.c
+++ b/drivers/clk/clk.c
@@ -483,11 +483,26 @@ int bclk_register(struct clk *clk)
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
@@ -503,14 +518,34 @@ struct clk *clk_register(struct device *dev, struct clk_hw *hw)
 
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
+				if (ret)
+					return ERR_PTR(ret);
+			} else if (init->parent_data) {
+				/* Linux copies fw_name and if successful also name.
+				 * As fw_name is not handled in barebox, just copy the
+				 * name field and fallback to hw->clk.name if it doesn't
+				 * exist.
+				 */
+				ret = clk_cpy_name(&parent_names[i],
+						   init->parent_data[i].name,
+						   true);
+				if (ret) {
+					ret = clk_cpy_name(&parent_names[i],
+							   init->parent_data[i].hw->clk.name,
+							   false);
+					if (ret)
+						return ERR_PTR(ret);
+				}
+			}
+		}
+		clk->parent_names = (const char *const *)parent_names;
 	} else {
 		for (i = 0; i < init->num_parents; i++)
 			clk->parents[i] = clk_hw_to_clk(init->parent_hws[i]);

-- 
2.46.0



