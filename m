Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kj7wa-0002Ss-Da
 for barebox@lists.infradead.org; Sat, 28 Nov 2020 21:39:51 +0000
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Sat, 28 Nov 2020 22:39:34 +0100
Message-Id: <20201128213934.681065-11-ahmad@a3f.at>
In-Reply-To: <20201128213934.681065-1-ahmad@a3f.at>
References: <20201128213934.681065-1-ahmad@a3f.at>
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
Subject: [PATCH 11/11] doc: bcm283x: document use of mini-uart on Raspberry Pi
 Zero W / CM3
To: barebox@lists.infradead.org
Cc: Andrew John <andrew@mobius-embedded-systems.co.uk>, Roland Hieber <rhi@pengutronix.de>, Robert Carnecky <robert@neopsis.com>, Rouven Czerwinski <rcz@pengutronix.de>

As described in the UART configuration[1] article in the Raspberry Pi
Foundation documentation, Raspberry Pi 3 & 4 as well as Zero W use the
mini-uart as primary (easily user-accessible) UART. At least on the
Raspberry Zero W and CM3, we need to pass uart_2ndstage=1, so the
BootROM leaves the 8250 IP in a suitable state for use by barebox.
Document this.

[1]: https://www.raspberrypi.org/documentation/configuration/uart.md

Cc: Roland Hieber <rhi@pengutronix.de>
Cc: Rouven Czerwinski <rcz@pengutronix.de>
Cc: Robert Carnecky <robert@neopsis.com>
Cc: Andrew John <andrew@mobius-embedded-systems.co.uk>
Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 Documentation/boards/bcm2835.rst | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/boards/bcm2835.rst b/Documentation/boards/bcm2835.rst
index c896871e0d82..dbdfc2633173 100644
--- a/Documentation/boards/bcm2835.rst
+++ b/Documentation/boards/bcm2835.rst
@@ -23,6 +23,13 @@ Raspberry Pi
          kernel=barebox.img
          enable_uart=1
 
+     If you want to use the mini-uart instead of the PL011, you might need to additionally set::
+
+         uart_2ndstage=1
+
+     This is useful on newer boards like the Raspberry Pi Zero W and CM3, which route the
+     more easily accessible primary UART to the mini-uart.
+
      (For more information, refer to the `documentation for config.txt`_.)
 
   5. Connect to board's UART (115200 8N1);
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
