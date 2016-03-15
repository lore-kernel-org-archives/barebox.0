Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.85 #2 (Red Hat Linux))
 id 1afn3u-00015j-Fh
 for barebox@lists.infradead.org; Tue, 15 Mar 2016 11:22:55 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 15 Mar 2016 12:22:26 +0100
Message-Id: <1458040952-6826-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1458040952-6826-1-git-send-email-s.hauer@pengutronix.de>
References: <1458040952-6826-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/8] fs: Add for_each_fs_device_safe()
To: Barebox List <barebox@lists.infradead.org>

From: Markus Pargmann <mpa@pengutronix.de>

We need to be able to umount specific filesystems while iterating all of
them. This helper gives us a safe macro to do so.

Signed-off-by: Markus Pargmann <mpa@pengutronix.de>
---
 include/fs.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/fs.h b/include/fs.h
index 7301942..b9d1e6e 100644
--- a/include/fs.h
+++ b/include/fs.h
@@ -88,6 +88,7 @@ struct fs_driver_d {
 
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
