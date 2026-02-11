Delivery-date: Wed, 11 Feb 2026 23:42:11 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vqIuQ-000gET-2g
	for lore@lore.pengutronix.de;
	Wed, 11 Feb 2026 23:42:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vqIuQ-0005EJ-8F
	for lore@pengutronix.de; Wed, 11 Feb 2026 23:42:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/Vn/dEZFhwah44tBNqTFm01F+6HAkr5/+geBBnYY92c=; b=kCrpTw+nhDi6wEm0lNNByAJ1oe
	f7ADK916N683I5CpSD+axaBAPi23525UEhoD5Nv8uqyLykOQe5EY6DD/+4b40i9CQSozeZNJr2Ogc
	kxFgHwWEEvBhwhGy/VlHFJtR3KzMjz2JiNTu/cVjP6KgkHPpTrzkxMXmuoz8HIr2K1KOhioyqiQI5
	hFINfF+csWKwFHyAKUCn8uiQHb5yyLCBAIHw2oQPzrjSA/bRh5SoV+Q33sbn/N2XXjOl5YLj7nqHR
	jdhLXDJ8BHjX/MTu9PEg5dB8PeQ7hRMS1pR3D/zBZPsCmrbffUxeaz5czk4LLtvwXJ0SnoDJXx8r+
	oiHzYaqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqItk-000000018t1-35hO;
	Wed, 11 Feb 2026 22:41:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqIte-000000018ni-2rHt
	for barebox@lists.infradead.org;
	Wed, 11 Feb 2026 22:41:25 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1vqItb-0004Xa-8g; Wed, 11 Feb 2026 23:41:19 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Wed, 11 Feb 2026 23:41:19 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260211-v2025-09-0-topic-optee-of-handling-v3-8-dd83358ae624@pengutronix.de>
References: <20260211-v2025-09-0-topic-optee-of-handling-v3-0-dd83358ae624@pengutronix.de>
In-Reply-To: <20260211-v2025-09-0-topic-optee-of-handling-v3-0-dd83358ae624@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Marco Felsch <m.felsch@pengutronix.de>, 
 Ahmad Fatoum <a.fatoum@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260211_144122_779474_DC85C41A 
X-CRM114-Status: GOOD (  10.50  )
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
Subject: [PATCH v3 08/14] ARM: i.MX8M: esdctl: export
 imx8m_ddrc_sdram_size()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

imx8m_ddrc_sdram_size() returns the full memory size whereas
imx8m_barebox_earlymem_size() limits the size to 4GiB.

This can be useful in cases like fixing up the FDT memory size for
OP-TEE which uses the information to configure the TZASC accordingly.

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 arch/arm/mach-imx/esdctl.c | 2 +-
 include/mach/imx/esdctl.h  | 1 +
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-imx/esdctl.c b/arch/arm/mach-imx/esdctl.c
index d89755f672b5e12e6be44dae14b58931548dd889..e4b4ca561094e2dac99f475b93efc8fc7e962d9e 100644
--- a/arch/arm/mach-imx/esdctl.c
+++ b/arch/arm/mach-imx/esdctl.c
@@ -468,7 +468,7 @@ static void imx_ddrc_set_mstr_device_config(u32 *mstr, unsigned bits)
 	*mstr |= FIELD_PREP(DDRC_MSTR_DEVICE_CONFIG, fls(bits / 8));
 }
 
-static resource_size_t imx8m_ddrc_sdram_size(unsigned buswidth)
+resource_size_t imx8m_ddrc_sdram_size(unsigned buswidth)
 {
 	void __iomem *ddrc = IOMEM(MX8M_DDRC_CTL_BASE_ADDR);
 	const u32 addrmap[DDRC_ADDRMAP_LENGTH] = {
diff --git a/include/mach/imx/esdctl.h b/include/mach/imx/esdctl.h
index 97bd444b1a4ca2defdeb9f82180c0366296a32a0..47fb665a861bf2105b4d606ea1672caf27d8e285 100644
--- a/include/mach/imx/esdctl.h
+++ b/include/mach/imx/esdctl.h
@@ -153,6 +153,7 @@ void __noreturn imx93_barebox_entry(void *boarddata);
 void imx_esdctl_disable(void);
 resource_size_t imx6_get_mmdc_sdram_size(void);
 resource_size_t imx8m_barebox_earlymem_size(unsigned buswidth);
+resource_size_t imx8m_ddrc_sdram_size(unsigned buswidth);
 resource_size_t imx9_ddrc_sdram_size(void);
 #endif
 

-- 
2.47.3



