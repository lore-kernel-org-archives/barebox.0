Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mx1.til-technologies.net ([92.103.228.36]
 helo=mx.til-technologies.net)
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UFiy0-0006pI-5o
 for barebox@lists.infradead.org; Wed, 13 Mar 2013 10:31:29 +0000
Message-ID: <514055CC.2000109@til-technologies.fr>
Date: Wed, 13 Mar 2013 11:32:44 +0100
From: Cerrato Renaud <r.cerrato@til-technologies.fr>
MIME-Version: 1.0
References: <CA+7xNQmARo+pXakUUW=8YqBKF2mq9j-00ybSzQ4r9wCe4rPSyA@mail.gmail.com>
In-Reply-To: <CA+7xNQmARo+pXakUUW=8YqBKF2mq9j-00ybSzQ4r9wCe4rPSyA@mail.gmail.com>
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
Subject: Re: [PATCH 5/7] gadget: possible null pointer dereference fix
To: barebox@lists.infradead.org

Inlined patch below.


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


On 12/03/2013 17:05, Renaud C. wrote:
> This patch fix a possible null pointer dereference exception because of a missing null check on cdev->config
>
>
>
>
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
