Delivery-date: Mon, 17 Jun 2024 13:37:33 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sJAg1-007Yi9-0Q
	for lore@lore.pengutronix.de;
	Mon, 17 Jun 2024 13:37:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sJAg0-0007ER-6W
	for lore@pengutronix.de; Mon, 17 Jun 2024 13:37:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0iIAtGATwQUa0S0G/7IDyX8dAEhBTD67p+WsQHhDYxQ=; b=2FOgrO9+LwNqb6qY60A9h2C8zY
	MMQh/d6cYmpRJl0b3Ht47F3rmnTrQytvsrDcZj/NgdcuUVjGkDfbzKlF4KM8sNdwTUqwWkOhzxgfk
	5PqZGoJUCaWC0AS+/vZAhORw8UQeUAdtEwhQ1ga28AZwP9dXitI14D2i963bX8iXoCX8nWymMvo0G
	rgemFnbQNucqm/aIvPF4l7VVCfVFDbdb4eM1JFsDZJ8k+jiPDZd/B6R4WXvX7LrpSnR0xOxXnOTyW
	oD+mlpPtBWps9V1iaJclzHVQFQK0QwP+MOIICOE2FwUBLtNrNTsIXechlrEl08MaqatoaVqZcz03K
	xBtrtyWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJAfU-0000000AVlm-1KLt;
	Mon, 17 Jun 2024 11:37:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJAfB-0000000AVWh-123Q
	for barebox@lists.infradead.org;
	Mon, 17 Jun 2024 11:36:45 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.trumtrar.info)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1sJAf8-0006ab-Pr; Mon, 17 Jun 2024 13:36:38 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Mon, 17 Jun 2024 13:36:34 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240617-v2024-05-0-topic-socfpga-arria10-xloader-v1-12-48a6eba4bb5e@pengutronix.de>
References: <20240617-v2024-05-0-topic-socfpga-arria10-xloader-v1-0-48a6eba4bb5e@pengutronix.de>
In-Reply-To: <20240617-v2024-05-0-topic-socfpga-arria10-xloader-v1-0-48a6eba4bb5e@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240617_043641_338786_AA4F45F1 
X-CRM114-Status: GOOD (  11.89  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 12/14] ARM: Arria10: xload: refactor wait loops
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

wait_on_timeout uses get_time_ns() which we don't have.
Instead define our own variant of wait_on_timeout() and replace all wait
loops with this one define.

While at it, reduce the "chosen-by-dice" timeouts where appropriate

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/mach-socfpga/arria10-xload.c | 55 +++++++++++++++--------------------
 1 file changed, 24 insertions(+), 31 deletions(-)

diff --git a/arch/arm/mach-socfpga/arria10-xload.c b/arch/arm/mach-socfpga/arria10-xload.c
index 22b23d2dc7..5ec6e93e96 100644
--- a/arch/arm/mach-socfpga/arria10-xload.c
+++ b/arch/arm/mach-socfpga/arria10-xload.c
@@ -16,6 +16,22 @@
 #include <mach/socfpga/generic.h>
 #include <linux/sizes.h>
 
