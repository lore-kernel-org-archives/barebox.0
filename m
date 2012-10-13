Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-f177.google.com ([209.85.212.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TN2Jq-00069e-K4
 for barebox@lists.infradead.org; Sat, 13 Oct 2012 14:03:59 +0000
Received: by mail-wi0-f177.google.com with SMTP id hj13so365041wib.0
 for <barebox@lists.infradead.org>; Sat, 13 Oct 2012 07:03:58 -0700 (PDT)
From: Vicente <vicencb@gmail.com>
Date: Sat, 13 Oct 2012 16:03:27 +0200
Message-Id: <1350137007-10135-6-git-send-email-vicencb@gmail.com>
In-Reply-To: <1350137007-10135-1-git-send-email-vicencb@gmail.com>
References: <1350137007-10135-1-git-send-email-vicencb@gmail.com>
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
Subject: [PATCH 5/5] omap4_usbboot_fs: add benchmarking capabilities
To: barebox@lists.infradead.org
Cc: Vicente <vicencb@gmail.com>


Signed-off-by: Vicente <vicencb@gmail.com>
---
 scripts/Makefile        |  2 +-
 scripts/omap4_usbboot.c | 32 ++++++++++++++++++++++++++++++--
 2 files changed, 31 insertions(+), 3 deletions(-)

diff --git a/scripts/Makefile b/scripts/Makefile
index 08b325c..f3e797c 100644
--- a/scripts/Makefile
+++ b/scripts/Makefile
@@ -13,7 +13,7 @@ hostprogs-$(CONFIG_ARCH_OMAP)    += omap_signGP mk-am35xx-spi-image
 hostprogs-$(CONFIG_ARCH_S5PCxx)  += s5p_cksum
 hostprogs-$(CONFIG_ARCH_DAVINCI) += mkublheader
 
-HOSTLOADLIBES_omap4_usbboot = -lpthread
+HOSTLOADLIBES_omap4_usbboot = -lpthread -lrt
 omap4_usbboot-objs               := usb_linux.o omap4_usbboot.o
 hostprogs-$(CONFIG_OMAP4_USBBOOT)+= omap4_usbboot
 
diff --git a/scripts/omap4_usbboot.c b/scripts/omap4_usbboot.c
index a276c29..e142c8a 100644
--- a/scripts/omap4_usbboot.c
+++ b/scripts/omap4_usbboot.c
@@ -20,9 +20,11 @@
 #include <sys/mman.h>
 #include <pthread.h>
 #include <termios.h>
-
+#include <time.h>
 #include "usb.h"
 
+#undef BENCHMARK
+
 #define USBBOOT_FS_MAGIC     0x5562464D
 #define USBBOOT_FS_CMD_OPEN  0x46530000
 #define USBBOOT_FS_CMD_CLOSE 0x46530001
@@ -166,6 +168,10 @@ int read_asic_id(struct usb_handle *usb)
 struct file_data {
 	size_t size;
 	void *data;
+#ifdef BENCHMARK
+	size_t readden;
+	struct timespec opened;
+#endif
 };
 
 int process_file(
@@ -175,7 +181,10 @@ int process_file(
 	struct stat s;
 	int fd, ret;
 	char fname[256];
-
+#ifdef BENCHMARK
+	struct timespec closed;
+	double ts;
+#endif
 	if (usb_read(usb, &i, 4) != 4) {
 		host_print("USB error\n");
 		exit(1);
@@ -229,6 +238,10 @@ int process_file(
 		close(fd);
 		fd_vector[i].size = size = s.st_size;
 		fd = i;
+#ifdef BENCHMARK
+		fd_vector[i].readden = 0;
+		clock_gettime(CLOCK_REALTIME, &fd_vector[i].opened);
+#endif
 		goto open_ok;
 
 open_error_2:
@@ -266,6 +279,18 @@ open_ok:
 		}
 		munmap(fd_vector[i].data, fd_vector[i].size);
 		fd_vector[i].data = NULL;
+#ifdef BENCHMARK
+		if (fd_vector[i].readden) {
+			clock_gettime(CLOCK_REALTIME, &closed);
+			ts  = closed.tv_nsec - fd_vector[i].opened.tv_nsec;
+			ts /= 1.e9;
+			ts += closed.tv_sec  - fd_vector[i].opened.tv_sec ;
+			host_print("Transferred %lu bytes"
+				"in %.2f seconds at %.2f MBps\n",
+				fd_vector[i].readden, ts,
+				fd_vector[i].readden/ts/1048576.0);
+		}
+#endif
 		break;
 	case USBBOOT_FS_CMD_READ:
 		if (usb_read(usb, &i, 4) != 4) {
@@ -308,6 +333,9 @@ open_ok:
 			host_print("could not send file to target\n");
 			exit(1);
 		}
+#ifdef BENCHMARK
+		fd_vector[i].readden += size;
+#endif
 		break;
 	case USBBOOT_FS_CMD_END:
 	default:
-- 
1.7.12.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
