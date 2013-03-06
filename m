Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 1.mo4.mail-out.ovh.net ([178.33.248.196]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UD9sh-0006TM-RR
 for barebox@lists.infradead.org; Wed, 06 Mar 2013 08:39:25 +0000
Received: from mail413.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 4DEFA104E4BF
 for <barebox@lists.infradead.org>; Wed,  6 Mar 2013 09:50:26 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed,  6 Mar 2013 09:34:53 +0100
Message-Id: <1362558901-11146-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20130306083347.GB4401@game.jcrosoft.org>
References: <20130306083347.GB4401@game.jcrosoft.org>
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
Subject: [PATCH 1/9] kfifo: introduce kfifo_dump_str to dump the fifo
To: barebox@lists.infradead.org

This will allow to implement a dmesg mecanism in barebox

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 include/kfifo.h |    2 ++
 lib/kfifo.c     |   21 +++++++++++++++++++++
 2 files changed, 23 insertions(+)

diff --git a/include/kfifo.h b/include/kfifo.h
index 25880f4..9dbbe0d 100644
--- a/include/kfifo.h
+++ b/include/kfifo.h
@@ -74,5 +74,7 @@ static inline unsigned int kfifo_len(struct kfifo *fifo)
 void kfifo_putc(struct kfifo *fifo, unsigned char c);
 unsigned int kfifo_getc(struct kfifo *fifo, unsigned char *c);
 
+void kfifo_dump_str(struct kfifo *fifo, void (*dump)(unsigned char c));
+
 #endif
 
diff --git a/lib/kfifo.c b/lib/kfifo.c
index afd3894..7892aed 100644
--- a/lib/kfifo.c
+++ b/lib/kfifo.c
@@ -154,3 +154,24 @@ unsigned int kfifo_getc(struct kfifo *fifo, unsigned char *c)
 	return 0;
 }
 
+void kfifo_dump_str(struct kfifo *fifo, void (*dump)(unsigned char c))
+{
+	int i;
+	unsigned char *c;
+	unsigned int l;
+	unsigned int len;
+
+	len = fifo->in - fifo->out;
+
+	/* first get the data from fifo->out until the end of the buffer */
+	l = min(len, fifo->size - (fifo->out & (fifo->size - 1)));
+	c = fifo->buffer + (fifo->out & (fifo->size - 1));
+	for (i = 0; i < l; i++)
+		dump(c[i]);
+
+	/* then get the rest (if any) from the beginning of the buffer */
+	c = fifo->buffer;
+	l = len - l;
+	for (i = 0; i < l; i++)
+		dump(c[i]);
+}
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
