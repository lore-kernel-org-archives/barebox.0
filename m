Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x242.google.com ([2607:f8b0:400e:c00::242])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eF6AY-0000gU-4q
 for barebox@lists.infradead.org; Wed, 15 Nov 2017 22:28:32 +0000
Received: by mail-pf0-x242.google.com with SMTP id 17so18032730pfn.12
 for <barebox@lists.infradead.org>; Wed, 15 Nov 2017 14:28:09 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 15 Nov 2017 14:27:53 -0800
Message-Id: <20171115222753.28426-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH] fs: Fix can_lseek_backward()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

To quote corresponding man page:

"... Upon successful completion, lseek() returns the resulting offset
location as measured in bytes from the beginning of the file."

Which for lseek(fd, 0, SEEK_SET) would be 0, so returning 'ret' as
final step of the function would mean it'd never return anything but 0
as well. Change the code to explicitly return '1' to fix the problem.

Fixes: 7c3f8d366 ("uimage: fix: add can_lseek_backward and use in uimage_open")
Cc: Michael Grzeschik <m.grzeschik@pengutronix.de>
Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---

Sascha:

This change should probably also go to master, since without enabling
TFTP would break 'bootm' for uImages (at least it does on my setup)

Thanks,
Andrey Smirnov

 include/fs.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/fs.h b/include/fs.h
index f8a3b8bda..5c5fff870 100644
--- a/include/fs.h
+++ b/include/fs.h
@@ -117,7 +117,7 @@ static inline int can_lseek_backward(int fd)
 	if (ret < 0)
 		return 0;
 
-	return ret;
+	return 1;
 }
 
 #define drv_to_fs_driver(d) container_of(d, struct fs_driver_d, drv)
-- 
2.13.6


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