+#define __wait_on_timeout(timeout, condition) \
+({								\
+	int __ret = 0;						\
+	int __timeout = timeout;				\
+								\
+	while ((condition)) {					\
+		if (__timeout-- < 0) {				\
+			__ret = -ETIMEDOUT;			\
+			break;					\
+		}						\
+		arria10_kick_l4wd0();                           \
+                __udelay(1);                                    \
+	}							\
+	__ret;							\
+})
+
 int a10_update_bits(unsigned int reg, unsigned int mask,
 		    unsigned int val)
 {
@@ -57,8 +73,6 @@ static int a10_fpga_wait_for_condone(void)
 
 static void a10_fpga_generate_dclks(uint32_t count)
 {
-	int32_t timeout;
-
 	/* Clear any existing DONE status. */
 	writel(A10_FPGAMGR_DCLKSTAT_DCLKDONE, ARRIA10_FPGAMGRREGS_ADDR +
 	       A10_FPGAMGR_DCLKSTAT_OFST);
@@ -67,13 +81,9 @@ static void a10_fpga_generate_dclks(uint32_t count)
 	writel(count, ARRIA10_FPGAMGRREGS_ADDR + A10_FPGAMGR_DCLKCNT_OFST);
 
 	/* wait till the dclkcnt done */
-	timeout = 10000000;
-
-	while (!readl(ARRIA10_FPGAMGRREGS_ADDR + A10_FPGAMGR_DCLKSTAT_OFST)) {
-		arria10_kick_l4wd0();
-		if (timeout-- < 0)
-			return;
-	}
+	__wait_on_timeout(1000,
+			  !readl(ARRIA10_FPGAMGRREGS_ADDR +
+				 A10_FPGAMGR_DCLKSTAT_OFST));
 
 	/* Clear DONE status. */
 	writel(A10_FPGAMGR_DCLKSTAT_DCLKDONE, ARRIA10_FPGAMGRREGS_ADDR +
@@ -140,7 +150,6 @@ static int a10_fpga_init(void *buf)
 {
 	uint32_t stat, mask;
 	uint32_t val;
-	int timeout;
 
 	val = CFGWDTH_32 << A10_FPGAMGR_IMGCFG_CTL_02_CFGWIDTH_SHIFT;
 	a10_update_bits(A10_FPGAMGR_IMGCFG_CTL_02_OFST,
@@ -151,11 +160,7 @@ static int a10_fpga_init(void *buf)
 	mask = A10_FPGAMGR_IMGCFG_STAT_F2S_NCONFIG_PIN |
 		A10_FPGAMGR_IMGCFG_STAT_F2S_NSTATUS_PIN;
 	/* Make sure no external devices are interfering */
-	timeout = 10000;
-	while ((socfpga_a10_fpga_read_stat() & mask) != mask) {
-		if (timeout-- < 0)
-			return -ETIMEDOUT;
-	}
+	__wait_on_timeout(100000, (socfpga_a10_fpga_read_stat() & mask) != mask);
 
 	/* S2F_NCE = 1 */
 	a10_update_bits(A10_FPGAMGR_IMGCFG_CTL_01_OFST,
@@ -195,22 +200,14 @@ static int a10_fpga_init(void *buf)
 	mask = A10_FPGAMGR_IMGCFG_STAT_F2S_NCONFIG_PIN |
 	       A10_FPGAMGR_IMGCFG_STAT_F2S_NSTATUS_PIN;
 
-	timeout = 100000;
-	while ((socfpga_a10_fpga_read_stat() & mask) != mask) {
-		if (timeout-- < 0)
-			return -ETIMEDOUT;
-	}
+	__wait_on_timeout(100000, (socfpga_a10_fpga_read_stat() & mask) != mask);
 
 	/* reset the configuration */
 	a10_update_bits(A10_FPGAMGR_IMGCFG_CTL_00_OFST,
 			A10_FPGAMGR_IMGCFG_CTL_00_S2F_NCONFIG, 0);
 
-	timeout = 1000000;
-	while ((socfpga_a10_fpga_read_stat() &
-		       A10_FPGAMGR_IMGCFG_STAT_F2S_NSTATUS_PIN) != 0) {
-		if (timeout-- < 0)
-			return -ETIMEDOUT;
-	}
+	mask = A10_FPGAMGR_IMGCFG_STAT_F2S_NSTATUS_PIN;
+	__wait_on_timeout(100000, (socfpga_a10_fpga_read_stat() & mask) != 0);
 
 	a10_update_bits(A10_FPGAMGR_IMGCFG_CTL_00_OFST,
 			A10_FPGAMGR_IMGCFG_CTL_00_S2F_NCONFIG,
@@ -218,11 +215,7 @@ static int a10_fpga_init(void *buf)
 
 	mask = A10_FPGAMGR_IMGCFG_STAT_F2S_NSTATUS_PIN;
 	/* wait for nstatus == 1 */
-	timeout = 1000000;
-	while ((socfpga_a10_fpga_read_stat() & mask) != mask) {
-		if (timeout-- < 0)
-			return -ETIMEDOUT;
-	}
+	__wait_on_timeout(100000, (socfpga_a10_fpga_read_stat() & mask) != mask);
 
 	stat = socfpga_a10_fpga_read_stat();
 	if ((stat & A10_FPGAMGR_IMGCFG_STAT_F2S_CONDONE_PIN) != 0)

-- 
2.43.2



