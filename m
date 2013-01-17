Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-f46.google.com ([74.125.82.46])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TveSW-00052r-9f
 for barebox@lists.infradead.org; Thu, 17 Jan 2013 01:40:01 +0000
Received: by mail-wg0-f46.google.com with SMTP id dr13so1269788wgb.13
 for <barebox@lists.infradead.org>; Wed, 16 Jan 2013 17:39:58 -0800 (PST)
From: Vicente Bergas <vicencb@gmail.com>
Date: Thu, 17 Jan 2013 02:39:19 +0100
Message-Id: <1358386760-9249-3-git-send-email-vicencb@gmail.com>
In-Reply-To: <1358386760-9249-1-git-send-email-vicencb@gmail.com>
References: <1358386760-9249-1-git-send-email-vicencb@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/3] OMAP4_USB: more stable communications
To: barebox@lists.infradead.org
Cc: Vicente Bergas <vicencb@gmail.com>


Signed-off-by: Vicente Bergas <vicencb@gmail.com>
---
 scripts/omap4_usbboot.c | 68 ++++++++++++++++++++++++++++++-------------------
 scripts/usb_linux.c     |  4 +--
 2 files changed, 44 insertions(+), 28 deletions(-)

diff --git a/scripts/omap4_usbboot.c b/scripts/omap4_usbboot.c
index a276c29..9d8e2a6 100644
--- a/scripts/omap4_usbboot.c
+++ b/scripts/omap4_usbboot.c
@@ -41,10 +41,17 @@
 #define host_print(fmt, arg...)	printf(FORMAT fmt FORMAT, \
 					HOST_FORMAT, ##arg, TARGET_FORMAT)
 
+void panic(struct termios *t_restore)
+{
+	tcsetattr(STDIN_FILENO, TCSANOW, t_restore);
+	printf(FORMAT, HOST_FORMAT);
+	exit(1);
+}
+
 struct thread_vars {
 	struct usb_handle *usb;
-	int hide;
-	struct termios to;
+	pthread_mutex_t usb_mutex;
+	struct termios t_restore;
 };
 
 void *listenerTask(void *argument)
@@ -55,13 +62,12 @@ void *listenerTask(void *argument)
 		c = getchar();
 		if (c == EOF)
 			return NULL;
-		while (vars->hide)
-			usleep(10000);
+		pthread_mutex_lock(&vars->usb_mutex);
 		if (usb_write(vars->usb, &c, 4) != 4) {
 			host_print("could not send '%c' to target\n", c);
-			tcsetattr(STDIN_FILENO, TCSANOW, &vars->to);
-			exit(1);
+			panic(&vars->t_restore);
 		}
+		pthread_mutex_unlock(&vars->usb_mutex);
 	}
 	return NULL;
 }
@@ -168,8 +174,8 @@ struct file_data {
 	void *data;
 };
 
