Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJLvO-00061x-Le
 for barebox@lists.infradead.org; Tue, 31 Mar 2020 18:47:57 +0000
Received: by mail-pg1-x543.google.com with SMTP id 142so10733730pgf.11
 for <barebox@lists.infradead.org>; Tue, 31 Mar 2020 11:47:46 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 31 Mar 2020 11:47:09 -0700
Message-Id: <20200331184722.22707-11-andrew.smirnov@gmail.com>
In-Reply-To: <20200331184722.22707-1-andrew.smirnov@gmail.com>
References: <20200331184722.22707-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 10/23] ARM: zii-imx8mq-dev: Differentiate between Zest and RMB3
To: Barebox List <barebox@lists.infradead.org>
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Add code to configure hostname so we could differentiate between the
two in scripts.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/boards/zii-imx8mq-dev/board.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boards/zii-imx8mq-dev/board.c b/arch/arm/boards/zii-imx8mq-dev/board.c
index 7591841fe..ddd15299c 100644
--- a/arch/arm/boards/zii-imx8mq-dev/board.c
+++ b/arch/arm/boards/zii-imx8mq-dev/board.c
@@ -26,7 +26,10 @@ static int zii_imx8mq_dev_init(void)
 	if (!of_machine_is_compatible("zii,imx8mq-ultra"))
 		return 0;
 
-	barebox_set_hostname("imx8mq-zii-rdu3");
+	if (of_machine_is_compatible("zii,imx8mq-ultra-zest"))
+		barebox_set_hostname("zest");
+	if (of_machine_is_compatible("zii,imx8mq-ultra-rmb3"))
+		barebox_set_hostname("rmb3");
 
 	imx8mq_bbu_internal_mmcboot_register_handler("eMMC", "/dev/mmc0",
 						     BBU_HANDLER_FLAG_DEFAULT);
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
