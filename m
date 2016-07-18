Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x244.google.com ([2607:f8b0:400e:c00::244])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bPAGc-0006qH-Hy
 for barebox@lists.infradead.org; Mon, 18 Jul 2016 15:15:35 +0000
Received: by mail-pf0-x244.google.com with SMTP id i6so11666500pfe.0
 for <barebox@lists.infradead.org>; Mon, 18 Jul 2016 08:15:13 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 18 Jul 2016 08:14:43 -0700
Message-Id: <1468854889-6057-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 1/7] Revert "syscon: Decrease driver registration priority"
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Fixing the i.MX6 specific issue this way breaks things on CLPS711x
target. Better fix for the problem is to follow this patch.

This reverts commit c203958f3bbf25fc3d612497057b962e96ad1c52.

Reported-by: Alexander Shiyan <shc_work@mail.ru>
Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/mfd/syscon.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mfd/syscon.c b/drivers/mfd/syscon.c
index ee62da0..9589a03 100644
--- a/drivers/mfd/syscon.c
+++ b/drivers/mfd/syscon.c
@@ -111,7 +111,7 @@ static int __init syscon_init(void)
 {
 	return platform_driver_register(&syscon_driver);
 }
-device_initcall(syscon_init);
+core_initcall(syscon_init);
 
 MODULE_AUTHOR("Dong Aisheng <dong.aisheng@linaro.org>");
 MODULE_DESCRIPTION("System Control driver");
-- 
2.5.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
