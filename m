Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22d.google.com ([2a00:1450:4010:c03::22d])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Y9W2p-0005YU-UZ
 for barebox@lists.infradead.org; Fri, 09 Jan 2015 09:39:52 +0000
Received: by mail-la0-f45.google.com with SMTP id gq15so13634531lab.4
 for <barebox@lists.infradead.org>; Fri, 09 Jan 2015 01:39:29 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri,  9 Jan 2015 12:41:37 +0300
Message-Id: <1420796497-28360-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH] resource: dev_request_mem_region: fix return value for MIPS
To: barebox@lists.infradead.org

The commit

    commit 0d7a21334536cb36b3c9b64d868acc55aec41332
    Author: Antony Pavlov <antonynpavlov at gmail.com>
    Date:   Wed Sep 10 11:42:19 2014 +0400

        MIPS: dts: use physical addresses (as Linux does)

        With IOMEM() adapted for MIPS we can use physical addresses
        in device tree reg property.

has switched MIPS dts files to physical addresses usage.

The patch was tested on qemu, but qemu malta board is tolerant
of using physical addresses for accesing to device
(Ingenic JZ4755 and JZ4780 processors are tolerant too!).
But other CPUs (e.g. Loongson LS1B) can throw an exception
in this situation.

Additional physical address to virtual address translation
on MIPS is needed.

We already have this in include/common.h

    #if defined(CONFIG_MIPS)
    #include <asm/addrspace.h>

    #define IOMEM(addr) ((void __force __iomem *)CKSEG1ADDR(addr))
    #else
    #define IOMEM(addr) ((void __force __iomem *)(addr))
    #endif

So use IOMEM() to fix dev_request_mem_region() return value.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/base/driver.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index e0125a1..0423f28 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -330,7 +330,7 @@ void __iomem *dev_request_mem_region(struct device_d *dev, int num)
 	if (IS_ERR(res))
 		return ERR_CAST(res);
 
-	return (void __force __iomem *)res->start;
+	return IOMEM(res->start);
 }
 EXPORT_SYMBOL(dev_request_mem_region);
 
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
