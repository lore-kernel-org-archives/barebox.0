Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp6-g21.free.fr ([2a01:e0c:1:1599::15])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RcZLv-0008GY-H3
 for barebox@lists.infradead.org; Mon, 19 Dec 2011 09:17:48 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
Date: Mon, 19 Dec 2011 10:17:19 +0100
Message-Id: <1324286241-23083-3-git-send-email-robert.jarzmik@free.fr>
In-Reply-To: <1324286241-23083-1-git-send-email-robert.jarzmik@free.fr>
References: <1324286241-23083-1-git-send-email-robert.jarzmik@free.fr>
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
Subject: [PATCH] drivers/mci: pxa read data performance boost
To: barebox@lists.infradead.org

Increase pxa reading performance by reading 4 bytes at a
time instead of 4 reads of 1 byte.
As the mci controller FIFO accepts reads on bytes, halfwords
or words, use words whenether possible.

The boost is for a 250KBytes file read and display (bmp):
 - before: 6900ms
 - after: 6000ms

Signed-off-by: Robert Jarzmik <robert.jarzmik@free.fr>
---
 drivers/mci/pxamci.c |   10 ++++++++--
 1 files changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/mci/pxamci.c b/drivers/mci/pxamci.c
index a3f8f22..1634a1d 100644
--- a/drivers/mci/pxamci.c
+++ b/drivers/mci/pxamci.c
@@ -74,8 +74,9 @@ static void pxamci_setup_data(struct pxamci_host *host, struct mci_data *data)
 static int pxamci_read_data(struct pxamci_host *host, unsigned char *dst,
 			    unsigned len)
 {
-	int trf_len, ret = 0;
+	int trf_len, trf_len1, trf_len4, ret = 0;
 	uint64_t start;
+	u32 *dst4;
 
 	mci_dbg("dst=%p, len=%u\n", dst, len);
 	while (!ret && len > 0) {
@@ -85,8 +86,13 @@ static int pxamci_read_data(struct pxamci_host *host, unsigned char *dst,
 		     ret && !is_timeout(start, 10 * MSECOND);)
 			if (mmc_readl(MMC_I_REG) & RXFIFO_RD_REQ)
 				ret = 0;
-		for (; !ret && trf_len > 0; trf_len--, len--)
+		trf_len1 = trf_len % 4;
+		trf_len4 = trf_len / 4;
+		for (dst4 = (u32 *)dst; !ret && trf_len4 > 0; trf_len4--)
+			*dst4++ = mmc_readl(MMC_RXFIFO);
+		for (dst = (u8 *)dst4; !ret && trf_len1 > 0; trf_len1--)
 			*dst++ = mmc_readb(MMC_RXFIFO);
+		len -= trf_len;
 	}
 
 	if (!ret)
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
