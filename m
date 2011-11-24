Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp6-g21.free.fr ([2a01:e0c:1:1599::15])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RTPZS-0007Qe-UH
 for barebox@lists.infradead.org; Thu, 24 Nov 2011 03:01:56 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
Date: Thu, 24 Nov 2011 04:01:28 +0100
Message-Id: <1322103690-32669-4-git-send-email-robert.jarzmik@free.fr>
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
Subject: [PATCH 3/5] usb/gadget: use generic usb_gadget_poll() in u_serial
To: barebox@lists.infradead.org
Cc: Robert Jarzmik <robert.jarzmik@atosorigin.com>

From: Robert Jarzmik <robert.jarzmik@atosorigin.com>

Use the generic gadget polling function instead of the
specific fsl function. This is a fix from a leftover in
gadget development.

Signed-off-by: Robert Jarzmik <robert.jarzmik@free.fr>
---
 drivers/usb/gadget/u_serial.c |    5 ++---
 1 files changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/usb/gadget/u_serial.c b/drivers/usb/gadget/u_serial.c
index d3baed7..8c2c8fa 100644
--- a/drivers/usb/gadget/u_serial.c
+++ b/drivers/usb/gadget/u_serial.c
@@ -382,7 +382,7 @@ static void serial_putc(struct console_device *cdev, char c)
 	status = usb_ep_queue(in, req);
 
 	while (list_empty(pool))
-		fsl_udc_irq();
+		usb_gadget_poll();
 }
 
 static int serial_tstc(struct console_device *cdev)
@@ -475,7 +475,7 @@ static int do_mycdev(struct command *cmdtp, int argc, char *argv[])
 		printf("%c", i);
 		mdelay(500);
 		for (j = 0; j < 100; j++)
-			fsl_udc_irq();
+			usb_gadget_poll();
 	}
 	return 0;
 }
@@ -522,4 +522,3 @@ printf("%s\n", __func__);
 	gs_free_requests(gser->out, &port->read_pool);
 	gs_free_requests(gser->in, &port->write_pool);
 }
-
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
