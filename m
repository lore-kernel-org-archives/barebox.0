Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x231.google.com ([2607:f8b0:400e:c00::231])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ag2E9-0007dO-NL
 for barebox@lists.infradead.org; Wed, 16 Mar 2016 03:34:30 +0000
Received: by mail-pf0-x231.google.com with SMTP id x3so56149677pfb.1
 for <barebox@lists.infradead.org>; Tue, 15 Mar 2016 20:34:13 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 15 Mar 2016 20:33:41 -0700
Message-Id: <1458099232-9050-6-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1458099232-9050-1-git-send-email-andrew.smirnov@gmail.com>
References: <1458099232-9050-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 06/16] fec_imx: Use FEC_ECNTRL_RESET instead of a magic number
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/net/fec_imx.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
index e7dbc16..601edba 100644
--- a/drivers/net/fec_imx.c
+++ b/drivers/net/fec_imx.c
@@ -709,7 +709,7 @@ static int fec_probe(struct device_d *dev)
 
 	/* Reset chip. */
 	writel(FEC_ECNTRL_RESET, fec->regs + FEC_ECNTRL);
-	while(readl(fec->regs + FEC_ECNTRL) & 1) {
+	while(readl(fec->regs + FEC_ECNTRL) & FEC_ECNTRL_RESET) {
 		udelay(10);
 	}
 
-- 
2.5.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
