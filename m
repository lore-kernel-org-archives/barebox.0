Delivery-date: Thu, 16 Apr 2026 11:49:02 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wDJLK-00Cm5r-0J
	for lore@lore.pengutronix.de;
	Thu, 16 Apr 2026 11:49:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wDJLI-0001KC-AE
	for lore@pengutronix.de; Thu, 16 Apr 2026 11:49:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CgGnbwvqXiwSEVkQAqYzTn28RNMGa54DbrggLzAuGGI=; b=YwXp7AjXm2QX8D5BLKYlXAsnAe
	t1FU44iOlP+BtIB79bfcrYZpbSVIiIV1in6C2UB28MV0cMwtG+g6uHplzLclmskWc/UihKodoxAmt
	HRxQKAp5GMLQOWfg7B2B9yYzZMGmtZrmuHfy4QxRyLS3qkggxcD7l7lRjHqE4KY9DkCHtwBkYh/iH
	gNmUp9570YbrcKveR+z1GzuYl4I7yPPayzXYlwW3vJ1cOuimBMS/EHf/IdL0eAFnef5UqjsthPimU
	diLEXG2698W73+aVuv8PWTssrvPYnf7Hgw2iaSqDn7X4gsval9rzigmAkg5deyXnEMGSIqsmrQpIT
	gT7S5Saw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDJKh-00000002GTB-38c0;
	Thu, 16 Apr 2026 09:48:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDJKa-00000002GOD-3cck
	for barebox@lists.infradead.org;
	Thu, 16 Apr 2026 09:48:20 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1wDJKX-0000o5-91; Thu, 16 Apr 2026 11:48:13 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Thu, 16 Apr 2026 11:48:11 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260416-socfpga-agilex5-sdram-v1-7-07556aa7219f@pengutronix.de>
References: <20260416-socfpga-agilex5-sdram-v1-0-07556aa7219f@pengutronix.de>
In-Reply-To: <20260416-socfpga-agilex5-sdram-v1-0-07556aa7219f@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>, 
 Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260416_024816_977273_ADBD9686 
X-CRM114-Status: GOOD (  12.93  )
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
Subject: [PATCH 7/9] arm: socfpga: agilex5: read SDRAM limits from firewall
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The hard-coded membase and memsize are not flexible enough for the
configurable SDRAM setup on Agilex 5.

The SZ_1M offset is the result of reserving some memory for the TF-A.
The offset isn't correct anymore, if the reserved area for the TF-A is
changed.

The memory size may change, if the EMIF is configured with inline ECC,
which reserves 1/8 of the memory for checksums and reduces the usable
SDRAM size. Depending on the EMIF configuration, the same board may or
may not use inline ECC.

Since the PBL in EL3 configures the firewall to consider the reserved
area for the TF-A and the reserved memory for ECC checksums, the PBL in
EL1 may read back the configuration to determine the usable memory for
barebox proper.

Add sanity checks on the base address and size to ensure the firewall is
actually configured.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 arch/arm/boards/arrow-axe5-eagle/lowlevel.c | 12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boards/arrow-axe5-eagle/lowlevel.c b/arch/arm/boards/arrow-axe5-eagle/lowlevel.c
index 41c1b832a682..4817b3ec2d86 100644
--- a/arch/arm/boards/arrow-axe5-eagle/lowlevel.c
+++ b/arch/arm/boards/arrow-axe5-eagle/lowlevel.c
@@ -21,6 +21,8 @@ extern char __dtb_z_socfpga_agilex5_axe5_eagle_start[];
 static noinline void axe5_eagle_continue(void)
 {
 	void *fdt;
+	phys_addr_t membase;
+	phys_size_t memsize;
 
 	agilex5_clk_init();
 
@@ -68,7 +70,15 @@ static noinline void axe5_eagle_continue(void)
 
 	fdt = __dtb_z_socfpga_agilex5_axe5_eagle_start;
 
-	barebox_arm_entry(SOCFPGA_AGILEX5_DDR_BASE + SZ_1M, SZ_1G - SZ_1M, fdt);
+	membase = agilex5_mpfe_sdram_base();
+	memsize = agilex5_mpfe_sdram_size();
+
+	if (membase < SOCFPGA_AGILEX5_DDR_BASE || memsize == 0) {
+		pr_err("Invalid firewall configuration\n");
+		hang();
+	}
+
+	barebox_arm_entry(membase, memsize, fdt);
 }
 
 ENTRY_FUNCTION_WITHSTACK(start_socfpga_agilex5_axe5_eagle, AXE5_STACKTOP, r0, r1, r2)

-- 
2.47.3



