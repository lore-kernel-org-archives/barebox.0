Delivery-date: Wed, 06 May 2026 11:11:33 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wKYI2-001XiX-0b
	for lore@lore.pengutronix.de;
	Wed, 06 May 2026 11:11:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wKYHx-00035h-47
	for lore@pengutronix.de; Wed, 06 May 2026 11:11:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0rgict3UhtR4urYtc1dGY6wfupr+tOu/U7f20127iUw=; b=x+bsy+ntllY07u9+YSJeDTKVH7
	v/8goHMgZV6TgKCo0I6IkGqQhSz2aNLLZmulUsKPORzbbczQeVAN/VLPAFXnOO/Qb8oGTUubQJqq+
	px3PcDL3ps1ahRDUB8bZbB6h/wCX27Yh5nM7X6XVebFxrczD4gqiScOwLiubWcNyYsKJWLi/w90qZ
	PjDQJeB7uetlxQKnOqNGczs9JaunrCEvHd8OjdRmhlcP0le+loCoCvXWoYW4ZrjKe9m5F3sgW1vBO
	VcxkI/mXzQChDVAdG3W7d0UjUwidNSu3m0Tt2fvUx3e/ARXOas6Wbz/QvfHjBCr3BAj6qw7wiBzJJ
	9qd3iyFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKYCx-00000000HtM-2dl5;
	Wed, 06 May 2026 09:06:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKYCv-00000000Hqi-3OBR
	for barebox@lists.infradead.org;
	Wed, 06 May 2026 09:06:17 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1wKYCs-0008RK-4b; Wed, 06 May 2026 11:06:14 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Wed, 06 May 2026 11:06:10 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260506-socfpga-agilex5-qspi-v1-4-94def85c1b80@pengutronix.de>
References: <20260506-socfpga-agilex5-qspi-v1-0-94def85c1b80@pengutronix.de>
In-Reply-To: <20260506-socfpga-agilex5-qspi-v1-0-94def85c1b80@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>, 
 Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260506_020617_851724_BE8EF9B5 
X-CRM114-Status: GOOD (  10.52  )
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
Subject: [PATCH 4/6] arm: socfpga: mailbox_s10: keep clock rate in Hz
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The QSPI reference clock rate is retrieved in Hz from the firmware, but
stored in kHz in a handover register.

Initially, the clock rated is stored as Hz in clk_khz, and later
converted to kHz before printing and storing it. Initially the warning
prints the clock rate in Hz, but prints kHz as unit. This is confusing.

Leave the clock rate in Hz, and convert it to kHz when used.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 arch/arm/mach-socfpga/mailbox_s10.c | 15 +++++++--------
 1 file changed, 7 insertions(+), 8 deletions(-)

diff --git a/arch/arm/mach-socfpga/mailbox_s10.c b/arch/arm/mach-socfpga/mailbox_s10.c
index 4199c4fb913a..c6ea081165d4 100644
--- a/arch/arm/mach-socfpga/mailbox_s10.c
+++ b/arch/arm/mach-socfpga/mailbox_s10.c
@@ -300,7 +300,7 @@ int socfpga_mailbox_s10_qspi_open(void)
 	u32 resp_buf[1] = {};
 	u32 resp_buf_len = ARRAY_SIZE(resp_buf);
 	u32 reg;
-	u32 clk_khz;
+	u32 clk_rate;
 	int try = 0;
 
 retry:
@@ -331,20 +331,19 @@ int socfpga_mailbox_s10_qspi_open(void)
 	}
 
 	/* Get the QSPI clock from SDM response and save for later use */
-	clk_khz = resp_buf[0];
-	if (clk_khz < 1000) {
-		pr_err("QSPI: Unexpected reference clock rate: %d kHz\n",
-		       clk_khz);
+	clk_rate = resp_buf[0];
+	if (clk_rate < 1000) {
+		pr_err("QSPI: Unexpected reference clock rate: %d Hz\n",
+		       clk_rate);
 		return -EINVAL;
 	}
 
-	clk_khz /= 1000;
-	pr_info("QSPI: reference clock at %d kHz\n", clk_khz);
+	pr_info("QSPI: reference clock at %d kHz\n", clk_rate / 1000);
 
 	reg = (readl(SOCFPGA_SYSMGR_ADDRESS + SYSMGR_SOC64_BOOT_SCRATCH_COLD0)) &
 			~(SYSMGR_SCRATCH_REG_0_QSPI_REFCLK_MASK);
 
-	writel((clk_khz & SYSMGR_SCRATCH_REG_0_QSPI_REFCLK_MASK) | reg,
+	writel(((clk_rate / 1000) & SYSMGR_SCRATCH_REG_0_QSPI_REFCLK_MASK) | reg,
 	       SOCFPGA_SYSMGR_ADDRESS + SYSMGR_SOC64_BOOT_SCRATCH_COLD0);
 
 	return 0;

-- 
2.47.3



