Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WegGe-0003WE-R7
 for barebox@lists.infradead.org; Mon, 28 Apr 2014 07:46:25 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 28 Apr 2014 09:45:51 +0200
Message-Id: <1398671161-29045-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1398671161-29045-1-git-send-email-s.hauer@pengutronix.de>
References: <1398671161-29045-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 02/12] serial: ns16550: omap: set register shift from code
To: barebox@lists.infradead.org

The upstream dts files do not contain the register shift. As
we have Omap specific init code anyway we can just set the register
shift from there instead of relying on the devicetree properties.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/serial/serial_ns16550.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/serial/serial_ns16550.c b/drivers/serial/serial_ns16550.c
index 0c00eb1..a2a25fa 100644
--- a/drivers/serial/serial_ns16550.c
+++ b/drivers/serial/serial_ns16550.c
@@ -194,6 +194,10 @@ static void ns16450_serial_init_port(struct console_device *cdev)
 
 static void ns16550_omap_init_port(struct console_device *cdev)
 {
+	struct ns16550_priv *priv = to_ns16550_priv(cdev);
+
+	priv->plat.shift = 2;
+
 	ns16550_serial_init_port(cdev);
 
 	ns16550_write(cdev, 0x07, omap_mdr1);	/* Disable */
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
