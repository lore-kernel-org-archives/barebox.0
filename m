Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h1nmc-0004vH-TI
 for barebox@lists.infradead.org; Thu, 07 Mar 2019 07:49:40 +0000
Received: by mail-pf1-x442.google.com with SMTP id n125so10802453pfn.5
 for <barebox@lists.infradead.org>; Wed, 06 Mar 2019 23:49:38 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed,  6 Mar 2019 23:49:13 -0800
Message-Id: <20190307074926.20539-5-andrew.smirnov@gmail.com>
In-Reply-To: <20190307074926.20539-1-andrew.smirnov@gmail.com>
References: <20190307074926.20539-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 04/17] ARM: i.MX: bbu: Fix variable type in
 imx_bbu_external_nand_update()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

MEMGETBADBLOCK returns loff_t, so that's the type we should use to
store its result.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/imx-bbu-external-nand.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-imx/imx-bbu-external-nand.c b/arch/arm/mach-imx/imx-bbu-external-nand.c
index 52622ac4c..440785ab7 100644
--- a/arch/arm/mach-imx/imx-bbu-external-nand.c
+++ b/arch/arm/mach-imx/imx-bbu-external-nand.c
@@ -40,7 +40,7 @@ static int imx_bbu_external_nand_update(struct bbu_handler *handler, struct bbu_
 	int size_available, size_need;
 	int ret;
 	uint32_t num_bb = 0, bbt = 0;
-	uint64_t offset = 0;
+	loff_t offset = 0;
 	int block = 0, len, now, blocksize;
 	void *image = data->image;
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
