Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x229.google.com ([2607:f8b0:400e:c01::229])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fNWYR-0006vy-Q4
 for barebox@lists.infradead.org; Tue, 29 May 2018 04:48:17 +0000
Received: by mail-pl0-x229.google.com with SMTP id v24-v6so8220698plo.3
 for <barebox@lists.infradead.org>; Mon, 28 May 2018 21:48:05 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 28 May 2018 21:47:27 -0700
Message-Id: <20180529044731.3964-4-andrew.smirnov@gmail.com>
In-Reply-To: <20180529044731.3964-1-andrew.smirnov@gmail.com>
References: <20180529044731.3964-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 3/7] i.MX: ocotp: Simplify OCOTP field packing/unpacking
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, Vivien Didelot <vivien.didelot@savoirfairelinux.com>

Simplify OCOTP field packing/unpacking with macros from
<linux/bitfield.h>.

Cc: Vivien Didelot <vivien.didelot@savoirfairelinux.com>
Tested-by: Vivien Didelot <vivien.didelot@savoirfairelinux.com>
Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/include/mach/ocotp.h | 18 +++++++++---------
 arch/arm/mach-imx/ocotp.c              |  8 ++++----
 2 files changed, 13 insertions(+), 13 deletions(-)

diff --git a/arch/arm/mach-imx/include/mach/ocotp.h b/arch/arm/mach-imx/include/mach/ocotp.h
index b53000b16..76a6da53d 100644
--- a/arch/arm/mach-imx/include/mach/ocotp.h
+++ b/arch/arm/mach-imx/include/mach/ocotp.h
@@ -1,6 +1,8 @@
 #ifndef __MACH_IMX_OCOTP_H
 #define __MACH_IMX_OCOTP_H
 
+#include <linux/bitfield.h>
+
 #define OCOTP_SHADOW_OFFSET		0x400
 #define OCOTP_SHADOW_SPACING		0x10
 
@@ -14,17 +16,15 @@
 #define OCOTP_OFFSET_TO_INDEX(o)		\
 	(((o) - OCOTP_SHADOW_OFFSET) / OCOTP_SHADOW_SPACING)
 
-#define OCOTP_WORD_MASK_WIDTH	8
-#define OCOTP_WORD_MASK_SHIFT	0
-#define OCOTP_WORD(n)		(OCOTP_OFFSET_TO_INDEX(n) & ((1 << OCOTP_WORD_MASK_WIDTH) - 1))
+#define OCOTP_WORD_MASK		GENMASK( 7,  0)
+#define OCOTP_BIT_MASK		GENMASK(12,  8)
+#define OCOTP_WIDTH_MASK 	GENMASK(17, 13)
 
-#define OCOTP_BIT_MASK_WIDTH	5
-#define OCOTP_BIT_MASK_SHIFT	(OCOTP_WORD_MASK_SHIFT + OCOTP_WORD_MASK_WIDTH)
-#define OCOTP_BIT(n)		(((n) & ((1 << OCOTP_BIT_MASK_WIDTH) - 1)) << OCOTP_BIT_MASK_SHIFT)
+#define OCOTP_WORD(n)		FIELD_PREP(OCOTP_WORD_MASK, \
+					   OCOTP_OFFSET_TO_INDEX(n))
+#define OCOTP_BIT(n)		FIELD_PREP(OCOTP_BIT_MASK, n)
+#define OCOTP_WIDTH(n)		FIELD_PREP(OCOTP_WIDTH_MASK, (n) - 1)
 
-#define OCOTP_WIDTH_MASK_WIDTH	5
-#define OCOTP_WIDTH_MASK_SHIFT	(OCOTP_BIT_MASK_SHIFT + OCOTP_BIT_MASK_WIDTH)
-#define OCOTP_WIDTH(n)		((((n) - 1) & ((1 << OCOTP_WIDTH_MASK_WIDTH) - 1)) << OCOTP_WIDTH_MASK_SHIFT)
 
 int imx_ocotp_read_field(uint32_t field, unsigned *value);
 int imx_ocotp_write_field(uint32_t field, unsigned value);
diff --git a/arch/arm/mach-imx/ocotp.c b/arch/arm/mach-imx/ocotp.c
index 151c10cc3..5b21479eb 100644
--- a/arch/arm/mach-imx/ocotp.c
+++ b/arch/arm/mach-imx/ocotp.c
@@ -314,10 +314,10 @@ static void imx_ocotp_field_decode(uint32_t field, unsigned *word,
 {
 	unsigned width;
 
-	*word = ((field >> OCOTP_WORD_MASK_SHIFT) & ((1 << OCOTP_WORD_MASK_WIDTH) - 1)) * 4;
-	*bit = (field >> OCOTP_BIT_MASK_SHIFT) & ((1 << OCOTP_BIT_MASK_WIDTH) - 1);
-	width = ((field >> OCOTP_WIDTH_MASK_SHIFT) & ((1 << OCOTP_WIDTH_MASK_WIDTH) - 1)) + 1;
-	*mask = (1 << width) - 1;
+	*word = FIELD_GET(OCOTP_WORD_MASK, field) * 4;
+	*bit = FIELD_GET(OCOTP_BIT_MASK, field);
+	width = FIELD_GET(OCOTP_WIDTH_MASK, field);
+	*mask = GENMASK(width, 0);
 }
 
 int imx_ocotp_read_field(uint32_t field, unsigned *value)
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
