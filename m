Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.tricorecenter.de ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Tai09-0008Na-SZ
 for barebox@lists.infradead.org; Tue, 20 Nov 2012 07:12:10 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 34342BF0E0
 for <barebox@lists.infradead.org>; Wed, 21 Nov 2012 13:48:37 +0100 (CET)
From: Christian Hemp <c.hemp@phytec.de>
Date: Tue, 20 Nov 2012 08:12:00 +0100
Message-Id: <1353395520-13679-1-git-send-email-c.hemp@phytec.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] ARM pcm043: Fix macro name
To: barebox@lists.infradead.org

Since commit dc9d70e2 the define CCM_PDR4 is called MX35_CCM_PDR4.

Signed-off-by: Christian Hemp <c.hemp@phytec.de>
---
 arch/arm/boards/pcm043/lowlevel.c |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/pcm043/lowlevel.c b/arch/arm/boards/pcm043/lowlevel.c
index 06f05ab..751f6ae 100644
--- a/arch/arm/boards/pcm043/lowlevel.c
+++ b/arch/arm/boards/pcm043/lowlevel.c
@@ -46,10 +46,10 @@ static void __bare_init __naked insdram(void)
 	uint32_t r;
 
 	/* Speed up NAND controller by adjusting the NFC divider */
-	r = readl(MX35_CCM_BASE_ADDR + CCM_PDR4);
+	r = readl(MX35_CCM_BASE_ADDR + MX35_CCM_PDR4);
 	r &= ~(0xf << 28);
 	r |= 0x1 << 28;
-	writel(r, MX35_CCM_BASE_ADDR + CCM_PDR4);
+	writel(r, MX35_CCM_BASE_ADDR + MX35_CCM_PDR4);
 
 	/* setup a stack to be able to call imx_nand_load_image() */
 	arm_setup_stack(STACK_BASE + STACK_SIZE - 12);
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
