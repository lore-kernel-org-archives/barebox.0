Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ghSPp-0003DF-EW
 for barebox@lists.infradead.org; Thu, 10 Jan 2019 04:58:05 +0000
Received: by mail-pg1-x541.google.com with SMTP id m1so4315799pgq.8
 for <barebox@lists.infradead.org>; Wed, 09 Jan 2019 20:58:01 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed,  9 Jan 2019 20:57:24 -0800
Message-Id: <20190110045739.19399-7-andrew.smirnov@gmail.com>
In-Reply-To: <20190110045739.19399-1-andrew.smirnov@gmail.com>
References: <20190110045739.19399-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 06/21] PCI: Replace magic number in setup_device()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

User PCI_BASE_ADDRESS_SPACE_IO instead of explicit magic number. No
functional change intended.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/pci/pci.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/pci/pci.c b/drivers/pci/pci.c
index b5e13e5dbc..341af5212f 100644
--- a/drivers/pci/pci.c
+++ b/drivers/pci/pci.c
@@ -179,7 +179,7 @@ static void setup_device(struct pci_dev *dev, int max_bar)
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
