Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fuunx-0001Qb-Mp
 for barebox@lists.infradead.org; Wed, 29 Aug 2018 07:22:19 +0000
Received: by mail-pf1-x443.google.com with SMTP id i26-v6so1859310pfo.12
 for <barebox@lists.infradead.org>; Wed, 29 Aug 2018 00:22:07 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 29 Aug 2018 00:21:52 -0700
Message-Id: <20180829072153.13428-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 1/2] bbu: Look for default handler in
 barebox_update_handler_exists()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Convert barebox_update_handler_exists() to treat struct bbu_data with
both "handler_name" and "devicefile" set to NULL as a specifier for
default update handler in order to support such use-case for
"barebox_update" and fix a recent regression.

This change shouldn't affect another user of
barebox_update_handler_exists(), cb_flash() in
drivers/usb/gadget/f_fastboot.c, since that function explicitly
specifies "devicefile".

Fixes 0ac96ab6e ("bbu: command: Make sure specified update handler exists")

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 common/bbu.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/bbu.c b/common/bbu.c
index 3974bf672..ffe5e15a2 100644
--- a/common/bbu.c
+++ b/common/bbu.c
@@ -148,7 +148,7 @@ bool barebox_update_handler_exists(struct bbu_data *data)
 	if (handler)
 		return true;
 
-	if (!data->handler_name)
+	if (!data->handler_name && data->devicefile)
 		return false;
 
 	return bbu_find_handler(data->handler_name) != NULL;
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
