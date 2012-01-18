Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-f49.google.com ([209.85.214.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RnP42-0000sl-Gj
 for barebox@lists.infradead.org; Wed, 18 Jan 2012 06:32:08 +0000
Received: by bkty8 with SMTP id y8so8659437bkt.36
 for <barebox@lists.infradead.org>; Tue, 17 Jan 2012 22:32:05 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed, 18 Jan 2012 10:31:55 +0400
Message-Id: <1326868316-29385-4-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH v4 3/4] ns16550: write zero to ier only once
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/serial/serial_ns16550.c |    1 -
 1 files changed, 0 insertions(+), 1 deletions(-)

diff --git a/drivers/serial/serial_ns16550.c b/drivers/serial/serial_ns16550.c
index 3382acd..802331d 100644
--- a/drivers/serial/serial_ns16550.c
+++ b/drivers/serial/serial_ns16550.c
@@ -207,7 +207,6 @@ static int ns16550_setbaudrate(struct console_device *cdev, int baud_rate)
 	struct NS16550_plat *plat = (struct NS16550_plat *)
 	    cdev->dev->platform_data;
 
-	ns16550_write(cdev, 0x00, ier);
 	ns16550_write(cdev, LCR_BKSE, lcr);
 	ns16550_write(cdev, baud_divisor & 0xff, dll);
 	ns16550_write(cdev, (baud_divisor >> 8) & 0xff, dlm);
-- 
1.7.8.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
