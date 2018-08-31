Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fvbpY-0001BQ-8u
 for barebox@lists.infradead.org; Fri, 31 Aug 2018 05:18:49 +0000
Received: by mail-pf1-x441.google.com with SMTP id h79-v6so4949406pfk.8
 for <barebox@lists.infradead.org>; Thu, 30 Aug 2018 22:18:37 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 30 Aug 2018 22:18:25 -0700
Message-Id: <20180831051826.13587-4-andrew.smirnov@gmail.com>
In-Reply-To: <20180831051826.13587-1-andrew.smirnov@gmail.com>
References: <20180831051826.13587-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 4/5] net: fec_imx: Return EFAULT when DMA mapping fails
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

EFAULT seems to be much more appropriate error code for DMA mapping
failure, it also produces more informative message, compare:

ping 192.168.53.7
WARNING: eth0: No MAC address set. Using random address 92:4e:f1:18:96:67
eth0: 100Mbps full duplex link detected
ping failed: Bad address

versus old message:

ping 192.168.53.7
WARNING: eth0: No MAC address set. Using random address c6:b7:67:bb:4a:c3
eth0: 100Mbps full duplex link detected
ping failed: I/O error

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/net/fec_imx.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
index f459516df..33262bdfa 100644
--- a/drivers/net/fec_imx.c
+++ b/drivers/net/fec_imx.c
@@ -466,7 +466,7 @@ static int fec_send(struct eth_device *dev, void *eth_data, int data_length)
 
 	dma = dma_map_single(fec->dev, eth_data, data_length, DMA_TO_DEVICE);
 	if (dma_mapping_error(fec->dev, dma))
-		return -EIO;
+		return -EFAULT;
 
 	writel((uint32_t)(dma), &fec->tbd_base[fec->tbd_index].data_pointer);
 
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
