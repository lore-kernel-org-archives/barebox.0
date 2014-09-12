Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XSNs5-0003Gp-BB
 for barebox@lists.infradead.org; Fri, 12 Sep 2014 10:14:30 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 12 Sep 2014 12:13:50 +0200
Message-Id: <1410516830-9403-11-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1410516830-9403-1-git-send-email-s.hauer@pengutronix.de>
References: <1410516830-9403-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 10/10] resource: Let request_ioport_region return an error
 pointer
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/resource.c               | 2 +-
 drivers/serial/serial_ns16550.c | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/common/resource.c b/common/resource.c
index fd04f26..e4bbe15 100644
--- a/common/resource.c
+++ b/common/resource.c
@@ -146,7 +146,7 @@ struct resource *request_ioport_region(const char *name,
 
 	res = __request_region(&ioport_resource, name, start, end);
 	if (IS_ERR(res))
-		return NULL;
+		return ERR_CAST(res);
 
 	return res;
 }
diff --git a/drivers/serial/serial_ns16550.c b/drivers/serial/serial_ns16550.c
index 78a674a..4ca7444 100644
--- a/drivers/serial/serial_ns16550.c
+++ b/drivers/serial/serial_ns16550.c
@@ -353,8 +353,8 @@ static int ns16550_init_ioport(struct device_d *dev, struct ns16550_priv *priv)
 		return PTR_ERR(res);
 
 	res = request_ioport_region(dev_name(dev), res->start, res->end);
-	if (!res)
-		return -ENODEV;
+	if (IS_ERR(res))
+		return PTR_ERR(res);
 
 	priv->iobase = res->start;
 
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
