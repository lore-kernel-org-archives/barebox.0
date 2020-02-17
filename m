Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3fnu-0000os-FJ
 for barebox@lists.infradead.org; Mon, 17 Feb 2020 12:47:18 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 17 Feb 2020 13:46:01 +0100
Message-Id: <20200217124623.14520-21-s.hauer@pengutronix.de>
In-Reply-To: <20200217124623.14520-1-s.hauer@pengutronix.de>
References: <20200217124623.14520-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 20/42] serial: imx: Add imx8mm compatible
To: Barebox List <barebox@lists.infradead.org>

Only add the compatible string to let the driver match.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/serial/serial_imx.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/serial/serial_imx.c b/drivers/serial/serial_imx.c
index 09341af874..e5280ac3e9 100644
--- a/drivers/serial/serial_imx.c
+++ b/drivers/serial/serial_imx.c
@@ -287,6 +287,9 @@ static __maybe_unused struct of_device_id imx_serial_dt_ids[] = {
 	}, {
 		.compatible = "fsl,imx8mq-uart",
 		.data = &imx21_data,
+	}, {
+		.compatible = "fsl,imx8mm-uart",
+		.data = &imx21_data,
 	}, {
 		/* sentinel */
 	}
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
