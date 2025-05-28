Delivery-date: Wed, 28 May 2025 14:04:30 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uKFWH-001B1y-3B
	for lore@lore.pengutronix.de;
	Wed, 28 May 2025 14:04:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uKFW9-0006jt-0C
	for lore@pengutronix.de; Wed, 28 May 2025 14:04:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Z68fKiQg8irZtB95ZyE8R2wrN6BI48fTJXkontQxO6A=; b=1xD36jA3CDpbEgf/WlCEv4MJaE
	g6aszn2hh9LNAOeVAZmZKL6dWYIl1al/czGLIY5K4m85h1ksaBOy9L+yr4LtnmLJ8CII2km3rqLGG
	fSLb17LE46Ork/0y1wQA8b0CfTBebqr+LU/QT0HDbfiiwYKO3cQaFyfkeeOpOQiqtjqWxdZeCUa0s
	1T6eU3/1C4Nc61IpUXtYLc5XAXl6jvtwyyeFZcioXF5uhjyRg3alCZcxKzWQoJpwrBCY9I1GsIDfW
	2dFn1TVumtwJfPQkp2zmJUYAgKNxSE/8Qn/exnbIYduUoak2dyvnwLoU25/JjFejBPPLOCCpmFORn
	8+spK3HA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKFVS-0000000D2iV-3RNL;
	Wed, 28 May 2025 12:03:38 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKFU2-0000000D2aw-0LIT
	for barebox@bombadil.infradead.org;
	Wed, 28 May 2025 12:02:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Cc:To:In-Reply-To:References:Message-Id
	:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender
	:Reply-To:Content-ID:Content-Description;
	bh=Z68fKiQg8irZtB95ZyE8R2wrN6BI48fTJXkontQxO6A=; b=g/zGQZhP2osCzCi4Ya3lHQ/lj6
	skPNek0ryi/vO7co9U6T5bG8CIirjnkUmJrBrtYUSEzson0j2geo3bauakDducyWmLk7eEqtii60t
	S58jAry1mjJUU96k/h3sN0MzHU0Ye7sEy5oTZH4U+brGrJN8I1iVxUg06ozUGxBUjoAZ29q4+Ghtj
	pCF7wVEmc7CYq/jpFR/GLRU7dW2lT4v6j5woHPiDaGfmfErJTfzOh4JoewYaQ9JX6spTR2aMpAeR4
	Vujcwg64jVkiTRHPhKfJwwURESyBXeAJolyA0UmrPXwdbK0goeZe546W/DVxL0JQeCJDJv/8pzJVQ
	SLia+4EA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKFTw-0000000Dapb-2t5o
	for barebox@lists.infradead.org;
	Wed, 28 May 2025 12:02:09 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uKFTp-0004Ro-Ic; Wed, 28 May 2025 14:01:57 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uKFTp-000a9H-1C;
	Wed, 28 May 2025 14:01:57 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uKFE2-00CB0R-1p;
	Wed, 28 May 2025 13:45:38 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 28 May 2025 13:45:34 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250528-arm-k3-am62l-v1-22-3f88e6d10d99@pengutronix.de>
References: <20250528-arm-k3-am62l-v1-0-3f88e6d10d99@pengutronix.de>
In-Reply-To: <20250528-arm-k3-am62l-v1-0-3f88e6d10d99@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1748432738; l=8866;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=tVt94UmUqtVg3yUy4e0/jnVGzecUpxwlSrpU5LbSwvg=;
 b=b4zmRuiwBQGrlOFHr8mzCXM/EHoOWaQ8EOZaYcETbXYtBSD+BM7YpwBy/jd61LqrdxtxDNfY1
 R2ZagwBI0NxCLCGXoAIwhdE49/ZbbECGr0J+p+9aXxrUZjma/V5QK4O
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250528_130204_782383_0C0C8A63 
X-CRM114-Status: GOOD (  18.72  )
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
X-Spam-Status: No, score=-6.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 22/31] firmware: arm_scmi: Add support for clock parents
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Based on Linux commit:

