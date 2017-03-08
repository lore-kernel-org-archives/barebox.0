Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x242.google.com ([2607:f8b0:400e:c00::242])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cljmP-0006km-Sy
 for barebox@lists.infradead.org; Wed, 08 Mar 2017 22:10:04 +0000
Received: by mail-pf0-x242.google.com with SMTP id 67so5069091pfg.2
 for <barebox@lists.infradead.org>; Wed, 08 Mar 2017 14:09:41 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed,  8 Mar 2017 14:09:06 -0800
Message-Id: <20170308220909.4560-18-andrew.smirnov@gmail.com>
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
Subject: [PATCH 17/20] usb: echi-atmel: Check result of ehci_register()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/usb/host/ehci-atmel.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/usb/host/ehci-atmel.c b/drivers/usb/host/ehci-atmel.c
index 4b9fc0a..f075b50 100644
--- a/drivers/usb/host/ehci-atmel.c
+++ b/drivers/usb/host/ehci-atmel.c
@@ -96,9 +96,7 @@ static int atmel_ehci_probe(struct device_d *dev)
 		return PTR_ERR(iores);
 	data.hccr = IOMEM(iores->start);
 
-	ehci_register(dev, &data);
-
-	return 0;
+	return ehci_register(dev, &data);
 }
 
 static void atmel_ehci_remove(struct device_d *dev)
-- 
2.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
