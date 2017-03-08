Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x241.google.com ([2607:f8b0:400e:c00::241])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cljmO-0006fe-GW
 for barebox@lists.infradead.org; Wed, 08 Mar 2017 22:10:03 +0000
Received: by mail-pf0-x241.google.com with SMTP id 67so5068919pfg.2
 for <barebox@lists.infradead.org>; Wed, 08 Mar 2017 14:09:38 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed,  8 Mar 2017 14:09:03 -0800
Message-Id: <20170308220909.4560-15-andrew.smirnov@gmail.com>
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
Subject: [PATCH 14/20] usb: ehci-atmel: Check result of clk_enable()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/usb/host/ehci-atmel.c | 21 +++++++++++++++++----
 1 file changed, 17 insertions(+), 4 deletions(-)

diff --git a/drivers/usb/host/ehci-atmel.c b/drivers/usb/host/ehci-atmel.c
index cc9636c..fa9ca7d 100644
--- a/drivers/usb/host/ehci-atmel.c
+++ b/drivers/usb/host/ehci-atmel.c
@@ -32,10 +32,20 @@
 /* interface and function clocks; sometimes also an AHB clock */
 static struct clk *iclk, *fclk;
 
-static void atmel_start_clock(void)
+static int atmel_start_clock(void)
 {
-	clk_enable(iclk);
-	clk_enable(fclk);
+	int ret;
+	ret = clk_enable(iclk);
+	if (ret < 0) {
+		pr_err("Error enabling interface clock\n");
+		return ret;
+	}
+
+	ret = clk_enable(fclk);
+	if (ret < 0)
+		pr_err("Error enabling function clock\n");
+
+	return ret;
 }
 
 static void atmel_stop_clock(void)
@@ -46,6 +56,7 @@ static void atmel_stop_clock(void)
 
 static int atmel_ehci_probe(struct device_d *dev)
 {
+	int ret;
 	struct resource *iores;
 	struct ehci_data data;
 
@@ -64,7 +75,9 @@ static int atmel_ehci_probe(struct device_d *dev)
 	/*
 	 * Start the USB clocks.
 	 */
-	atmel_start_clock();
+	ret = atmel_start_clock();
+	if (ret < 0)
+		return ret;
 
 	data.flags = 0;
 
-- 
2.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
