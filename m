Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WFUn6-0003QE-Dn
 for barebox@lists.infradead.org; Mon, 17 Feb 2014 20:27:49 +0000
Received: from tellur.localdomain (p57B5F67D.dip0.t-ipconnect.de
 [87.181.246.125]) by lynxeye.de (Postfix) with ESMTPA id AFEC018B4268
 for <barebox@lists.infradead.org>; Mon, 17 Feb 2014 21:26:04 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Mon, 17 Feb 2014 21:27:38 +0100
Message-Id: <1392668861-10915-6-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH v2 5/8] tegra: add Tegra3 to relevant lowlevel functions
To: barebox@lists.infradead.org

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/mach-tegra/include/mach/lowlevel.h | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm/mach-tegra/include/mach/lowlevel.h b/arch/arm/mach-tegra/include/mach/lowlevel.h
index 85ab7ef..b39e30e 100644
--- a/arch/arm/mach-tegra/include/mach/lowlevel.h
+++ b/arch/arm/mach-tegra/include/mach/lowlevel.h
@@ -62,6 +62,7 @@ u32 tegra_get_odmdata(void)
 enum tegra_chiptype {
 	TEGRA_UNK_REV = -1,
 	TEGRA20 = 0,
+	TEGRA30 = 1,
 };
 
 static __always_inline
@@ -75,6 +76,9 @@ enum tegra_chiptype tegra_get_chiptype(void)
 	case 0x20:
 		return TEGRA20;
 		break;
+	case 0x30:
+		return TEGRA30;
+		break;
 	default:
 		return TEGRA_UNK_REV;
 		break;
@@ -88,6 +92,9 @@ int tegra_get_num_cores(void)
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
