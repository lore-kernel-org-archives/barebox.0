Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gtRkD-0007I7-3q
 for barebox@lists.infradead.org; Tue, 12 Feb 2019 06:40:40 +0000
Received: by mail-pf1-x441.google.com with SMTP id q1so826482pfi.5
 for <barebox@lists.infradead.org>; Mon, 11 Feb 2019 22:40:36 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 11 Feb 2019 22:40:17 -0800
Message-Id: <20190212064022.26154-4-andrew.smirnov@gmail.com>
In-Reply-To: <20190212064022.26154-1-andrew.smirnov@gmail.com>
References: <20190212064022.26154-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 3/8] drivers: Make use of device_pci_driver()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Replace all of the generic PCI boilerplate with device_pci_driver().

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/net/e1000/main.c    | 7 +------
 drivers/net/rtl8139.c       | 7 +------
 drivers/net/rtl8169.c       | 7 +------
 drivers/usb/host/xhci-pci.c | 7 +------
 4 files changed, 4 insertions(+), 24 deletions(-)

diff --git a/drivers/net/e1000/main.c b/drivers/net/e1000/main.c
index 774e3d030..f67c5d867 100644
--- a/drivers/net/e1000/main.c
+++ b/drivers/net/e1000/main.c
@@ -3713,9 +3713,4 @@ static struct pci_driver e1000_eth_driver = {
 	.probe = e1000_probe,
 	.remove = e1000_remove,
 };
-
-static int e1000_driver_init(void)
-{
-	return pci_register_driver(&e1000_eth_driver);
-}
-device_initcall(e1000_driver_init);
+device_pci_driver(e1000_eth_driver);
diff --git a/drivers/net/rtl8139.c b/drivers/net/rtl8139.c
index cfa34a2f2..e1c57e6b7 100644
--- a/drivers/net/rtl8139.c
+++ b/drivers/net/rtl8139.c
@@ -594,9 +594,4 @@ static struct pci_driver rtl8139_eth_driver = {
 	.id_table = rtl8139_pci_tbl,
 	.probe = rtl8139_probe,
 };
-
-static int rtl8139_init(void)
-{
-	return pci_register_driver(&rtl8139_eth_driver);
-}
-device_initcall(rtl8139_init);
+device_pci_driver(rtl8139_eth_driver);
diff --git a/drivers/net/rtl8169.c b/drivers/net/rtl8169.c
index ba257509e..4e9823d42 100644
--- a/drivers/net/rtl8169.c
+++ b/drivers/net/rtl8169.c
@@ -544,9 +544,4 @@ static struct pci_driver rtl8169_eth_driver = {
 	.id_table = rtl8169_pci_tbl,
 	.probe = rtl8169_probe,
 };
-
-static int rtl8169_init(void)
-{
-	return pci_register_driver(&rtl8169_eth_driver);
-}
-device_initcall(rtl8169_init);
+device_pci_driver(rtl8169_eth_driver);
diff --git a/drivers/usb/host/xhci-pci.c b/drivers/usb/host/xhci-pci.c
index a140b1dd0..7a9315a0b 100644
--- a/drivers/usb/host/xhci-pci.c
+++ b/drivers/usb/host/xhci-pci.c
@@ -37,9 +37,4 @@ static struct pci_driver xhci_pci_driver = {
 	.id_table = xhci_pci_tbl,
 	.probe = xhci_pci_probe,
 };
-
-static int xhci_pci_init(void)
-{
-	return pci_register_driver(&xhci_pci_driver);
-}
-device_initcall(xhci_pci_init);
+device_pci_driver(xhci_pci_driver);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
