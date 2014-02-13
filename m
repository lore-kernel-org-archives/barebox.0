Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WE4pF-0006kp-1z
 for barebox@lists.infradead.org; Thu, 13 Feb 2014 22:32:10 +0000
Received: from tellur.localdomain (p57B5F67D.dip0.t-ipconnect.de
 [87.181.246.125]) by lynxeye.de (Postfix) with ESMTPA id BF9E218B4261
 for <barebox@lists.infradead.org>; Thu, 13 Feb 2014 23:31:20 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Thu, 13 Feb 2014 23:32:48 +0100
Message-Id: <1392330771-21671-5-git-send-email-dev@lynxeye.de>
In-Reply-To: <1392330771-21671-1-git-send-email-dev@lynxeye.de>
References: <1392330771-21671-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 4/7] tegra: add Tegra3 to relevant lowlevel functions
To: barebox@lists.infradead.org

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/mach-tegra/include/mach/lowlevel.h | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm/mach-tegra/include/mach/lowlevel.h b/arch/arm/mach-tegra/include/mach/lowlevel.h
index c999ad9..bdba71b 100644
--- a/arch/arm/mach-tegra/include/mach/lowlevel.h
+++ b/arch/arm/mach-tegra/include/mach/lowlevel.h
@@ -61,6 +61,7 @@ u32 tegra_get_odmdata(void)
 enum tegra_chiptype {
 	TEGRA_UNK_REV = -1,
 	TEGRA20 = 0,
+	TEGRA30 = 1,
 };
 
 static inline __attribute__((always_inline))
@@ -74,6 +75,9 @@ enum tegra_chiptype tegra_get_chiptype(void)
 	case 0x20:
 		return TEGRA20;
 		break;
+	case 0x30:
+		return TEGRA30;
+		break;
 	default:
 		return TEGRA_UNK_REV;
 		break;
@@ -87,6 +91,9 @@ int tegra_get_num_cores(void)
 	case TEGRA20:
 		return 2;
 		break;
+	case TEGRA30:
+		return 4;
+		break;
 	default:
 		return 0;
 		break;
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
