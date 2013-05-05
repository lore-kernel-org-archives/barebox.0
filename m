Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f172.google.com ([209.85.217.172])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UYtcy-0006Ir-5Y
 for barebox@lists.infradead.org; Sun, 05 May 2013 07:45:00 +0000
Received: by mail-lb0-f172.google.com with SMTP id y6so2602058lbh.3
 for <barebox@lists.infradead.org>; Sun, 05 May 2013 00:44:35 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sun,  5 May 2013 11:43:47 +0400
Message-Id: <1367739827-26855-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH] clkdev: fix typo
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/clk/clkdev.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/clkdev.c b/drivers/clk/clkdev.c
index 338b9e8..256927e 100644
--- a/drivers/clk/clkdev.c
+++ b/drivers/clk/clkdev.c
@@ -182,7 +182,7 @@ int clk_register_clkdev(struct clk *clk, const char *con_id,
 	va_list ap;
 
 	if (IS_ERR(clk))
-                return PTR_ERR(clk);
+		return PTR_ERR(clk);
 
 	va_start(ap, dev_fmt);
 	cl = clkdev_alloc(clk, con_id, dev_fmt, ap);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
