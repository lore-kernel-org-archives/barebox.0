Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x242.google.com ([2607:f8b0:400e:c05::242])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cl1Ws-0007hY-5y
 for barebox@lists.infradead.org; Mon, 06 Mar 2017 22:55:06 +0000
Received: by mail-pg0-x242.google.com with SMTP id 25so20992547pgy.3
 for <barebox@lists.infradead.org>; Mon, 06 Mar 2017 14:54:40 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon,  6 Mar 2017 14:53:43 -0800
Message-Id: <20170306225356.31475-33-andrew.smirnov@gmail.com>
In-Reply-To: <20170306225356.31475-1-andrew.smirnov@gmail.com>
References: <20170306225356.31475-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 32/45] usb: ohci-at91: Check result of clk_get()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/usb/host/ohci-at91.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/usb/host/ohci-at91.c b/drivers/usb/host/ohci-at91.c
index 0f5c8f1..c70d898 100644
--- a/drivers/usb/host/ohci-at91.c
+++ b/drivers/usb/host/ohci-at91.c
@@ -47,7 +47,16 @@ static int at91_ohci_probe(struct device_d *dev)
 	struct ohci_regs __iomem *regs = (struct ohci_regs __iomem *)dev->resource[0].start;
 
 	iclk = clk_get(NULL, "ohci_clk");
+	if (IS_ERR(iclk)) {
+		dev_err(dev, "Failed to get 'iclk'\n");
+		return PTR_ERR(iclk);
+	}
+
 	fclk = clk_get(NULL, "uhpck");
+	if (IS_ERR(fclk)) {
+		dev_err(dev, "Failed to get 'fclk'\n");
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
