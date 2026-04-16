Delivery-date: Thu, 16 Apr 2026 17:26:40 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wDOc4-00Crja-0r
	for lore@lore.pengutronix.de;
	Thu, 16 Apr 2026 17:26:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wDOc3-0008Ks-K5
	for lore@pengutronix.de; Thu, 16 Apr 2026 17:26:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yCOD+pDy08UC8IopPsXCKhn5tFFBIiydsFSp0VY6YUU=; b=l1nhPoqO1mgJV4X8kKuMgYaltK
	XsDuX1QCCFBHRZuBu99AMlwZjQvD66ZJ0RgWmtiXJFlZQRgiNbZgZA1WHzPpATc1zT34c4hHXxXyT
	/MYp0JE7VPEOIAbgcUvcHkaI/2cfvh8ef6sQdksa/fabLE9QEWktuDgughE+hqzpaTECQ/c8nscjJ
	rROrBu2fCOumPwitLmsGu5XisG3iv99HnXvdv8D2Q5Ay1fTmcgOjORAae6JGxD2AKqHQhGIemZTYJ
	Qoq+Bg8y4RBvHqqpcJOvmt0O9CpAUdmvf6OLsJ1e1cztRap8atGYAfc9xSx/niPBVdF+4ECR0blbM
	ksyl/Kcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDObP-00000002cDB-37Q3;
	Thu, 16 Apr 2026 15:25:59 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDObM-00000002cAJ-0D1Q
	for barebox@lists.infradead.org;
	Thu, 16 Apr 2026 15:25:58 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1wDObI-0007uE-Tx; Thu, 16 Apr 2026 17:25:52 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Thu, 16 Apr 2026 17:25:47 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260416-socfpga-agilex5-iossm-cleanup-v1-2-ca9aae003c84@pengutronix.de>
References: <20260416-socfpga-agilex5-iossm-cleanup-v1-0-ca9aae003c84@pengutronix.de>
In-Reply-To: <20260416-socfpga-agilex5-iossm-cleanup-v1-0-ca9aae003c84@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>, 
 Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260416_082556_091490_18F9BC77 
X-CRM114-Status: GOOD (  13.59  )
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
Subject: [PATCH 2/6] arm: socfpga: iossm: use readl_poll_timeout
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Avoid the custom wait_for_timeout() polling function, but use the
standard readl_poll_timeout() instead.

Actually, the timeout isn't used, because the code is executed in the
PBL. Since this is the SDRAM setup, this doesn't matter since the boot
can't continue in case of a timeout, anyway.

The 10 seconds timeout is the same as used before by the custom
wait_for_timeout() function. U-Boot uses 120 seconds as timeout.

readl_poll_timeout() has the additional advantage that we may reuse the
read register value afterwards.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 arch/arm/mach-socfpga/iossm_mailbox.c | 41 +++++++++++++++--------------------
 1 file changed, 17 insertions(+), 24 deletions(-)

diff --git a/arch/arm/mach-socfpga/iossm_mailbox.c b/arch/arm/mach-socfpga/iossm_mailbox.c
index b8c1fcf68c09..7ec79dec4534 100644
--- a/arch/arm/mach-socfpga/iossm_mailbox.c
+++ b/arch/arm/mach-socfpga/iossm_mailbox.c
@@ -9,6 +9,7 @@
 #include <common.h>
 #include <io.h>
 #include <linux/bitfield.h>
+#include <linux/iopoll.h>
 #include <linux/sizes.h>
 #include "iossm_mailbox.h"
 #include <mach/socfpga/generic.h>
@@ -48,30 +49,13 @@ static const char *ddr_type_list[7] = {
 		"DDR4", "DDR5", "DDR5_RDIMM", "LPDDR4", "LPDDR5", "QDRIV", "UNKNOWN"
 };
 
-static int wait_for_timeout(const void __iomem *reg, u32 mask, bool set)
-{
-	int timeout = 1000000;
-	int val;
-
-	while (timeout > 0) {
-		val = readl(IOMEM(reg));
-		if (!set)
-			val = ~val;
-
-		if ((val & mask) == mask)
-			return 0;
-		__udelay(10);
-		timeout--;
-	}
-
-	return -ETIMEDOUT;
-}
-
 static int is_ddr_csr_clkgen_locked(u32 clkgen_mask, u8 num_port)
 {
 	int ret;
+	u32 tmp;
 
-	ret = wait_for_timeout(IOMEM(ECC_INTSTATUS_SERR), clkgen_mask, true);
+	ret = readl_poll_timeout(IOMEM(ECC_INTSTATUS_SERR),
+				 tmp, tmp & clkgen_mask, 10 * USEC_PER_SEC);
 	if (ret) {
 		pr_debug("%s: ddr csr clkgena locked is timeout\n", __func__);
 		return ret;
@@ -105,7 +89,9 @@ int io96b_mb_req(phys_addr_t io96b_csr_addr, u32 ip_type, u32 instance_id,
 	memset(resp, 0x0, sizeof(*resp));
 
 	/* Ensure CMD_REQ is cleared before write any command request */
-	ret = wait_for_timeout((IOMEM(io96b_csr_addr) + IOSSM_CMD_REQ_OFFSET), GENMASK(31, 0), false);
+	ret = readl_poll_timeout(IOMEM(io96b_csr_addr) + IOSSM_CMD_REQ_OFFSET,
+				 cmd_req, !(cmd_req & GENMASK(31, 0)),
+				 10 * USEC_PER_SEC);
 	if (ret) {
 		pr_err("%s: CMD_REQ not ready\n", __func__);
 		return -1;
@@ -135,8 +121,10 @@ int io96b_mb_req(phys_addr_t io96b_csr_addr, u32 ip_type, u32 instance_id,
 		 cmd_req, io96b_csr_addr + IOSSM_CMD_REQ_OFFSET);
 
 	/* Read CMD_RESPONSE_READY in CMD_RESPONSE_STATUS*/
-	ret = wait_for_timeout((IOMEM(io96b_csr_addr) + IOSSM_CMD_RESPONSE_STATUS_OFFSET),
-			       IOSSM_STATUS_COMMAND_RESPONSE_READY, true);
+	ret = readl_poll_timeout(IOMEM(io96b_csr_addr) + IOSSM_CMD_RESPONSE_STATUS_OFFSET,
+				 resp->cmd_resp_status,
+				 resp->cmd_resp_status & IOSSM_STATUS_COMMAND_RESPONSE_READY,
+				 10 * USEC_PER_SEC);
 	if (ret) {
 		pr_err("%s: CMD_RESPONSE ERROR:\n", __func__);
 		cmd_resp = readl(io96b_csr_addr + IOSSM_CMD_RESPONSE_STATUS_OFFSET);
@@ -262,9 +250,14 @@ static int io96b_cal_status(phys_addr_t addr)
 {
 	int ret;
 	u32 cal_success, cal_fail;
+	u32 cal_status;
 	phys_addr_t status_addr = addr + IOSSM_STATUS_OFFSET;
+
 	/* Ensure calibration completed */
-	ret = wait_for_timeout(IOMEM(status_addr), IOSSM_STATUS_CAL_BUSY, false);
+	ret = readl_poll_timeout(IOMEM(status_addr),
+				 cal_status,
+				 !(cal_status & IOSSM_STATUS_CAL_BUSY),
+				 10 * USEC_PER_SEC);
 	if (ret) {
 		pr_err("%s: SDRAM calibration IO96b instance 0x%llx timeout\n",
 		       __func__, status_addr);

-- 
2.47.3



