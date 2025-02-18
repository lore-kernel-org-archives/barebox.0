Delivery-date: Tue, 18 Feb 2025 10:39:29 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tkK4f-003qxq-38
	for lore@lore.pengutronix.de;
	Tue, 18 Feb 2025 10:39:29 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tkK4b-00040R-7f
	for lore@pengutronix.de; Tue, 18 Feb 2025 10:39:29 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rpMJKRWrMakwa616pNzHyzORS+8Ul1ZIn0ZrgmRPIAs=; b=F2dSwzG2oroxiBbdrpv+Kepf33
	CJ9lYrygf2i0QonwPfN8pvJjDG/KLAdzxo08ngFia8b+GnN5IdkYzYts9NO2No8Dummh8rZ/aasWN
	3ABT8YzwQumuhs7k1E9bhIgb71uqDF46WzaQHVSqCDDPTaNmA7PsNaTqwf4QKgupjQnf1iahEs7Z3
	AY9BqPz8v7f0QE96pgknOTQKmR3+Af9KV7V7hvUWjbdHw4kA85iG/NdPWbyi7qdEX7xl9bjECavou
	ceuBN7b+rlQvd6SH9zRsikLrhB+toT5DhBhubtxtlJFOVbPlA3m5puAKNWaDCTqkLhpK7QFeGkJtB
	RUj7upIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tkK43-00000007YSW-0LgV;
	Tue, 18 Feb 2025 09:38:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tkJnY-00000007UJW-1WtE
	for barebox@lists.infradead.org;
	Tue, 18 Feb 2025 09:21:50 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.trumtrar.info)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1tkJnV-0000aY-TQ; Tue, 18 Feb 2025 10:21:45 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Tue, 18 Feb 2025 10:21:30 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250218-v2024-10-0-topic-socfpga-agilex5-v2-5-30b6f507810b@pengutronix.de>
References: <20250218-v2024-10-0-topic-socfpga-agilex5-v2-0-30b6f507810b@pengutronix.de>
In-Reply-To: <20250218-v2024-10-0-topic-socfpga-agilex5-v2-0-30b6f507810b@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250218_012148_405508_A06459B8 
X-CRM114-Status: UNSURE (   8.94  )
X-CRM114-Notice: Please train this message.
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
Subject: [PATCH v2 05/10] linux: clk: add clk_parent_data
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Some linux clock drivers use the clk_parent_data struct.

Import it from linux to make driver porting easier.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 include/linux/clk.h | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/include/linux/clk.h b/include/linux/clk.h
index 733ba356dd4bf02132cd0599fbb68b1e37ed1781..948fe98e21a78ad794f2503732ab16b857c0b6fe 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -334,6 +334,20 @@ struct clk_ops {
 	int		(*get_phase)(struct clk_hw *hw);
 };
 
+/**
+ * struct clk_parent_data - clk parent information
+ * @hw: parent clk_hw pointer (used for clk providers with internal clks)
+ * @fw_name: parent name local to provider registering clk
+ * @name: globally unique parent name (used as a fallback)
+ * @index: parent index local to provider registering clk (if @fw_name absent)
+ */
+struct clk_parent_data {
+	const struct clk_hw	*hw;
+	const char		*fw_name;
+	const char		*name;
+	int			index;
+};
+
 /**
  * struct clk_init_data - holds init data that's common to all clocks and is
  * shared between the clock provider and the common clock framework.
@@ -350,6 +364,7 @@ struct clk_init_data {
 	const char		*name;
 	const struct clk_ops	*ops;
 	const char		* const *parent_names;
+	const struct clk_parent_data *parent_data;
 	const struct clk_hw	**parent_hws;
 	unsigned int		num_parents;
 	unsigned long		flags;

-- 
2.46.0



