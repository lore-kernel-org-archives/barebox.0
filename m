Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.15.15])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dpbZN-00023E-TC
 for barebox@lists.infradead.org; Wed, 06 Sep 2017 14:44:49 +0000
From: Oleksij Rempel <linux@rempel-privat.de>
Date: Wed,  6 Sep 2017 16:44:10 +0200
Message-Id: <20170906144410.525-5-linux@rempel-privat.de>
In-Reply-To: <20170906144410.525-1-linux@rempel-privat.de>
References: <20170906144410.525-1-linux@rempel-privat.de>
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
Subject: [PATCH 4/4] serial: ns16550: provide big-endian support
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <linux@rempel-privat.de>

we need it at least for QCA AR9344

Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
---
 drivers/serial/serial_ns16550.c | 19 +++++++++++++++++--
 1 file changed, 17 insertions(+), 2 deletions(-)

diff --git a/drivers/serial/serial_ns16550.c b/drivers/serial/serial_ns16550.c
index a8953cd99..4d73ea8b8 100644
--- a/drivers/serial/serial_ns16550.c
+++ b/drivers/serial/serial_ns16550.c
@@ -94,6 +94,16 @@ static void ns16550_write_reg_mmio_32(struct ns16550_priv *priv, uint8_t val, un
 	writel(val, priv->mmiobase + offset);
 }
 
+static uint8_t ns16550_read_reg_mmio_32be(struct ns16550_priv *priv, unsigned offset)
+{
+	return ioread32be(priv->mmiobase + offset);
+}
+
+static void ns16550_write_reg_mmio_32be(struct ns16550_priv *priv, uint8_t val, unsigned offset)
+{
+	iowrite32be(val, priv->mmiobase + offset);
+}
+
 static uint8_t ns16550_read_reg_ioport_8(struct ns16550_priv *priv, unsigned offset)
 {
 	return inb(priv->iobase + offset);
@@ -305,8 +315,13 @@ static void ns16550_probe_dt(struct device_d *dev, struct ns16550_priv *priv)
 			priv->write_reg = ns16550_write_reg_mmio_16;
 			break;
 		case 4:
-			priv->read_reg = ns16550_read_reg_mmio_32;
-			priv->write_reg = ns16550_write_reg_mmio_32;
+			if (of_device_is_big_endian(np)) {
+				priv->read_reg = ns16550_read_reg_mmio_32be;
+				priv->write_reg = ns16550_write_reg_mmio_32be;
+			} else {
+				priv->read_reg = ns16550_read_reg_mmio_32;
+				priv->write_reg = ns16550_write_reg_mmio_32;
+			}
 			break;
 		default:
 			dev_err(dev, "unsupported reg-io-width (%d)\n",
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
