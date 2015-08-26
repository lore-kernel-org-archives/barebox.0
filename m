Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZUWUS-0007ur-J1
 for barebox@lists.infradead.org; Wed, 26 Aug 2015 08:55:29 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 26 Aug 2015 10:55:05 +0200
Message-Id: <1440579305-7794-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1440579305-7794-1-git-send-email-s.hauer@pengutronix.de>
References: <1440579305-7794-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] serial: ns16550: Set linux_console_name
To: Barebox List <barebox@lists.infradead.org>

The regular ns16450/ns16550 devices get the console name "ttyS" under
Linux. Add this to the driver data.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/serial/serial_ns16550.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/serial/serial_ns16550.c b/drivers/serial/serial_ns16550.c
index c186ad4..1af226a 100644
--- a/drivers/serial/serial_ns16550.c
+++ b/drivers/serial/serial_ns16550.c
@@ -297,10 +297,12 @@ static void ns16550_probe_dt(struct device_d *dev, struct ns16550_priv *priv)
 
 static struct ns16550_drvdata ns16450_drvdata = {
 	.init_port = ns16450_serial_init_port,
+	.linux_console_name = "ttyS",
 };
 
 static struct ns16550_drvdata ns16550_drvdata = {
 	.init_port = ns16550_serial_init_port,
+	.linux_console_name = "ttyS",
 };
 
 static __maybe_unused struct ns16550_drvdata omap_drvdata = {
-- 
2.4.6


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
