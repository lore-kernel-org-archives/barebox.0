Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x241.google.com ([2a00:1450:4010:c07::241])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dptDK-0004yi-Fi
 for barebox@lists.infradead.org; Thu, 07 Sep 2017 09:35:12 +0000
Received: by mail-lf0-x241.google.com with SMTP id l196so4160289lfl.3
 for <barebox@lists.infradead.org>; Thu, 07 Sep 2017 02:34:49 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Thu,  7 Sep 2017 12:34:38 +0300
Message-Id: <20170907093438.30895-3-antonynpavlov@gmail.com>
In-Reply-To: <20170907093438.30895-1-antonynpavlov@gmail.com>
References: <20170907093438.30895-1-antonynpavlov@gmail.com>
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
Subject: [PATCH v2 2/2] gpio: gpio-generic: add dt support
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/gpio/gpio-generic.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/gpio/gpio-generic.c b/drivers/gpio/gpio-generic.c
index 01a66d6645..14b451bfff 100644
--- a/drivers/gpio/gpio-generic.c
+++ b/drivers/gpio/gpio-generic.c
@@ -410,9 +410,18 @@ static struct platform_device_id bgpio_id_table[] = {
 	{ }
 };
 
+static struct of_device_id __maybe_unused bgpio_of_match[] = {
+	{
+		.compatible = "wd,mbl-gpio",
+	}, {
+		/* sentinel */
+	}
+};
+
 static struct driver_d bgpio_driver = {
 	.name		= "basic-mmio-gpio",
 	.id_table	= bgpio_id_table,
+	.of_compatible	= DRV_OF_COMPAT(bgpio_of_match),
 	.probe		= bgpio_dev_probe,
 	.remove		= bgpio_dev_remove,
 };
-- 
2.14.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
