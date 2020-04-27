Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSxxr-0001cQ-OU
 for barebox@lists.infradead.org; Mon, 27 Apr 2020 07:14:05 +0000
Received: from geraet.fritz.box (muedsl-82-207-202-020.citykom.de
 [82.207.202.20]) (Authenticated sender: ahmad@a3f.at)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 036961C0007
 for <barebox@lists.infradead.org>; Mon, 27 Apr 2020 07:13:58 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Mon, 27 Apr 2020 09:13:50 +0200
Message-Id: <20200427071351.467859-2-ahmad@a3f.at>
In-Reply-To: <20200427071351.467859-1-ahmad@a3f.at>
References: <20200427071351.467859-1-ahmad@a3f.at>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/3] ARM: i.MX: boot: interpret reserved boot as forced serial
To: barebox@lists.infradead.org

`mw 0x20d8040 0x00000010; mw 0x20d8044 0x10000000; reset` issued on an
i.MX6Q forces serial download mode, but there is no indication of that
in the sbmr2 register, so barebox reports $bootsource=unknown.

Similarly, `mw 0x20d8040 0x00000020; mw 0x20d8044 0x10000000; reset`
forces an i.MX6UL into recovery mode after reset.

Do as U-Boot does and interpret the (reserved) value in BOOT_CFG1(7, 4)
for each SoC as serial download.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 arch/arm/mach-imx/boot.c | 19 +++++++++++++++----
 1 file changed, 15 insertions(+), 4 deletions(-)

diff --git a/arch/arm/mach-imx/boot.c b/arch/arm/mach-imx/boot.c
index 3ff297d46e47..f8d4f8cfa27f 100644
--- a/arch/arm/mach-imx/boot.c
+++ b/arch/arm/mach-imx/boot.c
@@ -31,6 +31,7 @@
 #include <mach/imx8mq-regs.h>
 #include <mach/vf610-regs.h>
 #include <mach/imx8mq.h>
+#include <mach/imx6.h>
 
 
 static void
@@ -345,6 +346,13 @@ static bool imx6_bootsource_serial(uint32_t sbmr2)
 		!(sbmr2 & BT_FUSE_SEL));
 }
 
+static bool imx6_bootsource_serial_forced(uint32_t bootmode)
+{
+	if (cpu_is_mx6ul() || cpu_is_mx6ull())
+		return bootmode == 2;
+	return bootmode == 1;
+}
+
 static int __imx6_bootsource_serial_rom(uint32_t r)
 {
 	return FIELD_GET(BOOT_CFG4(2, 0), r);
@@ -403,20 +411,23 @@ void imx6_get_boot_source(enum bootsource *src, int *instance)
 {
 	void __iomem *src_base = IOMEM(MX6_SRC_BASE_ADDR);
 	uint32_t sbmr2 = readl(src_base + IMX6_SRC_SBMR2);
-	uint32_t bootmode;
+	uint32_t bootmode, bootsrc;
 
 	bootmode = imx6_get_src_boot_mode(src_base);
 
 	if (imx6_bootsource_reserved(sbmr2))
 		return;
 
-	if (imx6_bootsource_serial(sbmr2)) {
+	bootsrc = imx53_bootsource_internal(bootmode);
+
+	if (imx6_bootsource_serial(sbmr2) ||
+	    imx6_bootsource_serial_forced(bootsrc)) {
 		*src = BOOTSOURCE_SERIAL;
 		return;
 	}
 
-	switch (imx53_bootsource_internal(bootmode)) {
-	case 2:
+	switch (bootsrc) {
+	case 2: /* unreachable for i.MX6UL(L) */
 		*src = BOOTSOURCE_HD;
 		break;
 	case 3:
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
