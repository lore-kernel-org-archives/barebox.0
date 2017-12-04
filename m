Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-f67.google.com ([74.125.83.67])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eLsof-0006FE-Qp
 for barebox@lists.infradead.org; Mon, 04 Dec 2017 15:38:02 +0000
Received: by mail-pg0-f67.google.com with SMTP id o2so8428805pgc.8
 for <barebox@lists.infradead.org>; Mon, 04 Dec 2017 07:37:37 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon,  4 Dec 2017 07:37:24 -0800
Message-Id: <20171204153726.11479-3-andrew.smirnov@gmail.com>
In-Reply-To: <20171204153726.11479-1-andrew.smirnov@gmail.com>
References: <20171204153726.11479-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 2/4] fs: Introduce devpath_to_name()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Add a simple function to simplify the task of accepting both full path
in "/dev" and just device name as a parameter.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 include/fs.h | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/include/fs.h b/include/fs.h
index d7fa7714b..79ae404bb 100644
--- a/include/fs.h
+++ b/include/fs.h
@@ -10,6 +10,7 @@
 #include <driver.h>
 #include <filetype.h>
 #include <linux/fs.h>
+#include <linux/string.h>
 
 #define PATH_MAX       1024        /* include/linux/limits.h */
 
@@ -151,4 +152,12 @@ void mount_all(void);
 void fsdev_set_linux_rootarg(struct fs_device_d *fsdev, const char *str);
 char *path_get_linux_rootarg(const char *path);
 
+static inline const char *devpath_to_name(const char *devpath)
+{
+	if (devpath && !strncmp(devpath, "/dev/", 5))
+		return devpath + 5;
+
+	return devpath;
+}
+
 #endif /* __FS_H */
-- 
2.14.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
