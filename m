Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-x229.google.com ([2a00:1450:400c:c00::229])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WkHbN-00078J-1L
 for barebox@lists.infradead.org; Tue, 13 May 2014 18:38:57 +0000
Received: by mail-wg0-f41.google.com with SMTP id z12so819634wgg.24
 for <barebox@lists.infradead.org>; Tue, 13 May 2014 11:38:34 -0700 (PDT)
From: Franck Jullien <franck.jullien@gmail.com>
Date: Tue, 13 May 2014 20:38:25 +0200
Message-Id: <1400006306-5540-2-git-send-email-franck.jullien@gmail.com>
In-Reply-To: <1400006306-5540-1-git-send-email-franck.jullien@gmail.com>
References: <1400006306-5540-1-git-send-email-franck.jullien@gmail.com>
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
Subject: [PATCH 2/3] driver/net: fix bus endianess access in ethoc.c
To: barebox@lists.infradead.org

Signed-off-by: Franck Jullien <franck.jullien@gmail.com>
---
 drivers/net/ethoc.c |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethoc.c b/drivers/net/ethoc.c
index 2082770..b000875 100644
--- a/drivers/net/ethoc.c
+++ b/drivers/net/ethoc.c
@@ -192,12 +192,12 @@ struct ethoc_bd {
 
 static inline u32 ethoc_read(struct ethoc *dev, loff_t offset)
 {
-	return readl(dev->iobase + offset);
+	return ioread32be(dev->iobase + offset);
 }
 
 static inline void ethoc_write(struct ethoc *dev, loff_t offset, u32 data)
 {
-	writel(data, dev->iobase + offset);
+	iowrite32be(data, dev->iobase + offset);
 }
 
 static inline void ethoc_read_bd(struct ethoc *dev, int index,
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
