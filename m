Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x241.google.com ([2607:f8b0:400e:c01::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fZ6t1-0003gP-IP
 for barebox@lists.infradead.org; Sat, 30 Jun 2018 03:49:31 +0000
Received: by mail-pl0-x241.google.com with SMTP id w8-v6so5348784ply.8
 for <barebox@lists.infradead.org>; Fri, 29 Jun 2018 20:49:13 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Fri, 29 Jun 2018 20:48:55 -0700
Message-Id: <20180630034900.3324-7-andrew.smirnov@gmail.com>
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
Subject: [PATCH 06/11] ARM: i.MX: xload-esdhc: Allow patching first word of
 the image
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Depending on how SD card/eMMC was programmed first byte of the image
ther may or may not have appropriate branch instruction. Extend
esdhc_start_image() to allow passing a custom callback that would
patch the first instruction in memory to correctly redirect the CPU to
the resto of the code.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/xload-esdhc.c | 18 +++++++++++++++---
 1 file changed, 15 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-imx/xload-esdhc.c b/arch/arm/mach-imx/xload-esdhc.c
index 98ebdfcf7..c017a8b10 100644
--- a/arch/arm/mach-imx/xload-esdhc.c
+++ b/arch/arm/mach-imx/xload-esdhc.c
@@ -219,7 +219,8 @@ static int esdhc_read_blocks(struct esdhc *esdhc, void *dst, size_t len)
 }
 
 static int
-esdhc_start_image(struct esdhc *esdhc, ptrdiff_t address, u32 offset)
+esdhc_start_image(struct esdhc *esdhc, ptrdiff_t address, u32 offset,
+		  u32 (*opcode_b)(u32))
 {
 	void *buf = (void *)address;
 	u32 *ivt = buf + offset + SZ_1K;
@@ -254,6 +255,9 @@ esdhc_start_image(struct esdhc *esdhc, ptrdiff_t address, u32 offset)
 
 	bb = buf + ofs;
 
+	if (opcode_b)
+		*(u32 *)buf = opcode_b(ofs);
+
 	bb();
 }
 
@@ -292,7 +296,12 @@ int imx6_esdhc_start_image(int instance)
 
 	esdhc.is_mx6 = 1;
 
-	return esdhc_start_image(&esdhc, 0x10000000, 0);
+	return esdhc_start_image(&esdhc, 0x10000000, 0, NULL);
+}
+
+static u32 aarch64_opcode_b(u32 to)
+{
+	return 0x14000000 | (to / 4);
 }
 
 /**
@@ -324,5 +333,8 @@ int imx8_esdhc_start_image(int instance)
 
 	esdhc.is_mx6 = 1;
 
-	return esdhc_start_image(&esdhc, MX8MQ_ATF_BL33_BASE_ADDR, SZ_32K);
+	return esdhc_start_image(&esdhc,
+				 MX8MQ_ATF_BL33_BASE_ADDR,
+				 SZ_32K,
+				 aarch64_opcode_b);
 }
\ No newline at end of file
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
