Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x242.google.com ([2607:f8b0:400e:c05::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fSYWq-0006l5-Dr
 for barebox@lists.infradead.org; Tue, 12 Jun 2018 01:55:33 +0000
Received: by mail-pg0-x242.google.com with SMTP id l65-v6so10654821pgl.8
 for <barebox@lists.infradead.org>; Mon, 11 Jun 2018 18:55:20 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 11 Jun 2018 18:52:45 -0700
Message-Id: <20180612015326.26192-14-andrew.smirnov@gmail.com>
In-Reply-To: <20180612015326.26192-1-andrew.smirnov@gmail.com>
References: <20180612015326.26192-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v4 13/54] gpio: i.MX: Add i.MX8mq support
To: barebox@lists.infradead.org

From: Sascha Hauer <s.hauer@pengutronix.de>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/gpio/gpio-imx.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpio/gpio-imx.c b/drivers/gpio/gpio-imx.c
index d8bcea223..d618e6011 100644
--- a/drivers/gpio/gpio-imx.c
+++ b/drivers/gpio/gpio-imx.c
@@ -190,6 +190,9 @@ static __maybe_unused struct of_device_id imx_gpio_dt_ids[] = {
 	}, {
 		.compatible = "fsl,imx6q-gpio",
 		.data = &regs_imx31,
+	},  {
+		.compatible = "fsl,imx8mq-gpio",
+		.data = &regs_imx31,
 	}, {
 		/* sentinel */
 	}
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
