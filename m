Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UoVnE-0001rA-L8
 for barebox@lists.infradead.org; Mon, 17 Jun 2013 09:32:09 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 17 Jun 2013 11:31:44 +0200
Message-Id: <1371461504-18782-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1371461504-18782-1-git-send-email-s.hauer@pengutronix.de>
References: <1371461504-18782-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] gpio: i.MX: initialize earlier
To: barebox@lists.infradead.org

The i.MX gpio driver doesn't have dependencies, so initialize
it in a core_initcall to have the gpio functions available earlier.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/gpio/gpio-imx.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpio/gpio-imx.c b/drivers/gpio/gpio-imx.c
index 1bf4100..063a81c 100644
--- a/drivers/gpio/gpio-imx.c
+++ b/drivers/gpio/gpio-imx.c
@@ -204,4 +204,4 @@ static int imx_gpio_add(void)
 	platform_driver_register(&imx_gpio_driver);
 	return 0;
 }
-coredevice_initcall(imx_gpio_add);
+core_initcall(imx_gpio_add);
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
