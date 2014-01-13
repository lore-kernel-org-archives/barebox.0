Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W2VDg-00011Y-Qe
 for barebox@lists.infradead.org; Mon, 13 Jan 2014 00:17:33 +0000
Received: from tellur.localdomain (p57B5EF0F.dip0.t-ipconnect.de
 [87.181.239.15]) by lynxeye.de (Postfix) with ESMTPA id 548ED18B425E
 for <barebox@lists.infradead.org>; Mon, 13 Jan 2014 01:16:36 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Mon, 13 Jan 2014 01:17:22 +0100
Message-Id: <1389572250-1482-1-git-send-email-dev@lynxeye.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/9] ARM: imx53: guard voipac vmx53 init function
To: barebox@lists.infradead.org

Otherwise we end up doing the VMX53 board init for
unrelated boards when using a multiimage build.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/boards/freescale-mx53-vmx53/board.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/boards/freescale-mx53-vmx53/board.c b/arch/arm/boards/freescale-mx53-vmx53/board.c
index b38db71..d0cc495 100644
--- a/arch/arm/boards/freescale-mx53-vmx53/board.c
+++ b/arch/arm/boards/freescale-mx53-vmx53/board.c
@@ -30,6 +30,9 @@ extern char flash_header_imx53_vmx53_end[];
 
 static int vmx53_late_init(void)
 {
+	if (!of_machine_is_compatible("voipac,imx53-dmm-668"))
+			return 0;
+
 	armlinux_set_architecture(MACH_TYPE_VMX53);
 
 	barebox_set_model("Voipac VMX53");
-- 
1.8.4.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
