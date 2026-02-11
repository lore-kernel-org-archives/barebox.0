Delivery-date: Wed, 11 Feb 2026 23:42:09 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vqIuO-000gDU-21
	for lore@lore.pengutronix.de;
	Wed, 11 Feb 2026 23:42:09 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vqIuN-0005CP-UX
	for lore@pengutronix.de; Wed, 11 Feb 2026 23:42:09 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hwgnaRjaBpp9GljUxw9j8BrnlEYndu7Ok0GFofg0GYg=; b=ECgBDzaf240sG/+G/ebnyVMmuQ
	rbgRTb/NLTNPhIyCkQanpcDFcY5Jon6xNt1qFsCkEbv1apGQTgloOZ7FeOvoKyzS+gXbHcpW3VL9E
	sjARazdbhRpnApErDVPFu9oNGNfiyMMpk6IWYUgrFLt/c0PxoeCIVF2p2tI+PiRj65WzHmE4uafh9
	1NCiHGrKCJhzm1yMtQtf5Z0jw21FwnZ5G1VMQN+BilinsqbiOM8aYF0qZQMi7hwW6mSYWwpzVZvha
	X/s2H4CNqL/BB7gzwIZkHNKrKZdR3GT1zbQPL87/5bEbs4g6BcglfufG32SvHwInpVCGNTNDgvAfZ
	BS1tUr9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqItk-000000018sd-1WGe;
	Wed, 11 Feb 2026 22:41:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqIte-000000018nh-2aWy
	for barebox@lists.infradead.org;
	Wed, 11 Feb 2026 22:41:25 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1vqItb-0004Xa-7a; Wed, 11 Feb 2026 23:41:19 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Wed, 11 Feb 2026 23:41:18 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260211-v2025-09-0-topic-optee-of-handling-v3-7-dd83358ae624@pengutronix.de>
References: <20260211-v2025-09-0-topic-optee-of-handling-v3-0-dd83358ae624@pengutronix.de>
In-Reply-To: <20260211-v2025-09-0-topic-optee-of-handling-v3-0-dd83358ae624@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Marco Felsch <m.felsch@pengutronix.de>, 
 Ahmad Fatoum <a.fatoum@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260211_144122_661498_C4C85D1B 
X-CRM114-Status: GOOD (  11.44  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v3 07/14] ARM: i.MX8M: esdctl: drop ddrc base from
 imx8m_ddrc_sdram_size
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

All i.MX8M use the same DDRC MMIO address. Therefore drop the ddrc param
from imx8m_ddrc_sdram_size() and set it locally.

While on it drop the param from _imx8m_ddrc_add_mem() as well since it
is no longer needed to be passed to imx8m_ddrc_sdram_size().

Acked-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 arch/arm/mach-imx/esdctl.c | 13 +++++++------
 1 file changed, 7 insertions(+), 6 deletions(-)

diff --git a/arch/arm/mach-imx/esdctl.c b/arch/arm/mach-imx/esdctl.c
index 935c3d32571dfa6a2a6252f981054b2e8f7c4cbd..d89755f672b5e12e6be44dae14b58931548dd889 100644
--- a/arch/arm/mach-imx/esdctl.c
+++ b/arch/arm/mach-imx/esdctl.c
@@ -468,8 +468,9 @@ static void imx_ddrc_set_mstr_device_config(u32 *mstr, unsigned bits)
 	*mstr |= FIELD_PREP(DDRC_MSTR_DEVICE_CONFIG, fls(bits / 8));
 }
 
-static resource_size_t imx8m_ddrc_sdram_size(void __iomem *ddrc, unsigned buswidth)
+static resource_size_t imx8m_ddrc_sdram_size(unsigned buswidth)
 {
+	void __iomem *ddrc = IOMEM(MX8M_DDRC_CTL_BASE_ADDR);
 	const u32 addrmap[DDRC_ADDRMAP_LENGTH] = {
 		readl(ddrc + DDRC_ADDRMAP(0)),
 		readl(ddrc + DDRC_ADDRMAP(1)),
@@ -519,10 +520,10 @@ static resource_size_t imx8m_ddrc_sdram_size(void __iomem *ddrc, unsigned buswid
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
 
@@ -556,12 +557,12 @@ static int _imx8m_ddrc_add_mem(void *mmdcbase, const struct imx_esdctl_data *dat
 
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
@@ -1002,7 +1003,7 @@ resource_size_t imx8m_barebox_earlymem_size(unsigned buswidth)
 {
 	resource_size_t size;
 
-	size = imx8m_ddrc_sdram_size(IOMEM(MX8M_DDRC_CTL_BASE_ADDR), buswidth);
+	size = imx8m_ddrc_sdram_size(buswidth);
 	/*
 	 * We artificially limit detected memory size to force malloc
 	 * pool placement to be within 4GiB address space, so as to

-- 
2.47.3



