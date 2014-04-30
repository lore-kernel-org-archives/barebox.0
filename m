Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x236.google.com ([2a00:1450:4010:c03::236])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WfPwf-000820-3U
 for barebox@lists.infradead.org; Wed, 30 Apr 2014 08:32:49 +0000
Received: by mail-la0-f54.google.com with SMTP id e16so1009227lan.27
 for <barebox@lists.infradead.org>; Wed, 30 Apr 2014 01:32:26 -0700 (PDT)
From: chf.fritz@googlemail.com
Date: Wed, 30 Apr 2014 10:32:02 +0200
Message-Id: <5360b519.c62a980a.05b6.526d@mx.google.com>
In-Reply-To: <1398846723-10241-1-git-send-email-y>
References: <1398846723-10241-1-git-send-email-y>
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
Subject: [PATCH 2/3] net cpsw: fix rx stability under heavy network load
To: barebox@lists.infradead.org

From: Christoph Fritz <chf.fritz@googlemail.com>

RX DMA Head Descriptor Pointer can get 0 when there is a lot of traffic,
which results in a timeout error. A good way to provoke this error is by
sending lots of ARP requests. This patch makes sure that the RX DMA Head
Descriptor Pointer is set.

The origin driver, from which this is derived, already contains this fix.

Signed-off-by: Christoph Fritz <chf.fritz@googlemail.com>
---
 drivers/net/cpsw.c |    7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/net/cpsw.c b/drivers/net/cpsw.c
index 52adf50..ec3263d 100644
--- a/drivers/net/cpsw.c
+++ b/drivers/net/cpsw.c
@@ -741,8 +741,13 @@ static int cpdma_process(struct cpsw_priv *priv, struct cpdma_chan *chan,
 	if (buffer)
 		*buffer = (void *)readl(&desc->sw_buffer);
 
-	if (status & CPDMA_DESC_OWNER)
+	if (status & CPDMA_DESC_OWNER) {
+		if (readl(chan->hdp) == 0) {
+			if (readl(&desc->hw_mode) & CPDMA_DESC_OWNER)
+				writel((u32)desc, chan->hdp);
+		}
 		return -EBUSY;
+	}
 
 	chan->head = (void *)readl(&desc->hw_next);
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
