Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-f49.google.com ([209.85.214.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RnP43-0000sm-7f
 for barebox@lists.infradead.org; Wed, 18 Jan 2012 06:32:08 +0000
Received: by bkty8 with SMTP id y8so8659449bkt.36
 for <barebox@lists.infradead.org>; Tue, 17 Jan 2012 22:32:06 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed, 18 Jan 2012 10:31:56 +0400
Message-Id: <1326868316-29385-5-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1326868316-29385-1-git-send-email-antonynpavlov@gmail.com>
References: <1326868316-29385-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH v4 4/4] ns16550: fix ier selection
To: barebox@lists.infradead.org

The document "PC16550D Universal Asynchronous
Receiver Transmitter with FIFOs" (vers. June 1995,
http://www.national.com/ds/PC/PC16550D.pdf) states
that IER (Interrupt Enable Register) is accessible
if the bit DLAB = 0 (DLAB is bit 7 in LCR; in barebox
DLAB known as LCR_BKSE).

So before IER access we need set DLAB to 0.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/serial/serial_ns16550.c |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/drivers/serial/serial_ns16550.c b/drivers/serial/serial_ns16550.c
index 802331d..88ba836 100644
--- a/drivers/serial/serial_ns16550.c
+++ b/drivers/serial/serial_ns16550.c
@@ -140,7 +140,9 @@ static inline unsigned int ns16550_calc_divisor(struct console_device *cdev,
 static void ns16550_serial_init_port(struct console_device *cdev)
 {
 	/* initializing the device for the first time */
+	ns16550_write(cdev, 0x00, lcr); /* select ier reg */
 	ns16550_write(cdev, 0x00, ier);
+
 #ifdef CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS
 	ns16550_write(cdev, 0x07, mdr1);	/* Disable */
 #endif
-- 
1.7.8.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
