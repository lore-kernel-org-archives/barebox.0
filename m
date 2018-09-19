Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x436.google.com ([2607:f8b0:4864:20::436])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g2eix-0004AD-8I
 for barebox@lists.infradead.org; Wed, 19 Sep 2018 15:49:12 +0000
Received: by mail-pf1-x436.google.com with SMTP id x17-v6so2904313pfh.5
 for <barebox@lists.infradead.org>; Wed, 19 Sep 2018 08:48:56 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 19 Sep 2018 08:48:47 -0700
Message-Id: <20180919154847.1543-2-andrew.smirnov@gmail.com>
In-Reply-To: <20180919154847.1543-1-andrew.smirnov@gmail.com>
References: <20180919154847.1543-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 2/2] ARM: i.MX: boot: Detect boot instance on i.MX51
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/boot.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/mach-imx/boot.c b/arch/arm/mach-imx/boot.c
index 830ea08f3..0c51767c4 100644
--- a/arch/arm/mach-imx/boot.c
+++ b/arch/arm/mach-imx/boot.c
@@ -170,6 +170,7 @@ void imx27_boot_save_loc(void)
 #define IMX51_SRC_SBMR		0x4
 #define IMX51_SBMR_BT_MEM_TYPE	GENMASK(8, 7)
 #define IMX51_SBMR_BT_MEM_CTL	GENMASK(1, 0)
+#define IMX51_SBMR_BT_SRC	GENMASK(20, 19)
 #define IMX51_SBMR_BMOD		GENMASK(15, 14)
 
 void imx51_get_boot_source(enum bootsource *src, int *instance)
@@ -188,6 +189,7 @@ void imx51_get_boot_source(enum bootsource *src, int *instance)
 		type = FIELD_GET(IMX51_SBMR_BT_MEM_TYPE, reg);
 
 		*src = locations[ctrl][type];
+		*instance = FIELD_GET(IMX51_SBMR_BT_SRC, reg);
 		break;
 	case 1:
 		/* reserved */
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
