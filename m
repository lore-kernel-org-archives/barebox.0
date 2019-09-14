Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i919G-0006vj-9S
 for barebox@lists.infradead.org; Sat, 14 Sep 2019 06:03:07 +0000
Received: by mail-pl1-x641.google.com with SMTP id 4so14204799pld.10
 for <barebox@lists.infradead.org>; Fri, 13 Sep 2019 23:03:05 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Fri, 13 Sep 2019 23:02:46 -0700
Message-Id: <20190914060247.23673-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 1/2] i.MX: Introduce imx_ocotp_read_uid()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, Chris Healy <cphealy@gmail.com>

UID information in OCOTP is located in the same place on at least
i.MX6, i.MX7 and i.MX8MQ. Create an SoC-agnostic helper to do all the
work and convert i.MX6 to use it.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Chris Healy <cphealy@gmail.com>
Cc: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/mach-imx/imx6.c               |  8 +-------
 arch/arm/mach-imx/include/mach/ocotp.h | 14 ++++++++++++++
 2 files changed, 15 insertions(+), 7 deletions(-)

diff --git a/arch/arm/mach-imx/imx6.c b/arch/arm/mach-imx/imx6.c
index 0fdd9f082f..41e0066add 100644
--- a/arch/arm/mach-imx/imx6.c
+++ b/arch/arm/mach-imx/imx6.c
@@ -192,13 +192,7 @@ int imx6_cpu_revision(void)
 
 u64 imx6_uid(void)
 {
-	void __iomem *ocotpbase = IOMEM(MX6_OCOTP_BASE_ADDR);
-	u64 uid;
-
-	uid = ((u64)readl(ocotpbase + MX6_OCOTP_CFG0) << 32);
-	uid |= (u64)readl(ocotpbase + MX6_OCOTP_CFG1);
-
-	return uid;
+	return imx_ocotp_read_uid(IOMEM(MX6_OCOTP_BASE_ADDR));
 }
 
 int imx6_init(void)
diff --git a/arch/arm/mach-imx/include/mach/ocotp.h b/arch/arm/mach-imx/include/mach/ocotp.h
index e758238cb9..7ba5da156b 100644
--- a/arch/arm/mach-imx/include/mach/ocotp.h
+++ b/arch/arm/mach-imx/include/mach/ocotp.h
@@ -26,10 +26,24 @@
 #define OCOTP_BIT(n)		FIELD_PREP(OCOTP_BIT_MASK, n)
 #define OCOTP_WIDTH(n)		FIELD_PREP(OCOTP_WIDTH_MASK, (n) - 1)
 
+#define OCOTP_OFFSET_CFG0	0x410
+#define OCOTP_OFFSET_CFG1	0x420
+
 
 int imx_ocotp_read_field(uint32_t field, unsigned *value);
 int imx_ocotp_write_field(uint32_t field, unsigned value);
 int imx_ocotp_permanent_write(int enable);
 bool imx_ocotp_sense_enable(bool enable);
 
+static inline u64 imx_ocotp_read_uid(void __iomem *ocotp)
+{
+	u64 uid;
+
+	uid  = readl(ocotp + OCOTP_OFFSET_CFG0);
+	uid <<= 32;
+	uid |= readl(ocotp + OCOTP_OFFSET_CFG1);
+
+	return uid;
+}
+
 #endif /* __MACH_IMX_OCOTP_H */
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
