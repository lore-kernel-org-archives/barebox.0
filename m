Delivery-date: Mon, 01 Sep 2025 14:31:54 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ut3hS-006uJL-25
	for lore@lore.pengutronix.de;
	Mon, 01 Sep 2025 14:31:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ut3hR-0007yn-Bx
	for lore@pengutronix.de; Mon, 01 Sep 2025 14:31:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=DL3m6falxHEqAa7AyC0rPM53K1EsH+rCAwLvUq8xbGg=; b=stn+D/VQXssZmF0X4EZyIx9Arg
	rtx3GWZ7HGTd+sZNnQHMcGDQDKS1lIoH39Kpa24Gs5X0cb/xxiUaEZOm2IRiB2Ozl8UG5OMcIp9rH
	WDvpv//7mFA2fC/PamoMSiJwLeHWIIkIQbQPLRx9QqmXPVDVZXu7MZ5b8MbFsxOncSLwOauhPEbJE
	u/XblwGDqH+LzM24MEs+hIIrpe86hJYeVVAgyXz9jRatgXQ4Cf1gQIC9qUaA17L85kIOFYyzwgBio
	iHF2KyQNgSHFby6RR5tiJsIgkO78UCgk8B9jd6SghDVKUgD+E9rf1gwZ8O59OJkWRxtQvo/2luAQ/
	zEWn94QA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ut3gu-0000000CUsK-1fxE;
	Mon, 01 Sep 2025 12:31:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ut1oC-0000000Bufk-3dYY
	for barebox@lists.infradead.org;
	Mon, 01 Sep 2025 10:30:46 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1ut1oA-0003vz-7e; Mon, 01 Sep 2025 12:30:42 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: s.hauer@pengutronix.de,
	barebox@lists.infradead.org
Date: Mon,  1 Sep 2025 12:29:37 +0200
Message-ID: <20250901103039.914774-1-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.47.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250901_033044_980350_30EC2536 
X-CRM114-Status: GOOD (  11.11  )
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
Subject: [PATCH] ARM: mach-imx: tzasc: keep default region 0 secure settings for i.MX8M
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The TZC-380 region 0 is the TZC default (fallback) region. This region
is used if access to a certain DRAM address was done which isn't
configured by any other region (see [1] for more information). Region 0
covers the complete AXI space from 0x0 to AXI-bus width. The access is
secure-only after reset.

The TZC-380 is not memory alias aware (see [1] for more information) and
due to the DDR controller, the i.MX8M allows memory alias access.

Configuring region 0 as secure + non-secure RW access opens the
potential security risk of allowing access to secure only memory e.g.
TEE memory area if the TEE didn't configure all memory aliases for its
memory. Because in such case region 0 could be used as fallback if an
attackers access the TEE memory via memory aliases.

Don't reconfigure TZC-380 default region 0 to allow secure and
non-secure access and instead setup an early non-secure region 1 which
covers the complete ram <= 4G size to fix this.

[1] https://developer.arm.com/documentation/ddi0431/c

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 arch/arm/mach-imx/tzasc.c | 19 ++++++++++++++-----
 1 file changed, 14 insertions(+), 5 deletions(-)

diff --git a/arch/arm/mach-imx/tzasc.c b/arch/arm/mach-imx/tzasc.c
index 0fe7f6eb7f4a..31664bbf2b39 100644
--- a/arch/arm/mach-imx/tzasc.c
+++ b/arch/arm/mach-imx/tzasc.c
@@ -345,6 +345,7 @@ bool imx6_can_access_tzasc(void)
 void imx8m_tzc380_init(void)
 {
 	u32 __iomem *gpr = IOMEM(MX8M_IOMUXC_GPR_BASE_ADDR);
+	resource_size_t ram_sz;
 
 	/* Enable TZASC and lock setting */
 	setbits_le32(&gpr[10], GPR_TZASC_EN);
@@ -364,13 +365,21 @@ void imx8m_tzc380_init(void)
 	if (cpu_is_mx8mn() || cpu_is_mx8mp())
 		setbits_le32(&gpr[10], GPR_TZASC_ID_SWAP_BYPASS_LOCK);
 
+	/* All i.MX8M do have a 32-bit bus width except for the i.MX8M Nano */
+	ram_sz = imx8m_barebox_earlymem_size(32);
+	if (cpu_is_mx8mn())
+		ram_sz = imx8m_barebox_earlymem_size(16);
+
 	/*
-	 * set Region 0 attribute to allow secure and non-secure
-	 * read/write permission. Found some masters like usb dwc3
-	 * controllers can't work with secure memory.
+	 * Setup Region 1 to cover complete earlymem size, to  allow non-secure
+	 * read/write permission. Found some masters like usb dwc3 controllers
+	 * can't work with secure memory.
+	 *
+	 * According to upstream OP-TEE and TF-A the TZC-380 reagion base
+	 * address starts at 0x0 and not at MX8M_DDR_CSD1_BASE_ADDR.
 	 */
-	writel(MX8M_TZASC_REGION_ATTRIBUTES_0_SP,
-		   MX8M_TZASC_REGION_ATTRIBUTES_0);
+	imx_tzc380_init_and_setup(IOMEM(MX8M_TZASC_BASE_ADDR), 1,
+				  0, ram_sz, TZC380_REGION_SP_NS_RW);
 }
 
 bool imx8m_tzc380_is_enabled(void)
-- 
2.47.2



