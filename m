Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x230.google.com ([2607:f8b0:400e:c01::230])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fZ6t0-0003gN-RH
 for barebox@lists.infradead.org; Sat, 30 Jun 2018 03:49:27 +0000
Received: by mail-pl0-x230.google.com with SMTP id 30-v6so5334449pld.13
 for <barebox@lists.infradead.org>; Fri, 29 Jun 2018 20:49:12 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Fri, 29 Jun 2018 20:48:54 -0700
Message-Id: <20180630034900.3324-6-andrew.smirnov@gmail.com>
In-Reply-To: <20180630034900.3324-1-andrew.smirnov@gmail.com>
References: <20180630034900.3324-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 05/11] ARM: i.MX: xload-esdhc: Move image base to
 MX8MQ_ATF_BL33_BASE_ADDR
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

BL31 ATF implementation provided by NXP will jump to
MX8MQ_ATF_BL33_BASE_ADDR after completing its initialization. Move
image base used by imx8_esdhc_start_image() in order to support that.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/xload-esdhc.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-imx/xload-esdhc.c b/arch/arm/mach-imx/xload-esdhc.c
index 08ba9b08d..98ebdfcf7 100644
--- a/arch/arm/mach-imx/xload-esdhc.c
+++ b/arch/arm/mach-imx/xload-esdhc.c
@@ -14,6 +14,7 @@
 #include <common.h>
 #include <io.h>
 #include <mci.h>
+#include <mach/atf.h>
 #include <mach/imx6-regs.h>
 #include <mach/imx8mq-regs.h>
 #include <mach/xload.h>
@@ -323,5 +324,5 @@ int imx8_esdhc_start_image(int instance)
 
 	esdhc.is_mx6 = 1;
 
-	return esdhc_start_image(&esdhc, MX8MQ_DDR_CSD1_BASE_ADDR, SZ_32K);
+	return esdhc_start_image(&esdhc, MX8MQ_ATF_BL33_BASE_ADDR, SZ_32K);
 }
\ No newline at end of file
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
