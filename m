Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbFnv-0000VU-FV
 for barebox@lists.infradead.org; Wed, 20 May 2020 03:54:05 +0000
Received: by mail-qk1-x742.google.com with SMTP id f13so2328325qkh.2
 for <barebox@lists.infradead.org>; Tue, 19 May 2020 20:54:02 -0700 (PDT)
From: David Dgien <dgienda125@gmail.com>
Date: Tue, 19 May 2020 23:55:36 -0400
Message-Id: <20200520035536.84368-1-dgienda125@gmail.com>
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
Subject: [PATCH] serial: Add flush function to NS16550 driver
To: barebox@lists.infradead.org
Cc: David Dgien <dgienda125@gmail.com>

Add flush function to NS16550 to remove bad characters being printed
during reset

Signed-off-by: David Dgien <dgienda125@gmail.com>
---
 drivers/serial/serial_ns16550.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/serial/serial_ns16550.c b/drivers/serial/serial_ns16550.c
index 5d6cec82a..f117ab9dc 100644
--- a/drivers/serial/serial_ns16550.c
+++ b/drivers/serial/serial_ns16550.c
@@ -308,6 +308,17 @@ static int ns16550_tstc(struct console_device *cdev)
 	return ((ns16550_read(cdev, lsr) & LSR_DR) != 0);
 }
 
+/**
+ * @brief Flush remaining characters in serial device
+ *
+ * @param[in] cdev pointer to console device
+ */
+static void ns16550_flush(struct console_device *cdev)
+{
+	/* Loop Doing Nothing */
+	while ((ns16550_read(cdev, lsr) & LSR_TEMT) == 0) ;
+}
+
 static void ns16550_probe_dt(struct device_d *dev, struct ns16550_priv *priv)
 {
 	struct device_node *np = dev->device_node;
@@ -501,6 +512,7 @@ static int ns16550_probe(struct device_d *dev)
 	cdev->putc = ns16550_putc;
 	cdev->getc = ns16550_getc;
 	cdev->setbrg = ns16550_setbaudrate;
+	cdev->flush = ns16550_flush;
 	cdev->linux_console_name = devtype->linux_console_name;
 
 	priv->fcrval = FCRVAL;
-- 
2.26.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
