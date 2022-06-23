Delivery-date: Thu, 23 Jun 2022 15:09:12 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o4Ma7-00BzFP-1o
	for lore@lore.pengutronix.de; Thu, 23 Jun 2022 15:09:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o4Ma6-0007Fp-UW
	for lore@pengutronix.de; Thu, 23 Jun 2022 15:09:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iaVxqbSJE+zJajdL4MwfAj1g9atbRm9jkTDCgTO+em4=; b=I2tuO/8FhiMYvWdOQBPpKsEVFp
	XI/KzJtWEyMH4mCSxWZJZ0XGT6xA8MRl2vvptywvQGGXvw3ZzDHJtAlS7lEWy9lKCeS7KAX6r7+WO
	YWs5MBFlcHchiuSKs1563mYXJU+muYxe6C/H2aoyq4DATgVoaEMjOFUJzUyMqEPJ7tGitYx/b7lBw
	LWJFezU//7By7o0m8vlXIW6j2384cE9s9kAufXX/6DwRP5Le/0L2CFUyxbp4gmC5j8BKCbx1d/UZk
	BUYHGaZaPUsoxOApdVbOtZhZU6sF7P9YOWkp/iR9Ki4Gb2q7ftDn9aLNJYj2OrSMW2yyA4d4Rj2Ob
	0yTn9oiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4MYt-00FFvL-8K; Thu, 23 Jun 2022 13:07:55 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4MYn-00FFs8-3O
	for barebox@lists.infradead.org; Thu, 23 Jun 2022 13:07:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1o4MYN-0006vh-I9; Thu, 23 Jun 2022 15:07:23 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1o4MYL-002FGR-8w; Thu, 23 Jun 2022 15:07:22 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1o4MYL-006rWS-Hz; Thu, 23 Jun 2022 15:07:21 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Teresa Remmet <t.remmet@phytec.de>,
	lst@pengutronix.de,
	Joacim Zetterling <joacim.zetterling@westermo.com>,
	Andrey Smirnov <andrew.smirnov@gmail.com>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 23 Jun 2022 15:07:13 +0200
Message-Id: <20220623130717.1447999-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220623130717.1447999-1-a.fatoum@pengutronix.de>
References: <20220623130717.1447999-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220623_060749_207859_84549D54 
X-CRM114-Status: GOOD (  15.33  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 master 1/5] ARM: i.MX8M: refactor to prepare i.MX8MN LPDDR4 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Device config has no effect on i.MX7 and (i.MX8M && LPDDR4).
In these configuration, it's assumed to be 4, which isn't correct for
the i.MX8MN, which has a 16-bit bus. Instead of complicating the
function further, allow it to assume device config is always correct and
have the callers worry about fixing it up as necessary.

No functional change.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - new patch
---
 arch/arm/mach-imx/esdctl.c | 50 +++++++++++++++++++++++++-------------
 1 file changed, 33 insertions(+), 17 deletions(-)

