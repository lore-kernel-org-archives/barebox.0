Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x234.google.com ([2a00:1450:4010:c07::234])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a0lyp-0002Xb-Mr
 for barebox@lists.infradead.org; Mon, 23 Nov 2015 07:56:08 +0000
Received: by lffu14 with SMTP id u14so102133386lff.1
 for <barebox@lists.infradead.org>; Sun, 22 Nov 2015 23:55:44 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon, 23 Nov 2015 10:55:36 +0300
Message-Id: <1448265336-15862-3-git-send-email-antonynpavlov@gmail.com>
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
Subject: [just RFC 2/2] serial: ns16550: add Ralink UART support
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/serial/Kconfig          |  8 +++++
 drivers/serial/serial_ns16550.c | 76 +++++++++++++++++++++++++++++++++++++++++
 2 files changed, 84 insertions(+)

diff --git a/drivers/serial/Kconfig b/drivers/serial/Kconfig
index 146bf1e..6638794 100644
--- a/drivers/serial/Kconfig
+++ b/drivers/serial/Kconfig
@@ -80,6 +80,14 @@ config DRIVER_SERIAL_NS16550
 	help
 	  Enable this to get support for NS16550 based serial devices
 
+config DRIVER_SERIAL_NS16550_RT288X
+	bool "Ralink RT288x/RT305x/RT3662/RT3883 serial port support"
+	depends on DRIVER_SERIAL_NS16550
+	help
+	  Selecting this option will add support for the alternate register
+	  layout used by Ralink RT288x/RT305x, Alchemy Au1xxx, and some others.
+	  If unsure, say N.
+
 config DRIVER_SERIAL_ATMEL
 	depends on ARCH_AT91
 	default y
diff --git a/drivers/serial/serial_ns16550.c b/drivers/serial/serial_ns16550.c
index 6a5e013..4f8b743 100644
--- a/drivers/serial/serial_ns16550.c
+++ b/drivers/serial/serial_ns16550.c
@@ -125,6 +125,68 @@ static void ns16550_write_reg_ioport_32(struct ns16550_priv *priv, uint8_t val,
 	outl(val, priv->iobase + offset);
 }
 
+/* Au1x00/RT288x UART hardware has a weird register layout */
+static const s8 au_io_in_map[8] = {
+	 0,	/* UART_RX  */
+	 2,	/* UART_IER */
+	 3,	/* UART_IIR */
+	 5,	/* UART_LCR */
+	 6,	/* UART_MCR */
+	 7,	/* UART_LSR */
+	 8,	/* UART_MSR */
+	-1,	/* UART_SCR (unmapped) */
+};
+
+static const s8 au_io_out_map[8] = {
+	 1,	/* UART_TX  */
+	 2,	/* UART_IER */
+	 4,	/* UART_FCR */
+	 5,	/* UART_LCR */
+	 6,	/* UART_MCR */
+	-1,	/* UART_LSR (unmapped) */
+	-1,	/* UART_MSR (unmapped) */
+	-1,	/* UART_SCR (unmapped) */
+};
+
+static uint8_t ns16550_read_reg_au(struct ns16550_priv *priv, unsigned offset)
+{
+	struct NS16550_plat *plat = &priv->plat;
+	s8 mapped_offset;
+
+	/* FIXME: shifting back */
+	offset >>= plat->shift;
+
+	if (offset >= ARRAY_SIZE(au_io_in_map))
+		return U8_MAX;
+	mapped_offset = au_io_in_map[offset];
+	if (mapped_offset < 0)
+		return U8_MAX;
+
+	return __raw_readl(priv->mmiobase + (mapped_offset << plat->shift));
+}
+
+static void ns16550_write_reg_au(struct ns16550_priv *priv, uint8_t val, unsigned offset)
+{
+	struct NS16550_plat *plat = &priv->plat;
+	s8 mapped_offset;
+
+	/* FIXME: shifting back */
+	offset >>= plat->shift;
+
+	if (offset >= ARRAY_SIZE(au_io_out_map))
+		return;
+	mapped_offset = au_io_out_map[offset];
+	if (mapped_offset < 0)
+		return;
+
+	__raw_writel(val, priv->mmiobase + (mapped_offset << plat->shift));
+}
+
+static void ns16550_dl_write_au(struct ns16550_priv *priv, unsigned value)
+{
+	__raw_writel(value, priv->mmiobase + 0x28);
+}
+
 /**
  * @brief read register
  *
@@ -299,6 +361,14 @@ static void ns16550_probe_dt(struct device_d *dev, struct ns16550_priv *priv)
 
 	of_property_read_u32(np, "clock-frequency", &priv->plat.clock);
 	of_property_read_u32(np, "reg-shift", &priv->plat.shift);
+
+	if (IS_ENABLED(CONFIG_DRIVER_SERIAL_NS16550_RT288X)
+		&& of_device_is_compatible(np, "ralink,rt2880-uart")) {
+
+		priv->read_reg = ns16550_read_reg_au;
+		priv->write_reg = ns16550_write_reg_au;
+		priv->dl_write = ns16550_dl_write_au;
+	}
 }
 
 static struct ns16550_drvdata ns16450_drvdata = {
@@ -497,6 +567,12 @@ static struct of_device_id ns16550_serial_dt_ids[] = {
 		.data = &jz_drvdata,
 	},
 #endif
+#if IS_ENABLED(CONFIG_DRIVER_SERIAL_NS16550_RT288X)
+	{
+		.compatible = "ralink,rt2880-uart",
+		.data = &ns16550_drvdata,
+	},
+#endif
 	{
 		/* sentinel */
 	},
-- 
2.6.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
