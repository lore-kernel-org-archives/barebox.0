Delivery-date: Thu, 03 Sep 2026 18:14:27 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x2A54-00APcy-1N
	for lore@lore.pengutronix.de;
	Thu, 03 Sep 2026 18:14:27 +0200
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=2dGzTRsv;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 87A6720591C
	for <lore@pengutronix.de>; Thu, 03 Sep 2026 18:14:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FpF+VQE4sB98fQ4hPw2aXJQ/RgpgECJ90Gv0CW+J2Xs=; b=2dGzTRsvh0YcQl7fbzyL0b+Ljh
	U5BdzZ4S3aFmyCYf1E17U0HdUNVOP9EUFmRQKQd6WdXGgWAEIyo1ZXsOuTEfZoSx2DNQkxYz49ht9
	XAhlwgYzvVLIPujuGFOoPnSJIY1neoxwA3yFzmbFUOe29QK9j6rz/34CpExaG3mUuSzO0lIWf+34c
	Mc+Bdugh+mLss5WfaT/yKRYdL3wmtgU+mNulwJWp2fMI00WvU5psngncu7lhnlveLzJHKb1DtXR4+
	am/LvkVgV/AGYV0OVg7fr6nDcsAt1jDpg+d9k58pCmXG/xHre7PaRUC/WYO2oLIh3o50RYKlWhta0
	q+ohx6xg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2A3b-000000008E9-1ac1;
	Thu, 03 Sep 2026 16:12:55 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2A3W-000000008By-3VI8
	for barebox@lists.infradead.org;
	Thu, 03 Sep 2026 16:12:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 23B62205924;
	Thu, 03 Sep 2026 18:12:43 +0200 (CEST)
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1x2A3P-004mPK-05;
	Thu, 03 Sep 2026 18:12:43 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Thu, 03 Sep 2026 18:12:45 +0200
