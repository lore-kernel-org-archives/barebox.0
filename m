Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gtRkB-0007Hl-94
 for barebox@lists.infradead.org; Tue, 12 Feb 2019 06:40:36 +0000
Received: by mail-pf1-x444.google.com with SMTP id b7so819165pfi.8
 for <barebox@lists.infradead.org>; Mon, 11 Feb 2019 22:40:35 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 11 Feb 2019 22:40:16 -0800
Message-Id: <20190212064022.26154-3-andrew.smirnov@gmail.com>
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
Subject: [PATCH 2/8] PCI: Introduce device_pci_driver()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Similar to varoius *_platfrom_drivers(), introduce device_pci_driver()
to simplify PCI driver boilerplate.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 include/linux/pci.h | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/include/linux/pci.h b/include/linux/pci.h
index 0022922fc..d92d70b6b 100644
--- a/include/linux/pci.h
+++ b/include/linux/pci.h
@@ -242,6 +242,11 @@ struct pci_driver {
 int pci_register_driver(struct pci_driver *pdrv);
 int pci_register_device(struct pci_dev *pdev);
 
+#define pci_driver_register	pci_register_driver
+
+#define device_pci_driver(drv)			\
+	register_driver_macro(device,pci,drv)
+
 extern struct list_head pci_root_buses; /* list of all known PCI buses */
 
 extern void register_pci_controller(struct pci_controller *hose);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
