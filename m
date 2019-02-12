Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gtNnr-0005Dx-Sk
 for barebox@lists.infradead.org; Tue, 12 Feb 2019 02:28:10 +0000
Received: by mail-pf1-x441.google.com with SMTP id j3so497875pfi.12
 for <barebox@lists.infradead.org>; Mon, 11 Feb 2019 18:28:04 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 11 Feb 2019 18:27:49 -0800
Message-Id: <20190212022749.18301-3-andrew.smirnov@gmail.com>
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
Subject: [PATCH 3/3] ARM: i.MX8MQ: Add corner case for Rev 2.1 silicon
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Rev 2.1 of i.MX8MQ silicon needs a special check different from
predecessor. Add all of the neccessary code to do just that (based on
similar code in vendor U-Boot tree).

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/include/mach/imx8mq.h | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm/mach-imx/include/mach/imx8mq.h b/arch/arm/mach-imx/include/mach/imx8mq.h
index d69ec8145..08dc06fdb 100644
--- a/arch/arm/mach-imx/include/mach/imx8mq.h
+++ b/arch/arm/mach-imx/include/mach/imx8mq.h
@@ -9,6 +9,8 @@
 
 #define IMX8MQ_ROM_VERSION_A0	0x800
 #define IMX8MQ_ROM_VERSION_B0	0x83C
+#define IMX8MQ_OCOTP_VERSION_B1 0x40
+#define IMX8MQ_OCOTP_VERSION_B1_MAGIC	0xff0055aa
 
 #define MX8MQ_ANATOP_DIGPROG	0x6c
 
@@ -20,12 +22,19 @@
 static inline int imx8mq_cpu_revision(void)
 {
 	void __iomem *anatop = IOMEM(MX8MQ_ANATOP_BASE_ADDR);
+	void __iomem *ocotp = IOMEM(MX8MQ_OCOTP_BASE_ADDR);
 	uint32_t revision = FIELD_GET(DIGPROG_MINOR,
 				      readl(anatop + MX8MQ_ANATOP_DIGPROG));
 	uint32_t rom_version;
 
 	if (revision != IMX_CHIP_REV_1_0)
 		return revision;
+	/*
+	 * For B1 chip we need to check OCOTP
+	 */
+	if (readl(ocotp + IMX8MQ_OCOTP_VERSION_B1) ==
+	    IMX8MQ_OCOTP_VERSION_B1_MAGIC)
+		return IMX_CHIP_REV_2_1;
 	/*
 	 * For B0 chip, the DIGPROG is not updated, still TO1.0.
 	 * we have to check ROM version further
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
