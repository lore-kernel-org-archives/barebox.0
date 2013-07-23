Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x233.google.com ([2a00:1450:4010:c04::233])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V1efd-0006iQ-14
 for barebox@lists.infradead.org; Tue, 23 Jul 2013 15:38:37 +0000
Received: by mail-lb0-f179.google.com with SMTP id w20so6454105lbh.10
 for <barebox@lists.infradead.org>; Tue, 23 Jul 2013 08:38:15 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue, 23 Jul 2013 19:28:01 +0400
Message-Id: <1374593282-3320-2-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1374593282-3320-1-git-send-email-antonynpavlov@gmail.com>
References: <1374593282-3320-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC 1/2] serial: ns16550: get clock-frequency from dt
To: barebox@lists.infradead.org

This patch helps clk-less boards to use device
tree for clock frequency probing (taken from
linux.git/drivers/tty/serial/of_serial.c).

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/serial/serial_ns16550.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/serial/serial_ns16550.c b/drivers/serial/serial_ns16550.c
index ad3125a..6a3c865 100644
--- a/drivers/serial/serial_ns16550.c
+++ b/drivers/serial/serial_ns16550.c
@@ -277,6 +277,12 @@ static int ns16550_probe(struct device_d *dev)
 		priv->plat.clock = clk_get_rate(priv->clk);
 	}
 
+	if (priv->plat.clock == 0 && IS_ENABLED(CONFIG_OFDEVICE)) {
+		struct device_node *np = dev->device_node;
+
+		of_property_read_u32(np, "clock-frequency", &priv->plat.clock);
+	}
+
 	if (priv->plat.clock == 0) {
 		dev_err(dev, "no valid clockrate\n");
 		ret = -EINVAL;
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
