Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mx.til-technologies.net ([92.103.228.36])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UFlxo-0007XO-1U
 for barebox@lists.infradead.org; Wed, 13 Mar 2013 13:43:28 +0000
Message-ID: <514082C7.9090502@til-technologies.fr>
Date: Wed, 13 Mar 2013 14:44:39 +0100
From: Cerrato Renaud <r.cerrato@til-technologies.fr>
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
Subject: [PATCH 4/5] gadget: possible null pointer dereference fix
To: barebox@lists.infradead.org

This patch fix a possible null pointer dereference exception because of a missing null check on cdev->config

Signed-off-by: Cerrato Renaud <r.cerrato@til-technologies.fr>
---
 drivers/usb/gadget/composite.c |   23 +++++++++++++----------
 1 files changed, 13 insertions(+), 10 deletions(-)

diff --git a/drivers/usb/gadget/composite.c b/drivers/usb/gadget/composite.c
index 9af115e..1f6c5b2 100644
--- a/drivers/usb/gadget/composite.c
+++ b/drivers/usb/gadget/composite.c
@@ -777,18 +777,21 @@ unknown:
          * recipients (endpoint, other, WUSB, ...) to the current
          * configuration code.
          */
-        f = cdev->config->interface[intf];
-        if (f && f->setup)
-            value = f->setup(f, ctrl);
-        else
-            f = NULL;
+        if(cdev->config) {
 
-        if (value < 0 && !f) {
-            struct usb_configuration    *c;
+            f = cdev->config->interface[intf];
+            if (f && f->setup)
+                value = f->setup(f, ctrl);
+            else
+                f = NULL;
 
-            c = cdev->config;
-            if (c && c->setup)
-                value = c->setup(c, ctrl);
+            if (value < 0 && !f) {
+                struct usb_configuration    *c;
+
+                c = cdev->config;
+                if (c && c->setup)
+                    value = c->setup(c, ctrl);
+            }
         }
 
         goto done;
-- 
1.7.2.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
