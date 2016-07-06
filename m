Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bKsZy-00044m-IK
 for barebox@lists.infradead.org; Wed, 06 Jul 2016 19:33:51 +0000
Received: from antimon.Speedport_W_504V_Typ_A (p5483101C.dip0.t-ipconnect.de
 [84.131.16.28]) by lynxeye.de (Postfix) with ESMTPA id A7E1326C2002
 for <barebox@lists.infradead.org>; Wed,  6 Jul 2016 21:32:57 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Wed,  6 Jul 2016 21:32:49 +0200
Message-Id: <1467833572-26162-2-git-send-email-dev@lynxeye.de>
In-Reply-To: <1467833572-26162-1-git-send-email-dev@lynxeye.de>
References: <1467833572-26162-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 2/5] ARM: i.MX: iim: fix potential out of bounds array access
To: barebox@lists.infradead.org

The check is off-by-one.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/mach-imx/iim.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-imx/iim.c b/arch/arm/mach-imx/iim.c
index c3ba67e..6addfed 100644
--- a/arch/arm/mach-imx/iim.c
+++ b/arch/arm/mach-imx/iim.c
@@ -196,7 +196,7 @@ int imx_iim_read(unsigned int banknum, int offset, void *buf, int count)
 	if (!imx_iim)
 		return -ENODEV;
 
-	if (banknum > IIM_NUM_BANKS)
+	if (banknum >= IIM_NUM_BANKS)
 		return -EINVAL;
 
 	bank = iim->bank[banknum];
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
