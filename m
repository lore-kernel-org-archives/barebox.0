Delivery-date: Mon, 10 Nov 2025 21:35:55 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vIYcF-00HVTk-0Z
	for lore@lore.pengutronix.de;
	Mon, 10 Nov 2025 21:35:55 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vIYcB-0002Q2-On
	for lore@pengutronix.de; Mon, 10 Nov 2025 21:35:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=46kdRtBuhXlBGR0ED+kiFuPoQ4Y+pwn9mFOD588W3A4=; b=qWRqWmhRXwgcDk6+qP1NYIl7/A
	1AMy9fuNLE6geHQVsDDePMkzoCinPwAgHVkqKsvXq1vCpBGtup05BoUUs1kp/rgFIunAmOkm276PS
	KZ1PCPJQUO43PZCSv1uavVKnjXoofJ3Kjgt5J9REk7SEBtiLR9VJDHURn88f2uGv0bkkmrm3TPUr5
	6gw8XlewP8eAisHyO+eaL7b7hviOZPH5lkR+F8yTiN0zH5aIze6I8DCUn8eluSwMh6N3EyoD63vO7
	SD1Ve3I58dAuq5jnIP4KRkH4XcEfGlDck71IWqNRf9NuZedS+L5VTKq7v+rCuMDxeq2bXcJ+qWJ3x
	pPwbi4oQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIYbJ-000000065bZ-2jxH;
	Mon, 10 Nov 2025 20:34:57 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIYbB-000000065SJ-2Azv
	for barebox@lists.infradead.org;
	Mon, 10 Nov 2025 20:34:53 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1vIYb8-0001MT-O8; Mon, 10 Nov 2025 21:34:46 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Mon, 10 Nov 2025 21:34:51 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251110-v2025-09-0-topic-optee-of-handling-v1-11-8f0625ac5471@pengutronix.de>
References: <20251110-v2025-09-0-topic-optee-of-handling-v1-0-8f0625ac5471@pengutronix.de>
In-Reply-To: <20251110-v2025-09-0-topic-optee-of-handling-v1-0-8f0625ac5471@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Marco Felsch <m.felsch@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251110_123449_573184_077188CE 
X-CRM114-Status: GOOD (  12.13  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 11/23] ARM: i.MX8M: esdctl: drop ddrc base from
 imx8m_ddrc_sdram_size
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

All i.MX8M use the same DDRC MMIO address. Therefore drop the ddrc param
from imx8m_ddrc_sdram_size() and set it locally.

While on it drop the param from _imx8m_ddrc_add_mem() as well since it
is no longer needed to be passed to imx8m_ddrc_sdram_size().

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 arch/arm/mach-imx/esdctl.c | 13 +++++++------
 1 file changed, 7 insertions(+), 6 deletions(-)

diff --git a/arch/arm/mach-imx/esdctl.c b/arch/arm/mach-imx/esdctl.c
index 4c4c3528e1a6e68c508edc48ad38c9e2e6324c1c..0a1e042792bd90b40ffc8084efbdc5a25ba0dd02 100644
--- a/arch/arm/mach-imx/esdctl.c
+++ b/arch/arm/mach-imx/esdctl.c
@@ -467,8 +467,9 @@ static void imx_ddrc_set_mstr_device_config(u32 *mstr, unsigned bits)
 	*mstr |= FIELD_PREP(DDRC_MSTR_DEVICE_CONFIG, fls(bits / 8));
 }
 
-static resource_size_t imx8m_ddrc_sdram_size(void __iomem *ddrc, unsigned buswidth)
+static resource_size_t imx8m_ddrc_sdram_size(unsigned buswidth)
 {
+	void __iomem *ddrc = IOMEM(MX8M_DDRC_CTL_BASE_ADDR);
 	const u32 addrmap[DDRC_ADDRMAP_LENGTH] = {
 		readl(ddrc + DDRC_ADDRMAP(0)),
 		readl(ddrc + DDRC_ADDRMAP(1)),
@@ -518,10 +519,10 @@ static resource_size_t imx8m_ddrc_sdram_size(void __iomem *ddrc, unsigned buswid
 				   reduced_adress_space, mstr);
 }
 
-static int _imx8m_ddrc_add_mem(void *mmdcbase, const struct imx_esdctl_data *data,
+static int _imx8m_ddrc_add_mem(const struct imx_esdctl_data *data,
 			       unsigned int buswidth)
 {
-	resource_size_t size = imx8m_ddrc_sdram_size(mmdcbase, buswidth);
+	resource_size_t size = imx8m_ddrc_sdram_size(buswidth);
 	resource_size_t size0, size1;
 	int ret;
 
@@ -555,12 +556,12 @@ static int _imx8m_ddrc_add_mem(void *mmdcbase, const struct imx_esdctl_data *dat
 
 static int imx8m_ddrc_add_mem(void *mmdcbase, const struct imx_esdctl_data *data)
 {
-	return _imx8m_ddrc_add_mem(mmdcbase, data, 32);
+	return _imx8m_ddrc_add_mem(data, 32);
 }
 
 static int imx8mn_ddrc_add_mem(void *mmdcbase, const struct imx_esdctl_data *data)
 {
-	return _imx8m_ddrc_add_mem(mmdcbase, data, 16);
+	return _imx8m_ddrc_add_mem(data, 16);
 }
 
 #define IMX9_DDRC_CS_CONFIG(n)	(0x80 + (n) * 4)
@@ -1001,7 +1002,7 @@ resource_size_t imx8m_barebox_earlymem_size(unsigned buswidth)
 {
 	resource_size_t size;
 
-	size = imx8m_ddrc_sdram_size(IOMEM(MX8M_DDRC_CTL_BASE_ADDR), buswidth);
+	size = imx8m_ddrc_sdram_size(buswidth);
 	/*
 	 * We artificially limit detected memory size to force malloc
 	 * pool placement to be within 4GiB address space, so as to

-- 
2.47.3



