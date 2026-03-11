Delivery-date: Wed, 11 Mar 2026 09:39:05 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w0F5s-00AO3f-2m
	for lore@lore.pengutronix.de;
	Wed, 11 Mar 2026 09:39:05 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w0F5t-0005mT-3d
	for lore@pengutronix.de; Wed, 11 Mar 2026 09:39:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=v5mo21jzLrZVMEs8R3indnszdYBlQ+GyOR1rvwr4GwE=; b=QrBZBxpAzn4sz3mrAkKos21pvi
	JazsVgxK3l1CX8t2eJMuVHFBytbFCpB8+XwCTEsTbzdrwEZlo3Y8TBqw3OXJpfH/Mg9wFwd2TGbYF
	X1XrXfiLeNwyyYHidm0n6ZSgU+MSNvlssGVEnuHIfnMEIVf/Hu7jOgU1r200mqq1OJqAV9jQblP0F
	FjGw1m988QkvIJNgL4COiCRsQzdLpDbOi05ptKjKGfKWGOZumyvTP7YI/pe3UgP5NpOG4bhN53P2l
	ArHg4C/C17ExTKUZ8ThxYH4e97A5P5VjUbEG3EUwSIV0FT+rFA3xxtXeyp0iBWs959Jth6Rhg3uGY
	QH6Arx0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0F5L-0000000BBka-1slE;
	Wed, 11 Mar 2026 08:38:31 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0F5K-0000000BBk7-19nK
	for barebox@bombadil.infradead.org;
	Wed, 11 Mar 2026 08:38:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=v5mo21jzLrZVMEs8R3indnszdYBlQ+GyOR1rvwr4GwE=; b=EXz9SzouqsfLYJJk1ARldzkKUq
	13oOFHhQNsctVk39zY4mVBIiWDJVSQpmCptrFD6c6UHyDfj5oPFSMEE78RxH5Pal+7KIVe38LaFrd
	v+IHiCNeSsoJYhTxFNrU80wLvM/w8aqVmvng+3Ozn8Re336Np8chH3Qdftm8tcimUxFEWcy9O6bQU
	XqmNyInToCmLyWfOqwy1bq2xtuzvjcrKWdNEWo25gRdOEAVaXAG8cPBMqD+d+k8MFHwLdO0x8Bh2T
	etWsFkc6oWaZFpy1BTgVOC/eochUWEdXiAWgkXHzy3tvfIf48J/3lxANy5GtPwJOxyY7qiGZkaXtD
	RZmfdArg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0F5H-0000000GRIq-0j7y
	for barebox@lists.infradead.org;
	Wed, 11 Mar 2026 08:38:28 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.trumtrar.info)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1w0F5E-0005Vv-1Q; Wed, 11 Mar 2026 09:38:24 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Wed, 11 Mar 2026 09:38:14 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260311-v2026-02-0-topic-imx8-ecc-v3-1-ffdf97760441@pengutronix.de>
References: <20260311-v2026-02-0-topic-imx8-ecc-v3-0-ffdf97760441@pengutronix.de>
In-Reply-To: <20260311-v2026-02-0-topic-imx8-ecc-v3-0-ffdf97760441@pengutronix.de>
To: barebox@lists.infradead.org, Sascha Hauer <s.hauer@pengutronix.de>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>, 
 Ahmad Fatoum <a.fatoum@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260311_083827_353108_58152449 
X-CRM114-Status: UNSURE (   8.09  )
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
Subject: [PATCH v3 1/4] ARM: i.MX: esdctl: fix spelling of ad(d)ress
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

address is spelled with two 'd's. Fix the spelling mistake.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
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



