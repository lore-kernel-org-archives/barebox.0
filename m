Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x242.google.com ([2607:f8b0:400e:c01::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f5iDa-0008Pr-DZ
 for barebox@lists.infradead.org; Tue, 10 Apr 2018 01:37:07 +0000
Received: by mail-pl0-x242.google.com with SMTP id b6-v6so6322049pla.11
 for <barebox@lists.infradead.org>; Mon, 09 Apr 2018 18:36:56 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon,  9 Apr 2018 18:36:36 -0700
Message-Id: <20180410013637.2513-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 1/2] i.MX53/TX53: Adjust to latest get_runtime_offset()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Latest version of get_runtime_offset() returns positive offset that
needs to be added to rather than substracted from original pointer.

Cc: Michael Grzeschik <m.grzeschik@pengutronix.de>
Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---

Sascha:

This one obviously needs to go into master as well. Sorry for the
noise if this has already been fixed.

Thanks,
Andrey Smirnov

 arch/arm/boards/karo-tx53/lowlevel.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boards/karo-tx53/lowlevel.c b/arch/arm/boards/karo-tx53/lowlevel.c
index cb324b200..a0bce8a78 100644
--- a/arch/arm/boards/karo-tx53/lowlevel.c
+++ b/arch/arm/boards/karo-tx53/lowlevel.c
@@ -47,7 +47,7 @@ static void __imx53_tx53_init(int is_xx30)
 	if (IS_ENABLED(CONFIG_DEBUG_LL))
 		setup_uart();
 
-	fdt = fdt_blob_fixed_offset - get_runtime_offset();
+	fdt = fdt_blob_fixed_offset + get_runtime_offset();
 
 	imx53_barebox_entry(fdt);
 }
-- 
2.14.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
