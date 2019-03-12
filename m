Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h3c6T-0001zl-58
 for barebox@lists.infradead.org; Tue, 12 Mar 2019 07:45:38 +0000
Received: by mail-pg1-x541.google.com with SMTP id l11so1163122pgq.10
 for <barebox@lists.infradead.org>; Tue, 12 Mar 2019 00:45:37 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 12 Mar 2019 00:45:23 -0700
Message-Id: <20190312074525.6153-2-andrew.smirnov@gmail.com>
In-Reply-To: <20190312074525.6153-1-andrew.smirnov@gmail.com>
References: <20190312074525.6153-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 1/3] console: Add plumbing to expose earlycon/bootconsole
 parameter
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Similar to what we already do to kernel's "console" parameter, add
code to allow serial drivers to expose their "earlycon"
setting. Unlike the plumbing for "console", "earlycon" is not
automatically added to kernel command line and has to be enabled by
the user.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 Documentation/user/variables.rst |  1 +
 common/console.c                 | 25 +++++++++++++++++++++++++
 include/console.h                |  1 +
 3 files changed, 27 insertions(+)

diff --git a/Documentation/user/variables.rst b/Documentation/user/variables.rst
index ddfd48574..f3bcaa3a8 100644
--- a/Documentation/user/variables.rst
+++ b/Documentation/user/variables.rst
@@ -114,5 +114,6 @@ of all variables with special meaning along with a short description:
   bootsource                       The source barebox has been booted from
   bootsource_instance              The instance of the source barebox has been booted from
   global.boot.default              default boot order
+  global.linux.bootconsole         current console's "earlycon" setting for Linux kernel
   ...
 
diff --git a/common/console.c b/common/console.c
index 47ccf2e54..29d0f2779 100644
--- a/common/console.c
+++ b/common/console.c
@@ -253,6 +253,30 @@ static void console_set_stdoutpath(struct console_device *cdev)
 	free(str);
 }
 
+static void console_set_boot_stdoutpath(struct console_device *cdev)
+{
+	char *str;
+
+	if (!cdev->linux_bootconsole_name)
+		return;
+
+	str = basprintf("earlycon=%s,%dn8", cdev->linux_bootconsole_name,
+			cdev->baudrate);
+	/*
+	 * linux.bootconsole is used instead of
+	 * linux.bootargs.bootconsole in orger to make this feature
+	 * optional. To enable, add
+	 *
+	 *     global linux.bootargs.bootconsole
+	 *     global.linux.bootargs.bootconsole=${global.linux.bootconsole}
+	 *
+	 * somwhere in your boot scripts
+	 */
+	globalvar_add_simple("linux.bootconsole", str);
+
+	free(str);
+}
+
 static int __console_puts(struct console_device *cdev, const char *s)
 {
 	int n = 0;
@@ -360,6 +384,7 @@ int console_register(struct console_device *newcdev)
 	if (newcdev->dev && of_device_is_stdout_path(newcdev->dev)) {
 		activate = 1;
 		console_set_stdoutpath(newcdev);
+		console_set_boot_stdoutpath(newcdev);
 	}
 
 	list_add_tail(&newcdev->list, &console_list);
diff --git a/include/console.h b/include/console.h
index 673921331..09d7ebae5 100644
--- a/include/console.h
+++ b/include/console.h
@@ -64,6 +64,7 @@ struct console_device {
 	unsigned int baudrate_param;
 
 	const char *linux_console_name;
+	const char *linux_bootconsole_name;
 
 	struct cdev devfs;
 	struct cdev_operations fops;
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
