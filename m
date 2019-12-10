Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ienbw-0000FV-F6
 for barebox@lists.infradead.org; Tue, 10 Dec 2019 22:04:09 +0000
Received: from astat.fritz.box (a89-183-112-47.net-htp.de [89.183.112.47])
 by lynxeye.de (Postfix) with ESMTPA id 5E6B1E7421F
 for <barebox@lists.infradead.org>; Tue, 10 Dec 2019 23:03:26 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Tue, 10 Dec 2019 23:03:20 +0100
Message-Id: <20191210220322.47425-2-dev@lynxeye.de>
In-Reply-To: <20191210220322.47425-1-dev@lynxeye.de>
References: <20191210220322.47425-1-dev@lynxeye.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/4] ARM: zynq: zedboard: allow lowlevel init to be called as
 second stage
To: barebox@lists.infradead.org

If the code is already executing in DRAM, the PS7 init must not be
executed, as it initializes the DRAM controller.

As the OCM can be configured to an address which aliases with the DRAM
address space we can't reliably infer if we are running from OCM or
DRAM from the execution address. So instead of using the address, look
at the OCM mapping, as the BootROM leaves a quite unique mapping behind
with 192KB OCM mapped at the low address and 64KB mapped to the high
address.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/boards/avnet-zedboard/lowlevel.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm/boards/avnet-zedboard/lowlevel.c b/arch/arm/boards/avnet-zedboard/lowlevel.c
index b50c36b28869..9b90ef112b46 100644
--- a/arch/arm/boards/avnet-zedboard/lowlevel.c
+++ b/arch/arm/boards/avnet-zedboard/lowlevel.c
@@ -31,6 +31,16 @@ extern char __dtb_zynq_zed_start[];
 
 static void avnet_zedboard_ps7_init(void)
 {
+	/*
+	 * Read OCM mapping configuration, if only the upper 64 KByte are
+	 * mapped to the high address, it's very likely that we just got control
+	 * from the BootROM. If the mapping is changed something other than the
+	 * BootROM was running before us. Skip PS7 init to avoid cutting the
+	 * branch we are sitting on in that case.
+	 */
+	if ((readl(0xf8000910) & 0xf) != 0x8)
+		return;
+
 	/* open sesame */
 	writel(0x0000DF0D, ZYNQ_SLCR_UNLOCK);
 
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
