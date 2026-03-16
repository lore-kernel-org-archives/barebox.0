Delivery-date: Mon, 16 Mar 2026 09:15:26 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w236j-001N3c-3D
	for lore@lore.pengutronix.de;
	Mon, 16 Mar 2026 09:15:26 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w236j-0002S1-BV
	for lore@pengutronix.de; Mon, 16 Mar 2026 09:15:25 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gZUGMwwh4pBy8yykFiP4KJ8jEzg+r74d7zJnTy4w31c=; b=UJ8nLaFboFE4Y6w3cF3IaLZuG0
	BJ2Llm/4ht4W1v8524DazrC0uzebsA/YyQNEVefKhQvYQJgc1o5X+n2yvrptEv2UHX5Y4FUBwtMaB
	PQSjMXYTQnsS8Chlzelrzygej6acwhtGSKLBje5crAWfSkJMHY7ZhYQ2OKNqrzjzq0CQsBELzYRuz
	kS/vD7c/cKVK4tr2z+4zqggTHKW3Gm80n2nxQBIOEVFqMzJKXPGN/1TBOhs+P09+UolnzSpjlZDVm
	JSp6hrRGgGamOGNv6iMyyktEsURaCV/euVM9hFZ7yLyq9CedNgzNPJgRtBLXXecbVqPB7Q5Cg8rUe
	JwSc/cWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2369-00000003WjK-3LYz;
	Mon, 16 Mar 2026 08:14:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2365-00000003Wgk-44Ix
	for barebox@lists.infradead.org;
	Mon, 16 Mar 2026 08:14:47 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.trumtrar.info)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1w2362-000296-4S; Mon, 16 Mar 2026 09:14:42 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Mon, 16 Mar 2026 09:14:31 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260316-v2026-02-0-topic-imx8-ecc-v4-1-e5ecc09cfafd@pengutronix.de>
References: <20260316-v2026-02-0-topic-imx8-ecc-v4-0-e5ecc09cfafd@pengutronix.de>
In-Reply-To: <20260316-v2026-02-0-topic-imx8-ecc-v4-0-e5ecc09cfafd@pengutronix.de>
To: barebox@lists.infradead.org, Sascha Hauer <s.hauer@pengutronix.de>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>, 
 Ahmad Fatoum <a.fatoum@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260316_011446_027270_B5337604 
X-CRM114-Status: UNSURE (   8.13  )
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
Subject: [PATCH v4 1/4] ARM: i.MX: esdctl: fix spelling of ad(d)ress
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

address is spelled with two 'd's. Fix the spelling mistake.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-imx/esdctl.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/arch/arm/mach-imx/esdctl.c b/arch/arm/mach-imx/esdctl.c
index 6dc92e90fc..bad5064d14 100644
--- a/arch/arm/mach-imx/esdctl.c
+++ b/arch/arm/mach-imx/esdctl.c
@@ -264,7 +264,7 @@ static int imx_esdctl_v4_add_mem(void *esdctlbase, const struct imx_esdctl_data
 }
 
 /*
- * On i.MX6 the adress space reserved for SDRAM is 0x10000000 to 0xFFFFFFFF
+ * On i.MX6 the address space reserved for SDRAM is 0x10000000 to 0xFFFFFFFF
  * which makes the maximum supported RAM size 0xF0000000.
  */
 #define IMX6_MAX_SDRAM_SIZE 0xF0000000
@@ -382,7 +382,7 @@ static resource_size_t
 imx_ddrc_sdram_size(void __iomem *ddrc, const u32 addrmap[DDRC_ADDRMAP_LENGTH],
 		    u8 col_max, const u8 col_b[], unsigned int col_b_num,
 		    u8 row_max, const u8 row_b[], unsigned int row_b_num,
-		    bool reduced_adress_space, unsigned int mstr)
+		    bool reduced_address_space, unsigned int mstr)
 {
 	unsigned int banks, ranks, columns, rows, active_ranks, width;
 	resource_size_t size;
@@ -461,7 +461,7 @@ imx_ddrc_sdram_size(void __iomem *ddrc, const u32 addrmap[DDRC_ADDRMAP_LENGTH],
 		size = memory_sdram_size(columns, rows, 1 << banks, 1) >> 1;
 	size <<= ranks;
 
-	return reduced_adress_space ? size * 3 / 4 : size;
+	return reduced_address_space ? size * 3 / 4 : size;
 }
 
 static void imx_ddrc_set_mstr_device_config(u32 *mstr, unsigned bits)
@@ -508,7 +508,7 @@ resource_size_t imx8m_ddrc_sdram_size(unsigned buswidth)
 		FIELD_GET(DDRC_ADDRMAP6_ROW_B12, addrmap[6]),
 		FIELD_GET(DDRC_ADDRMAP5_ROW_B11, addrmap[5]),
 	};
-	const bool reduced_adress_space =
+	const bool reduced_address_space =
 		FIELD_GET(DDRC_ADDRMAP6_LPDDR4_6GB_12GB_24GB, addrmap[6]);
 	u32 mstr = readl(ddrc + DDRC_MSTR);
 
@@ -519,7 +519,7 @@ resource_size_t imx8m_ddrc_sdram_size(unsigned buswidth)
 	return imx_ddrc_sdram_size(ddrc, addrmap,
 				   12, ARRAY_AND_SIZE(col_b),
 				   18, ARRAY_AND_SIZE(row_b),
-				   reduced_adress_space, mstr);
+				   reduced_address_space, mstr);
 }
 
 static int _imx8m_ddrc_add_mem(const struct imx_esdctl_data *data,
@@ -633,7 +633,7 @@ static resource_size_t imx7d_ddrc_sdram_size(void __iomem *ddrc)
 		FIELD_GET(DDRC_ADDRMAP6_ROW_B12, addrmap[6]),
 		FIELD_GET(DDRC_ADDRMAP5_ROW_B11, addrmap[5]),
 	};
-	const bool reduced_adress_space =
+	const bool reduced_address_space =
 		FIELD_GET(DDRC_ADDRMAP6_LPDDR3_6GB_12GB, addrmap[6]);
 	u32 mstr = readl(ddrc + DDRC_MSTR);
 
@@ -643,7 +643,7 @@ static resource_size_t imx7d_ddrc_sdram_size(void __iomem *ddrc)
 	return imx_ddrc_sdram_size(ddrc, addrmap,
 				   11, ARRAY_AND_SIZE(col_b),
 				   15, ARRAY_AND_SIZE(row_b),
-				   reduced_adress_space, mstr);
+				   reduced_address_space, mstr);
 }
 
 static int imx7d_ddrc_add_mem(void *mmdcbase, const struct imx_esdctl_data *data)

-- 
2.52.0



