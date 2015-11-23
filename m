Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x233.google.com ([2a00:1450:4010:c07::233])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a0lyo-0002Xa-Tm
 for barebox@lists.infradead.org; Mon, 23 Nov 2015 07:56:07 +0000
Received: by lfdl133 with SMTP id l133so20842564lfd.2
 for <barebox@lists.infradead.org>; Sun, 22 Nov 2015 23:55:44 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon, 23 Nov 2015 10:55:35 +0300
Message-Id: <1448265336-15862-2-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1448265336-15862-1-git-send-email-antonynpavlov@gmail.com>
References: <1448265336-15862-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [just RFC 1/2] serial: ns16550: introduce custom divisor latch setter
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/serial/serial_ns16550.c | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/drivers/serial/serial_ns16550.c b/drivers/serial/serial_ns16550.c
index 1af226a..6a5e013 100644
--- a/drivers/serial/serial_ns16550.c
+++ b/drivers/serial/serial_ns16550.c
@@ -52,6 +52,7 @@ struct ns16550_priv {
 	unsigned iobase;
 	void (*write_reg)(struct ns16550_priv *, uint8_t val, unsigned offset);
 	uint8_t (*read_reg)(struct ns16550_priv *, unsigned offset);
+	void (*dl_write)(struct ns16550_priv *, unsigned baud_divisor);
 };
 
 struct ns16550_drvdata {
@@ -188,9 +189,14 @@ static int ns16550_setbaudrate(struct console_device *cdev, int baud_rate)
 	unsigned int baud_divisor = ns16550_calc_divisor(cdev, baud_rate);
 	struct ns16550_priv *priv = to_ns16550_priv(cdev);
 
-	ns16550_write(cdev, LCR_BKSE, lcr);
-	ns16550_write(cdev, baud_divisor & 0xff, dll);
-	ns16550_write(cdev, (baud_divisor >> 8) & 0xff, dlm);
+	if (priv->dl_write) {
+		priv->dl_write(priv, baud_divisor);
+	} else {
+		ns16550_write(cdev, LCR_BKSE, lcr);
+		ns16550_write(cdev, baud_divisor & 0xff, dll);
+		ns16550_write(cdev, (baud_divisor >> 8) & 0xff, dlm);
+	}
+
 	ns16550_write(cdev, LCRVAL, lcr);
 	ns16550_write(cdev, MCRVAL, mcr);
 	ns16550_write(cdev, priv->fcrval, fcr);
-- 
2.6.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
