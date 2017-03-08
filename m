Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x241.google.com ([2607:f8b0:400e:c05::241])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cljmK-0006eq-5S
 for barebox@lists.infradead.org; Wed, 08 Mar 2017 22:09:57 +0000
Received: by mail-pg0-x241.google.com with SMTP id 25so4617375pgy.3
 for <barebox@lists.infradead.org>; Wed, 08 Mar 2017 14:09:34 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed,  8 Mar 2017 14:09:00 -0800
Message-Id: <20170308220909.4560-12-andrew.smirnov@gmail.com>
In-Reply-To: <20170308220909.4560-1-andrew.smirnov@gmail.com>
References: <20170308220909.4560-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 11/20] usb: ohci-at91: Check result of clk_get()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/usb/host/ohci-at91.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/usb/host/ohci-at91.c b/drivers/usb/host/ohci-at91.c
index 0f5c8f1..ca583ff 100644
--- a/drivers/usb/host/ohci-at91.c
+++ b/drivers/usb/host/ohci-at91.c
@@ -47,7 +47,16 @@ static int at91_ohci_probe(struct device_d *dev)
 	struct ohci_regs __iomem *regs = (struct ohci_regs __iomem *)dev->resource[0].start;
 
 	iclk = clk_get(NULL, "ohci_clk");
+	if (IS_ERR(iclk)) {
+		dev_err(dev, "Failed to get 'ohci_clk'\n");
+		return PTR_ERR(iclk);
+	}
+
 	fclk = clk_get(NULL, "uhpck");
+	if (IS_ERR(fclk)) {
+		dev_err(dev, "Failed to get 'uhpck'\n");
+		return PTR_ERR(fclk);
+	}
 
 	/*
 	 * Start the USB clocks.
-- 
2.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
