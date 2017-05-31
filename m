Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x241.google.com ([2a00:1450:400c:c09::241])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dG6FC-0007xW-46
 for barebox@lists.infradead.org; Wed, 31 May 2017 16:13:12 +0000
Received: by mail-wm0-x241.google.com with SMTP id g15so4760689wmc.2
 for <barebox@lists.infradead.org>; Wed, 31 May 2017 09:12:51 -0700 (PDT)
From: Aleksander Morgado <aleksander@aleksander.es>
Date: Wed, 31 May 2017 18:12:40 +0200
Message-Id: <93d69b0479fddc6bb55b5c8873af1133f150e1c5.1496247033.git.aleksander@aleksander.es>
In-Reply-To: <cover.1496247033.git.aleksander@aleksander.es>
References: <cover.1496247033.git.aleksander@aleksander.es>
In-Reply-To: <cover.1496247033.git.aleksander@aleksander.es>
References: <cover.1496247033.git.aleksander@aleksander.es>
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
Subject: [PATCH 1/2] sandbox: fix registering multiple consoles
To: barebox@lists.infradead.org
Cc: Aleksander Morgado <aleksander@aleksander.es>

Consoles need to be registered with the "console" device name so that
they are probed by the correct driver. The barebox_register_console()
was already forcing this as it was overwriting the name that was being
passed as argument, but it was failing to provide a unique id for
each new console, so the underlying register_device() would just
return an error when wanting to re-register a device with device name
"console" and id 0.

We remove the unused name parameter from barebox_register_console() as
it is really nowhere used, and also specify DEVICE_ID_DYNAMIC as id,
so that a new unique device id is given to each newly registered
console device.

Signed-off-by: Aleksander Morgado <aleksander@aleksander.es>
---
 arch/sandbox/board/console.c                   | 5 ++---
 arch/sandbox/mach-sandbox/include/mach/linux.h | 2 +-
 arch/sandbox/os/common.c                       | 6 +++---
 drivers/serial/linux_console.c                 | 3 +++
 4 files changed, 9 insertions(+), 7 deletions(-)

diff --git a/arch/sandbox/board/console.c b/arch/sandbox/board/console.c
index cd5ad5723..cf1781d15 100644
--- a/arch/sandbox/board/console.c
+++ b/arch/sandbox/board/console.c
@@ -22,7 +22,7 @@
 #include <mach/linux.h>
 #include <xfuncs.h>
 
-int barebox_register_console(char *name, int stdinfd, int stdoutfd)
+int barebox_register_console(int stdinfd, int stdoutfd)
 {
 	struct device_d *dev;
 	struct linux_console_data *data;
@@ -32,9 +32,8 @@ int barebox_register_console(char *name, int stdinfd, int stdoutfd)
 	data = (struct linux_console_data *)(dev + 1);
 
 	dev->platform_data = data;
-	strcpy(dev->name, name);
-
 	strcpy(dev->name, "console");
+	dev->id = DEVICE_ID_DYNAMIC;
 
 	data->stdoutfd = stdoutfd;
 	data->stdinfd  = stdinfd;
diff --git a/arch/sandbox/mach-sandbox/include/mach/linux.h b/arch/sandbox/mach-sandbox/include/mach/linux.h
index 1f11ed449..1327a56ca 100644
--- a/arch/sandbox/mach-sandbox/include/mach/linux.h
+++ b/arch/sandbox/mach-sandbox/include/mach/linux.h
@@ -19,7 +19,7 @@ void __attribute__((noreturn)) linux_exit(void);
 
 int linux_execve(const char * filename, char *const argv[], char *const envp[]);
 
-int barebox_register_console(char *name_template, int stdinfd, int stdoutfd);
+int barebox_register_console(int stdinfd, int stdoutfd);
 
 int barebox_register_dtb(const void *dtb);
 
diff --git a/arch/sandbox/os/common.c b/arch/sandbox/os/common.c
index 67667d40d..192917ac2 100644
--- a/arch/sandbox/os/common.c
+++ b/arch/sandbox/os/common.c
@@ -366,7 +366,7 @@ int main(int argc, char *argv[])
 				exit(1);
 			}
 
-			barebox_register_console("cout", -1, fd);
+			barebox_register_console(-1, fd);
 			break;
 		case 'I':
 			fd = open(optarg, O_RDWR);
@@ -375,7 +375,7 @@ int main(int argc, char *argv[])
 				exit(1);
 			}
 
-			barebox_register_console("cin", fd, -1);
+			barebox_register_console(fd, -1);
 			break;
 		case 'x':
 			sdl_xres = strtoul(optarg, NULL, 0);
@@ -426,7 +426,7 @@ int main(int argc, char *argv[])
 		}
 	}
 
-	barebox_register_console("console", fileno(stdin), fileno(stdout));
+	barebox_register_console(fileno(stdin), fileno(stdout));
 
 	rawmode();
 	start_barebox();
diff --git a/drivers/serial/linux_console.c b/drivers/serial/linux_console.c
index 760b3b81f..0d5da9d1b 100644
--- a/drivers/serial/linux_console.c
+++ b/drivers/serial/linux_console.c
@@ -73,6 +73,9 @@ static int linux_console_probe(struct device_d *dev)
 
 	console_register(cdev);
 
+	pr_info("%s: registered as %s%d\n", dev->name, cdev->class_dev.name,
+		cdev->class_dev.id);
+
 	return 0;
 }
 
-- 
2.13.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