| commit 77bbfe607b1d306c88bf96fed00c030f6bf462f1
| Author: Peng Fan <peng.fan@nxp.com>
| Date:   Wed Oct 4 07:42:23 2023 +0800
|
|     firmware: arm_scmi: Add support for clock parents
|
|     SCMI v3.2 spec introduces CLOCK_POSSIBLE_PARENTS_GET, CLOCK_PARENT_SET
|     and CLOCK_PARENT_GET. Add support for these to enable clock parents
|     and use them in the clock driver.
|
|     Reviewed-by: Cristian Marussi <cristian.marussi@arm.com>
|     Signed-off-by: Peng Fan <peng.fan@nxp.com>
|     Link: https://lore.kernel.org/r/20231004-scmi-clock-v3-v5-1-1b8a1435673e@nxp.com
|     Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/firmware/arm_scmi/clock.c | 179 ++++++++++++++++++++++++++++++++++++--
 include/linux/scmi_protocol.h     |   6 ++
 2 files changed, 179 insertions(+), 6 deletions(-)

diff --git a/drivers/firmware/arm_scmi/clock.c b/drivers/firmware/arm_scmi/clock.c
index 2c902835a0ecbfdf5513fd188f7f2b84ddb65cfc..6b8ef9321db6f799f2c47c3748fe64e0781f6396 100644
--- a/drivers/firmware/arm_scmi/clock.c
+++ b/drivers/firmware/arm_scmi/clock.c
@@ -17,6 +17,9 @@ enum scmi_clock_protocol_cmd {
 	CLOCK_RATE_GET = 0x6,
 	CLOCK_CONFIG_SET = 0x7,
 	CLOCK_NAME_GET = 0x8,
+	CLOCK_POSSIBLE_PARENTS_GET = 0xC,
+	CLOCK_PARENT_SET = 0xD,
+	CLOCK_PARENT_GET = 0xE,
 };
 
 struct scmi_msg_resp_clock_protocol_attributes {
@@ -29,10 +32,28 @@ struct scmi_msg_resp_clock_attributes {
 	__le32 attributes;
 #define	CLOCK_ENABLE	BIT(0)
 #define SUPPORTS_EXTENDED_NAMES(x)		((x) & BIT(29))
+#define SUPPORTS_PARENT_CLOCK(x)		((x) & BIT(28))
 	u8 name[SCMI_SHORT_NAME_MAX_SIZE];
 	__le32 clock_enable_latency;
 };
 
+struct scmi_msg_clock_possible_parents {
+	__le32 id;
+	__le32 skip_parents;
+};
+
+struct scmi_msg_resp_clock_possible_parents {
+	__le32 num_parent_flags;
+#define NUM_PARENTS_RETURNED(x)		((x) & 0xff)
+#define NUM_PARENTS_REMAINING(x)	((x) >> 24)
+	__le32 possible_parents[];
+};
+
+struct scmi_msg_clock_set_parent {
+	__le32 id;
+	__le32 parent_id;
+};
+
 struct scmi_clock_set_config {
 	__le32 id;
 	__le32 attributes;
@@ -105,6 +126,98 @@ scmi_clock_protocol_attributes_get(const struct scmi_protocol_handle *ph,
 	return ret;
 }
 
+struct scmi_clk_ipriv {
+	struct device *dev;
+	u32 clk_id;
+	struct scmi_clock_info *clk;
+};
+
+static void iter_clk_possible_parents_prepare_message(void *message, unsigned int desc_index,
+						      const void *priv)
+{
+	struct scmi_msg_clock_possible_parents *msg = message;
+	const struct scmi_clk_ipriv *p = priv;
+
+	msg->id = cpu_to_le32(p->clk_id);
+	/* Set the number of OPPs to be skipped/already read */
+	msg->skip_parents = cpu_to_le32(desc_index);
+}
+
+static int iter_clk_possible_parents_update_state(struct scmi_iterator_state *st,
+						  const void *response, void *priv)
+{
+	const struct scmi_msg_resp_clock_possible_parents *r = response;
+	struct scmi_clk_ipriv *p = priv;
+	struct device *dev = ((struct scmi_clk_ipriv *)p)->dev;
+	u32 flags;
+
+	flags = le32_to_cpu(r->num_parent_flags);
+	st->num_returned = NUM_PARENTS_RETURNED(flags);
+	st->num_remaining = NUM_PARENTS_REMAINING(flags);
+
+	/*
+	 * num parents is not declared previously anywhere so we
+	 * assume it's returned+remaining on first call.
+	 */
+	if (!st->max_resources) {
+		p->clk->num_parents = st->num_returned + st->num_remaining;
+		p->clk->parents = devm_kcalloc(dev, p->clk->num_parents,
+					       sizeof(*p->clk->parents),
+					       GFP_KERNEL);
+		if (!p->clk->parents) {
+			p->clk->num_parents = 0;
+			return -ENOMEM;
+		}
+		st->max_resources = st->num_returned + st->num_remaining;
+	}
+
+	return 0;
+}
+
+static int iter_clk_possible_parents_process_response(const struct scmi_protocol_handle *ph,
+						      const void *response,
+						      struct scmi_iterator_state *st,
+						      void *priv)
+{
+	const struct scmi_msg_resp_clock_possible_parents *r = response;
+	struct scmi_clk_ipriv *p = priv;
+
+	u32 *parent = &p->clk->parents[st->desc_index + st->loop_idx];
+
+	*parent = le32_to_cpu(r->possible_parents[st->loop_idx]);
+
+	return 0;
+}
+
+static int scmi_clock_possible_parents(const struct scmi_protocol_handle *ph, u32 clk_id,
+				       struct scmi_clock_info *clk)
+{
+	struct scmi_iterator_ops ops = {
+		.prepare_message = iter_clk_possible_parents_prepare_message,
+		.update_state = iter_clk_possible_parents_update_state,
+		.process_response = iter_clk_possible_parents_process_response,
+	};
+
+	struct scmi_clk_ipriv ppriv = {
+		.clk_id = clk_id,
+		.clk = clk,
+		.dev = ph->dev,
+	};
+	void *iter;
+	int ret;
+
+	iter = ph->hops->iter_response_init(ph, &ops, 0,
+					    CLOCK_POSSIBLE_PARENTS_GET,
+					    sizeof(struct scmi_msg_clock_possible_parents),
+					    &ppriv);
+	if (IS_ERR(iter))
+		return PTR_ERR(iter);
+
+	ret = ph->hops->iter_response_run(iter);
+
+	return ret;
+}
+
 static int scmi_clock_attributes_get(const struct scmi_protocol_handle *ph,
 				     u32 clk_id, struct scmi_clock_info *clk,
 				     u32 version)
@@ -145,6 +258,8 @@ static int scmi_clock_attributes_get(const struct scmi_protocol_handle *ph,
 						    clk->name,
 						    SCMI_MAX_STR_SIZE);
 
+		if (SUPPORTS_PARENT_CLOCK(attributes))
+			scmi_clock_possible_parents(ph, clk_id, clk);
 	}
 
 	return ret;
@@ -162,12 +277,6 @@ static int rate_cmp_func(const void *_r1, const void *_r2)
 		return 1;
 }
 
