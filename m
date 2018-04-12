Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x244.google.com ([2607:f8b0:400e:c00::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f6jqr-0005sX-CX
 for barebox@lists.infradead.org; Thu, 12 Apr 2018 21:33:55 +0000
Received: by mail-pf0-x244.google.com with SMTP id a2so4879556pff.8
 for <barebox@lists.infradead.org>; Thu, 12 Apr 2018 14:33:44 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 12 Apr 2018 14:33:15 -0700
Message-Id: <20180412213317.13199-4-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 3/5] serdev: Add trivial blocking read function
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Add example implementation of a trivial blocking read function as a
part of Barebox's serdev API.

NOTE: This code has not been tested against real devices, so use it at
your own risk.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 common/serdev.c  | 95 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 include/serdev.h |  8 +++++
 2 files changed, 103 insertions(+)

diff --git a/common/serdev.c b/common/serdev.c
index 32743738e..50eadc804 100644
--- a/common/serdev.c
+++ b/common/serdev.c
@@ -87,3 +87,98 @@ int serdev_device_write(struct serdev_device *serdev, const unsigned char *buf,
 	serdev_device_poller(serdev);
 	return 0;
 }
+
+/*
+ * NOTE: Code below is given primarily as an example of serdev API
+ * usage. It may or may not be as useful or work as well as the
+ * functions above.
+ */
+
+struct serdev_device_reader {
+	unsigned char *buf;
+	size_t len;
+	size_t capacity;
+};
+
+static int serdev_device_reader_receive_buf(struct serdev_device *serdev,
+					    const unsigned char *buf,
+					    size_t size)
+{
+	struct device_d *dev = serdev->dev;
+	struct serdev_device_reader *r = dev->priv;
+	const size_t room = min(r->capacity - r->len, size);
+
+	memcpy(r->buf + r->len, buf, room);
+	r->len += room;
+	/*
+	 * It's important we return 'size' even if we didn't trully
+	 * consume all of the data, since otherwise serdev will keep
+	 * re-executing us until we do. Given the logic above that
+	 * would mean infinite loop.
+	 */
+	return size;
+}
+
+/**
+ * serdev_device_reader_open - Open a reader serdev device
+ *
+ * @serdev:	Underlying serdev device
+ * @capacity:	Storage capacity of the reader
+ *
+ * This function is inteded for creating of reader serdev devices that
+ * can be used in conjunction with serdev_device_read() to perform
+ * trivial fixed length reads from a serdev device.
+ */
+int serdev_device_reader_open(struct serdev_device *serdev, size_t capacity)
+{
+	struct serdev_device_reader *r;
+
+	if (serdev->receive_buf)
+		return -EINVAL;
+
+	r = xzalloc(sizeof(*r));
+	r->capacity = capacity;
+	r->buf = xzalloc(capacity);
+
+	serdev->receive_buf = serdev_device_reader_receive_buf;
+	serdev->dev->priv   = r;
+
+	return 0;
+}
+
+/**
+ * serdev_device_read - Read data from serdev device
+ *
+ * @serdev:	Serdev device to read from (must be a serdev reader)
+ * @buf:	Buffer to read data into
+ * @count:	Number of bytes to read
+ * @timeout:	Read operation timeout
+ *
+ */
+int serdev_device_read(struct serdev_device *serdev, unsigned char *buf,
+		       size_t count, unsigned long timeout)
+{
+	struct device_d *dev = serdev->dev;
+	struct serdev_device_reader *r = dev->priv;
+	int ret;
+
+	uint64_t start = get_time_ns();
+
+	if (serdev->receive_buf != serdev_device_reader_receive_buf)
+		return -EINVAL;
+
+	/*
+	 * is_timeout will implicitly poll serdev via poller
+	 * infrastructure
+	 */
+	while (r->len < count) {
+		if (is_timeout(start, timeout))
+			return -ETIMEDOUT;
+	}
+
+	memcpy(buf, r->buf, count);
+	ret = (r->len == count) ? 0 : -EMSGSIZE;
+	r->len = 0;
+
+	return ret;
+}
diff --git a/include/serdev.h b/include/serdev.h
index efc735fed..f5d34f527 100644
--- a/include/serdev.h
+++ b/include/serdev.h
@@ -33,4 +33,12 @@ int serdev_device_open(struct serdev_device *);
 unsigned int serdev_device_set_baudrate(struct serdev_device *, unsigned int);
 int serdev_device_write(struct serdev_device *, const unsigned char *,
 			size_t, unsigned long);
+
+/*
+ * The following two functions are not a part of original Linux API
+ */
+int serdev_device_reader_open(struct serdev_device *, size_t);
+int serdev_device_read(struct serdev_device *, unsigned char *,
+		       size_t, unsigned long);
+
 #endif
-- 
2.14.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
