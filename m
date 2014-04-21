Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WcKdh-0001VU-Sk
 for barebox@lists.infradead.org; Mon, 21 Apr 2014 20:16:31 +0000
Received: from antimon.intern.lynxeye.de.intern.lynxeye.de
 (p54831C5A.dip0.t-ipconnect.de [84.131.28.90])
 by lynxeye.de (Postfix) with ESMTPA id BF10818B4258
 for <barebox@lists.infradead.org>; Mon, 21 Apr 2014 22:15:35 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Mon, 21 Apr 2014 22:15:23 +0200
Message-Id: <1398111326-21783-2-git-send-email-dev@lynxeye.de>
In-Reply-To: <1398111326-21783-1-git-send-email-dev@lynxeye.de>
References: <1398111326-21783-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 2/5] ARM: at91: add missing break
To: barebox@lists.infradead.org

Otherwise SAM A5d35 would be detected as A5d36.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/mach-at91/setup.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/mach-at91/setup.c b/arch/arm/mach-at91/setup.c
index 7a7de9804556..076d0812b356 100644
--- a/arch/arm/mach-at91/setup.c
+++ b/arch/arm/mach-at91/setup.c
@@ -162,6 +162,7 @@ static void __init soc_detect(u32 dbgu_base)
 			break;
 		case ARCH_EXID_SAMA5D35:
 			at91_soc_initdata.subtype = AT91_SOC_SAMA5D35;
+			break;
 		case ARCH_EXID_SAMA5D36:
 			at91_soc_initdata.subtype = AT91_SOC_SAMA5D36;
 			break;
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
