Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQKqw-0005fS-Pq
 for barebox@lists.infradead.org; Mon, 13 May 2019 23:59:32 +0000
Received: by mail-pl1-x641.google.com with SMTP id x15so7252928pln.9
 for <barebox@lists.infradead.org>; Mon, 13 May 2019 16:59:28 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 13 May 2019 16:59:08 -0700
Message-Id: <20190513235908.18693-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] serdev: Do not call .receive_buf() callback recursively
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Code implementing .receive_buf() callback can potentially call
serdev_device_write(), which will call serdev_device_poller(). We need
to make sure that such a call is a no-op in order to prevent
corrupting shared data buffer as well as breaking .receive_buf
callback that most likely does not expect that to happen.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 common/serdev.c  | 6 ++++++
 include/serdev.h | 2 ++
 2 files changed, 8 insertions(+)

diff --git a/common/serdev.c b/common/serdev.c
index 4a6dbefe6..3e0da0846 100644
--- a/common/serdev.c
+++ b/common/serdev.c
@@ -9,6 +9,10 @@ static void serdev_device_poller(void *context)
 	unsigned char *buf = serdev->buf;
 	int ret, len;
 
+	if (serdev->locked)
+		return;
+
+	serdev->locked = true;
 	/*
 	 * Since this callback is a part of poller infrastructure we
 	 * want to use _non_interruptible version of the function
@@ -37,6 +41,8 @@ static void serdev_device_poller(void *context)
 	} else {
 		poller_async_cancel(&serdev->poller);
 	}
+
+	serdev->locked = false;
 }
 
 static int serdev_device_set_polling_interval(struct param_d *param, void *serdev)
diff --git a/include/serdev.h b/include/serdev.h
index f5d34f527..29030538e 100644
--- a/include/serdev.h
+++ b/include/serdev.h
@@ -14,6 +14,7 @@
  * @poller		Async poller used to poll this serdev
  * @polling_interval:	Async poller periodicity
  * @polling_window:	Duration of a single busy loop poll
+ * @locked:		Lock to prevent recursive polling
  * @receive_buf:	Function called with data received from device;
  *			returns number of bytes accepted;
  */
@@ -24,6 +25,7 @@ struct serdev_device {
 	struct poller_async poller;
 	uint64_t polling_interval;
 	uint64_t polling_window;
+	bool locked;
 
 	int (*receive_buf)(struct serdev_device *, const unsigned char *,
 			   size_t);
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
