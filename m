Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x241.google.com ([2607:f8b0:400e:c05::241])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cl1Wu-0007lw-A6
 for barebox@lists.infradead.org; Mon, 06 Mar 2017 22:55:08 +0000
Received: by mail-pg0-x241.google.com with SMTP id b5so4150140pgg.1
 for <barebox@lists.infradead.org>; Mon, 06 Mar 2017 14:54:43 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon,  6 Mar 2017 14:53:45 -0800
Message-Id: <20170306225356.31475-35-andrew.smirnov@gmail.com>
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
Subject: [PATCH 34/45] usb: ohci-at91: Check result of clk_enable()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/usb/host/ohci-at91.c | 24 ++++++++++++++++++++----
 1 file changed, 20 insertions(+), 4 deletions(-)

diff --git a/drivers/usb/host/ohci-at91.c b/drivers/usb/host/ohci-at91.c
index 57ca86a..f413616 100644
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
