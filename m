Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp.megiteam.pl ([31.186.83.105])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgtF5-0004PE-UC
 for barebox@lists.infradead.org; Fri, 28 Jun 2019 15:56:53 +0000
From: Marcin Niestroj <m.niestroj@grinn-global.com>
Date: Fri, 28 Jun 2019 17:56:43 +0200
Message-Id: <20190628155643.29318-1-m.niestroj@grinn-global.com>
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
Subject: [PATCH] serial: ns16550: support reg-offset device-tree property
To: barebox@lists.infradead.org
Cc: Marcin Niestroj <m.niestroj@grinn-global.com>

Some SoC have serial registers shifted by fixed offset. Support them by
respecting 'reg-offset' device-tree property.

Signed-off-by: Marcin Niestroj <m.niestroj@grinn-global.com>
---
 drivers/serial/serial_ns16550.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/serial/serial_ns16550.c b/drivers/serial/serial_ns16550.c
index 4c84d27bd..3edeb0dcb 100644
--- a/drivers/serial/serial_ns16550.c
+++ b/drivers/serial/serial_ns16550.c
@@ -314,12 +314,15 @@ static int ns16550_tstc(struct console_device *cdev)
 static void ns16550_probe_dt(struct device_d *dev, struct ns16550_priv *priv)
 {
 	struct device_node *np = dev->device_node;
+	u32 offset;
 	u32 width = 1;
 
 	if (!IS_ENABLED(CONFIG_OFDEVICE))
 		return;
 
 	of_property_read_u32(np, "clock-frequency", &priv->plat.clock);
+	if (of_property_read_u32(np, "reg-offset", &offset) == 0)
+		priv->mmiobase += offset;
 	of_property_read_u32(np, "reg-shift", &priv->plat.shift);
 	of_property_read_u32(np, "reg-io-width", &width);
 	switch (width) {
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
