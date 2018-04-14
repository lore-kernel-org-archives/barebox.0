Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x244.google.com ([2607:f8b0:400e:c01::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f7PKf-0001sO-LE
 for barebox@lists.infradead.org; Sat, 14 Apr 2018 17:51:28 +0000
Received: by mail-pl0-x244.google.com with SMTP id k9-v6so3005779pll.12
 for <barebox@lists.infradead.org>; Sat, 14 Apr 2018 10:51:15 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sat, 14 Apr 2018 10:50:50 -0700
Message-Id: <20180414175103.10125-5-andrew.smirnov@gmail.com>
In-Reply-To: <20180414175103.10125-1-andrew.smirnov@gmail.com>
References: <20180414175103.10125-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 04/17] ARM: i.MX: Account for unprogrammed fuses on i.MX6 and
 i.MX7
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

On both i.MX6 and i.MX7 (also true for VFxxx) there's an additional
path that leads mask ROM to switch into serial bootloader mode. Add
code to support it.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/boot.c | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-imx/boot.c b/arch/arm/mach-imx/boot.c
index 7eb7a16f3..a98c716fb 100644
--- a/arch/arm/mach-imx/boot.c
+++ b/arch/arm/mach-imx/boot.c
@@ -231,6 +231,8 @@ void imx53_get_boot_source(enum bootsource *src, int *instance)
 #define IMX6_SRC_SBMR2	0x1c
 #define IMX6_BMOD_SERIAL	0b01
 #define IMX6_BMOD_RESERVED	0b11
+#define IMX6_BMOD_FUSES		0b00
+#define BT_FUSE_SEL		BIT(4)
 
 static bool imx6_bootsource_reserved(uint32_t sbmr2)
 {
@@ -239,7 +241,14 @@ static bool imx6_bootsource_reserved(uint32_t sbmr2)
 
 static bool imx6_bootsource_serial(uint32_t sbmr2)
 {
-	return imx53_get_bmod(sbmr2) == IMX6_BMOD_SERIAL;
+	return imx53_get_bmod(sbmr2) == IMX6_BMOD_SERIAL ||
+		/*
+		 * If boot from fuses is selected and fuses are not
+		 * programmed by setting BT_FUSE_SEL, ROM code will
+		 * fallback to serial mode
+		 */
+	       (imx53_get_bmod(sbmr2) == IMX6_BMOD_FUSES &&
+		!(sbmr2 & BT_FUSE_SEL));
 }
 
 void imx6_get_boot_source(enum bootsource *src, int *instance)
-- 
2.14.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
