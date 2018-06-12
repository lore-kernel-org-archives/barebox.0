Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x243.google.com ([2607:f8b0:400e:c00::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fSoGe-0002pA-Fw
 for barebox@lists.infradead.org; Tue, 12 Jun 2018 18:43:46 +0000
Received: by mail-pf0-x243.google.com with SMTP id r11-v6so12560152pfl.6
 for <barebox@lists.infradead.org>; Tue, 12 Jun 2018 11:43:34 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 12 Jun 2018 11:43:12 -0700
Message-Id: <20180612184316.4579-4-andrew.smirnov@gmail.com>
In-Reply-To: <20180612184316.4579-1-andrew.smirnov@gmail.com>
References: <20180612184316.4579-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 2/6] ARM: i.MX: bbu: Replace magic number with a constant
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/imx-bbu-internal.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-imx/imx-bbu-internal.c b/arch/arm/mach-imx/imx-bbu-internal.c
index 4655bdcc3..07a26f25a 100644
--- a/arch/arm/mach-imx/imx-bbu-internal.c
+++ b/arch/arm/mach-imx/imx-bbu-internal.c
@@ -549,7 +549,7 @@ int imx53_bbu_internal_nand_register_handler(const char *name,
 	struct imx_internal_bbu_handler *imx_handler;
 
 	imx_handler = __init_handler(name, NULL, flags);
-	imx_handler->flash_header_offset = 0x400;
+	imx_handler->flash_header_offset = FLASH_HEADER_OFFSET_MMC;
 
 	imx_handler->handler.handler = imx_bbu_internal_v2_update;
 	imx_handler->flags = IMX_INTERNAL_FLAG_NAND;
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
