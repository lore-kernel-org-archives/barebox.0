Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.co.uk ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RdjbB-0006Sp-H9
 for barebox@lists.infradead.org; Thu, 22 Dec 2011 14:26:25 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 896B1BF0D9
 for <barebox@lists.infradead.org>; Thu, 22 Dec 2011 15:31:41 +0100 (CET)
From: Juergen Kilb <J.Kilb@phytec.de>
Date: Thu, 22 Dec 2011 15:25:57 +0100
Message-Id: <1324563957-30984-2-git-send-email-J.Kilb@phytec.de>
In-Reply-To: <1324563957-30984-1-git-send-email-J.Kilb@phytec.de>
References: <1324563957-30984-1-git-send-email-J.Kilb@phytec.de>
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
Subject: [PATCH 2/2] Change the machine id/name to follow the phyCARD naming
 convention. This patch can be dropped if the phyCARD-A-L1 is updated in the
 official machine registry.
To: barebox@lists.infradead.org
Cc: Juergen Kilb <J.Kilb@phytec.de>

Signed-off-by: Juergen Kilb <J.Kilb@phytec.de>
---
 arch/arm/tools/mach-types |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/arch/arm/tools/mach-types b/arch/arm/tools/mach-types
index d593026..042bf52 100644
--- a/arch/arm/tools/mach-types
+++ b/arch/arm/tools/mach-types
@@ -2814,7 +2814,7 @@ omap3_braillo		MACH_OMAP3_BRAILLO	OMAP3_BRAILLO		2839
 spyplug			MACH_SPYPLUG		SPYPLUG			2840
 ginger			MACH_GINGER		GINGER			2841
 tny_t3530		MACH_TNY_T3530		TNY_T3530		2842
-pca102			MACH_PCA102		PCA102			2843
+pcaal1			MACH_PCAAL1		PCAAL1			2843
 spade			MACH_SPADE		SPADE			2844
 mxc25_topaz		MACH_MXC25_TOPAZ	MXC25_TOPAZ		2845
 t5325			MACH_T5325		T5325			2846
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
