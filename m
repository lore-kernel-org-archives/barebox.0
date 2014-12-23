Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 9.mo6.mail-out.ovh.net ([87.98.171.146])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Y3U6J-0004PA-5t
 for barebox@lists.infradead.org; Tue, 23 Dec 2014 18:22:33 +0000
Received: from mail179.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo6.mail-out.ovh.net (Postfix) with SMTP id 95F79FFA69C
 for <barebox@lists.infradead.org>; Tue, 23 Dec 2014 19:22:06 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue, 23 Dec 2014 19:21:50 +0100
Message-Id: <1419358918-25569-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20141223170709.GA15818@ns203013.ovh.net>
References: <20141223170709.GA15818@ns203013.ovh.net>
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
Subject: [PATCH 1/9] kfifo: allow to pass a null point on kfifo_free
To: barebox@lists.infradead.org

as free allow to pass a NULL pointer

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 lib/kfifo.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/lib/kfifo.c b/lib/kfifo.c
index 307dae1..601202d 100644
--- a/lib/kfifo.c
+++ b/lib/kfifo.c
@@ -70,6 +70,8 @@ struct kfifo *kfifo_alloc(unsigned int size)
  */
 void kfifo_free(struct kfifo *fifo)
 {
+	if (!fifo)
+		return;
 	free(fifo->buffer);
 	free(fifo);
 }
-- 
2.1.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