Subject: [PATCH 4/4] arm: socfpga: iossm: wait for PLL lock from handoff
 table
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260903-socfpga-fix-sdram-setup-v1-4-0daa166adbca@pengutronix.de>
References: <20260903-socfpga-fix-sdram-setup-v1-0-0daa166adbca@pengutronix.de>
In-Reply-To: <20260903-socfpga-fix-sdram-setup-v1-0-0daa166adbca@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260903_091251_171958_EC4AEF2A 
X-CRM114-Status: GOOD (  17.29  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  The PLL setting in the handoff table tells barebox, for which
    PLL it needs to wait to be locked before configuring the IOSSM. While at
   it, fix the typo in the ECC_INTSTATUS_DERR register. Signed-off-by: Michael
    Tretter <m.tretter@pengutronix.de> --- arch/arm/mach-socfpga/agilex5-sdram.c
    | 6 ++++ arch/arm/mach-socfpga/iossm_mailbox.c | 58 +++++++++++++++++++++++++
    arch/arm/mac [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: urkijf8hm4gmqayyjhni46k3ch7gdx3k
X-Rspamd-Queue-Id: 87A6720591C
X-Spamd-Result: default: False [-57.81 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_IN_DNSWL_MED(-0.60)[2a0a:edc0:0:c01:1d::a2:received,2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::54:received];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	TO_DN_ALL(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FORGED_SENDER(0.00)[m.tretter@pengutronix.de,barebox-bounces@lists.infradead.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[m.tretter@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]

The PLL setting in the handoff table tells barebox, for which PLL it
needs to wait to be locked before configuring the IOSSM.

While at it, fix the typo in the ECC_INTSTATUS_DERR register.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 arch/arm/mach-socfpga/agilex5-sdram.c |  6 ++++
 arch/arm/mach-socfpga/iossm_mailbox.c | 58 +++++++++++++++++++++++++----------
 arch/arm/mach-socfpga/iossm_mailbox.h |  2 ++
 3 files changed, 50 insertions(+), 16 deletions(-)

diff --git a/arch/arm/mach-socfpga/agilex5-sdram.c b/arch/arm/mach-socfpga/agilex5-sdram.c
index 4a28713a3588..e3c6c414b261 100644
--- a/arch/arm/mach-socfpga/agilex5-sdram.c
+++ b/arch/arm/mach-socfpga/agilex5-sdram.c
@@ -107,6 +107,12 @@ static int populate_ddr_handoff(struct altera_sdram_plat *plat, struct io96b_inf
 	else
 		io96b_ctrl->num_instance = 1;
 
+	/* Read PLL from handoff */
+	io96b_ctrl->selected_plls = FIELD_GET(GENMASK(19, 16),
+					      handoff_table[PORT_EMIF_CONFIG_OFFSET]);
+	pr_debug("%s: selected PLLs from handoff: 0x%x\n",
+		 __func__, io96b_ctrl->selected_plls);
+
 	/* Assign IO96B CSR base address if it is valid */
 	for (i = 0; i < io96b_ctrl->num_instance; i++) {
 		io96b_ctrl->io96b[i].io96b_csr_addr = IOMEM(io96b_csr_reg_addr[i]);
diff --git a/arch/arm/mach-socfpga/iossm_mailbox.c b/arch/arm/mach-socfpga/iossm_mailbox.c
index 28070121ee6b..2822920ebdf0 100644
--- a/arch/arm/mach-socfpga/iossm_mailbox.c
+++ b/arch/arm/mach-socfpga/iossm_mailbox.c
@@ -17,7 +17,7 @@
 #include <mach/socfpga/soc64-system-manager.h>
 
 #define ECC_INTSTATUS_SERR				0x9C
-#define ECC_INISTATUS_DERR				0xA0
+#define ECC_INTSTATUS_DERR				0xA0
 
 #define DDR_CSR_CLKGEN_LOCKED_IO96B0_MASK		BIT(16)
 #define DDR_CSR_CLKGEN_LOCKED_IO96B1_MASK		BIT(17)
@@ -47,21 +47,49 @@
 #define IOSSM_MEM_INIT_STATUS_INTF0_OFFSET		0x260
 #define IOSSM_MEM_INIT_STATUS_INTF1_OFFSET		0x2E0
 
+#define IO96B0_PLL_A BIT(0)
+#define IO96B0_PLL_B BIT(1)
+#define IO96B1_PLL_A BIT(2)
+#define IO96B1_PLL_B BIT(3)
+
+static const unsigned int plls[] = {
+	IO96B0_PLL_A, IO96B0_PLL_B, IO96B1_PLL_A, IO96B1_PLL_B
+};
+
+#define IO96B_PLL_REG(pll) \
+	(pll & (IO96B0_PLL_A | IO96B1_PLL_A) ? ECC_INTSTATUS_SERR : ECC_INTSTATUS_DERR)
+#define IO96B_PLL_INSTANCE(pll) \
+	(pll & (IO96B0_PLL_A | IO96B0_PLL_B) ? 0 : 1)
+#define IO96B_PLL_LOCATION(pll) \
+	(pll & (IO96B0_PLL_A | IO96B1_PLL_A) ? "A" : "B")
+
 /* supported DDR type list */
 static const char *ddr_type_list[7] = {
 		"DDR4", "DDR5", "DDR5_RDIMM", "LPDDR4", "LPDDR5", "QDRIV", "UNKNOWN"
 };
 
-static int is_ddr_csr_clkgen_locked(u32 clkgen_mask)
+static int io96b_pll_locked_poll_timeout(unsigned int pll)
 {
-	int ret;
+	u32 mask = DDR_CSR_CLKGEN_LOCKED_IO96B_MASK(IO96B_PLL_INSTANCE(pll));
+	void __iomem *reg = IOMEM(SOCFPGA_SYSMGR_ADDRESS) + IO96B_PLL_REG(pll);
 	u32 tmp;
 
-	ret = readl_poll_timeout(IOMEM(SOCFPGA_SYSMGR_ADDRESS) + ECC_INTSTATUS_SERR,
-				 tmp, tmp & clkgen_mask, 10 * USEC_PER_SEC);
-	if (ret) {
-		pr_debug("%s: ddr csr clkgena locked is timeout\n", __func__);
-		return ret;
+	pr_debug("poll for locked PLL: instance %d, location %s\n",
+		 IO96B_PLL_INSTANCE(pll), IO96B_PLL_LOCATION(pll));
+	return readl_poll_timeout(reg, tmp, tmp & mask, 10 * USEC_PER_SEC);
+}
+
+static int is_ddr_csr_clkgen_locked(unsigned int selected_plls)
+{
+	int ret;
+	int i;
+
+	for (i = 0; i < ARRAY_SIZE(plls); i++) {
+		if (!(selected_plls & plls[i]))
+			continue;
+		ret = io96b_pll_locked_poll_timeout(plls[i]);
+		if (ret)
+			return ret;
 	}
 
 	return 0;
@@ -288,17 +316,15 @@ void io96b_init_mem_cal(struct io96b_info *io96b_ctrl)
 	/* Initialize overall calibration status */
 	io96b_ctrl->overall_cal_status = false;
 
+	if (io96b_ctrl->ckgen_lock) {
+		ret = is_ddr_csr_clkgen_locked(io96b_ctrl->selected_plls);
+		if (ret)
+			hang();
+	}
+
 	/* Check initial calibration status for the assigned IO96B*/
 	count = 0;
 	for (i = 0; i < io96b_ctrl->num_instance; i++) {
-		if (io96b_ctrl->ckgen_lock) {
-			ret = is_ddr_csr_clkgen_locked(DDR_CSR_CLKGEN_LOCKED_IO96B_MASK(i));
-			if (ret) {
-				pr_err("%s: ckgena_lock iossm IO96B_%d is not locked\n",
-				       __func__, i);
-				hang();
-			}
-		}
 		ret = io96b_cal_status(io96b_ctrl->io96b[i].io96b_csr_addr);
 		if (ret) {
 			io96b_ctrl->io96b[i].cal_status = false;
diff --git a/arch/arm/mach-socfpga/iossm_mailbox.h b/arch/arm/mach-socfpga/iossm_mailbox.h
index 954bfcdf382e..55c51c2c091c 100644
--- a/arch/arm/mach-socfpga/iossm_mailbox.h
+++ b/arch/arm/mach-socfpga/iossm_mailbox.h
@@ -119,6 +119,7 @@ struct io96b_instance {
  * @overall_size:	Total DDR memory size
  * @io96b[]:		IO96B instance specific information
  * @ckgen_lock:		IO96B GEN PLL lock (false = not locked, true = locked)
+ * @selected_plls:	Selected IO96B PLLs
  */
 struct io96b_info {
 	int			 version;
@@ -130,6 +131,7 @@ struct io96b_info {
 	phys_size_t		 overall_size;
 	struct io96b_instance	 io96b[MAX_IO96B_SUPPORTED];
 	bool			 ckgen_lock;
+	unsigned int		 selected_plls;
 };
 
 int io96b_mb_req(void __iomem *io96b_csr_addr, u32 ip_type, u32 instance_id,

-- 
2.47.3



