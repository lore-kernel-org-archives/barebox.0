Delivery-date: Wed, 25 Mar 2026 12:37:58 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w5MYg-004u1E-1e
	for lore@lore.pengutronix.de;
	Wed, 25 Mar 2026 12:37:58 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w5MYf-0006uU-RV
	for lore@pengutronix.de; Wed, 25 Mar 2026 12:37:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=SVa0BgxJu4N/FASwJTPxvYymWDdCn/iQux+Gvkz5WT8=; b=R8wLLKefaXBhX2LrAjDf0pc58f
	TRvLUR8nyKp70FvzhiAPn8sI0URppQstQ19zqDzgbe2wyuiEmlK+WwVLHGquwnxOBhYacw/2TuHDG
	tCsnn/5YJpoWauJqAWtBg/TEQ/5SKvr95VxPrOWBdFcONrPPgBgvpqubv3xka5HzsKa4XiPxz7BEt
	Z9+FkJB7yCgt65P2H1D/wLNwVFgBArRWFwuSHEHBQB81YehdWuCP6WqDhlz7EPh9skavyQOxxogME
	Mr3JEtUpQse4MoBigwWzr69yd8oOMGrQWlIryTC68j6McLWXtz3vl/MAICflkEOzmoCCdL/R3c4+8
	JKPUbQhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5MY1-00000003HRu-3LmU;
	Wed, 25 Mar 2026 11:37:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5MXx-00000003HR1-26LL
	for barebox@lists.infradead.org;
	Wed, 25 Mar 2026 11:37:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w5MXv-0006ly-Vl; Wed, 25 Mar 2026 12:37:11 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w5MXv-0023Kb-2a;
	Wed, 25 Mar 2026 12:37:11 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w5MXv-000000094i4-2xko;
	Wed, 25 Mar 2026 12:37:11 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 25 Mar 2026 12:37:07 +0100
Message-ID: <20260325113711.2163037-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260325_043713_541586_2FD6A883 
X-CRM114-Status: GOOD (  11.48  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH master] clk: scmi: clock: add compatibility for clock version 3.0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

TF-A v2.14 breaks consumers that don't yet speak its newer SCMI clock
protocol, which currently includes barebox as well as some Linux LTS
releases like v6.6 and earlier.

As barebox is usually updated alongside TF-A, do the easy thing of
supporting both new and old TF-A versions by mimicking what Linux does.

Compatibility issues for older Linux versions will be more complicated
and may require TF-A changes:
https://lists.trustedfirmware.org/archives/list/tf-a@lists.trustedfirmware.org/thread/LKJVRDGRH7F73FWSTZC46I7IT3BRYQXC

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/firmware/arm_scmi/clock.c | 57 ++++++++++++++++++++++++++++---
 1 file changed, 53 insertions(+), 4 deletions(-)

diff --git a/drivers/firmware/arm_scmi/clock.c b/drivers/firmware/arm_scmi/clock.c
index 84fc346f7209..2e4a15ffdb95 100644
--- a/drivers/firmware/arm_scmi/clock.c
+++ b/drivers/firmware/arm_scmi/clock.c
@@ -54,6 +54,13 @@ struct scmi_msg_clock_set_parent {
 	__le32 parent_id;
 };
 
+/* Valid only from SCMI clock v2.1 */
+struct scmi_msg_clock_config_set_v2 {
+	__le32 id;
+	__le32 attributes;
+	__le32 oem_config_val;
+};
+
 struct scmi_clock_set_config {
 	__le32 id;
 	__le32 attributes;
@@ -101,6 +108,8 @@ struct clock_info {
 	u32 version;
 	int num_clocks;
 	struct scmi_clock_info *clk;
+	int (*clock_config_set)(const struct scmi_protocol_handle *ph,
+				u32 clk_id, u32 config, bool atomic);
 };
 
 static int
@@ -472,24 +481,32 @@ scmi_clock_config_set(const struct scmi_protocol_handle *ph, u32 clk_id,
 
 static int scmi_clock_enable(const struct scmi_protocol_handle *ph, u32 clk_id)
 {
-	return scmi_clock_config_set(ph, clk_id, CLOCK_ENABLE, false);
+	struct clock_info *ci = ph->get_priv(ph);
+
+	return ci->clock_config_set(ph, clk_id, CLOCK_ENABLE, false);
 }
 
 static int scmi_clock_disable(const struct scmi_protocol_handle *ph, u32 clk_id)
 {
-	return scmi_clock_config_set(ph, clk_id, 0, false);
+	struct clock_info *ci = ph->get_priv(ph);
+
+	return ci->clock_config_set(ph, clk_id, 0, false);
 }
 
 static int scmi_clock_enable_atomic(const struct scmi_protocol_handle *ph,
 				    u32 clk_id)
 {
-	return scmi_clock_config_set(ph, clk_id, CLOCK_ENABLE, true);
+	struct clock_info *ci = ph->get_priv(ph);
+
+	return ci->clock_config_set(ph, clk_id, CLOCK_ENABLE, true);
 }
 
 static int scmi_clock_disable_atomic(const struct scmi_protocol_handle *ph,
 				     u32 clk_id)
 {
-	return scmi_clock_config_set(ph, clk_id, 0, true);
+	struct clock_info *ci = ph->get_priv(ph);
+
+	return ci->clock_config_set(ph, clk_id, 0, true);
 }
 
 static int scmi_clock_count_get(const struct scmi_protocol_handle *ph)
@@ -571,6 +588,32 @@ scmi_clock_get_parent(const struct scmi_protocol_handle *ph, u32 clk_id,
 	return ret;
 }
 
+/* For SCMI clock v3.0 and onwards */
+static int
+scmi_clock_config_set_v2(const struct scmi_protocol_handle *ph, u32 clk_id,
+			 u32 config, bool atomic)
+{
+	int ret;
+	struct scmi_xfer *t;
+	struct scmi_msg_clock_config_set_v2 *cfg;
+
+	ret = ph->xops->xfer_get_init(ph, CLOCK_CONFIG_SET,
+				      sizeof(*cfg), 0, &t);
+	if (ret)
+		return ret;
+
+	cfg = t->tx.buf;
+	cfg->id = cpu_to_le32(clk_id);
+	cfg->attributes = cpu_to_le32(config);
+	/* Clear in any case */
+	cfg->oem_config_val = cpu_to_le32(0);
+
+	ret = ph->xops->do_xfer(ph, t);
+
+	ph->xops->xfer_put(ph, t);
+	return ret;
+}
+
 static const struct scmi_clk_proto_ops clk_proto_ops = {
 	.count_get = scmi_clock_count_get,
 	.info_get = scmi_clock_info_get,
@@ -619,6 +662,12 @@ static int scmi_clock_protocol_init(const struct scmi_protocol_handle *ph)
 	}
 
 	cinfo->version = version;
+
+	if (PROTOCOL_REV_MAJOR(version) >= 0x3)
+		cinfo->clock_config_set = scmi_clock_config_set_v2;
+	else
+		cinfo->clock_config_set = scmi_clock_config_set;
+
 	return ph->set_priv(ph, cinfo);
 }
 
-- 
2.47.3



