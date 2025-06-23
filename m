Delivery-date: Mon, 23 Jun 2025 19:06:35 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uTkct-00AKe0-1I
	for lore@lore.pengutronix.de;
	Mon, 23 Jun 2025 19:06:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uTkcr-00045g-8C
	for lore@pengutronix.de; Mon, 23 Jun 2025 19:06:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KECKmEbpXEZ8QfBvLJp6QspChqbRSpXu/47UwkVimN8=; b=UbUU9tekTr6ifBi4VplyBKIjxM
	W6nZ+eQzS+50qKbjgBPgyzVSq+UDNCDHEcUX4hz8as4blWfGp8nFbdlaf4rQj+bMaIkA+3UPEcSmf
	2f7bX5EEH+mF/it2loTCkXZNqlh7Vjn//m9UPbUXDyw+8HCVx9zHdyAMpW0GhJrKxDoWj59hwydnY
	l1On6UbiTSONimAUxjCsoCJjmV8HMSzSHGdYGTsjnHT7K5+qJewfKEPliYcCO0/onJwcNc7LclG/R
	YXqpd5a8Ee0mM+hZ8vFye1CItIljM5ny3o7HBovqfURpQhvVJwVgcPMiy1i6EWztQz9pAqa4pd9Ig
	FB7MdcUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTkc7-00000003ViX-3RlN;
	Mon, 23 Jun 2025 17:05:47 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uThgR-00000002xMX-36g1
	for barebox@bombadil.infradead.org;
	Mon, 23 Jun 2025 13:58:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=KECKmEbpXEZ8QfBvLJp6QspChqbRSpXu/47UwkVimN8=; b=PJjWI7HTKDi8A0oIDbz27IZTgx
	lJIzs7Lf+pF94xQoDiBUBiuYRseFmNyNoWP1gHxSK6mvAKlKYAD8b6a6KBZmIayjJ/YS49Sq+Z4/e
	TYk/C4ke86O3LmntaEyuNO7pyubusxilVh6XVgpi41UJVjMhqu90jqwPxxeZUIEltiMQuufS0xBKM
	GXZ/GEdJ4F2cB+4MJdO1PzSHeAiO5trzfpJBbXhusgq0Ze0++OozR5oatYYiB3gUev1HBLoOpvSIW
	iqGIF5Uq+hVGJ1tiRTBYgIRLlhf6ik1Lt9gyrZnuRbvZxWnf2yaZy5lplqW1ui4KpIP7qVQa7eOAk
	ifUuAkoA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uThgO-00000005EPC-0VRi
	for barebox@lists.infradead.org;
	Mon, 23 Jun 2025 13:58:02 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.trumtrar.info)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1uThgM-0000r6-91; Mon, 23 Jun 2025 15:57:58 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Mon, 23 Jun 2025 15:57:50 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250623-v2024-10-0-topic-socfpga-agilex5-v3-5-e9de9e31b2c1@pengutronix.de>
References: <20250623-v2024-10-0-topic-socfpga-agilex5-v3-0-e9de9e31b2c1@pengutronix.de>
In-Reply-To: <20250623-v2024-10-0-topic-socfpga-agilex5-v3-0-e9de9e31b2c1@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250623_145800_325289_00A0D71B 
X-CRM114-Status: UNSURE (   9.07  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v3 05/10] linux: clk: add clk_parent_data
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Some linux clock drivers use the clk_parent_data struct.

Import it from linux to make driver porting easier.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 include/linux/clk.h | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/include/linux/clk.h b/include/linux/clk.h
index 7ae4c48ca27ffbe4597eede01fca27ddee9772d1..a1af7d57779769a070de1b56f2cda9ed23da2571 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -349,6 +349,20 @@ struct clk_ops {
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
@@ -365,6 +379,7 @@ struct clk_init_data {
 	const char		*name;
 	const struct clk_ops	*ops;
 	const char		* const *parent_names;
+	const struct clk_parent_data *parent_data;
 	const struct clk_hw	**parent_hws;
 	unsigned int		num_parents;
 	unsigned long		flags;

-- 
2.46.0



