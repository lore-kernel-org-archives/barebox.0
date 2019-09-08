Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i75FK-0006o3-GM
 for barebox@lists.infradead.org; Sun, 08 Sep 2019 22:01:24 +0000
Received: by mail-qt1-x842.google.com with SMTP id j1so1154271qth.1
 for <barebox@lists.infradead.org>; Sun, 08 Sep 2019 15:01:21 -0700 (PDT)
From: dgienda125@gmail.com
Date: Sun,  8 Sep 2019 18:01:11 -0400
Message-Id: <20190908220111.694-1-dgienda125@gmail.com>
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
Subject: [PATCH] console: set default console_device devname
To: barebox@lists.infradead.org
Cc: David Dgien <dgienda125@gmail.com>

From: David Dgien <dgienda125@gmail.com>

Some commands (loadb/x/y) rely on console_get_by_name, which searches the list
of console devices based on console_device->devname. However, some serial
drivers do not set devname, meaning that their respective console_devices can
never be found. During console_register, ensure that a default devname is set
if one is not already explicitly set.

Signed-off-by: David Dgien <dgienda125@gmail.com>
---
 common/console.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/common/console.c b/common/console.c
index ee17a508b..dacb6001c 100644
--- a/common/console.c
+++ b/common/console.c
@@ -324,6 +324,10 @@ int console_register(struct console_device *newcdev)
 		dev->parent = newcdev->dev;
 	platform_device_register(dev);
 
+	if (!newcdev->devname) {
+		newcdev->devname = strdup(dev_name(dev));
+	}
+
 	newcdev->open_count = 0;
 
 	/*
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
