Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wy0-f177.google.com ([74.125.82.177])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1QLh5K-0000HE-LJ
	for barebox@lists.infradead.org; Sun, 15 May 2011 19:34:39 +0000
Received: by mail-wy0-f177.google.com with SMTP id 28so3786453wyb.36
	for <barebox@lists.infradead.org>; Sun, 15 May 2011 12:34:38 -0700 (PDT)
From: franck.jullien@gmail.com
Date: Sun, 15 May 2011 21:34:31 +0200
Message-Id: <1305488072-1765-5-git-send-email-franck.jullien@gmail.com>
In-Reply-To: <1305488072-1765-1-git-send-email-franck.jullien@gmail.com>
References: <1305488072-1765-1-git-send-email-franck.jullien@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 4/5] [Nios2]: Fix compiler warning
To: barebox@lists.infradead.org

From: Franck JULLIEN <franck.jullien@gmail.com>

Fix incompatible pointer type warning.

Signed-off-by: Franck JULLIEN <franck.jullien@gmail.com>
---
 drivers/net/altera_tse.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/drivers/net/altera_tse.c b/drivers/net/altera_tse.c
index d922a9a..ac8cd2d 100644
--- a/drivers/net/altera_tse.c
+++ b/drivers/net/altera_tse.c
@@ -526,7 +526,7 @@ static int tse_probe(struct device_d *dev)
 	tx_desc = (struct alt_sgdma_descriptor *)NIOS_SOPC_TSE_DESC_MEM_BASE;
 	rx_desc = tx_desc + 2;
 #else
-	tx_desc = dma_alloc_coherent(sizeof(*tx_desc) * (3 + PKTBUFSRX), &dma_handle);
+	tx_desc = dma_alloc_coherent(sizeof(*tx_desc) * (3 + PKTBUFSRX), (unsigned long *)&dma_handle);
 	rx_desc = tx_desc + 2;
 
 	if (!tx_desc) {
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
