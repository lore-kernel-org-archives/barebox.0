Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x229.google.com ([2a00:1450:400c:c05::229])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WzAa0-000136-1g
 for barebox@lists.infradead.org; Mon, 23 Jun 2014 20:11:10 +0000
Received: by mail-wi0-f169.google.com with SMTP id hi2so4803595wib.2
 for <barebox@lists.infradead.org>; Mon, 23 Jun 2014 13:10:41 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Mon, 23 Jun 2014 22:10:33 +0200
Message-Id: <1403554235-12674-6-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1403554235-12674-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1403554235-12674-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH 5/7] clk: mvebu: fix Armada 370 TCLK frequencies
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

This fixes Armada 370 TCLK frequencies that are off by
a factor of 10.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Cc: barebox@lists.infradead.org
---
 drivers/clk/mvebu/armada-370.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/mvebu/armada-370.c b/drivers/clk/mvebu/armada-370.c
index d189c6ca5704..8d02ed93d905 100644
--- a/drivers/clk/mvebu/armada-370.c
+++ b/drivers/clk/mvebu/armada-370.c
@@ -37,8 +37,8 @@ static const struct coreclk_ratio a370_coreclk_ratios[] = {
 };
 
 static const u32 a370_tclk_freqs[] = {
-	16600000,
-	20000000,
+	166000000,
+	200000000,
 };
 
 static u32 a370_get_tclk_freq(void __iomem *sar)
-- 
2.0.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
