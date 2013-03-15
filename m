Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from fallback3.mail.ru ([94.100.176.58])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UGOFK-0004Zc-NU
 for barebox@lists.infradead.org; Fri, 15 Mar 2013 06:36:07 +0000
Received: from smtp38.i.mail.ru (smtp38.i.mail.ru [94.100.177.98])
 by fallback3.mail.ru (mPOP.Fallback_MX) with ESMTP id BC2EDD95BACA
 for <barebox@lists.infradead.org>; Fri, 15 Mar 2013 10:36:01 +0400 (MSK)
From: Alexander Shiyan <shc_work@mail.ru>
Date: Fri, 15 Mar 2013 10:35:39 +0400
Message-Id: <1363329340-13126-2-git-send-email-shc_work@mail.ru>
In-Reply-To: <1363329340-13126-1-git-send-email-shc_work@mail.ru>
References: <1363329340-13126-1-git-send-email-shc_work@mail.ru>
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
Subject: [RFC 2/3] clk: Using the "is_enabled" to determine the clock state
To: barebox@lists.infradead.org


Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 drivers/clk/clk.c |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
index cb94755..d5dbbd9 100644
--- a/drivers/clk/clk.c
+++ b/drivers/clk/clk.c
@@ -213,6 +213,8 @@ int clk_register(struct clk *clk)
 
 	if (clk->flags & CLK_ALWAYS_ENABLED) {
 		clk->enable_count = 1;
+	} else if (clk->ops->is_enabled) {
+		clk->enable_count = clk->ops->is_enabled(clk);
 	}
 
 	return 0;
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
