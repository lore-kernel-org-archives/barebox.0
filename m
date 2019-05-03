Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMUa2-00039h-W6
 for barebox@lists.infradead.org; Fri, 03 May 2019 09:34:12 +0000
Received: from [2001:67c:670:c0a8:d4b8:1dff:fe64:e144] (helo=unicorn)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <str@pengutronix.de>) id 1hMUZy-00087q-0V
 for barebox@lists.infradead.org; Fri, 03 May 2019 11:34:06 +0200
Received: from str by unicorn with local (Exim 4.89)
 (envelope-from <str@pengutronix.de>) id 1hMUZx-0007Fm-IK
 for barebox@lists.infradead.org; Fri, 03 May 2019 11:34:05 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Fri,  3 May 2019 11:33:53 +0200
Message-Id: <9cb9537d976d78bdd4b0540964b7312631ba9d40.1556875750.git-series.s.trumtrar@pengutronix.de>
In-Reply-To: <cover.f11bd6763969bb7d206b1b29aa16d5758acb980a.1556875750.git-series.s.trumtrar@pengutronix.de>
References: <cover.f11bd6763969bb7d206b1b29aa16d5758acb980a.1556875750.git-series.s.trumtrar@pengutronix.de>
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
Subject: [PATCH 03/10] spi: Import more spi mode defines from Linux
To: Barebox List <barebox@lists.infradead.org>

Sync with Linux v5.1-rc1.

Define more spi mode flags.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 include/spi/spi.h | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/include/spi/spi.h b/include/spi/spi.h
index 8c6927da4107..6eeaf254c713 100644
--- a/include/spi/spi.h
+++ b/include/spi/spi.h
@@ -75,6 +75,16 @@ struct spi_device {
 #define	SPI_LSB_FIRST	0x08			/* per-word bits-on-wire */
 #define	SPI_3WIRE	0x10			/* SI/SO signals shared */
 #define	SPI_LOOP	0x20			/* loopback mode */
+#define	SPI_NO_CS	0x40			/* 1 dev/bus, no chipselect */
+#define	SPI_READY	0x80			/* slave pulls low to pause */
+#define	SPI_TX_DUAL	0x100			/* transmit with 2 wires */
+#define	SPI_TX_QUAD	0x200			/* transmit with 4 wires */
+#define	SPI_RX_DUAL	0x400			/* receive with 2 wires */
+#define	SPI_RX_QUAD	0x800			/* receive with 4 wires */
+#define	SPI_CS_WORD	0x1000			/* toggle cs after each word */
+#define	SPI_TX_OCTAL	0x2000			/* transmit with 8 wires */
+#define	SPI_RX_OCTAL	0x4000			/* receive with 8 wires */
+#define	SPI_3WIRE_HIZ	0x8000			/* high impedance turnaround */
 	u8			bits_per_word;
 	int			irq;
 	void			*controller_state;
-- 
git-series 0.9.1

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
