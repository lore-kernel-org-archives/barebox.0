Delivery-date: Mon, 09 Mar 2026 08:47:08 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vzVKV-009fvz-1L
	for lore@lore.pengutronix.de;
	Mon, 09 Mar 2026 08:47:08 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vzVKV-0007OM-EZ
	for lore@pengutronix.de; Mon, 09 Mar 2026 08:47:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DFjgWsYaed79BH5oPEljUfC8dMBfTF8/AiE+sqTAMFs=; b=ffR22ZkJ+ZkJzjV4dRo/2pUZgf
	2Il6KA8LmLc3Q5rSth+paV1E9Jv6Z6bBGi9XM1orcu0JWQ6JjJwNFWRPjih+vO1Vf6PIXIkSJnd+w
	VOkyNeySuzFB3L1+ISaQxbqC91VlIc5OmhPRIgLM5WDQJTzt3Tm0tASCZn25eWXoGsgwraO63GulE
	8bR6OqTJduuXChQsm1b7Jj6TgOBWtgQmj9TnpI7nEdNBitZz/30PHZecEmicOUgXKPLnNHVqUNhNz
	RgpySGcn8CQCZ9q6UXnhhJR4uw9tcLRvzDvQzfyTTEEfwy5IHac6Vw/xjfTZNAfzqH797QA1DJ61Q
	DnhE0WCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzVJs-00000006pN4-1Vny;
	Mon, 09 Mar 2026 07:46:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzVJm-00000006pKx-3k3Z
	for barebox@lists.infradead.org;
	Mon, 09 Mar 2026 07:46:26 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.trumtrar.info)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1vzVJi-00074T-Vh; Mon, 09 Mar 2026 08:46:19 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Mon, 09 Mar 2026 08:46:13 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260309-v2026-02-0-topic-imx8-ecc-v2-1-6aab6d795061@pengutronix.de>
References: <20260309-v2026-02-0-topic-imx8-ecc-v2-0-6aab6d795061@pengutronix.de>
In-Reply-To: <20260309-v2026-02-0-topic-imx8-ecc-v2-0-6aab6d795061@pengutronix.de>
To: barebox@lists.infradead.org, Sascha Hauer <s.hauer@pengutronix.de>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260309_004623_000996_A6509DCF 
X-CRM114-Status: UNSURE (   8.71  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 1/4] ARM: i.MX: esdctl: fix spelling of ad(d)ress
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

address is spelled with two 'd's. Fix the spelling mistake.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/mach-imx/esdctl.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/arch/arm/mach-imx/esdctl.c b/arch/arm/mach-imx/esdctl.c
index 935c3d3257..b6689b7ffc 100644
--- a/arch/arm/mach-imx/esdctl.c
+++ b/arch/arm/mach-imx/esdctl.c
@@ -262,7 +262,7 @@ static int imx_esdctl_v4_add_mem(void *esdctlbase, const struct imx_esdctl_data
 }
 
 /*
- * On i.MX6 the adress space reserved for SDRAM is 0x10000000 to 0xFFFFFFFF
+ * On i.MX6 the address space reserved for SDRAM is 0x10000000 to 0xFFFFFFFF
  * which makes the maximum supported RAM size 0xF0000000.
  */
 #define IMX6_MAX_SDRAM_SIZE 0xF0000000
@@ -380,7 +380,7 @@ static resource_size_t
 imx_ddrc_sdram_size(void __iomem *ddrc, const u32 addrmap[DDRC_ADDRMAP_LENGTH],
 		    u8 col_max, const u8 col_b[], unsigned int col_b_num,
 		    u8 row_max, const u8 row_b[], unsigned int row_b_num,
-		    bool reduced_adress_space, unsigned int mstr)
+		    bool reduced_address_space, unsigned int mstr)
 {
 	unsigned int banks, ranks, columns, rows, active_ranks, width;
 	resource_size_t size;
@@ -459,7 +459,7 @@ imx_ddrc_sdram_size(void __iomem *ddrc, const u32 addrmap[DDRC_ADDRMAP_LENGTH],
 		size = memory_sdram_size(columns, rows, 1 << banks, 1) >> 1;
 	size <<= ranks;
 
-	return reduced_adress_space ? size * 3 / 4 : size;
+	return reduced_address_space ? size * 3 / 4 : size;
 }
 
 static void imx_ddrc_set_mstr_device_config(u32 *mstr, unsigned bits)
@@ -505,7 +505,7 @@ static resource_size_t imx8m_ddrc_sdram_size(void __iomem *ddrc, unsigned buswid
 		FIELD_GET(DDRC_ADDRMAP6_ROW_B12, addrmap[6]),
 		FIELD_GET(DDRC_ADDRMAP5_ROW_B11, addrmap[5]),
 	};
-	const bool reduced_adress_space =
+	const bool reduced_address_space =
 		FIELD_GET(DDRC_ADDRMAP6_LPDDR4_6GB_12GB_24GB, addrmap[6]);
 	u32 mstr = readl(ddrc + DDRC_MSTR);
 
@@ -516,7 +516,7 @@ static resource_size_t imx8m_ddrc_sdram_size(void __iomem *ddrc, unsigned buswid
 	return imx_ddrc_sdram_size(ddrc, addrmap,
 				   12, ARRAY_AND_SIZE(col_b),
 				   18, ARRAY_AND_SIZE(row_b),
-				   reduced_adress_space, mstr);
+				   reduced_address_space, mstr);
 }
 
 static int _imx8m_ddrc_add_mem(void *mmdcbase, const struct imx_esdctl_data *data,
@@ -630,7 +630,7 @@ static resource_size_t imx7d_ddrc_sdram_size(void __iomem *ddrc)
 		FIELD_GET(DDRC_ADDRMAP6_ROW_B12, addrmap[6]),
 		FIELD_GET(DDRC_ADDRMAP5_ROW_B11, addrmap[5]),
 	};
-	const bool reduced_adress_space =
+	const bool reduced_address_space =
 		FIELD_GET(DDRC_ADDRMAP6_LPDDR3_6GB_12GB, addrmap[6]);
 	u32 mstr = readl(ddrc + DDRC_MSTR);
 
@@ -640,7 +640,7 @@ static resource_size_t imx7d_ddrc_sdram_size(void __iomem *ddrc)
 	return imx_ddrc_sdram_size(ddrc, addrmap,
 				   11, ARRAY_AND_SIZE(col_b),
 				   15, ARRAY_AND_SIZE(row_b),
-				   reduced_adress_space, mstr);
+				   reduced_address_space, mstr);
 }
 
 static int imx7d_ddrc_add_mem(void *mmdcbase, const struct imx_esdctl_data *data)

-- 
2.52.0



