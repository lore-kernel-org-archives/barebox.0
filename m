Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UpYlZ-0004g3-59
 for barebox@lists.infradead.org; Thu, 20 Jun 2013 06:54:46 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 20 Jun 2013 08:54:07 +0200
Message-Id: <1371711261-10039-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1371711261-10039-1-git-send-email-s.hauer@pengutronix.de>
References: <1371711261-10039-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 03/17] clk: add prototype for clk_is_enabled
To: barebox@lists.infradead.org
Cc: Juergen Beisert <jbe@pengutronix.de>

On MXS we need to poll the busy bit when changing a clock rate, but only
when the parent clocks are enabled. This exposes the already present
function clk_is_enabled which is suitable for this job.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/clk/clk.c   | 2 +-
 include/linux/clk.h | 1 +
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
index a3def53..690a0c6 100644
--- a/drivers/clk/clk.c
+++ b/drivers/clk/clk.c
@@ -208,7 +208,7 @@ int clk_register(struct clk *clk)
 	return 0;
 }
 
-static int clk_is_enabled(struct clk *clk)
+int clk_is_enabled(struct clk *clk)
 {
 	int enabled;
 
diff --git a/include/linux/clk.h b/include/linux/clk.h
index 718faa0..38832ba 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -216,6 +216,7 @@ struct clk *clk_gate(const char *name, const char *parent, void __iomem *reg,
 		u8 shift);
 struct clk *clk_gate_inverted(const char *name, const char *parent, void __iomem *reg,
 		u8 shift);
+int clk_is_enabled(struct clk *clk);
 
 int clk_is_enabled_always(struct clk *clk);
 
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
