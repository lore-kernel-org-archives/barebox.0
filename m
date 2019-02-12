Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gtRkA-0007HR-3s
 for barebox@lists.infradead.org; Tue, 12 Feb 2019 06:40:35 +0000
Received: by mail-pg1-x543.google.com with SMTP id d72so784258pga.9
 for <barebox@lists.infradead.org>; Mon, 11 Feb 2019 22:40:34 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 11 Feb 2019 22:40:15 -0800
Message-Id: <20190212064022.26154-2-andrew.smirnov@gmail.com>
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
Subject: [PATCH 1/8] PCI: Fix to_pci_dev() macro
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Rename argument of to_pci_dev() to avoid replacing both first and
third parameters passed to container_of. All of the current users of
the macro invoike it with a varible named "dev", so erroneous
replacement doesn't cause any harm, however trying to pass variable
with any other name will result in compilation failure.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 include/linux/pci.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/linux/pci.h b/include/linux/pci.h
index 478f10207..0022922fc 100644
--- a/include/linux/pci.h
+++ b/include/linux/pci.h
@@ -113,7 +113,7 @@ struct pci_dev {
 	 */
 	unsigned long	base_address[6];
 };
-#define	to_pci_dev(dev) container_of(dev, struct pci_dev, dev)
+#define	to_pci_dev(d) container_of(d, struct pci_dev, dev)
 
 enum {
 	PCI_BUS_RESOURCE_IO = 0,
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
