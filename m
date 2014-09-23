Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22a.google.com ([2a00:1450:4010:c03::22a])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XWK7q-0000QW-EW
 for barebox@lists.infradead.org; Tue, 23 Sep 2014 07:03:03 +0000
Received: by mail-la0-f42.google.com with SMTP id hz20so8180192lab.15
 for <barebox@lists.infradead.org>; Tue, 23 Sep 2014 00:02:38 -0700 (PDT)
MIME-Version: 1.0
Date: Tue, 23 Sep 2014 09:02:37 +0200
Message-ID: <CAJfOKBzn+6WKzQtBN62Z8Uxb1U=wnadzJ-BPeQ5v5tEchdJmTg@mail.gmail.com>
From: Franck Jullien <franck.jullien@gmail.com>
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
Subject: Subject: [PATCH] cfi: print size in human readable format
To: barebox <barebox@lists.infradead.org>

From: Franck Jullien <franck.jullien@gmail.com>

The CFI size is now printed in a human readable format.
It also adds "0x" prefix to the printed address.

Signed-off-by: Franck Jullien <franck.jullien@gmail.com>
---
 drivers/mtd/nor/cfi_flash.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/mtd/nor/cfi_flash.c b/drivers/mtd/nor/cfi_flash.c
index a494063..0fa41bf 100644
--- a/drivers/mtd/nor/cfi_flash.c
+++ b/drivers/mtd/nor/cfi_flash.c
@@ -1000,8 +1000,8 @@ static int cfi_probe (struct device_d *dev)
                return -ENODEV;
        }

-       dev_info(dev, "found cfi flash at %p, size %ld\n",
-                       info->base, info->size);
+       dev_info(dev, "found cfi flash at 0x%p, size %s\n",
+                       info->base, size_human_readable(info->size));

        dev->info = cfi_info;

-- 
2.1.0

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