diff --git a/arch/arm/mach-imx/esdctl.c b/arch/arm/mach-imx/esdctl.c
index b070ebc62a45..69f4f8df9391 100644
--- a/arch/arm/mach-imx/esdctl.c
+++ b/arch/arm/mach-imx/esdctl.c
@@ -370,9 +370,8 @@ static resource_size_t
 imx_ddrc_sdram_size(void __iomem *ddrc, const u32 addrmap[DDRC_ADDRMAP_LENGTH],
 		    u8 col_max, const u8 col_b[], unsigned int col_b_num,
 		    u8 row_max, const u8 row_b[], unsigned int row_b_num,
-		    bool reduced_adress_space, bool is_imx8)
+		    bool reduced_adress_space, unsigned int mstr)
 {
-	const u32 mstr = readl(ddrc + DDRC_MSTR);
 	unsigned int banks, ranks, columns, rows, active_ranks, width;
 	resource_size_t size;
 
@@ -393,11 +392,13 @@ imx_ddrc_sdram_size(void __iomem *ddrc, const u32 addrmap[DDRC_ADDRMAP_LENGTH],
 		BUG();
 	}
 
-	/* Bus width in bytes, 0 means half byte or 4-bit mode */
-	if (is_imx8 && !(mstr & DDRC_MSTR_LPDDR4))
-		width = (1 << FIELD_GET(DDRC_MSTR_DEVICE_CONFIG, mstr)) >> 1;
-	else
-		width = 4;
+	/*
+	 * mstr is ignored for some SoCs/RAM types and may yield wrong
+	 * results when used for calculation. Callers of this function
+	 * are expected to fix it up as necessary.
+	 * Bus width in bytes, 0 means half byte or 4-bit mode
+	 */
+	width = (1 << FIELD_GET(DDRC_MSTR_DEVICE_CONFIG, mstr)) >> 1;
 
 	switch (FIELD_GET(DDRC_MSTR_DATA_BUS_WIDTH, mstr)) {
 	case 0b00:	/* Full DQ bus  */
@@ -446,7 +447,13 @@ imx_ddrc_sdram_size(void __iomem *ddrc, const u32 addrmap[DDRC_ADDRMAP_LENGTH],
 	return reduced_adress_space ? size * 3 / 4 : size;
 }
 
-static resource_size_t imx8m_ddrc_sdram_size(void __iomem *ddrc)
+static void imx_ddrc_set_mstr_device_config(u32 *mstr, unsigned bits)
+{
+	*mstr &= ~DDRC_MSTR_DEVICE_CONFIG;
+	*mstr |= FIELD_PREP(DDRC_MSTR_DEVICE_CONFIG, fls(bits / 8));
+}
+
+static resource_size_t imx8m_ddrc_sdram_size(void __iomem *ddrc, unsigned buswidth)
 {
 	const u32 addrmap[DDRC_ADDRMAP_LENGTH] = {
 		readl(ddrc + DDRC_ADDRMAP(0)),
@@ -485,17 +492,22 @@ static resource_size_t imx8m_ddrc_sdram_size(void __iomem *ddrc)
 	};
 	const bool reduced_adress_space =
 		FIELD_GET(DDRC_ADDRMAP6_LPDDR4_6GB_12GB_24GB, addrmap[6]);
+	u32 mstr = readl(ddrc + DDRC_MSTR);
+
+	/* Device config is ignored and taken as 32-bit for LPDDR4 */
+	if (mstr & DDRC_MSTR_LPDDR4)
+		imx_ddrc_set_mstr_device_config(&mstr, buswidth);
 
 	return imx_ddrc_sdram_size(ddrc, addrmap,
 				   12, ARRAY_AND_SIZE(col_b),
 				   18, ARRAY_AND_SIZE(row_b),
-				   reduced_adress_space, true);
+				   reduced_adress_space, mstr);
 }
 
 static int imx8m_ddrc_add_mem(void *mmdcbase, struct imx_esdctl_data *data)
 {
 	return arm_add_mem_device("ram0", data->base0,
-			   imx8m_ddrc_sdram_size(mmdcbase));
+			   imx8m_ddrc_sdram_size(mmdcbase, 32));
 }
 
 static resource_size_t imx7d_ddrc_sdram_size(void __iomem *ddrc)
@@ -527,11 +539,15 @@ static resource_size_t imx7d_ddrc_sdram_size(void __iomem *ddrc)
 	};
 	const bool reduced_adress_space =
 		FIELD_GET(DDRC_ADDRMAP6_LPDDR3_6GB_12GB, addrmap[6]);
+	u32 mstr = readl(ddrc + DDRC_MSTR);
+
+	/* Device config is unused on i.MX7, so rewrite it as 32-bit wide */
+	imx_ddrc_set_mstr_device_config(&mstr, 32);
 
 	return imx_ddrc_sdram_size(ddrc, addrmap,
 				   11, ARRAY_AND_SIZE(col_b),
 				   15, ARRAY_AND_SIZE(row_b),
-				   reduced_adress_space, false);
+				   reduced_adress_space, mstr);
 }
 
 static int imx7d_ddrc_add_mem(void *mmdcbase, struct imx_esdctl_data *data)
@@ -890,11 +906,11 @@ void __noreturn vf610_barebox_entry(void *boarddata)
 			  boarddata);
 }
 
-static void __noreturn imx8m_barebox_entry(void *boarddata)
+static void __noreturn imx8m_barebox_entry(void *boarddata, unsigned buswidth)
 {
 	resource_size_t size;
 
-	size = imx8m_ddrc_sdram_size(IOMEM(MX8M_DDRC_CTL_BASE_ADDR));
+	size = imx8m_ddrc_sdram_size(IOMEM(MX8M_DDRC_CTL_BASE_ADDR), buswidth);
 	/*
 	 * We artificially limit detected memory size to force malloc
 	 * pool placement to be within 4GiB address space, so as to
@@ -910,22 +926,22 @@ static void __noreturn imx8m_barebox_entry(void *boarddata)
 
 void __noreturn imx8mm_barebox_entry(void *boarddata)
 {
-	imx8m_barebox_entry(boarddata);
+	imx8m_barebox_entry(boarddata, 32);
 }
 
 void __noreturn imx8mn_barebox_entry(void *boarddata)
 {
-	imx8m_barebox_entry(boarddata);
+	imx8m_barebox_entry(boarddata, 32);
 }
 
 void __noreturn imx8mp_barebox_entry(void *boarddata)
 {
-	imx8m_barebox_entry(boarddata);
+	imx8m_barebox_entry(boarddata, 32);
 }
 
 void __noreturn imx8mq_barebox_entry(void *boarddata)
 {
-	imx8m_barebox_entry(boarddata);
+	imx8m_barebox_entry(boarddata, 32);
 }
 
 void __noreturn imx7d_barebox_entry(void *boarddata)
-- 
2.30.2



