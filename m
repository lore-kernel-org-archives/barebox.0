Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x232.google.com ([2607:f8b0:400e:c00::232])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ag2EE-0007de-U7
 for barebox@lists.infradead.org; Wed, 16 Mar 2016 03:34:35 +0000
Received: by mail-pf0-x232.google.com with SMTP id 124so56351142pfg.0
 for <barebox@lists.infradead.org>; Tue, 15 Mar 2016 20:34:14 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 15 Mar 2016 20:33:42 -0700
Message-Id: <1458099232-9050-7-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 07/16] fec_imx: Impelemnt reset timeout
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Don't wait for more than one second for IP block to finish resetting. If
the block is dead it makes more sence to continue execution in hopes
that the rest of the processor is fine, rather than spin indefinetly
inside of the fec_probe function

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/net/fec_imx.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
index 601edba..fc2c8e1 100644
--- a/drivers/net/fec_imx.c
+++ b/drivers/net/fec_imx.c
@@ -656,6 +656,7 @@ static int fec_probe(struct device_d *dev)
 	enum fec_type type;
 	int phy_reset;
 	u32 msec = 1;
+	u64 start;
 
 	ret = dev_get_drvdata(dev, (const void **)&type);
 	if (ret)
@@ -708,9 +709,13 @@ static int fec_probe(struct device_d *dev)
 	}
 
 	/* Reset chip. */
+	start = get_time_ns();
 	writel(FEC_ECNTRL_RESET, fec->regs + FEC_ECNTRL);
 	while(readl(fec->regs + FEC_ECNTRL) & FEC_ECNTRL_RESET) {
-		udelay(10);
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
