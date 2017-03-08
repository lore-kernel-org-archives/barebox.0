Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x244.google.com ([2607:f8b0:400e:c05::244])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cljmK-0006fD-Ka
 for barebox@lists.infradead.org; Wed, 08 Mar 2017 22:10:04 +0000
Received: by mail-pg0-x244.google.com with SMTP id 77so4615777pgc.0
 for <barebox@lists.infradead.org>; Wed, 08 Mar 2017 14:09:36 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed,  8 Mar 2017 14:09:02 -0800
Message-Id: <20170308220909.4560-14-andrew.smirnov@gmail.com>
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
Subject: [PATCH 13/20] usb: ohci-at91: Check result of clk_enable()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/usb/host/ohci-at91.c | 24 ++++++++++++++++++++----
 1 file changed, 20 insertions(+), 4 deletions(-)

diff --git a/drivers/usb/host/ohci-at91.c b/drivers/usb/host/ohci-at91.c
index cd7b321..5f74526 100644
--- a/drivers/usb/host/ohci-at91.c
+++ b/drivers/usb/host/ohci-at91.c
@@ -34,10 +34,23 @@ struct ohci_at91_priv {
 	struct ohci_regs __iomem *regs;
 };
 
-static void at91_start_clock(struct ohci_at91_priv *ohci_at91)
+static int at91_start_clock(struct ohci_at91_priv *ohci_at91)
 {
-	clk_enable(ohci_at91->iclk);
-	clk_enable(ohci_at91->fclk);
+	int ret;
+
+	ret = clk_enable(ohci_at91->iclk);
+	if (ret < 0) {
+		dev_err(ohci_at91->dev, "Failed to enable 'iclk'\n");
+		return ret;
+	}
+
+	ret = clk_enable(ohci_at91->fclk);
+	if (ret < 0) {
+		dev_err(ohci_at91->dev, "Failed to enable 'fclk'\n");
+		return ret;
+	}
+
+	return 0;
 }
 
 static void at91_stop_clock(struct ohci_at91_priv *ohci_at91)
@@ -48,6 +61,7 @@ static void at91_stop_clock(struct ohci_at91_priv *ohci_at91)
 
 static int at91_ohci_probe(struct device_d *dev)
 {
+	int ret;
 	struct resource *io;
 	struct ohci_at91_priv *ohci_at91 = xzalloc(sizeof(*ohci_at91));
 
@@ -76,7 +90,9 @@ static int at91_ohci_probe(struct device_d *dev)
 	/*
 	 * Start the USB clocks.
 	 */
-	at91_start_clock(ohci_at91);
+	ret = at91_start_clock(ohci_at91);
+	if (ret < 0)
+		return ret;
 
 	/*
 	 * The USB host controller must remain in reset.
-- 
2.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
