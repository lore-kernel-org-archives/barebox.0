Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x242.google.com ([2607:f8b0:400e:c00::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fBwGu-0007EA-Sm
 for barebox@lists.infradead.org; Fri, 27 Apr 2018 05:50:18 +0000
Received: by mail-pf0-x242.google.com with SMTP id g14so664727pfh.3
 for <barebox@lists.infradead.org>; Thu, 26 Apr 2018 22:50:06 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 26 Apr 2018 22:49:44 -0700
Message-Id: <20180427054946.11687-5-andrew.smirnov@gmail.com>
In-Reply-To: <20180427054946.11687-1-andrew.smirnov@gmail.com>
References: <20180427054946.11687-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 4/6] ARM: i.MX: Introduce IMX_SRC_SRSR
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Offset for SRSR register in SRC IP block for i.MX51, i.MX53, i.MX6 and
VFxxx is exactly the same so define a single constant for that and
replace all of the SoC specific definitions.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/imx6.c                      | 2 +-
 arch/arm/mach-imx/include/mach/reset-reason.h | 4 +---
 arch/arm/mach-imx/vf610.c                     | 2 +-
 3 files changed, 3 insertions(+), 5 deletions(-)

diff --git a/arch/arm/mach-imx/imx6.c b/arch/arm/mach-imx/imx6.c
index dc09088ab..dfa861d38 100644
--- a/arch/arm/mach-imx/imx6.c
+++ b/arch/arm/mach-imx/imx6.c
@@ -223,7 +223,7 @@ int imx6_init(void)
 	}
 
 	imx_set_silicon_revision(cputypestr, mx6_silicon_revision);
-	imx_set_reset_reason(src + IMX6_SRC_SRSR, imx_reset_reasons);
+	imx_set_reset_reason(src + IMX_SRC_SRSR, imx_reset_reasons);
 	imx6_setup_ipu_qos();
 	imx6ul_enet_clk_init();
 
diff --git a/arch/arm/mach-imx/include/mach/reset-reason.h b/arch/arm/mach-imx/include/mach/reset-reason.h
index 0894b95ab..0f644a8c1 100644
--- a/arch/arm/mach-imx/include/mach/reset-reason.h
+++ b/arch/arm/mach-imx/include/mach/reset-reason.h
@@ -14,10 +14,8 @@
 #define IMX_SRC_SRSR_TEMPSENSE_RESET	BIT(9)
 #define IMX_SRC_SRSR_WARM_BOOT		BIT(16)
 
-#define IMX6_SRC_SRSR	0x008
+#define IMX_SRC_SRSR	0x008
 #define IMX7_SRC_SRSR	0x05c
-#define VF610_SRC_SRSR	0x008
-
 
 #define VF610_SRC_SRSR_SW_RST		BIT(18)
 #define VF610_SRC_SRSR_RESETB		BIT(7)
diff --git a/arch/arm/mach-imx/vf610.c b/arch/arm/mach-imx/vf610.c
index 3ac7c356f..b548cbcb5 100644
--- a/arch/arm/mach-imx/vf610.c
+++ b/arch/arm/mach-imx/vf610.c
@@ -56,6 +56,6 @@ int vf610_init(void)
 	}
 
 	imx_set_silicon_revision(cputypestr, vf610_cpu_revision());
-	imx_set_reset_reason(src + VF610_SRC_SRSR, vf610_reset_reasons);
+	imx_set_reset_reason(src + IMX_SRC_SRSR, vf610_reset_reasons);
 	return 0;
 }
-- 
2.14.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
