Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCUih-0003yc-2o
 for barebox@lists.infradead.org; Thu, 12 Mar 2020 20:46:20 +0000
Received: by mail-lj1-x243.google.com with SMTP id f13so8116042ljp.0
 for <barebox@lists.infradead.org>; Thu, 12 Mar 2020 13:46:18 -0700 (PDT)
From: Peter Mamonov <pmamonov@gmail.com>
Date: Thu, 12 Mar 2020 23:46:07 +0300
Message-Id: <20200312204607.24096-1-pmamonov@gmail.com>
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
Subject: [RFC] serial: ns16550: select default pinctrl state
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org, Peter Mamonov <pmamonov@gmail.com>

Signed-off-by: Peter Mamonov <pmamonov@gmail.com>
---
 drivers/serial/serial_ns16550.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/serial/serial_ns16550.c b/drivers/serial/serial_ns16550.c
index 3edeb0dcb..6b5e92c13 100644
--- a/drivers/serial/serial_ns16550.c
+++ b/drivers/serial/serial_ns16550.c
@@ -39,6 +39,7 @@
 #include <malloc.h>
 #include <io.h>
 #include <linux/clk.h>
+#include <pinctrl.h>
 
 #include "serial_ns16550.h"
 #include <platform_data/serial-ns16550.h>
@@ -347,6 +348,8 @@ static void ns16550_probe_dt(struct device_d *dev, struct ns16550_priv *priv)
 		dev_err(dev, "unsupported reg-io-width (%d)\n",
 			width);
 	}
+
+	of_pinctrl_select_state_default(np);
 }
 
 static struct ns16550_drvdata ns16450_drvdata = {
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
