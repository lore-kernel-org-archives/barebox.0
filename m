Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 9.mo1.mail-out.ovh.net ([178.32.108.172]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TUkkV-0005b5-2P
 for barebox@lists.infradead.org; Sat, 03 Nov 2012 20:55:24 +0000
Received: from mail635.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 19B8AFFA641
 for <barebox@lists.infradead.org>; Sat,  3 Nov 2012 22:05:54 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sat,  3 Nov 2012 21:53:09 +0100
Message-Id: <1351975989-8218-3-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1351975989-8218-1-git-send-email-plagnioj@jcrosoft.com>
References: <20121103204613.GZ29599@game.jcrosoft.org>
 <1351975989-8218-1-git-send-email-plagnioj@jcrosoft.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 3/3] i2c: add id_table support
To: barebox@lists.infradead.org

this will be use by at24 driver

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/i2c/i2c.c |   17 ++++++++++++++++-
 1 file changed, 16 insertions(+), 1 deletion(-)

diff --git a/drivers/i2c/i2c.c b/drivers/i2c/i2c.c
index 92d9442..94f23dd 100644
--- a/drivers/i2c/i2c.c
+++ b/drivers/i2c/i2c.c
@@ -420,7 +420,22 @@ EXPORT_SYMBOL(i2c_add_numbered_adapter);
 
 static int i2c_match(struct device_d *dev, struct driver_d *drv)
 {
-	return strcmp(dev->name, drv->name) ? -1 : 0;
+	if (!strcmp(dev->name, drv->name))
+		return 0;
+
+	if (drv->id_table) {
+		struct platform_device_id *id = drv->id_table;
+
+		while (id->name) {
+			if (!strcmp(id->name, dev->name)) {
+				dev->id_entry = id;
+				return 0;
+			}
+			id++;
+		}
+	}
+
+	return -1;
 }
 
 static int i2c_probe(struct device_d *dev)
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
