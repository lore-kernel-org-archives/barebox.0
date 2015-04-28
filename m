Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22d.google.com ([2a00:1450:4010:c03::22d])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ymxof-00060h-Ak
 for barebox@lists.infradead.org; Tue, 28 Apr 2015 05:12:17 +0000
Received: by lagv1 with SMTP id v1so95718677lag.3
 for <barebox@lists.infradead.org>; Mon, 27 Apr 2015 22:11:53 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue, 28 Apr 2015 08:12:54 +0300
Message-Id: <1430197974-1394-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH] linux/amba/bus.h: drop unusable amba_{g,s}et_drvdata macros
To: barebox@lists.infradead.org

amba_{g,s}et_drvdata macros from linux kernel use
dev_{g,s}et_drvdata functions.

But in linux dev_get_drvdata() takes only one argument
while in barebox dev_get_drvdata() takes two arguments.
There is no dev_set_drvdata() in barebox at all.

So amba_{g,s}et_drvdata macros from linux are
unusable for barebox.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 include/linux/amba/bus.h | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/include/linux/amba/bus.h b/include/linux/amba/bus.h
index a7bbae0..2ecef35 100644
--- a/include/linux/amba/bus.h
+++ b/include/linux/amba/bus.h
@@ -60,9 +60,6 @@ extern struct bus_type amba_bustype;
 
 #define to_amba_device(d)	container_of(d, struct amba_device, dev)
 
-#define amba_get_drvdata(d)	dev_get_drvdata(&d->dev)
-#define amba_set_drvdata(d,p)	dev_set_drvdata(&d->dev, p)
-
 int amba_driver_register(struct amba_driver *);
 void amba_driver_unregister(struct amba_driver *);
 struct amba_device *amba_device_alloc(const char *, int id, resource_size_t, size_t);
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
