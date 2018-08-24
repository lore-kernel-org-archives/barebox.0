Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ft2Pk-0006GU-CN
 for barebox@lists.infradead.org; Fri, 24 Aug 2018 03:05:33 +0000
Received: by mail-pl1-x643.google.com with SMTP id g23-v6so455885plq.9
 for <barebox@lists.infradead.org>; Thu, 23 Aug 2018 20:05:22 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 23 Aug 2018 20:05:10 -0700
Message-Id: <20180824030511.23021-3-andrew.smirnov@gmail.com>
In-Reply-To: <20180824030511.23021-1-andrew.smirnov@gmail.com>
References: <20180824030511.23021-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 2/3] net: fec: Bail out if DMA address is larger than 32-bits
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

On 64-bit SoCs it becomes possible to end up with a DMA buffer
allocated in the region of memory inaccessible to FEC
controller. Change the code to bail out if that happens to avoid
silent failures that'd result otherwise.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/net/fec_imx.c | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
index 98711baa7..a61fd8294 100644
--- a/drivers/net/fec_imx.c
+++ b/drivers/net/fec_imx.c
@@ -484,6 +484,9 @@ static int fec_send(struct eth_device *dev, void *eth_data, int data_length)
 	if (dma_mapping_error(fec->dev, dma))
 		return -EIO;
 
+	if (dma > U32_MAX)
+		return -EFAULT;
+
 	writel((uint32_t)(dma), &fec->tbd_base[fec->tbd_index].data_pointer);
 
 	/*
@@ -612,7 +615,12 @@ static int fec_alloc_receive_packets(struct fec_priv *fec, int count, int size)
 		return -ENOMEM;
 
 	for (i = 0; i < count; i++) {
-		writel(virt_to_phys(p), &fec->rbd_base[i].data_pointer);
+		unsigned long addr = virt_to_phys(p);
+
+		if (addr > U32_MAX)
+			return -EFAULT;
+
+		writel(addr, &fec->rbd_base[i].data_pointer);
 		p += size;
 	}
 
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
