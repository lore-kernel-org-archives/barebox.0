Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp38.i.mail.ru ([94.100.177.98])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gZWq8-0004zx-0U
 for barebox@lists.infradead.org; Wed, 19 Dec 2018 08:04:28 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Wed, 19 Dec 2018 11:03:57 +0300
Message-Id: <20181219080403.13737-4-shc_work@mail.ru>
In-Reply-To: <20181219080403.13737-1-shc_work@mail.ru>
References: <20181219080403.13737-1-shc_work@mail.ru>
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
Subject: [PATCH 04/10] serial: clps711x: Determine device name from device tree
To: barebox@lists.infradead.org

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 drivers/serial/serial_clps711x.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/serial/serial_clps711x.c b/drivers/serial/serial_clps711x.c
index 863ba7dd3..d4f674afd 100644
--- a/drivers/serial/serial_clps711x.c
+++ b/drivers/serial/serial_clps711x.c
@@ -124,6 +124,7 @@ static int clps711x_probe(struct device_d *dev)
 	struct clps711x_uart *s;
 	int err, id = dev->id;
 	char syscon_dev[8];
+	const char *devname;
 
 	if (dev->device_node)
 		id = of_alias_get_id(dev->device_node, "serial");
@@ -162,6 +163,14 @@ static int clps711x_probe(struct device_d *dev)
 	s->cdev.getc	= clps711x_getc;
 	s->cdev.flush	= clps711x_flush;
 	s->cdev.setbrg	= clps711x_setbaudrate;
+	s->cdev.linux_console_name = "ttyCL";
+
+	devname = of_alias_get(dev->device_node);
+	if (devname) {
+		s->cdev.devname = xstrdup(devname);
+		s->cdev.devid = DEVICE_ID_SINGLE;
+	}
+
 	clps711x_init_port(&s->cdev);
 
 	err = console_register(&s->cdev);
-- 
2.13.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
