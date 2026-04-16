Delivery-date: Thu, 16 Apr 2026 11:49:01 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wDJLJ-00Cm53-1o
	for lore@lore.pengutronix.de;
	Thu, 16 Apr 2026 11:49:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wDJLI-0001K4-7u
	for lore@pengutronix.de; Thu, 16 Apr 2026 11:49:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bkAXzbnOsot8QZCMB5M8dajBJ7/5onRezx2Za+s5d80=; b=noHy8bm7VFw+nh2MeJI53SJaPd
	cl/aOm1tez9uvWWXw0wdMRRBeA1uZQAGOq59++jNpPs1RSY3EVtc4iXcaaGmvYIHppVbXyF/JX5Cj
	QmdbTtx0rUQrRnzoR7qUTkK27kr9wBGXgMjCwInFi2OzTP5o4HSMH06d7ye6Lki59tjNhZ33Uzmfg
	R3h8Ht6B3nUQaxjKSixEpfqJ4f7W2fM+0dh833oG8zrut6GeJPttHxn+aXhcLDb+54lNiD8SmJ0R0
	JBKpoxh+ni1Et0mPGhYBcENdJ0BwC0/bZY5GJbb7n4NgKTo/xeVCzmX/Fq/FpCS9cLowUeJjwDOjt
	1qd+XCjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDJKf-00000002GRu-0crn;
	Thu, 16 Apr 2026 09:48:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDJKa-00000002GO9-3YH9
	for barebox@lists.infradead.org;
	Thu, 16 Apr 2026 09:48:19 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1wDJKX-0000o5-41; Thu, 16 Apr 2026 11:48:13 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Thu, 16 Apr 2026 11:48:07 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260416-socfpga-agilex5-sdram-v1-3-07556aa7219f@pengutronix.de>
References: <20260416-socfpga-agilex5-sdram-v1-0-07556aa7219f@pengutronix.de>
In-Reply-To: <20260416-socfpga-agilex5-sdram-v1-0-07556aa7219f@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>, 
 Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260416_024816_960123_EB4DFDD8 
X-CRM114-Status: GOOD (  11.60  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/9] arm: socfpga: agilex5: configure firewall with base
 and size
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The firewall configuration internally uses the DDR base address and
reserves some space for the TF-A. Pass the base address of the region 0
as a parameter to make it more visible.

Since base is now the base of region 0 instead of the DDR base, the
passed size must now be the size of region 0 instead of the full DDR
size.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 arch/arm/mach-socfpga/agilex5-sdram.c | 27 +++++++++++----------------
 1 file changed, 11 insertions(+), 16 deletions(-)

diff --git a/arch/arm/mach-socfpga/agilex5-sdram.c b/arch/arm/mach-socfpga/agilex5-sdram.c
index 4e7994985d26..4d95c7b64306 100644
--- a/arch/arm/mach-socfpga/agilex5-sdram.c
+++ b/arch/arm/mach-socfpga/agilex5-sdram.c
@@ -179,20 +179,14 @@ static bool ddr_ecc_dbe_status(void)
 	return false;
 }
 
-static void sdram_set_firewall(phys_size_t hw_size)
+static void sdram_set_firewall(phys_addr_t base, phys_size_t size)
 {
-	phys_size_t value;
+	phys_addr_t limit = base + size - 1;
 	u32 lower, upper;
 
-	value = SOCFPGA_AGILEX5_DDR_BASE;
-	/* Keep first 1MB of SDRAM memory region as secure region when
-	 * using ATF flow, where the ATF code is located.
-	 */
-	value += SZ_1M;
-
 	/* Setting non-secure MPU region base and base extended */
-	lower = lower_32_bits(value);
-	upper = upper_32_bits(value);
+	lower = lower_32_bits(base);
+	upper = upper_32_bits(base);
 	FW_MPU_DDR_SCR_WRITEL(lower, FW_MPU_DDR_SCR_MPUREGION0ADDR_BASE);
 	FW_MPU_DDR_SCR_WRITEL(upper & 0xff, FW_MPU_DDR_SCR_MPUREGION0ADDR_BASEEXT);
 	FW_F2SDRAM_DDR_SCR_WRITEL(lower, FW_F2SDRAM_DDR_SCR_REGION0ADDR_BASE);
@@ -203,11 +197,8 @@ static void sdram_set_firewall(phys_size_t hw_size)
 	FW_MPU_DDR_SCR_WRITEL(upper & 0xff, FW_MPU_DDR_SCR_NONMPUREGION0ADDR_BASEEXT);
 
 	/* Setting non-secure MPU limit and limit extended */
-	value = SOCFPGA_AGILEX5_DDR_BASE + hw_size - 1;
-
-	lower = lower_32_bits(value);
-	upper = upper_32_bits(value);
-
+	lower = lower_32_bits(limit);
+	upper = upper_32_bits(limit);
 	FW_MPU_DDR_SCR_WRITEL(lower, FW_MPU_DDR_SCR_MPUREGION0ADDR_LIMIT);
 	FW_MPU_DDR_SCR_WRITEL(upper & 0xff, FW_MPU_DDR_SCR_MPUREGION0ADDR_LIMITEXT);
 
@@ -327,7 +318,11 @@ int agilex5_ddr_init_full(void)
 		hw_size -= hw_size / 8;
 	pr_debug("%s: %lld MiB\n", io96b_ctrl.ddr_type, hw_size / SZ_1M);
 
-	sdram_set_firewall(hw_size);
+	/*
+	 * Keep first 1MB of SDRAM memory region as secure region when
+	 * using ATF flow, where the ATF code is located.
+	 */
+	sdram_set_firewall(SOCFPGA_AGILEX5_DDR_BASE + SZ_1M, hw_size - SZ_1M);
 
 	/* Firewall setting for MPFE CSR */
 	/* IO96B0_reg */

-- 
2.47.3



