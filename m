Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x234.google.com ([2a00:1450:4010:c04::234])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XCs1r-00072k-2p
 for barebox@lists.infradead.org; Thu, 31 Jul 2014 15:12:28 +0000
Received: by mail-lb0-f180.google.com with SMTP id v6so2144083lbi.39
 for <barebox@lists.infradead.org>; Thu, 31 Jul 2014 08:11:44 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Thu, 31 Jul 2014 19:11:32 +0400
Message-Id: <1406819492-9923-2-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1406819492-9923-1-git-send-email-antonynpavlov@gmail.com>
References: <1406819492-9923-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH v2 2/2] watchdog: i.MX: check requested mem region in
 imx_wd_probe()
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/watchdog/imxwd.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/watchdog/imxwd.c b/drivers/watchdog/imxwd.c
index 63c5605..31c3d0d 100644
--- a/drivers/watchdog/imxwd.c
+++ b/drivers/watchdog/imxwd.c
@@ -159,6 +159,10 @@ static int imx_wd_probe(struct device_d *dev)
 
 	priv = xzalloc(sizeof(struct imx_wd));
 	priv->base = dev_request_mem_region(dev, 0);
+	if (!priv->base) {
+		dev_err(dev, "could not get memory region\n");
+		return -ENODEV;
+	}
 	priv->set_timeout = fn;
 	priv->wd.set_timeout = imx_watchdog_set_timeout;
 	priv->dev = dev;
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
