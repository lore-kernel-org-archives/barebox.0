Delivery-date: Tue, 29 Oct 2024 09:56:50 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t5i1w-002DEM-3A
	for lore@lore.pengutronix.de;
	Tue, 29 Oct 2024 09:56:50 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t5i1u-0002BJ-Kp
	for lore@pengutronix.de; Tue, 29 Oct 2024 09:56:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xGkZkl4oo/do580wyEkgJ5Jnq5EaFa1YihtaaGfTG+g=; b=hXkt1Z6ATNaAq7JfIjQwarUhkG
	Ci3rypfSh/D+bbsf3QW8d5exseafLpelq+Y9P04NUbAq+BUch9TdBLZ3mbjyX/fFWcVSgYLEwXnAs
	BZaJf3H20O2Svb8imqKP1PuBVYTQ+X37WuU1cJI3J+QSzqDUiwD+p4iMGQULCankRwy2mkTWlph5U
	AeSbFPiVuVJzmcNcr5s8IkNwWDACG0+w6f63bFk+cpToYDtZtS0QYPy1Nn787VUlzTVk1wPph8tCx
	4tkOZRfykC8uXJiZ+jTxr6XUASrrA3X7/XC/zDBV5h3BNPOoLlRX/pWvBnglVxVnTc6/RIpySNmBM
	nkmHoeIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t5i1P-0000000DmGp-1ssK;
	Tue, 29 Oct 2024 08:56:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t5hoM-0000000Dim8-0OjG
	for barebox@lists.infradead.org;
	Tue, 29 Oct 2024 08:42:48 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.trumtrar.info)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1t5hoK-0000Kh-QK; Tue, 29 Oct 2024 09:42:44 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Tue, 29 Oct 2024 09:42:38 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241029-v2024-10-0-topic-socfpga-agilex5-v1-8-96df2d7dadf4@pengutronix.de>
References: <20241029-v2024-10-0-topic-socfpga-agilex5-v1-0-96df2d7dadf4@pengutronix.de>
In-Reply-To: <20241029-v2024-10-0-topic-socfpga-agilex5-v1-0-96df2d7dadf4@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241029_014246_252923_C9A3E236 
X-CRM114-Status: UNSURE (   9.32  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 08/10] linux: clk: add clk_parent_data
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Some linux clock drivers use the clk_parent_data struct.

Import it from linux to make driver porting easier.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 include/linux/clk.h | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/include/linux/clk.h b/include/linux/clk.h
index ae03dcfdb2a27266188bdec99da74f861c8b8846..b7a7b8138a555c0508821d313ade153cd720195e 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -333,6 +333,20 @@ struct clk_ops {
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
@@ -349,6 +363,7 @@ struct clk_init_data {
 	const char		*name;
 	const struct clk_ops	*ops;
 	const char		* const *parent_names;
+	const struct clk_parent_data *parent_data;
 	const struct clk_hw	**parent_hws;
 	unsigned int		num_parents;
 	unsigned long		flags;

-- 
2.46.0