-int process_file(
-	struct usb_handle *usb, const char *rootfs, struct file_data *fd_vector)
+int process_file(struct usb_handle *usb, const char *rootfs,
+	struct file_data *fd_vector, struct termios *t_restore)
 {
 	uint32_t i, j, pos, size;
 	struct stat s;
@@ -178,7 +184,7 @@ int process_file(
 
 	if (usb_read(usb, &i, 4) != 4) {
 		host_print("USB error\n");
-		exit(1);
+		panic(t_restore);
 	}
 	ret = 0;
 	switch (i) {
@@ -188,7 +194,7 @@ int process_file(
 		for (;; j++) {
 			if (usb_read(usb, &i, 4) != 4) {
 				host_print("USB error\n");
-				exit(1);
+				panic(t_restore);
 			}
 			if (i == USBBOOT_FS_CMD_END) {
 				fname[j] = 0;
@@ -242,13 +248,13 @@ open_ok:
 			usb_write(usb, &size, 4) != 4
 		) {
 			host_print("could not send file size to target\n");
-			exit(1);
+			panic(t_restore);
 		}
 		break;
 	case USBBOOT_FS_CMD_CLOSE:
 		if (usb_read(usb, &i, 4) != 4) {
 			host_print("USB error\n");
-			exit(1);
+			panic(t_restore);
 		}
 		if (i >= MAX_OPEN_FILES || !fd_vector[i].data) {
 			host_print("invalid close index\n");
@@ -257,7 +263,7 @@ open_ok:
 		}
 		if (usb_read(usb, &j, 4) != 4) {
 			host_print("USB error\n");
-			exit(1);
+			panic(t_restore);
 		}
 		if (j != USBBOOT_FS_CMD_END) {
 			host_print("invalid close\n");
@@ -270,7 +276,7 @@ open_ok:
 	case USBBOOT_FS_CMD_READ:
 		if (usb_read(usb, &i, 4) != 4) {
 			host_print("USB error\n");
-			exit(1);
+			panic(t_restore);
 		}
 		if (i >= MAX_OPEN_FILES || !fd_vector[i].data) {
 			host_print("invalid read index\n");
@@ -279,7 +285,7 @@ open_ok:
 		}
 		if (usb_read(usb, &pos, 4) != 4) {
 			host_print("USB error\n");
-			exit(1);
+			panic(t_restore);
 		}
 		if (pos >= fd_vector[i].size) {
 			host_print("invalid read pos\n");
@@ -288,7 +294,7 @@ open_ok:
 		}
 		if (usb_read(usb, &size, 4) != 4) {
 			host_print("USB error\n");
-			exit(1);
+			panic(t_restore);
 		}
 		if (pos+size > fd_vector[i].size) {
 			host_print("invalid read size\n");
@@ -297,7 +303,7 @@ open_ok:
 		}
 		if (usb_read(usb, &j, 4) != 4) {
 			host_print("USB error\n");
-			exit(1);
+			panic(t_restore);
 		}
 		if (j != USBBOOT_FS_CMD_END) {
 			host_print("invalid read\n");
@@ -306,7 +312,7 @@ open_ok:
 		}
 		if (usb_write(usb, fd_vector[i].data+pos, size) != size) {
 			host_print("could not send file to target\n");
-			exit(1);
+			panic(t_restore);
 		}
 		break;
 	case USBBOOT_FS_CMD_END:
@@ -329,38 +335,48 @@ int usb_boot(
 	struct termios tn;
 	struct file_data fd_vector[MAX_OPEN_FILES];
 
-	read_asic_id(usb);
+	if (read_asic_id(usb))
+		return -1;
 
 	printf("sending xload to target...\n");
+	usleep(1000);
 	usb_write(usb, &msg_boot, sizeof(msg_boot));
+	usleep(1000);
 	usb_write(usb, &msg_size, sizeof(msg_size));
+	usleep(1000);
 	usb_write(usb, data, sz);
+	usleep(100000);
 	munmap(data, msg_size);
 	for (i = 0; i < MAX_OPEN_FILES; i++)
 		fd_vector[i].data = NULL;
 
 	vars.usb = usb;
-	vars.hide = 0;
-	tcgetattr(STDIN_FILENO, &vars.to);
-	tn = vars.to;
+	pthread_mutex_init(&vars.usb_mutex, NULL);
+	tcgetattr(STDIN_FILENO, &vars.t_restore);
+	tn = vars.t_restore;
 	tn.c_lflag &= ~(ICANON | ECHO);
 	printf(FORMAT, TARGET_FORMAT);
 	tcsetattr(STDIN_FILENO, TCSANOW, &tn);
 	if (pthread_create(&thread, NULL, listenerTask, &vars))
 		host_print("listenerTask failed\n");
 	for (;;) {
+		usleep(100);
 		if (usb_read(usb, &i, 4) != 4)
 			break;
 		if (i == USBBOOT_FS_MAGIC) {
-			vars.hide = 1;
-			process_file(usb, rootfs, fd_vector);
-			vars.hide = 0;
+			usleep(100);
+			pthread_mutex_lock(&vars.usb_mutex);
+			process_file(usb, rootfs, fd_vector, &vars.t_restore);
+			pthread_mutex_unlock(&vars.usb_mutex);
 			continue;
 		}
 		printf("%c", i);
 		fflush(stdout);
 	}
-	tcsetattr(STDIN_FILENO, TCSANOW, &vars.to);
+	usb_close(usb);
+	pthread_mutex_destroy(&vars.usb_mutex);
+	tcsetattr(STDIN_FILENO, TCSANOW, &vars.t_restore);
+	printf(FORMAT, HOST_FORMAT);
 	return 0;
 }
 
diff --git a/scripts/usb_linux.c b/scripts/usb_linux.c
index 43529aa..9a6e0b8 100644
--- a/scripts/usb_linux.c
+++ b/scripts/usb_linux.c
@@ -47,7 +47,7 @@
 
 #include "usb.h"
 
-#define MAX_RETRIES 5
+#define MAX_RETRIES 2
 
 #ifdef TRACE_USB
 #define DBG1(x...) fprintf(stderr, x)
@@ -350,7 +350,7 @@ int usb_read(struct usb_handle *h, void *_data, int len)
 				n, errno, strerror(errno));
 				if (++retry > MAX_RETRIES)
 					return -1;
-				sleep(1);
+				usleep(10000);
 			}
 		} while (n < 0);
 
-- 
1.8.1.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
