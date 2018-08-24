Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ft2EB-0005T4-2n
 for barebox@lists.infradead.org; Fri, 24 Aug 2018 02:53:43 +0000
Received: by mail-pl1-x644.google.com with SMTP id j8-v6so443089pll.12
 for <barebox@lists.infradead.org>; Thu, 23 Aug 2018 19:53:28 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 23 Aug 2018 19:52:40 -0700
Message-Id: <20180824025243.19479-22-andrew.smirnov@gmail.com>
In-Reply-To: <20180824025243.19479-1-andrew.smirnov@gmail.com>
References: <20180824025243.19479-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 21/24] bbu: Remove logical negation in
 barebox_update_handler_exists()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Returning !bbu_find_handler() from barebox_update_handler_exists()
would return the opposite result from what the name of that funciton
implies. Drop the "!" to make it behave as expected.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 common/bbu.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/bbu.c b/common/bbu.c
index 11e44f4a7..9e206227a 100644
--- a/common/bbu.c
+++ b/common/bbu.c
@@ -151,7 +151,7 @@ bool barebox_update_handler_exists(struct bbu_data *data)
 	if (!data->handler_name)
 		return false;
 
-	return !bbu_find_handler(data->handler_name);
+	return bbu_find_handler(data->handler_name) != NULL;
 }
 
 static int bbu_check_of_compat(struct bbu_data *data)
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
