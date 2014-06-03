Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WrvNb-0004IL-PA
 for barebox@lists.infradead.org; Tue, 03 Jun 2014 20:32:20 +0000
Received: from tellur.localdomain (p57B5FCD3.dip0.t-ipconnect.de
 [87.181.252.211]) by lynxeye.de (Postfix) with ESMTPA id D778118B4261
 for <barebox@lists.infradead.org>; Tue,  3 Jun 2014 22:31:25 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Tue,  3 Jun 2014 22:34:53 +0200
Message-Id: <1401827717-6420-7-git-send-email-dev@lynxeye.de>
In-Reply-To: <1401827717-6420-1-git-send-email-dev@lynxeye.de>
References: <1401827717-6420-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 06/30] tegra: add Tegra124 id to lowlevel functions
To: barebox@lists.infradead.org

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/mach-tegra/include/mach/lowlevel.h | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm/mach-tegra/include/mach/lowlevel.h b/arch/arm/mach-tegra/include/mach/lowlevel.h
index 80d65a6..662508a 100644
--- a/arch/arm/mach-tegra/include/mach/lowlevel.h
+++ b/arch/arm/mach-tegra/include/mach/lowlevel.h
@@ -67,6 +67,8 @@ enum tegra_chiptype {
 	TEGRA_UNK_REV = -1,
 	TEGRA20 = 0,
 	TEGRA30 = 1,
+	TEGRA114 = 2,
+	TEGRA124 = 3,
 };
 
 static __always_inline
@@ -87,6 +89,8 @@ enum tegra_chiptype tegra_get_chiptype(void)
 		return TEGRA20;
 	case 0x30:
 		return TEGRA30;
+	case 0x40:
+		return TEGRA124;
 	default:
 		return TEGRA_UNK_REV;
 	}
@@ -99,6 +103,7 @@ int tegra_get_num_cores(void)
 	case TEGRA20:
 		return 2;
 	case TEGRA30:
+	case TEGRA124:
 		return 4;
 	default:
 		return 0;
@@ -213,6 +218,7 @@ int tegra_get_pllp_rate(void)
 	case TEGRA20:
 		return 216000000;
 	case TEGRA30:
+	case TEGRA124:
 		return 408000000;
 	default:
 		return 0;
-- 
1.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
