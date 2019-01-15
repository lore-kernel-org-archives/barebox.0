Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gjM3B-0007ze-Lj
 for barebox@lists.infradead.org; Tue, 15 Jan 2019 10:34:31 +0000
From: Roland Hieber <rhi@pengutronix.de>
Date: Tue, 15 Jan 2019 11:34:23 +0100
Message-Id: <20190115103423.5233-3-rhi@pengutronix.de>
In-Reply-To: <20190115103423.5233-1-rhi@pengutronix.de>
References: <20190115103423.5233-1-rhi@pengutronix.de>
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
Subject: [PATCH v1 3/3] amba: pl011: make locally used functions static
To: barebox@lists.infradead.org
Cc: Roland Hieber <rhi@pengutronix.de>

This function is not part of a public interface and only used locally.

Fixes the following build warning:

    .../drivers/serial/amba-pl011.c:151:5: warning: no previous prototype for 'pl011_init_port' [-Wmissing-prototypes]
     int pl011_init_port (struct console_device *cdev)
         ^~~~~~~~~~~~~~~

Signed-off-by: Roland Hieber <rhi@pengutronix.de>
---
 drivers/serial/amba-pl011.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/serial/amba-pl011.c b/drivers/serial/amba-pl011.c
index 4c4067d5b5..99b82e3c03 100644
--- a/drivers/serial/amba-pl011.c
+++ b/drivers/serial/amba-pl011.c
@@ -148,7 +148,7 @@ static void pl011_rlcr(struct amba_uart_port *uart, u32 lcr)
 	}
 }
 
-int pl011_init_port (struct console_device *cdev)
+static int pl011_init_port(struct console_device *cdev)
 {
 	struct amba_uart_port *uart = to_amba_uart_port(cdev);
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
