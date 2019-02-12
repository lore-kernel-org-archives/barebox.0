Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gtNnn-0005De-Hh
 for barebox@lists.infradead.org; Tue, 12 Feb 2019 02:28:05 +0000
Received: by mail-pl1-x643.google.com with SMTP id o6so495364pls.13
 for <barebox@lists.infradead.org>; Mon, 11 Feb 2019 18:28:03 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 11 Feb 2019 18:27:48 -0800
Message-Id: <20190212022749.18301-2-andrew.smirnov@gmail.com>
In-Reply-To: <20190212022749.18301-1-andrew.smirnov@gmail.com>
References: <20190212022749.18301-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 2/3] ARM: i.MX8MQ: Read only ROM version major
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Don't read all 32-bits located at IMX8MQ_ROM_VERSION_*0 since that,
besides ROM version major in LSB, willl also contain minor components
which we don't account for in the following checks. Change the code to
only read LSB instead.

This is a port of a vendor U-Boot[1] commit
0377dc881a96b46d858643dfaa5f9ef0dd4acccc ("MLK-19465 imx8mq: Fix cpu
rev issue on B0.1 chip")

[1] https://source.codeaurora.org/external/imx/uboot-imx
Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/include/mach/imx8mq.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-imx/include/mach/imx8mq.h b/arch/arm/mach-imx/include/mach/imx8mq.h
index 2a7cf9977..d69ec8145 100644
--- a/arch/arm/mach-imx/include/mach/imx8mq.h
+++ b/arch/arm/mach-imx/include/mach/imx8mq.h
@@ -30,9 +30,9 @@ static inline int imx8mq_cpu_revision(void)
 	 * For B0 chip, the DIGPROG is not updated, still TO1.0.
 	 * we have to check ROM version further
 	 */
-	rom_version = readl(IOMEM(IMX8MQ_ROM_VERSION_A0));
+	rom_version = readb(IOMEM(IMX8MQ_ROM_VERSION_A0));
 	if (rom_version != IMX_CHIP_REV_1_0) {
-		rom_version = readl(IOMEM(IMX8MQ_ROM_VERSION_B0));
+		rom_version = readb(IOMEM(IMX8MQ_ROM_VERSION_B0));
 		if (rom_version >= IMX_CHIP_REV_2_0)
 			revision = IMX_CHIP_REV_2_0;
 	}
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
