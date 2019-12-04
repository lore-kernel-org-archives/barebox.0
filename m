Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icUDK-0001Ao-7S
 for barebox@lists.infradead.org; Wed, 04 Dec 2019 12:57:08 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  4 Dec 2019 13:56:52 +0100
Message-Id: <20191204125659.22506-3-a.fatoum@pengutronix.de>
In-Reply-To: <20191204125659.22506-1-a.fatoum@pengutronix.de>
References: <20191204125659.22506-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 2/9] driver: add missing parentheses around macro argument
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

Currently, the macro can't be used for more complex expressions
like &pci_dev->dev. Fix this by adding the missing parentheses.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/driver.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/include/driver.h b/include/driver.h
index 300603fa3277..ad59ce90c3a3 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -155,12 +155,12 @@ int unregister_device(struct device_d *);
 /* Iterate over a devices children
  */
 #define device_for_each_child(dev, child) \
-	list_for_each_entry(child, &dev->children, sibling)
+	list_for_each_entry(child, &(dev)->children, sibling)
 
 /* Iterate over a devices children - Safe against removal version
  */
 #define device_for_each_child_safe(dev, tmpdev, child) \
-	list_for_each_entry_safe(child, tmpdev, &dev->children, sibling)
+	list_for_each_entry_safe(child, tmpdev, &(dev)->children, sibling)
 
 /* Iterate through the devices of a given type. if last is NULL, the
  * first device of this type is returned. Put this pointer in as
-- 
2.24.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
