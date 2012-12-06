Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-f49.google.com ([209.85.215.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Tgfsi-00049c-Uj
 for barebox@lists.infradead.org; Thu, 06 Dec 2012 18:09:09 +0000
Received: by mail-la0-f49.google.com with SMTP id r15so5015012lag.36
 for <barebox@lists.infradead.org>; Thu, 06 Dec 2012 10:09:06 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Thu,  6 Dec 2012 22:08:57 +0400
Message-Id: <1354817337-23659-1-git-send-email-antonynpavlov@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] clk: use the 'CLK_ALWAYS_ENABLED' flag for clk-fixed by
 default
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/clk/clk-fixed.c |    1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/clk/clk-fixed.c b/drivers/clk/clk-fixed.c
index fa89cb2..5e81e72 100644
--- a/drivers/clk/clk-fixed.c
+++ b/drivers/clk/clk-fixed.c
@@ -44,6 +44,7 @@ struct clk *clk_fixed(const char *name, int rate)
 	fix->rate = rate;
 	fix->clk.ops = &clk_fixed_ops;
 	fix->clk.name = name;
+	fix->clk.flags = CLK_ALWAYS_ENABLED;
 
 	ret = clk_register(&fix->clk);
 	if (ret) {
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
