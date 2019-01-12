Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1giDd4-0006Ts-77
 for barebox@lists.infradead.org; Sat, 12 Jan 2019 07:22:51 +0000
Received: by mail-pg1-x544.google.com with SMTP id y4so7262661pgc.12
 for <barebox@lists.infradead.org>; Fri, 11 Jan 2019 23:22:49 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Fri, 11 Jan 2019 23:22:20 -0800
Message-Id: <20190112072234.21878-3-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 02/16] PCI: Replace magic number in setup_device()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

User PCI_BASE_ADDRESS_SPACE_IO instead of explicit magic number. No
functional change intended.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/pci/pci.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/pci/pci.c b/drivers/pci/pci.c
index 1f9d360d79..5e67750c39 100644
--- a/drivers/pci/pci.c
+++ b/drivers/pci/pci.c
@@ -182,7 +182,7 @@ static void setup_device(struct pci_dev *dev, int max_bar)
 			continue;
 		}
 
-		if (mask & 0x01) { /* IO */
+		if (mask & PCI_BASE_ADDRESS_SPACE_IO) { /* IO */
 			size = pci_size(orig, mask, 0xfffffffe);
 			if (!size) {
 				pr_debug("pbar%d bad IO mask\n", bar);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
