Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YasNK-0002Ho-1I
 for barebox@lists.infradead.org; Wed, 25 Mar 2015 20:58:07 +0000
Received: from dude.hi.4.pengutronix.de ([10.1.0.7] helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <l.stach@pengutronix.de>) id 1YasMw-0002eJ-FR
 for barebox@lists.infradead.org; Wed, 25 Mar 2015 21:57:42 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Wed, 25 Mar 2015 21:57:40 +0100
Message-Id: <1427317062-20969-2-git-send-email-l.stach@pengutronix.de>
In-Reply-To: <1427317062-20969-1-git-send-email-l.stach@pengutronix.de>
References: <1427317062-20969-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH 2/4] clk: fractional-divider: fix build with CONFIG_MODULES
To: barebox@lists.infradead.org

Fixes:
error: 'clk_register_fractional_divider' undeclared here

introduced with commit 22a0c31c9265 (CLK: Add fractional
divider clock support from Linux kernel)

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/clk/clk-fractional-divider.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/clk-fractional-divider.c b/drivers/clk/clk-fractional-divider.c
index 59b98aac9eb7..1504f7a72868 100644
--- a/drivers/clk/clk-fractional-divider.c
+++ b/drivers/clk/clk-fractional-divider.c
@@ -149,4 +149,4 @@ struct clk *clk_fractional_divider(
 
 	return fd;
 }
-EXPORT_SYMBOL_GPL(clk_register_fractional_divider);
+EXPORT_SYMBOL_GPL(clk_fractional_divider);
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
