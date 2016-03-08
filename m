Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1adFJi-0002Py-FI
 for barebox@lists.infradead.org; Tue, 08 Mar 2016 10:56:42 +0000
From: Markus Pargmann <mpa@pengutronix.de>
Date: Tue,  8 Mar 2016 11:56:05 +0100
Message-Id: <1457434569-32054-1-git-send-email-mpa@pengutronix.de>
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
Subject: [PATCH 1/5] fs: Add for_each_fs_device_safe()
To: barebox@lists.infradead.org

We need to be able to umount specific filesystems while iterating all of
them. This helper gives us a safe macro to do so.

Signed-off-by: Markus Pargmann <mpa@pengutronix.de>
---
 include/fs.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/fs.h b/include/fs.h
index ee7e48b0f968..3157a482d71a 100644
--- a/include/fs.h
+++ b/include/fs.h
@@ -87,6 +87,7 @@ struct fs_driver_d {
 
 extern struct list_head fs_device_list;
 #define for_each_fs_device(f) list_for_each_entry(f, &fs_device_list, list)
+#define for_each_fs_device_safe(tmp, f) list_for_each_entry_safe(f, tmp, &fs_device_list, list)
 extern struct bus_type fs_bus;
 
 struct fs_device_d {
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
