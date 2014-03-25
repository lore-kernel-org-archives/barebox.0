Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x234.google.com ([2a00:1450:4010:c04::234])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WSUZe-0001pU-CX
 for barebox@lists.infradead.org; Tue, 25 Mar 2014 16:51:40 +0000
Received: by mail-lb0-f180.google.com with SMTP id 10so596881lbg.11
 for <barebox@lists.infradead.org>; Tue, 25 Mar 2014 09:51:16 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue, 25 Mar 2014 20:50:55 +0400
Message-Id: <1395766259-31866-5-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1395766259-31866-1-git-send-email-antonynpavlov@gmail.com>
References: <1395766259-31866-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH v3 4/8] serial: ns16550: add compatible entry for "ns16450"
To: barebox@lists.infradead.org

"ns16450" uses the same code as "ns16550a" but with FIFO disabled.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/serial/serial_ns16550.c | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/drivers/serial/serial_ns16550.c b/drivers/serial/serial_ns16550.c
index 7bd426d..635c2b7 100644
--- a/drivers/serial/serial_ns16550.c
+++ b/drivers/serial/serial_ns16550.c
@@ -181,6 +181,15 @@ static void ns16550_serial_init_port(struct console_device *cdev)
 	ns16550_write(cdev, 0x00, ier);
 }
 
+static void ns16450_serial_init_port(struct console_device *cdev)
+{
+	struct ns16550_priv *priv = to_ns16550_priv(cdev);
+
+	priv->fcrval &= ~FCR_FIFO_EN;
+
+	ns16550_serial_init_port(cdev);
+}
+
 #define omap_mdr1		8
 
 static void ns16550_omap_init_port(struct console_device *cdev)
@@ -242,6 +251,10 @@ static void ns16550_probe_dt(struct device_d *dev, struct ns16550_priv *priv)
 	of_property_read_u32(np, "reg-shift", &priv->plat.shift);
 }
 
+static struct ns16550_drvdata ns16450_drvdata = {
+	.init_port = ns16450_serial_init_port,
+};
+
 static struct ns16550_drvdata ns16550_drvdata = {
 	.init_port = ns16550_serial_init_port,
 };
@@ -329,6 +342,9 @@ err:
 
 static struct of_device_id ns16550_serial_dt_ids[] = {
 	{
+		.compatible = "ns16450",
+		.data = (unsigned long)&ns16450_drvdata,
+	}, {
 		.compatible = "ns16550a",
 		.data = (unsigned long)&ns16550_drvdata,
 	}, {
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
