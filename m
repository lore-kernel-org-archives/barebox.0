Delivery-date: Thu, 16 Apr 2026 11:49:01 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wDJLJ-00Cm51-1k
	for lore@lore.pengutronix.de;
	Thu, 16 Apr 2026 11:49:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wDJLI-0001K3-98
	for lore@pengutronix.de; Thu, 16 Apr 2026 11:49:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dPYimsddrf8zFWX+FEuDt52TNeCY+IlF43vwOGGfnmM=; b=uanoaigqXd0C8GPIw7IRdL0Bu+
	Bl2vVpdPlzY1IlUpFsTJetjalBUNvT7ye0/Z6gHufsSirk/rDFI7lZTdmV8EZ/N4ZM31m3EapsQip
	KFxh55awSmRMoHOfqSaEHdJhgGmua5U6L22ueWRygA9UrljUp2PgBL4kDRQ8yUh2Dkt95+LNS+GkJ
	tayqq7aycojDr1l+ouABT17UlV1p5J1YmnP7E9N+azutVNyS9/l3myNCfsRgQ2jnWbJ2XapzHQcZw
	+Pdc0hQeLpm9/VUuWRf/0sOj8MH6nx//L6Dnsat4XvS+HjXLYwZ3Y1N15QtG92TIwYcRXgBMSdmjz
	0ogDbJ1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDJKh-00000002GT1-21I1;
	Thu, 16 Apr 2026 09:48:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDJKa-00000002GOB-3deJ
	for barebox@lists.infradead.org;
	Thu, 16 Apr 2026 09:48:20 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1wDJKX-0000o5-6M; Thu, 16 Apr 2026 11:48:13 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Thu, 16 Apr 2026 11:48:09 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260416-socfpga-agilex5-sdram-v1-5-07556aa7219f@pengutronix.de>
References: <20260416-socfpga-agilex5-sdram-v1-0-07556aa7219f@pengutronix.de>
In-Reply-To: <20260416-socfpga-agilex5-sdram-v1-0-07556aa7219f@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>, 
 Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260416_024816_970970_75A95195 
X-CRM114-Status: GOOD (  10.39  )
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
	autolearn=ham autolearn_force=no version=3.4.2
Subject: [PATCH 5/9] arm: socfpga: agilex5: fix SDRAM size calculation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The FW_MPU_DDR_SCR_MPUREGION0ADDR_LIMIT is the upper limit of region 0,
which is a memory address instead of the size. Fix the calculation of
the SDRAM size by taking the SDRAM base address into consideration.

While at it, fix the function for memory addresses larger than 32 bits.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 include/mach/socfpga/soc64-sdram.h | 21 +++++++++++++++++----
 1 file changed, 17 insertions(+), 4 deletions(-)

diff --git a/include/mach/socfpga/soc64-sdram.h b/include/mach/socfpga/soc64-sdram.h
index 8f367822e869..c3eac2c43076 100644
--- a/include/mach/socfpga/soc64-sdram.h
+++ b/include/mach/socfpga/soc64-sdram.h
@@ -189,16 +189,29 @@ void sdram_clear_mem(phys_addr_t addr, phys_size_t size);
 phys_size_t sdram_calculate_size(struct altera_sdram_plat *plat);
 int agilex5_ddr_init_full(void);
 
-static inline resource_size_t agilex5_mpfe_sdram_size(void)
+static inline phys_addr_t agilex5_mpfe_sdram_base(void)
 {
 	u32 lower;
-	resource_size_t mem = 0;
+	u32 upper;
+
+	lower = FW_MPU_DDR_DMI0_SCR_READL(FW_MPU_DDR_SCR_MPUREGION0ADDR_BASE);
+	upper = FW_MPU_DDR_DMI0_SCR_READL(FW_MPU_DDR_SCR_MPUREGION0ADDR_BASEEXT);
+
+	return ((u64)upper << 32) | lower;
+}
+
+static inline resource_size_t agilex5_mpfe_sdram_size(void)
+{
+	resource_size_t limit;
+	u32 lower;
+	u32 upper;
 
 	lower = FW_MPU_DDR_DMI0_SCR_READL(FW_MPU_DDR_SCR_MPUREGION0ADDR_LIMIT);
+	upper = FW_MPU_DDR_DMI0_SCR_READL(FW_MPU_DDR_SCR_MPUREGION0ADDR_LIMITEXT);
 
-	mem = lower;
+	limit = ((u64)upper << 32) | lower;
 
-	return mem;
+	return limit - agilex5_mpfe_sdram_base() + 1;
 }
 
 #endif /* _SDRAM_SOC64_H_ */

-- 
2.47.3



