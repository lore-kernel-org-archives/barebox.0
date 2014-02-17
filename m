Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WFUmG-0003Mk-W6
 for barebox@lists.infradead.org; Mon, 17 Feb 2014 20:26:58 +0000
Received: from tellur.localdomain (p57B5F67D.dip0.t-ipconnect.de
 [87.181.246.125]) by lynxeye.de (Postfix) with ESMTPA id E0E6118B4263
 for <barebox@lists.infradead.org>; Mon, 17 Feb 2014 21:26:03 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Mon, 17 Feb 2014 21:27:36 +0100
Message-Id: <1392668861-10915-4-git-send-email-dev@lynxeye.de>
In-Reply-To: <1392668861-10915-1-git-send-email-dev@lynxeye.de>
References: <1392668861-10915-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH v2 3/8] tegra: add break to switch statements
To: barebox@lists.infradead.org

Avoids a possible miscompilation.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/mach-tegra/include/mach/lowlevel.h | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm/mach-tegra/include/mach/lowlevel.h b/arch/arm/mach-tegra/include/mach/lowlevel.h
index fb06e4f..20de1b2 100644
--- a/arch/arm/mach-tegra/include/mach/lowlevel.h
+++ b/arch/arm/mach-tegra/include/mach/lowlevel.h
@@ -74,8 +74,10 @@ enum tegra_chiptype tegra_get_chiptype(void)
 	switch ((hidrev & HIDREV_CHIPID_MASK) >> HIDREV_CHIPID_SHIFT) {
 	case 0x20:
 		return TEGRA20;
+		break;
 	default:
 		return TEGRA_UNK_REV;
+		break;
 	}
 }
 
@@ -110,11 +112,14 @@ uint32_t tegra20_get_ramsize(void)
 		T20_ODMDATA_RAMSIZE_SHIFT) {
 	case 1:
 		return SZ_256M;
+		break;
 	default:
 	case 2:
 		return SZ_512M;
+		break;
 	case 3:
 		return SZ_1G;
+		break;
 	}
 }
 
@@ -162,14 +167,19 @@ int tegra_get_osc_clock(void)
 		CRC_OSC_CTRL_OSC_FREQ_SHIFT) {
 	case 0:
 		return 13000000;
+		break;
 	case 1:
 		return 19200000;
+		break;
 	case 2:
 		return 12000000;
+		break;
 	case 3:
 		return 26000000;
+		break;
 	default:
 		return 0;
+		break;
 	}
 }
 
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
