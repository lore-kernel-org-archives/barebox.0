Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x234.google.com ([2a00:1450:4010:c03::234])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UVOkW-00051J-6I
 for barebox@lists.infradead.org; Thu, 25 Apr 2013 16:10:20 +0000
Received: by mail-la0-f52.google.com with SMTP id fd20so2762669lab.39
 for <barebox@lists.infradead.org>; Thu, 25 Apr 2013 09:10:16 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Thu, 25 Apr 2013 20:09:30 +0400
Message-Id: <1366906170-4509-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH] of: fix typos
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/of/base.c |    4 ++--
 drivers/of/gpio.c |    1 -
 2 files changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index fde91b3..5661e8d 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -902,13 +902,13 @@ int of_add_memory(struct device_node *node, bool dump)
 
 		sprintf(str, "ram%d", r);
 
-                barebox_add_memory_bank(str, base, size);
+		barebox_add_memory_bank(str, base, size);
 
 		if (dump)
 			pr_info("%s: %s: 0x%llx@0x%llx\n", node->name, str, size, base);
 
 		r++;
-        }
+	}
 
 	return 0;
 }
diff --git a/drivers/of/gpio.c b/drivers/of/gpio.c
index d4314f3..83b72c0 100644
--- a/drivers/of/gpio.c
+++ b/drivers/of/gpio.c
@@ -25,4 +25,3 @@ int of_get_named_gpio(struct device_node *np,
 
 	return ret;
 }
-
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
