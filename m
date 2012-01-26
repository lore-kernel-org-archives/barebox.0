Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RqPLz-00068G-Cl
 for barebox@lists.infradead.org; Thu, 26 Jan 2012 13:27:05 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 26 Jan 2012 14:26:48 +0100
Message-Id: <1327584413-23055-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1327584413-23055-1-git-send-email-s.hauer@pengutronix.de>
References: <1327584413-23055-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/7] kfifo: change kfifo_init to work with a preallocated fifo
To: barebox@lists.infradead.org

kfifo currently only works with dynamically allocated fifos.
Change the currently unused kfifo_init to take a preallocated
fifo. This allows for statically initialized fifos.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/kfifo.h |    2 +-
 lib/kfifo.c     |   23 +++++++++--------------
 2 files changed, 10 insertions(+), 15 deletions(-)

diff --git a/include/kfifo.h b/include/kfifo.h
index 3eb03cb..2987e0b 100644
--- a/include/kfifo.h
+++ b/include/kfifo.h
@@ -28,7 +28,7 @@ struct kfifo {
 	unsigned int out;	/* data is extracted from off. (out % size) */
 };
 
-struct kfifo *kfifo_init(unsigned char *buffer, unsigned int size);
+void kfifo_init(struct kfifo *fifo, unsigned char *buffer, unsigned int size);
 struct kfifo *kfifo_alloc(unsigned int size);
 void kfifo_free(struct kfifo *fifo);
 
diff --git a/lib/kfifo.c b/lib/kfifo.c
index 27d44e9..a2f3727 100644
--- a/lib/kfifo.c
+++ b/lib/kfifo.c
@@ -34,19 +34,11 @@
  * Do NOT pass the kfifo to kfifo_free() after use! Simply free the
  * &struct kfifo with free().
  */
-struct kfifo *kfifo_init(unsigned char *buffer, unsigned int size)
+void kfifo_init(struct kfifo *fifo, unsigned char *buffer, unsigned int size)
 {
-	struct kfifo *fifo;
-
-	fifo = malloc(sizeof(struct kfifo));
-	if (!fifo)
-		return NULL;
-
 	fifo->buffer = buffer;
 	fifo->size = size;
 	fifo->in = fifo->out = 0;
-
-	return fifo;
 }
 
 /**
@@ -60,18 +52,21 @@ struct kfifo *kfifo_init(unsigned char *buffer, unsigned int size)
 struct kfifo *kfifo_alloc(unsigned int size)
 {
 	unsigned char *buffer;
-	struct kfifo *ret;
+	struct kfifo *fifo;
 
 	buffer = malloc(size);
 	if (!buffer)
 		return NULL;
 
-	ret = kfifo_init(buffer, size);
-
-	if (!ret)
+	fifo = malloc(sizeof(struct kfifo));
+	if (!fifo) {
 		free(buffer);
+		return NULL;
+	}
+
+	kfifo_init(fifo, buffer, size);
 
-	return ret;
+	return fifo;
 }
 
 /**
-- 
1.7.8.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
