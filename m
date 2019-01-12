Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1giDd5-0006Ue-F0
 for barebox@lists.infradead.org; Sat, 12 Jan 2019 07:22:53 +0000
Received: by mail-pl1-x641.google.com with SMTP id y1so7783835plp.9
 for <barebox@lists.infradead.org>; Fri, 11 Jan 2019 23:22:51 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Fri, 11 Jan 2019 23:22:21 -0800
Message-Id: <20190112072234.21878-4-andrew.smirnov@gmail.com>
In-Reply-To: <20190112072234.21878-1-andrew.smirnov@gmail.com>
References: <20190112072234.21878-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 03/16] PCI: Remove superfluous parens in setup_device()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Remove superfluous parens in setup_device(). No functional change
intended.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/pci/pci.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/pci/pci.c b/drivers/pci/pci.c
index 5e67750c39..b8089207a4 100644
--- a/drivers/pci/pci.c
+++ b/drivers/pci/pci.c
@@ -245,7 +245,7 @@ static void setup_device(struct pci_dev *dev, int max_bar)
 		dev->resource[bar].start = last_addr;
 		dev->resource[bar].end = last_addr + size - 1;
 
-		if ((mask & PCI_BASE_ADDRESS_MEM_TYPE_64)) {
+		if (mask & PCI_BASE_ADDRESS_MEM_TYPE_64) {
 			dev->resource[bar].flags |= IORESOURCE_MEM_64;
 			pci_write_config_dword(dev,
 			       PCI_BASE_ADDRESS_1 + bar * 4, 0);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
