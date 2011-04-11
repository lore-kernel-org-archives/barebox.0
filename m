Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q9Hwy-000666-Me
	for barebox@lists.infradead.org; Mon, 11 Apr 2011 14:18:46 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 11 Apr 2011 16:18:39 +0200
Message-Id: <1302531521-7439-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1302531521-7439-1-git-send-email-s.hauer@pengutronix.de>
References: <1302531521-7439-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/7] kfifo: kfifo_put takes a const buffer
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/kfifo.h |    2 +-
 lib/kfifo.c     |    2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/include/kfifo.h b/include/kfifo.h
index 6f8be10..3eb03cb 100644
--- a/include/kfifo.h
+++ b/include/kfifo.h
@@ -43,7 +43,7 @@ void kfifo_free(struct kfifo *fifo);
  * bytes copied.
  */
 unsigned int kfifo_put(struct kfifo *fifo,
-				unsigned char *buffer, unsigned int len);
+				const unsigned char *buffer, unsigned int len);
 
 /**
  * kfifo_get - gets some data from the FIFO
diff --git a/lib/kfifo.c b/lib/kfifo.c
index bf5cee1..27d44e9 100644
--- a/lib/kfifo.c
+++ b/lib/kfifo.c
@@ -96,7 +96,7 @@ void kfifo_free(struct kfifo *fifo)
  *
  */
 unsigned int kfifo_put(struct kfifo *fifo,
-			 unsigned char *buffer, unsigned int len)
+			 const unsigned char *buffer, unsigned int len)
 {
 	unsigned int l;
 
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
