Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp6-g21.free.fr ([2a01:e0c:1:1599::15])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RTPZZ-0007S1-VI
 for barebox@lists.infradead.org; Thu, 24 Nov 2011 03:02:02 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
Date: Thu, 24 Nov 2011 04:01:30 +0100
Message-Id: <1322103690-32669-6-git-send-email-robert.jarzmik@free.fr>
In-Reply-To: <1322103690-32669-1-git-send-email-robert.jarzmik@free.fr>
References: <1322103690-32669-1-git-send-email-robert.jarzmik@free.fr>
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
Subject: [PATCH 5/5] usb/gadget: make serial gadget resistant to cable unplug
To: barebox@lists.infradead.org
Cc: Robert Jarzmik <robert.jarzmik@atosorigin.com>

From: Robert Jarzmik <robert.jarzmik@atosorigin.com>

As USB can have its cable plugged out anytime, make the
serial gadget reliable in case of unplugging :
 - unregister the gadget_serial provided console
 - don't stay forever in the read loop if connection was cut

This behaviour relies on correct implementation of
usb_gadget_poll(), which should return an error if the USB
cable was removed.

Signed-off-by: Robert Jarzmik <robert.jarzmik@free.fr>
---
 drivers/usb/gadget/u_serial.c |   24 ++++++++++++++++++------
 1 files changed, 18 insertions(+), 6 deletions(-)

diff --git a/drivers/usb/gadget/u_serial.c b/drivers/usb/gadget/u_serial.c
index 8c2c8fa..49aedc2 100644
--- a/drivers/usb/gadget/u_serial.c
+++ b/drivers/usb/gadget/u_serial.c
@@ -367,12 +367,13 @@ static void serial_putc(struct console_device *cdev, char c)
 	struct gs_port	*port = container_of(cdev,
 					struct gs_port, cdev);
 	struct list_head	*pool = &port->write_pool;
-	struct usb_ep		*in = port->port_usb->in;
+	struct usb_ep		*in;
 	struct usb_request	*req;
 	int status;
 
 	if (list_empty(pool))
 		return;
+	in = port->port_usb->in;
 	req = list_entry(pool->next, struct usb_request, list);
 
 	req->length = 1;
@@ -381,8 +382,8 @@ static void serial_putc(struct console_device *cdev, char c)
 	*(unsigned char *)req->buf = c;
 	status = usb_ep_queue(in, req);
 
-	while (list_empty(pool))
-		usb_gadget_poll();
+	while (status >= 0 && list_empty(pool))
+		status = usb_gadget_poll();
 }
 
 static int serial_tstc(struct console_device *cdev)
@@ -399,7 +400,10 @@ static int serial_getc(struct console_device *cdev)
 					struct gs_port, cdev);
 	unsigned char ch;
 
-	while (kfifo_getc(port->recv_fifo, &ch));
+	if (!port->port_usb)
+		return -EIO;
+	while (kfifo_getc(port->recv_fifo, &ch))
+		usb_gadget_poll();
 
 	return ch;
 }
@@ -421,6 +425,10 @@ int gserial_connect(struct gserial *gser, u8 port_num)
 	/* we "know" gserial_cleanup() hasn't been called */
 	port = ports[port_num].port;
 
+	/* In case of multiple activation (ie. multiple SET_INTERFACE) */
+	if (port->port_usb)
+		return 0;
+
 	/* activate the endpoints */
 	status = usb_ep_enable(gser->in, gser->in_desc);
 	if (status < 0)
@@ -498,7 +506,9 @@ BAREBOX_CMD_END
 void gserial_disconnect(struct gserial *gser)
 {
 	struct gs_port	*port = gser->ioport;
-printf("%s\n", __func__);
+	struct console_device *cdev;
+
+	printf("%s\n", __func__);
 	if (!port)
 		return;
 
@@ -518,7 +528,9 @@ printf("%s\n", __func__);
 	gser->in->driver_data = NULL;
 
 	/* finally, free any unused/unusable I/O buffers */
-
 	gs_free_requests(gser->out, &port->read_pool);
 	gs_free_requests(gser->in, &port->write_pool);
+
+	cdev = &port->cdev;
+	console_unregister(cdev);
 }
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
