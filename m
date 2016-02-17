Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x22c.google.com ([2607:f8b0:400e:c00::22c])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aVqwP-0003nT-Tn
 for barebox@lists.infradead.org; Wed, 17 Feb 2016 01:30:07 +0000
Received: by mail-pf0-x22c.google.com with SMTP id x65so1520200pfb.1
 for <barebox@lists.infradead.org>; Tue, 16 Feb 2016 17:29:48 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 16 Feb 2016 17:29:13 -0800
Message-Id: <1455672559-25061-13-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1455672559-25061-1-git-send-email-andrew.smirnov@gmail.com>
References: <1455672559-25061-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 12/18] fec_imx: Impelemnt reset timeout
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Don't wait for more than one second for IP block to finish resetting. If
the block is dead it makes more sence to continue execution in hopes
that the rest of the processor is fine, rather than spin indefinetly
inside of the fec_probe function

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/net/fec_imx.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
index 46932fe..99bd179 100644
--- a/drivers/net/fec_imx.c
+++ b/drivers/net/fec_imx.c
@@ -687,6 +687,7 @@ static int fec_probe(struct device_d *dev)
 	int phy_reset;
 	u32 msec = 1;
 	struct resource *res;
+	u64 start;
 
 	ret = dev_get_drvdata(dev, (const void **)&type);
 	if (ret)
@@ -739,9 +740,14 @@ static int fec_probe(struct device_d *dev)
 	}
 
 	/* Reset chip. */
+	start = get_time_ns();
 	writel(FEC_ECNTRL_RESET, fec->regs + FEC_ECNTRL);
 	while(readl(fec->regs + FEC_ECNTRL) & FEC_ECNTRL_RESET) {
 		udelay(10);
+		if (is_timeout(start, SECOND)) {
+			ret = -ETIMEDOUT;
+			goto free_gpio;
+		}
 	}
 
 	/*
-- 
2.5.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
