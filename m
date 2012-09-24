Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 4.mo5.mail-out.ovh.net ([178.33.111.247]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TGAoJ-0004LI-18
 for barebox@lists.infradead.org; Mon, 24 Sep 2012 15:43:04 +0000
Received: from mail404.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id E7D06FFA778
 for <barebox@lists.infradead.org>; Mon, 24 Sep 2012 17:48:58 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 24 Sep 2012 17:40:24 +0200
Message-Id: <1348501228-23083-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20120924152731.GF26553@game.jcrosoft.org>
References: <20120924152731.GF26553@game.jcrosoft.org>
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
Subject: [PATCH 1/5] globalvar: add it's own bus
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 common/globalvar.c |   13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/common/globalvar.c b/common/globalvar.c
index a8aaa72..6bf2332 100644
--- a/common/globalvar.c
+++ b/common/globalvar.c
@@ -66,8 +66,21 @@ int globalvar_add_simple(const char *name)
 	return globalvar_add(name, NULL, NULL, 0);
 }
 
+static int global_match(struct device_d *dev, struct driver_d *drv)
+{
+	return 1;
+}
+
+static struct bus_type global_bus = {
+	.name = "global",
+	.match = global_match,
+	.probe = dummy_probe,
+};
+
 static int globalvar_init(void)
 {
+	bus_register(&global_bus);
+	global_device.bus = &global_bus;
 	register_device(&global_device);
 
 	return 0;
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