-struct scmi_clk_ipriv {
-	struct device *dev;
-	u32 clk_id;
-	struct scmi_clock_info *clk;
-};
-
 static void iter_clk_describe_prepare_message(void *message,
 					      const unsigned int desc_index,
 					      const void *priv)
@@ -406,6 +515,62 @@ scmi_clock_info_get(const struct scmi_protocol_handle *ph, u32 clk_id)
 	return clk;
 }
 
+static int
+scmi_clock_set_parent(const struct scmi_protocol_handle *ph, u32 clk_id,
+		      u32 parent_id)
+{
+	int ret;
+	struct scmi_xfer *t;
+	struct scmi_msg_clock_set_parent *cfg;
+	struct clock_info *ci = ph->get_priv(ph);
+	struct scmi_clock_info *clk;
+
+	if (clk_id >= ci->num_clocks)
+		return -EINVAL;
+
+	clk = ci->clk + clk_id;
+
+	if (parent_id >= clk->num_parents)
+		return -EINVAL;
+
+	ret = ph->xops->xfer_get_init(ph, CLOCK_PARENT_SET,
+				      sizeof(*cfg), 0, &t);
+	if (ret)
+		return ret;
+
+	cfg = t->tx.buf;
+	cfg->id = cpu_to_le32(clk_id);
+	cfg->parent_id = cpu_to_le32(clk->parents[parent_id]);
+
+	ret = ph->xops->do_xfer(ph, t);
+
+	ph->xops->xfer_put(ph, t);
+
+	return ret;
+}
+
+static int
+scmi_clock_get_parent(const struct scmi_protocol_handle *ph, u32 clk_id,
+		      u32 *parent_id)
+{
+	int ret;
+	struct scmi_xfer *t;
+
+	ret = ph->xops->xfer_get_init(ph, CLOCK_PARENT_GET,
+				      sizeof(__le32), sizeof(u32), &t);
+	if (ret)
+		return ret;
+
+	put_unaligned_le32(clk_id, t->tx.buf);
+
+	ret = ph->xops->do_xfer(ph, t);
+	if (!ret)
+		*parent_id = get_unaligned_le32(t->rx.buf);
+
+	ph->xops->xfer_put(ph, t);
+	return ret;
+}
+
 static const struct scmi_clk_proto_ops clk_proto_ops = {
 	.count_get = scmi_clock_count_get,
 	.info_get = scmi_clock_info_get,
@@ -415,6 +580,8 @@ static const struct scmi_clk_proto_ops clk_proto_ops = {
 	.disable = scmi_clock_disable,
 	.enable_atomic = scmi_clock_enable_atomic,
 	.disable_atomic = scmi_clock_disable_atomic,
+	.parent_set = scmi_clock_set_parent,
+	.parent_get = scmi_clock_get_parent,
 };
 
 static int scmi_clock_protocol_init(const struct scmi_protocol_handle *ph)
diff --git a/include/linux/scmi_protocol.h b/include/linux/scmi_protocol.h
index a33cb497a12b0e08209b2a1d22e319c7849ced2e..c9cacb7f617a90b6f280c60787eb010a6edbefbc 100644
--- a/include/linux/scmi_protocol.h
+++ b/include/linux/scmi_protocol.h
@@ -59,6 +59,8 @@ struct scmi_clock_info {
 			u64 step_size;
 		} range;
 	};
+	int num_parents;
+	u32 *parents;
 };
 
 enum scmi_power_scale {
@@ -81,6 +83,8 @@ struct scmi_protocol_handle;
  * @rate_set: set the clock rate of a clock
  * @enable: enables the specified clock
  * @disable: disables the specified clock
+ * @parent_get: get the parent id of a clk
+ * @parent_set: set the parent of a clock
  */
 struct scmi_clk_proto_ops {
 	int (*count_get)(const struct scmi_protocol_handle *ph);
@@ -96,6 +100,8 @@ struct scmi_clk_proto_ops {
 	int (*enable_atomic)(const struct scmi_protocol_handle *ph, u32 clk_id);
 	int (*disable_atomic)(const struct scmi_protocol_handle *ph,
 			      u32 clk_id);
+	int (*parent_get)(const struct scmi_protocol_handle *ph, u32 clk_id, u32 *parent_id);
+	int (*parent_set)(const struct scmi_protocol_handle *ph, u32 clk_id, u32 parent_id);
 };
 
 /**

-- 
2.39.5



