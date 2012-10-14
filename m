Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo5.mail-out.ovh.net ([87.98.173.103]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TNVLX-00049u-KB
 for barebox@lists.infradead.org; Sun, 14 Oct 2012 21:03:42 +0000
Received: from mail619.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 8F18DFF963B
 for <barebox@lists.infradead.org>; Sun, 14 Oct 2012 23:10:16 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun, 14 Oct 2012 23:01:07 +0200
Message-Id: <1350248478-19359-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20121014205929.GU13639@game.jcrosoft.org>
References: <20121014205929.GU13639@game.jcrosoft.org>
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
Subject: [PATCH 01/12] bus_for_each_device/bus_for_each_driver: add () to
 allow use &bus
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 include/driver.h |    4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/include/driver.h b/include/driver.h
index 4918054..dd22c77 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -393,11 +393,11 @@ extern struct list_head bus_list;
 
 /* Iterate over all devices of a bus
  */
-#define bus_for_each_device(bus, dev) list_for_each_entry(dev, &bus->device_list, bus_list)
+#define bus_for_each_device(bus, dev) list_for_each_entry(dev, &(bus)->device_list, bus_list)
 
 /* Iterate over all drivers of a bus
  */
-#define bus_for_each_driver(bus, drv) list_for_each_entry(drv, &bus->driver_list, bus_list)
+#define bus_for_each_driver(bus, drv) list_for_each_entry(drv, &(bus)->driver_list, bus_list)
 
 extern struct bus_type platform_bus;
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
