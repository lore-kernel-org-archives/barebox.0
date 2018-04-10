Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x244.google.com ([2607:f8b0:400e:c01::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f5iDb-0008QC-Mc
 for barebox@lists.infradead.org; Tue, 10 Apr 2018 01:37:09 +0000
Received: by mail-pl0-x244.google.com with SMTP id 91-v6so6348735pld.3
 for <barebox@lists.infradead.org>; Mon, 09 Apr 2018 18:36:57 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon,  9 Apr 2018 18:36:37 -0700
Message-Id: <20180410013637.2513-2-andrew.smirnov@gmail.com>
In-Reply-To: <20180410013637.2513-1-andrew.smirnov@gmail.com>
References: <20180410013637.2513-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 2/2] boards: samx6: Adjust to latest get_runtime_offset()
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

 arch/arm/boards/kontron-samx6i/lowlevel.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boards/kontron-samx6i/lowlevel.c b/arch/arm/boards/kontron-samx6i/lowlevel.c
index 4113ddbb4..5c3500704 100644
--- a/arch/arm/boards/kontron-samx6i/lowlevel.c
+++ b/arch/arm/boards/kontron-samx6i/lowlevel.c
@@ -47,7 +47,7 @@ static void __noreturn start_imx6_samx6i_common(void *fdt_blob_fixed_offset)
 	if (IS_ENABLED(CONFIG_DEBUG_LL))
 		setup_uart();
 
-	fdt = fdt_blob_fixed_offset - get_runtime_offset();
+	fdt = fdt_blob_fixed_offset + get_runtime_offset();
 
 	barebox_arm_entry(0x10000000, size, fdt);
 }
-- 
2.14.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
