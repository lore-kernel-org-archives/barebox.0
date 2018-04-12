Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x241.google.com ([2607:f8b0:400e:c01::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f6jqv-0005ta-0M
 for barebox@lists.infradead.org; Thu, 12 Apr 2018 21:33:58 +0000
Received: by mail-pl0-x241.google.com with SMTP id 59-v6so4771130plc.13
 for <barebox@lists.infradead.org>; Thu, 12 Apr 2018 14:33:46 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 12 Apr 2018 14:33:17 -0700
Message-Id: <20180412213317.13199-6-andrew.smirnov@gmail.com>
In-Reply-To: <20180412213317.13199-1-andrew.smirnov@gmail.com>
References: <20180412213317.13199-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 5/5] serdev: Allow polling interval to be adjusted at
 runtime
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Due to blocking, synchronous, polling driven nature of Barebox's
serial communication handling trying to use two or more serial ports
at high (1Mbaud+) baudrates results in data loss and noticeable
perofmance degradation. This happens as soon as individual message
being sent around start exceeding HW Rx FIFO in size.

A good example of such a usecase would be using a system that has a
serdev driver (operating @ 1Mbaud+) and trying to do a X/YMODEM
transfer via serial console at comparable baudrates.

To at least partially ameliorate the problem, add code that will
expose "polling_interval" as a parameter, so that the user would have
an option of temporarily disabling (or significatly decreasing the
rate) of a given serdev's polling.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 common/serdev.c | 26 +++++++++++++++++++++++++-
 1 file changed, 25 insertions(+), 1 deletion(-)

diff --git a/common/serdev.c b/common/serdev.c
index 50eadc804..4a6dbefe6 100644
--- a/common/serdev.c
+++ b/common/serdev.c
@@ -34,12 +34,26 @@ static void serdev_device_poller(void *context)
 				  serdev->polling_interval,
 				  serdev_device_poller,
 				  serdev);
+	} else {
+		poller_async_cancel(&serdev->poller);
 	}
 }
 
+static int serdev_device_set_polling_interval(struct param_d *param, void *serdev)
+{
+	/*
+	 * We execute poller ever time polling_interval changes to get
+	 * any unprocessed immediate Rx data as well as to propagate
+	 * polling_interval chagnes to outstanging async pollers.
+	 */
+	serdev_device_poller(serdev);
+	return 0;
+}
+
 int serdev_device_open(struct serdev_device *serdev)
 {
 	struct console_device *cdev = to_console_device(serdev);
+	struct param_d *p;
 	int ret;
 
 	if (!cdev->putc || !cdev->getc)
@@ -57,7 +71,17 @@ int serdev_device_open(struct serdev_device *serdev)
 	if (ret)
 		return ret;
 
-	return console_open(cdev);
+	ret = console_open(cdev);
+	if (ret)
+		return ret;
+
+	p = dev_add_param_uint64(serdev->dev, "polling_interval",
+				 serdev_device_set_polling_interval, NULL,
+				 &serdev->polling_interval, "%llu", serdev);
+	if (IS_ERR(p))
+		return PTR_ERR(p);
+
+	return 0;
 }
 
 unsigned int serdev_device_set_baudrate(struct serdev_device *serdev,
-- 
2.14.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
