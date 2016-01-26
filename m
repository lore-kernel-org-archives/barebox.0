Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x22e.google.com ([2a00:1450:400c:c09::22e])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aO0Ln-0001pP-2x
 for barebox@lists.infradead.org; Tue, 26 Jan 2016 09:55:51 +0000
Received: by mail-wm0-x22e.google.com with SMTP id n5so121001439wmn.0
 for <barebox@lists.infradead.org>; Tue, 26 Jan 2016 01:55:30 -0800 (PST)
From: yegorslists@googlemail.com
Date: Tue, 26 Jan 2016 10:55:07 +0100
Message-Id: <1453802107-29600-1-git-send-email-yegorslists@googlemail.com>
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
Subject: [PATCH] bootm: add missing curly brace
To: barebox@lists.infradead.org

From: Yegor Yefremov <yegorslists@googlemail.com>

Signed-off-by: Yegor Yefremov <yegorslists@googlemail.com>
---
 common/bootm.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/bootm.c b/common/bootm.c
index 7e7d2a9..79833e0 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -528,7 +528,7 @@ int bootm_boot(struct bootm_data *bootm_data)
 		goto err_out;
 	}
 
-	if (IS_ENABLED(CONFIG_BOOTM_FORCE_SIGNED_IMAGES))
+	if (IS_ENABLED(CONFIG_BOOTM_FORCE_SIGNED_IMAGES)) {
 		data->verify = BOOTM_VERIFY_SIGNATURE;
 
 		/*
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
