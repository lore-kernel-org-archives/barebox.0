Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VPRqQ-0000AE-Eo
 for barebox@lists.infradead.org; Fri, 27 Sep 2013 06:48:24 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 27 Sep 2013 08:47:40 +0200
Message-Id: <1380264462-27614-10-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1380264462-27614-1-git-send-email-s.hauer@pengutronix.de>
References: <1380264462-27614-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 09/11] scripts: Move omap4_usbboot to its own directory
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/.gitignore                    |   1 -
 scripts/Makefile                      |   5 +-
 scripts/omap4_usbboot.c               | 430 ----------------------------------
 scripts/omap4_usbboot/.gitignore      |   1 +
 scripts/omap4_usbboot/Makefile        |   5 +
 scripts/omap4_usbboot/omap4_usbboot.c | 430 ++++++++++++++++++++++++++++++++++
 scripts/omap4_usbboot/usb.h           |  61 +++++
 scripts/omap4_usbboot/usb_linux.c     | 397 +++++++++++++++++++++++++++++++
 scripts/usb.h                         |  61 -----
 scripts/usb_linux.c                   | 397 -------------------------------
 10 files changed, 895 insertions(+), 893 deletions(-)
 delete mode 100644 scripts/omap4_usbboot.c
 create mode 100644 scripts/omap4_usbboot/.gitignore
 create mode 100644 scripts/omap4_usbboot/Makefile
 create mode 100644 scripts/omap4_usbboot/omap4_usbboot.c
 create mode 100644 scripts/omap4_usbboot/usb.h
 create mode 100644 scripts/omap4_usbboot/usb_linux.c
 delete mode 100644 scripts/usb.h
 delete mode 100644 scripts/usb_linux.c

diff --git a/scripts/.gitignore b/scripts/.gitignore
index 6518c0f..53f46d9 100644
--- a/scripts/.gitignore
+++ b/scripts/.gitignore
@@ -8,5 +8,4 @@ mk-am35xx-spi-image
 mkimage
 mkublheader
 omap_signGP
-omap4_usbboot
 zynq_mkimage
diff --git a/scripts/Makefile b/scripts/Makefile
index adc786e..63ace75 100644
--- a/scripts/Makefile
+++ b/scripts/Makefile
@@ -16,16 +16,13 @@ hostprogs-$(CONFIG_ARCH_DAVINCI) += mkublheader
 hostprogs-$(CONFIG_ARCH_ZYNQ)	 += zynq_mkimage
 
 subdir-y			+= mod
+subdir-$(CONFIG_OMAP4_USBBOOT)	+= omap4_usbboot
 subdir-$(CONFIG_ARCH_IMX)	+= imx
 subdir-$(CONFIG_X86)		+= setupmbr
 subdir-$(CONFIG_DTC)		+= dtc
 
 targetprogs-y += bareboxenv-target
 
-HOSTLOADLIBES_omap4_usbboot = -lpthread
-omap4_usbboot-objs               := usb_linux.o omap4_usbboot.o
-hostprogs-$(CONFIG_OMAP4_USBBOOT)+= omap4_usbboot
-
 # Let clean descend into subdirs
 subdir-	+= basic kconfig setupmbr
 
diff --git a/scripts/omap4_usbboot.c b/scripts/omap4_usbboot.c
deleted file mode 100644
index e521086..0000000
--- a/scripts/omap4_usbboot.c
+++ /dev/null
@@ -1,430 +0,0 @@
-/*
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- */
-
-#include <stdio.h>
-#include <stdlib.h>
-#include <unistd.h>
-#include <sys/stat.h>
-#include <stdint.h>
-#include <fcntl.h>
-#include <string.h>
-#include <sys/mman.h>
-#include <pthread.h>
-#include <termios.h>
-
-#include "usb.h"
-
-#define USBBOOT_FS_MAGIC     0x5562464D
-#define USBBOOT_FS_CMD_OPEN  0x46530000
-#define USBBOOT_FS_CMD_CLOSE 0x46530001
-#define USBBOOT_FS_CMD_READ  0x46530002
-#define USBBOOT_FS_CMD_END   0x4653FFFF
-#define MAX_OPEN_FILES       128
-
-#define RESET   0
-#define BRIGHT  1
-#define WHITE   8
-#define RED     1
-#define BLACK   0
-#define FORMAT        "%c[%d;%d;%dm"
-#define TARGET_FORMAT 0x1B, BRIGHT, RED+30, BLACK+40
-#define HOST_FORMAT   0x1B, RESET, WHITE+30, BLACK+40
-#define host_print(fmt, arg...)	printf(FORMAT fmt FORMAT, \
-					HOST_FORMAT, ##arg, TARGET_FORMAT)
-
-void panic(struct termios *t_restore)
-{
-	tcsetattr(STDIN_FILENO, TCSANOW, t_restore);
-	printf(FORMAT, HOST_FORMAT);
-	exit(1);
-}
-
-struct thread_vars {
-	struct usb_handle *usb;
-	pthread_mutex_t usb_mutex;
-	struct termios t_restore;
-};
-
-void *listenerTask(void *argument)
-{
-	struct thread_vars *vars = argument;
-	int c;
-	for (;;) {
-		c = getchar();
-		if (c == EOF)
-			return NULL;
-		pthread_mutex_lock(&vars->usb_mutex);
-		if (usb_write(vars->usb, &c, 4) != 4) {
-			host_print("could not send '%c' to target\n", c);
-			panic(&vars->t_restore);
-		}
-		pthread_mutex_unlock(&vars->usb_mutex);
-	}
-	return NULL;
-}
-
-int read_asic_id(struct usb_handle *usb)
-{
-#define LINEWIDTH 16
-	const uint32_t msg_getid = 0xF0030003;
-	int i, j, k, ret;
-	uint8_t id[81];
-	char line[LINEWIDTH*3+5];
-
-	printf("reading ASIC ID\n");
-	memset(id , 0xee, sizeof(id));
-	if (usb_write(usb, &msg_getid, sizeof(msg_getid)) !=
-		sizeof(msg_getid)
-	) {
-		printf("Could not send msg_getid request\n");
-		return -1;
-	}
-	if (usb_read(usb, id, sizeof(id)) != sizeof(id)) {
-		printf("Could not read msg_getid answer\n");
-		return -1;
-	}
-	for (i = 0; i < sizeof(id); i += LINEWIDTH) {
-		sprintf(line, "%02X: ", i);
-		for (j = 0; j < LINEWIDTH && j < sizeof(id)-i; j++)
-			sprintf(line+4+j*3, "%02X ", id[i+j]);
-		line[4+j*3] = 0;
-		puts(line);
-	}
-	ret = 0;
-	for (i = 1, j = 0; i < sizeof(id) && j < id[0]; i += 2+id[i+1], j++) {
-		if (i+2+id[i+1] > sizeof(id)) {
-			printf("Truncated subblock\n");
-			ret++;
-			continue;
-		}
-		switch (id[i]) {
-		case 0x01: /* ID subblock */
-			if (id[i+1] != 0x05) {
-				printf("Unexpected ID subblock size\n");
-				ret++;
-				continue;
-			}
-			if (id[i+2] != 0x01)
-				printf("Unexpected fixed value\n");
-			k = (id[i+3]<<8) | id[i+4];
-			switch (k) {
-			case 0x4440:
-				printf("OMAP 4460 Device\n");
-				break;
-			default:
-				printf("Unknown Device\n");
-				break;
-			}
-			switch (id[i+5]) {
-			case 0x07:
-				printf("CH enabled (read from eFuse)\n");
-				break;
-			case 0x17:
-				printf("CH disabled (read from eFuse)\n");
-				break;
-			default:
-				printf("Unknown CH setting\n");
-				break;
-			}
-			printf("Rom version: %hhu\n", id[i+6]);
-			break;
-		case 0x15: /* Checksum subblock */
-			if (id[i+1] != 0x09) {
-				printf("Unexpected Checksum subblock size\n");
-				ret++;
-				continue;
-			}
-			if (id[i+2] != 0x01)
-				printf("Unexpected fixed value\n");
-			k = (id[i+3]<<24) | (id[i+4]<<16) |
-				(id[i+5]<<8) | id[i+6];
-			printf("Rom CRC: 0x%08X\n", k);
-			k = (id[i+7]<<24) | (id[i+8]<<16) |
-				(id[i+9]<<8) | id[i+10];
-			switch (k) {
-			case  0:
-				printf("A GP device\n");
-				break;
-			default:
-				printf("Unknown device\n");
-				break;
-			}
-			break;
-		}
-	}
-	if (i != sizeof(id) || j != id[0]) {
-		printf("Unexpected ASIC ID structure size.\n");
-		ret++;
-	}
-	return ret;
-}
-
-struct file_data {
-	size_t size;
-	void *data;
-};
-
-int process_file(struct usb_handle *usb, const char *rootfs,
-	struct file_data *fd_vector, struct termios *t_restore)
-{
-	uint32_t i, j, pos, size;
-	struct stat s;
-	int fd, ret;
-	char fname[256];
-
-	if (usb_read(usb, &i, 4) != 4) {
-		host_print("USB error\n");
-		panic(t_restore);
-	}
-	ret = 0;
-	switch (i) {
-	case USBBOOT_FS_CMD_OPEN:
-		for (j = 0; rootfs[j]; j++)
-			fname[j] = rootfs[j];
-		for (;; j++) {
-			if (usb_read(usb, &i, 4) != 4) {
-				host_print("USB error\n");
-				panic(t_restore);
-			}
-			if (i == USBBOOT_FS_CMD_END) {
-				fname[j] = 0;
-				break;
-			} else if (i > 0xFF) {
-				host_print("Error in filename\n");
-				ret++;
-				fname[j] = 0;
-				break;
-			} else
-				fname[j] = i;
-		}
-		for (i = 0; i < MAX_OPEN_FILES && fd_vector[i].data; i++)
-			;
-		if (i >= MAX_OPEN_FILES) {
-			host_print("MAX_OPEN_FILES exceeded\n");
-			ret++;
-			goto open_error_1;
-		}
-		fd = open(fname, O_RDONLY);
-		if (fd < 0) {
-			host_print("cannot open '%s'\n", fname);
-			ret++;
-			goto open_error_1;
-		}
-		if (fstat(fd, &s)) {
-			host_print("cannot stat '%s'\n", fname);
-			ret++;
-			goto open_error_2;
-		}
-		fd_vector[i].data = mmap(NULL, s.st_size, PROT_READ,
-			MAP_PRIVATE, fd, 0);
-		if (fd_vector[i].data == MAP_FAILED) {
-			host_print("cannot mmap '%s'\n", fname);
-			ret++;
-			goto open_error_2;
-		}
-		close(fd);
-		fd_vector[i].size = size = s.st_size;
-		fd = i;
-		goto open_ok;
-
-open_error_2:
-		close(fd);
-open_error_1:
-		fd_vector[i].size = size = 0;
-		fd_vector[i].data = NULL;
-		fd = -1;
-open_ok:
-		if (usb_write(usb, &fd, 4) != 4 ||
-			usb_write(usb, &size, 4) != 4
-		) {
-			host_print("could not send file size to target\n");
-			panic(t_restore);
-		}
-		break;
-	case USBBOOT_FS_CMD_CLOSE:
-		if (usb_read(usb, &i, 4) != 4) {
-			host_print("USB error\n");
-			panic(t_restore);
-		}
-		if (i >= MAX_OPEN_FILES || !fd_vector[i].data) {
-			host_print("invalid close index\n");
-			ret++;
-			break;
-		}
-		if (usb_read(usb, &j, 4) != 4) {
-			host_print("USB error\n");
-			panic(t_restore);
-		}
-		if (j != USBBOOT_FS_CMD_END) {
-			host_print("invalid close\n");
-			ret++;
-			break;
-		}
-		munmap(fd_vector[i].data, fd_vector[i].size);
-		fd_vector[i].data = NULL;
-		break;
-	case USBBOOT_FS_CMD_READ:
-		if (usb_read(usb, &i, 4) != 4) {
-			host_print("USB error\n");
-			panic(t_restore);
-		}
-		if (i >= MAX_OPEN_FILES || !fd_vector[i].data) {
-			host_print("invalid read index\n");
-			ret++;
-			break;
-		}
-		if (usb_read(usb, &pos, 4) != 4) {
-			host_print("USB error\n");
-			panic(t_restore);
-		}
-		if (pos >= fd_vector[i].size) {
-			host_print("invalid read pos\n");
-			ret++;
-			break;
-		}
-		if (usb_read(usb, &size, 4) != 4) {
-			host_print("USB error\n");
-			panic(t_restore);
-		}
-		if (pos+size > fd_vector[i].size) {
-			host_print("invalid read size\n");
-			ret++;
-			break;
-		}
-		if (usb_read(usb, &j, 4) != 4) {
-			host_print("USB error\n");
-			panic(t_restore);
-		}
-		if (j != USBBOOT_FS_CMD_END) {
-			host_print("invalid read\n");
-			ret++;
-			break;
-		}
-		if (usb_write(usb, fd_vector[i].data+pos, size) != size) {
-			host_print("could not send file to target\n");
-			panic(t_restore);
-		}
-		break;
-	case USBBOOT_FS_CMD_END:
-	default:
-		host_print("Unknown filesystem command\n");
-		ret++;
-		break;
-	}
-	return ret;
-}
-
-int usb_boot(
-	struct usb_handle *usb, void *data, unsigned sz, const char *rootfs)
-{
-	const uint32_t msg_boot  = 0xF0030002;
-	uint32_t msg_size = sz;
-	int i;
-	pthread_t thread;
-	struct thread_vars vars;
-	struct termios tn;
-	struct file_data fd_vector[MAX_OPEN_FILES];
-
-	if (read_asic_id(usb))
-		return -1;
-
-	printf("sending xload to target...\n");
-	usleep(1000);
-	usb_write(usb, &msg_boot, sizeof(msg_boot));
-	usleep(1000);
-	usb_write(usb, &msg_size, sizeof(msg_size));
-	usleep(1000);
-	usb_write(usb, data, sz);
-	usleep(100000);
-	munmap(data, msg_size);
-	for (i = 0; i < MAX_OPEN_FILES; i++)
-		fd_vector[i].data = NULL;
-
-	vars.usb = usb;
-	pthread_mutex_init(&vars.usb_mutex, NULL);
-	tcgetattr(STDIN_FILENO, &vars.t_restore);
-	tn = vars.t_restore;
-	tn.c_lflag &= ~(ICANON | ECHO);
-	printf(FORMAT, TARGET_FORMAT);
-	tcsetattr(STDIN_FILENO, TCSANOW, &tn);
-	if (pthread_create(&thread, NULL, listenerTask, &vars))
-		host_print("listenerTask failed\n");
-	for (;;) {
-		usleep(100);
-		if (usb_read(usb, &i, 4) != 4)
-			break;
-		if (i == USBBOOT_FS_MAGIC) {
-			usleep(100);
-			pthread_mutex_lock(&vars.usb_mutex);
-			process_file(usb, rootfs, fd_vector, &vars.t_restore);
-			pthread_mutex_unlock(&vars.usb_mutex);
-			continue;
-		}
-		printf("%c", i);
-		fflush(stdout);
-	}
-	usb_close(usb);
-	pthread_mutex_destroy(&vars.usb_mutex);
-	tcsetattr(STDIN_FILENO, TCSANOW, &vars.t_restore);
-	printf(FORMAT, HOST_FORMAT);
-	return 0;
-}
-
-int match_omap4_bootloader(struct usb_ifc_info *ifc)
-{
-	if (ifc->dev_vendor != 0x0451)
-		return -1;
-	if ((ifc->dev_product != 0xD010) && (ifc->dev_product != 0xD00F))
-		return -1;
-	return 0;
-}
-
-int main(int argc, char **argv)
-{
-	void *data;
-	unsigned sz;
-	struct stat s;
-	int fd;
-	struct usb_handle *usb;
-	int once;
-
-	if (argc != 3) {
-		printf("usage: %s <xloader> <rootfs>\n", argv[0]);
-		return 0;
-	}
-	argv++;
-	fd = open(argv[0], O_RDONLY);
-	if (fd < 0 || fstat(fd, &s)) {
-		printf("cannot open '%s'\n", argv[0]);
-		return -1;
-	}
-	data = mmap(NULL, s.st_size, PROT_READ, MAP_PRIVATE, fd, 0);
-	if (data == MAP_FAILED) {
-		printf("cannot mmap '%s'\n", argv[0]);
-		return -1;
-	}
-	sz = s.st_size;
-	close(fd);
-	argv++;
-	printf(FORMAT, HOST_FORMAT);
-	for (once = 1;;) {
-		usb = usb_open(match_omap4_bootloader);
-		if (usb)
-			return usb_boot(usb, data, sz, argv[0]);
-		if (once) {
-			once = 0;
-			printf("waiting for OMAP44xx device...\n");
-		}
-		usleep(250000);
-	}
-	return -1;
-}
diff --git a/scripts/omap4_usbboot/.gitignore b/scripts/omap4_usbboot/.gitignore
new file mode 100644
index 0000000..1975a21
--- /dev/null
+++ b/scripts/omap4_usbboot/.gitignore
@@ -0,0 +1 @@
+omap4_usbboot
diff --git a/scripts/omap4_usbboot/Makefile b/scripts/omap4_usbboot/Makefile
new file mode 100644
index 0000000..af6444b
--- /dev/null
+++ b/scripts/omap4_usbboot/Makefile
@@ -0,0 +1,5 @@
+HOSTLOADLIBES_omap4_usbboot = -lpthread
+omap4_usbboot-objs := usb_linux.o omap4_usbboot.o
+hostprogs-$(CONFIG_OMAP4_USBBOOT) += omap4_usbboot
+
+always	:= $(hostprogs-y)
diff --git a/scripts/omap4_usbboot/omap4_usbboot.c b/scripts/omap4_usbboot/omap4_usbboot.c
new file mode 100644
index 0000000..e521086
--- /dev/null
+++ b/scripts/omap4_usbboot/omap4_usbboot.c
@@ -0,0 +1,430 @@
+/*
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ */
+
+#include <stdio.h>
+#include <stdlib.h>
+#include <unistd.h>
+#include <sys/stat.h>
+#include <stdint.h>
+#include <fcntl.h>
+#include <string.h>
+#include <sys/mman.h>
+#include <pthread.h>
+#include <termios.h>
+
+#include "usb.h"
+
+#define USBBOOT_FS_MAGIC     0x5562464D
+#define USBBOOT_FS_CMD_OPEN  0x46530000
+#define USBBOOT_FS_CMD_CLOSE 0x46530001
+#define USBBOOT_FS_CMD_READ  0x46530002
+#define USBBOOT_FS_CMD_END   0x4653FFFF
+#define MAX_OPEN_FILES       128
+
+#define RESET   0
+#define BRIGHT  1
+#define WHITE   8
+#define RED     1
+#define BLACK   0
+#define FORMAT        "%c[%d;%d;%dm"
+#define TARGET_FORMAT 0x1B, BRIGHT, RED+30, BLACK+40
+#define HOST_FORMAT   0x1B, RESET, WHITE+30, BLACK+40
+#define host_print(fmt, arg...)	printf(FORMAT fmt FORMAT, \
+					HOST_FORMAT, ##arg, TARGET_FORMAT)
+
+void panic(struct termios *t_restore)
+{
+	tcsetattr(STDIN_FILENO, TCSANOW, t_restore);
+	printf(FORMAT, HOST_FORMAT);
+	exit(1);
+}
+
+struct thread_vars {
+	struct usb_handle *usb;
+	pthread_mutex_t usb_mutex;
+	struct termios t_restore;
+};
+
+void *listenerTask(void *argument)
+{
+	struct thread_vars *vars = argument;
+	int c;
+	for (;;) {
+		c = getchar();
+		if (c == EOF)
+			return NULL;
+		pthread_mutex_lock(&vars->usb_mutex);
+		if (usb_write(vars->usb, &c, 4) != 4) {
+			host_print("could not send '%c' to target\n", c);
+			panic(&vars->t_restore);
+		}
+		pthread_mutex_unlock(&vars->usb_mutex);
+	}
+	return NULL;
+}
+
+int read_asic_id(struct usb_handle *usb)
+{
+#define LINEWIDTH 16
+	const uint32_t msg_getid = 0xF0030003;
+	int i, j, k, ret;
+	uint8_t id[81];
+	char line[LINEWIDTH*3+5];
+
+	printf("reading ASIC ID\n");
+	memset(id , 0xee, sizeof(id));
+	if (usb_write(usb, &msg_getid, sizeof(msg_getid)) !=
+		sizeof(msg_getid)
+	) {
+		printf("Could not send msg_getid request\n");
+		return -1;
+	}
+	if (usb_read(usb, id, sizeof(id)) != sizeof(id)) {
+		printf("Could not read msg_getid answer\n");
+		return -1;
+	}
+	for (i = 0; i < sizeof(id); i += LINEWIDTH) {
+		sprintf(line, "%02X: ", i);
+		for (j = 0; j < LINEWIDTH && j < sizeof(id)-i; j++)
+			sprintf(line+4+j*3, "%02X ", id[i+j]);
+		line[4+j*3] = 0;
+		puts(line);
+	}
+	ret = 0;
+	for (i = 1, j = 0; i < sizeof(id) && j < id[0]; i += 2+id[i+1], j++) {
+		if (i+2+id[i+1] > sizeof(id)) {
+			printf("Truncated subblock\n");
+			ret++;
+			continue;
+		}
+		switch (id[i]) {
+		case 0x01: /* ID subblock */
+			if (id[i+1] != 0x05) {
+				printf("Unexpected ID subblock size\n");
+				ret++;
+				continue;
+			}
+			if (id[i+2] != 0x01)
+				printf("Unexpected fixed value\n");
+			k = (id[i+3]<<8) | id[i+4];
+			switch (k) {
+			case 0x4440:
+				printf("OMAP 4460 Device\n");
+				break;
+			default:
+				printf("Unknown Device\n");
+				break;
+			}
+			switch (id[i+5]) {
+			case 0x07:
+				printf("CH enabled (read from eFuse)\n");
+				break;
+			case 0x17:
+				printf("CH disabled (read from eFuse)\n");
+				break;
+			default:
+				printf("Unknown CH setting\n");
+				break;
+			}
+			printf("Rom version: %hhu\n", id[i+6]);
+			break;
+		case 0x15: /* Checksum subblock */
+			if (id[i+1] != 0x09) {
+				printf("Unexpected Checksum subblock size\n");
+				ret++;
+				continue;
+			}
+			if (id[i+2] != 0x01)
+				printf("Unexpected fixed value\n");
+			k = (id[i+3]<<24) | (id[i+4]<<16) |
+				(id[i+5]<<8) | id[i+6];
+			printf("Rom CRC: 0x%08X\n", k);
+			k = (id[i+7]<<24) | (id[i+8]<<16) |
+				(id[i+9]<<8) | id[i+10];
+			switch (k) {
+			case  0:
+				printf("A GP device\n");
+				break;
+			default:
+				printf("Unknown device\n");
+				break;
+			}
+			break;
+		}
+	}
+	if (i != sizeof(id) || j != id[0]) {
+		printf("Unexpected ASIC ID structure size.\n");
+		ret++;
+	}
+	return ret;
+}
+
+struct file_data {
+	size_t size;
+	void *data;
+};
+
+int process_file(struct usb_handle *usb, const char *rootfs,
+	struct file_data *fd_vector, struct termios *t_restore)
+{
+	uint32_t i, j, pos, size;
+	struct stat s;
+	int fd, ret;
+	char fname[256];
+
+	if (usb_read(usb, &i, 4) != 4) {
+		host_print("USB error\n");
+		panic(t_restore);
+	}
+	ret = 0;
+	switch (i) {
+	case USBBOOT_FS_CMD_OPEN:
+		for (j = 0; rootfs[j]; j++)
+			fname[j] = rootfs[j];
+		for (;; j++) {
+			if (usb_read(usb, &i, 4) != 4) {
+				host_print("USB error\n");
+				panic(t_restore);
+			}
+			if (i == USBBOOT_FS_CMD_END) {
+				fname[j] = 0;
+				break;
+			} else if (i > 0xFF) {
+				host_print("Error in filename\n");
+				ret++;
+				fname[j] = 0;
+				break;
+			} else
+				fname[j] = i;
+		}
+		for (i = 0; i < MAX_OPEN_FILES && fd_vector[i].data; i++)
+			;
+		if (i >= MAX_OPEN_FILES) {
+			host_print("MAX_OPEN_FILES exceeded\n");
+			ret++;
+			goto open_error_1;
+		}
+		fd = open(fname, O_RDONLY);
+		if (fd < 0) {
+			host_print("cannot open '%s'\n", fname);
+			ret++;
+			goto open_error_1;
+		}
+		if (fstat(fd, &s)) {
+			host_print("cannot stat '%s'\n", fname);
+			ret++;
+			goto open_error_2;
+		}
+		fd_vector[i].data = mmap(NULL, s.st_size, PROT_READ,
+			MAP_PRIVATE, fd, 0);
+		if (fd_vector[i].data == MAP_FAILED) {
+			host_print("cannot mmap '%s'\n", fname);
+			ret++;
+			goto open_error_2;
+		}
+		close(fd);
+		fd_vector[i].size = size = s.st_size;
+		fd = i;
+		goto open_ok;
+
+open_error_2:
+		close(fd);
+open_error_1:
+		fd_vector[i].size = size = 0;
+		fd_vector[i].data = NULL;
+		fd = -1;
+open_ok:
+		if (usb_write(usb, &fd, 4) != 4 ||
+			usb_write(usb, &size, 4) != 4
+		) {
+			host_print("could not send file size to target\n");
+			panic(t_restore);
+		}
+		break;
+	case USBBOOT_FS_CMD_CLOSE:
+		if (usb_read(usb, &i, 4) != 4) {
+			host_print("USB error\n");
+			panic(t_restore);
+		}
+		if (i >= MAX_OPEN_FILES || !fd_vector[i].data) {
+			host_print("invalid close index\n");
+			ret++;
+			break;
+		}
+		if (usb_read(usb, &j, 4) != 4) {
+			host_print("USB error\n");
+			panic(t_restore);
+		}
+		if (j != USBBOOT_FS_CMD_END) {
+			host_print("invalid close\n");
+			ret++;
+			break;
+		}
+		munmap(fd_vector[i].data, fd_vector[i].size);
+		fd_vector[i].data = NULL;
+		break;
+	case USBBOOT_FS_CMD_READ:
+		if (usb_read(usb, &i, 4) != 4) {
+			host_print("USB error\n");
+			panic(t_restore);
+		}
+		if (i >= MAX_OPEN_FILES || !fd_vector[i].data) {
+			host_print("invalid read index\n");
+			ret++;
+			break;
+		}
+		if (usb_read(usb, &pos, 4) != 4) {
+			host_print("USB error\n");
+			panic(t_restore);
+		}
+		if (pos >= fd_vector[i].size) {
+			host_print("invalid read pos\n");
+			ret++;
+			break;
+		}
+		if (usb_read(usb, &size, 4) != 4) {
+			host_print("USB error\n");
+			panic(t_restore);
+		}
+		if (pos+size > fd_vector[i].size) {
+			host_print("invalid read size\n");
+			ret++;
+			break;
+		}
+		if (usb_read(usb, &j, 4) != 4) {
+			host_print("USB error\n");
+			panic(t_restore);
+		}
+		if (j != USBBOOT_FS_CMD_END) {
+			host_print("invalid read\n");
+			ret++;
+			break;
+		}
+		if (usb_write(usb, fd_vector[i].data+pos, size) != size) {
+			host_print("could not send file to target\n");
+			panic(t_restore);
+		}
+		break;
+	case USBBOOT_FS_CMD_END:
+	default:
+		host_print("Unknown filesystem command\n");
+		ret++;
+		break;
+	}
+	return ret;
+}
+
+int usb_boot(
+	struct usb_handle *usb, void *data, unsigned sz, const char *rootfs)
+{
+	const uint32_t msg_boot  = 0xF0030002;
+	uint32_t msg_size = sz;
+	int i;
+	pthread_t thread;
+	struct thread_vars vars;
+	struct termios tn;
+	struct file_data fd_vector[MAX_OPEN_FILES];
+
+	if (read_asic_id(usb))
+		return -1;
+
+	printf("sending xload to target...\n");
+	usleep(1000);
+	usb_write(usb, &msg_boot, sizeof(msg_boot));
+	usleep(1000);
+	usb_write(usb, &msg_size, sizeof(msg_size));
+	usleep(1000);
+	usb_write(usb, data, sz);
+	usleep(100000);
+	munmap(data, msg_size);
+	for (i = 0; i < MAX_OPEN_FILES; i++)
+		fd_vector[i].data = NULL;
+
+	vars.usb = usb;
+	pthread_mutex_init(&vars.usb_mutex, NULL);
+	tcgetattr(STDIN_FILENO, &vars.t_restore);
+	tn = vars.t_restore;
+	tn.c_lflag &= ~(ICANON | ECHO);
+	printf(FORMAT, TARGET_FORMAT);
+	tcsetattr(STDIN_FILENO, TCSANOW, &tn);
+	if (pthread_create(&thread, NULL, listenerTask, &vars))
+		host_print("listenerTask failed\n");
+	for (;;) {
+		usleep(100);
+		if (usb_read(usb, &i, 4) != 4)
+			break;
+		if (i == USBBOOT_FS_MAGIC) {
+			usleep(100);
+			pthread_mutex_lock(&vars.usb_mutex);
+			process_file(usb, rootfs, fd_vector, &vars.t_restore);
+			pthread_mutex_unlock(&vars.usb_mutex);
+			continue;
+		}
+		printf("%c", i);
+		fflush(stdout);
+	}
+	usb_close(usb);
+	pthread_mutex_destroy(&vars.usb_mutex);
+	tcsetattr(STDIN_FILENO, TCSANOW, &vars.t_restore);
+	printf(FORMAT, HOST_FORMAT);
+	return 0;
+}
+
+int match_omap4_bootloader(struct usb_ifc_info *ifc)
+{
+	if (ifc->dev_vendor != 0x0451)
+		return -1;
+	if ((ifc->dev_product != 0xD010) && (ifc->dev_product != 0xD00F))
+		return -1;
+	return 0;
+}
+
+int main(int argc, char **argv)
+{
+	void *data;
+	unsigned sz;
+	struct stat s;
+	int fd;
+	struct usb_handle *usb;
+	int once;
+
+	if (argc != 3) {
+		printf("usage: %s <xloader> <rootfs>\n", argv[0]);
+		return 0;
+	}
+	argv++;
+	fd = open(argv[0], O_RDONLY);
+	if (fd < 0 || fstat(fd, &s)) {
+		printf("cannot open '%s'\n", argv[0]);
+		return -1;
+	}
+	data = mmap(NULL, s.st_size, PROT_READ, MAP_PRIVATE, fd, 0);
+	if (data == MAP_FAILED) {
+		printf("cannot mmap '%s'\n", argv[0]);
+		return -1;
+	}
+	sz = s.st_size;
+	close(fd);
+	argv++;
+	printf(FORMAT, HOST_FORMAT);
+	for (once = 1;;) {
+		usb = usb_open(match_omap4_bootloader);
+		if (usb)
+			return usb_boot(usb, data, sz, argv[0]);
+		if (once) {
+			once = 0;
+			printf("waiting for OMAP44xx device...\n");
+		}
+		usleep(250000);
+	}
+	return -1;
+}
diff --git a/scripts/omap4_usbboot/usb.h b/scripts/omap4_usbboot/usb.h
new file mode 100644
index 0000000..d50aa6a
--- /dev/null
+++ b/scripts/omap4_usbboot/usb.h
@@ -0,0 +1,61 @@
+/*
+ * Copyright (C) 2008 The Android Open Source Project
+ * All rights reserved.
+ *
+ * Redistribution and use in source and binary forms, with or without
+ * modification, are permitted provided that the following conditions
+ * are met:
+ *  * Redistributions of source code must retain the above copyright
+ *    notice, this list of conditions and the following disclaimer.
+ *  * Redistributions in binary form must reproduce the above copyright
+ *    notice, this list of conditions and the following disclaimer in
+ *    the documentation and/or other materials provided with the
+ *    distribution.
+ *
+ * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
+ * "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
+ * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
+ * FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
+ * COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
+ * INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
+ * BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS
+ * OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED
+ * AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
+ * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT
+ * OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
+ * SUCH DAMAGE.
+ */
+
+#ifndef _USB_H_
+#define _USB_H_
+
+struct usb_ifc_info {
+	/* from device descriptor */
+	unsigned short dev_vendor;
+	unsigned short dev_product;
+
+	unsigned char dev_class;
+	unsigned char dev_subclass;
+	unsigned char dev_protocol;
+
+	unsigned char ifc_class;
+	unsigned char ifc_subclass;
+	unsigned char ifc_protocol;
+
+	unsigned char has_bulk_in;
+	unsigned char has_bulk_out;
+
+	unsigned char writable;
+
+	char serial_number[256];
+};
+
+typedef int (*ifc_match_func)(struct usb_ifc_info *ifc);
+
+struct usb_handle *usb_open(ifc_match_func callback);
+int usb_close(struct usb_handle *h);
+int usb_read(struct usb_handle *h, void *_data, int len);
+int usb_write(struct usb_handle *h, const void *_data, int len);
+
+
+#endif
diff --git a/scripts/omap4_usbboot/usb_linux.c b/scripts/omap4_usbboot/usb_linux.c
new file mode 100644
index 0000000..9a6e0b8
--- /dev/null
+++ b/scripts/omap4_usbboot/usb_linux.c
@@ -0,0 +1,397 @@
+/*
+ * Copyright (C) 2008 The Android Open Source Project
+ * All rights reserved.
+ *
+ * Redistribution and use in source and binary forms, with or without
+ * modification, are permitted provided that the following conditions
+ * are met:
+ *  * Redistributions of source code must retain the above copyright
+ *    notice, this list of conditions and the following disclaimer.
+ *  * Redistributions in binary form must reproduce the above copyright
+ *    notice, this list of conditions and the following disclaimer in
+ *    the documentation and/or other materials provided with the
+ *    distribution.
+ *
+ * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
+ * "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
+ * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
+ * FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
+ * COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
+ * INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
+ * BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS
+ * OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED
+ * AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
+ * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT
+ * OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
+ * SUCH DAMAGE.
+ */
+
+#include <stdio.h>
+#include <stdlib.h>
+#include <unistd.h>
+#include <string.h>
+
+#include <sys/ioctl.h>
+#include <sys/types.h>
+#include <dirent.h>
+#include <fcntl.h>
+#include <errno.h>
+#include <pthread.h>
+#include <ctype.h>
+
+#include <linux/usbdevice_fs.h>
+#include <linux/usbdevice_fs.h>
+#include <linux/version.h>
+#include <linux/usb/ch9.h>
+#include <asm/byteorder.h>
+
+#include "usb.h"
+
+#define MAX_RETRIES 2
+
+#ifdef TRACE_USB
+#define DBG1(x...) fprintf(stderr, x)
+#define DBG(x...) fprintf(stderr, x)
+#else
+#define DBG(x...)
+#define DBG1(x...)
+#endif
+
+struct usb_handle {
+	char fname[64];
+	int desc;
+	unsigned char ep_in;
+	unsigned char ep_out;
+};
+
+static inline int badname(const char *name)
+{
+	while (*name) {
+		if (!isdigit(*name++))
+			return 1;
+	}
+	return 0;
+}
+
+static int check(void *_desc, int len, unsigned type, int size)
+{
+	unsigned char *desc = _desc;
+
+	if (len < size)
+		return -1;
+	if (desc[0] < size)
+		return -1;
+	if (desc[0] > len)
+		return -1;
+	if (desc[1] != type)
+		return -1;
+
+	return 0;
+}
+
+static int filter_usb_device(int fd, char *ptr, int len, int writable,
+	ifc_match_func callback, int *ept_in_id, int *ept_out_id, int *ifc_id)
+{
+	struct usb_device_descriptor *dev;
+	struct usb_config_descriptor *cfg;
+	struct usb_interface_descriptor *ifc;
+	struct usb_endpoint_descriptor *ept;
+	struct usb_ifc_info info;
+
+	int in, out;
+	unsigned i;
+	unsigned e;
+
+	if (check(ptr, len, USB_DT_DEVICE, USB_DT_DEVICE_SIZE))
+		return -1;
+	dev = (void *) ptr;
+	len -= dev->bLength;
+	ptr += dev->bLength;
+
+	if (check(ptr, len, USB_DT_CONFIG, USB_DT_CONFIG_SIZE))
+		return -1;
+	cfg = (void *) ptr;
+	len -= cfg->bLength;
+	ptr += cfg->bLength;
+
+	info.dev_vendor = dev->idVendor;
+	info.dev_product = dev->idProduct;
+	info.dev_class = dev->bDeviceClass;
+	info.dev_subclass = dev->bDeviceSubClass;
+	info.dev_protocol = dev->bDeviceProtocol;
+	info.writable = writable;
+
+	/* read device serial number (if there is one) */
+	info.serial_number[0] = 0;
+	if (dev->iSerialNumber) {
+		struct usbdevfs_ctrltransfer  ctrl;
+		__u16 buffer[128];
+		int result;
+
+		memset(buffer, 0, sizeof(buffer));
+
+		ctrl.bRequestType = USB_DIR_IN|
+			USB_TYPE_STANDARD|USB_RECIP_DEVICE;
+		ctrl.bRequest = USB_REQ_GET_DESCRIPTOR;
+		ctrl.wValue = (USB_DT_STRING << 8) | dev->iSerialNumber;
+		ctrl.wIndex = 0;
+		ctrl.wLength = sizeof(buffer);
+		ctrl.data = buffer;
+		ctrl.timeout = 50;
+
+		result = ioctl(fd, USBDEVFS_CONTROL, &ctrl);
+		if (result > 0) {
+			int i;
+			/* skip first word, and copy the rest to the serial
+			string, changing shorts to bytes. */
+			result /= 2;
+			for (i = 1; i < result; i++)
+				info.serial_number[i - 1] = buffer[i];
+			info.serial_number[i - 1] = 0;
+		}
+	}
+
+	for (i = 0; i < cfg->bNumInterfaces; i++) {
+		if (check(ptr, len, USB_DT_INTERFACE, USB_DT_INTERFACE_SIZE))
+			return -1;
+		ifc = (void *) ptr;
+		len -= ifc->bLength;
+		ptr += ifc->bLength;
+
+		in = -1;
+		out = -1;
+		info.ifc_class = ifc->bInterfaceClass;
+		info.ifc_subclass = ifc->bInterfaceSubClass;
+		info.ifc_protocol = ifc->bInterfaceProtocol;
+
+		for (e = 0; e < ifc->bNumEndpoints; e++) {
+			if (check(ptr, len, USB_DT_ENDPOINT,
+				USB_DT_ENDPOINT_SIZE)
+			)
+				return -1;
+			ept = (void *) ptr;
+			len -= ept->bLength;
+			ptr += ept->bLength;
+
+			if ((ept->bmAttributes & 0x03) != 0x02)
+				continue;
+
+			if (ept->bEndpointAddress & 0x80)
+				in = ept->bEndpointAddress;
+			else
+				out = ept->bEndpointAddress;
+		}
+
+		info.has_bulk_in = (in != -1);
+		info.has_bulk_out = (out != -1);
+
+		if (callback(&info) == 0) {
+			*ept_in_id = in;
+			*ept_out_id = out;
+			*ifc_id = ifc->bInterfaceNumber;
+			return 0;
+		}
+	}
+
+	return -1;
+}
+
+static struct usb_handle *find_usb_device(
+	const char *base, ifc_match_func callback)
+{
+	struct usb_handle *usb = 0;
+	char busname[64], devname[64];
+	char desc[1024];
+	int n, in, out, ifc;
+
+	DIR *busdir, *devdir;
+	struct dirent *de;
+	int fd;
+	int writable;
+
+	busdir = opendir(base);
+	if (busdir == 0)
+		return 0;
+
+	while ((de = readdir(busdir)) && (usb == 0)) {
+		if (badname(de->d_name))
+			continue;
+
+		sprintf(busname, "%s/%s", base, de->d_name);
+		devdir = opendir(busname);
+		if (devdir == 0)
+			continue;
+
+		/* DBG("[ scanning %s ]\n", busname); */
+		while ((de = readdir(devdir)) && (usb == 0)) {
+
+			if (badname(de->d_name))
+				continue;
+			sprintf(devname, "%s/%s", busname, de->d_name);
+
+			/* DBG("[ scanning %s ]\n", devname); */
+			writable = 1;
+			fd = open(devname, O_RDWR);
+			if (fd < 0) {
+				/* Check if we have read-only access,
+				so we can give a helpful diagnostic
+				like "adb devices" does. */
+				writable = 0;
+				fd = open(devname, O_RDONLY);
+				if (fd < 0)
+					continue;
+			}
+
+			n = read(fd, desc, sizeof(desc));
+
+			if (filter_usb_device(fd, desc, n, writable,
+				callback, &in, &out, &ifc) == 0
+			) {
+				usb = calloc(1, sizeof(struct usb_handle));
+				strcpy(usb->fname, devname);
+				usb->ep_in = in;
+				usb->ep_out = out;
+				usb->desc = fd;
+
+				n = ioctl(fd, USBDEVFS_CLAIMINTERFACE, &ifc);
+				if (n != 0) {
+					close(fd);
+					free(usb);
+					usb = 0;
+					continue;
+				}
+			} else
+				close(fd);
+		}
+		closedir(devdir);
+	}
+	closedir(busdir);
+
+	return usb;
+}
+
+int usb_write(struct usb_handle *h, const void *_data, int len)
+{
+	unsigned char *data = (unsigned char *) _data;
+	unsigned count = 0;
+	struct usbdevfs_bulktransfer bulk;
+	int n;
+
+	if (h->ep_out == 0)
+		return -1;
+
+	if (len == 0) {
+		bulk.ep = h->ep_out;
+		bulk.len = 0;
+		bulk.data = data;
+		bulk.timeout = 0;
+
+		n = ioctl(h->desc, USBDEVFS_BULK, &bulk);
+		if (n != 0) {
+			fprintf(stderr, "ERROR: n = %d, errno = %d (%s)\n",
+			n, errno, strerror(errno));
+			return -1;
+		}
+		return 0;
+	}
+
+	while (len > 0) {
+		int xfer;
+		xfer = (len > 4096) ? 4096 : len;
+
+		bulk.ep = h->ep_out;
+		bulk.len = xfer;
+		bulk.data = data;
+		bulk.timeout = 0;
+
+		n = ioctl(h->desc, USBDEVFS_BULK, &bulk);
+		if (n != xfer) {
+			DBG("ERROR: n = %d, errno = %d (%s)\n",
+				n, errno, strerror(errno));
+			return -1;
+		}
+
+		count += xfer;
+		len -= xfer;
+		data += xfer;
+	}
+
+	return count;
+}
+
+int usb_read(struct usb_handle *h, void *_data, int len)
+{
+	unsigned char *data = (unsigned char *) _data;
+	unsigned count = 0;
+	struct usbdevfs_bulktransfer bulk;
+	int n, retry;
+
+	if (h->ep_in == 0)
+		return -1;
+
+	while (len > 0) {
+		int xfer = (len > 4096) ? 4096 : len;
+
+		bulk.ep = h->ep_in;
+		bulk.len = xfer;
+		bulk.data = data;
+		bulk.timeout = 0;
+		retry = 0;
+
+		do {
+			DBG("[ usb read %d fd = %d], fname=%s\n",
+				xfer, h->desc, h->fname);
+			n = ioctl(h->desc, USBDEVFS_BULK, &bulk);
+			DBG("[ usb read %d ] = %d, fname=%s, Retry %d\n",
+			xfer, n, h->fname, retry);
+
+			if (n < 0) {
+				DBG1("ERROR: n = %d, errno = %d (%s)\n",
+				n, errno, strerror(errno));
+				if (++retry > MAX_RETRIES)
+					return -1;
+				usleep(10000);
+			}
+		} while (n < 0);
+
+		count += n;
+		len -= n;
+		data += n;
+
+		if (n < xfer)
+			break;
+	}
+
+	return count;
+}
+
+void usb_kick(struct usb_handle *h)
+{
+	int fd;
+
+	fd = h->desc;
+	h->desc = -1;
+	if (fd >= 0) {
+		close(fd);
+		DBG("[ usb closed %d ]\n", fd);
+	}
+}
+
+int usb_close(struct usb_handle *h)
+{
+	int fd;
+
+	fd = h->desc;
+	h->desc = -1;
+	if (fd >= 0) {
+		close(fd);
+		DBG("[ usb closed %d ]\n", fd);
+	}
+
+	return 0;
+}
+
+struct usb_handle *usb_open(ifc_match_func callback)
+{
+	return find_usb_device("/dev/bus/usb", callback);
+}
diff --git a/scripts/usb.h b/scripts/usb.h
deleted file mode 100644
index d50aa6a..0000000
--- a/scripts/usb.h
+++ /dev/null
@@ -1,61 +0,0 @@
-/*
- * Copyright (C) 2008 The Android Open Source Project
- * All rights reserved.
- *
- * Redistribution and use in source and binary forms, with or without
- * modification, are permitted provided that the following conditions
- * are met:
- *  * Redistributions of source code must retain the above copyright
- *    notice, this list of conditions and the following disclaimer.
- *  * Redistributions in binary form must reproduce the above copyright
- *    notice, this list of conditions and the following disclaimer in
- *    the documentation and/or other materials provided with the
- *    distribution.
- *
- * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
- * "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
- * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
- * FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
- * COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
- * INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
- * BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS
- * OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED
- * AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
- * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT
- * OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
- * SUCH DAMAGE.
- */
-
-#ifndef _USB_H_
-#define _USB_H_
-
-struct usb_ifc_info {
-	/* from device descriptor */
-	unsigned short dev_vendor;
-	unsigned short dev_product;
-
-	unsigned char dev_class;
-	unsigned char dev_subclass;
-	unsigned char dev_protocol;
-
-	unsigned char ifc_class;
-	unsigned char ifc_subclass;
-	unsigned char ifc_protocol;
-
-	unsigned char has_bulk_in;
-	unsigned char has_bulk_out;
-
-	unsigned char writable;
-
-	char serial_number[256];
-};
-
-typedef int (*ifc_match_func)(struct usb_ifc_info *ifc);
-
-struct usb_handle *usb_open(ifc_match_func callback);
-int usb_close(struct usb_handle *h);
-int usb_read(struct usb_handle *h, void *_data, int len);
-int usb_write(struct usb_handle *h, const void *_data, int len);
-
-
-#endif
diff --git a/scripts/usb_linux.c b/scripts/usb_linux.c
deleted file mode 100644
index 9a6e0b8..0000000
--- a/scripts/usb_linux.c
+++ /dev/null
@@ -1,397 +0,0 @@
-/*
- * Copyright (C) 2008 The Android Open Source Project
- * All rights reserved.
- *
- * Redistribution and use in source and binary forms, with or without
- * modification, are permitted provided that the following conditions
- * are met:
- *  * Redistributions of source code must retain the above copyright
- *    notice, this list of conditions and the following disclaimer.
- *  * Redistributions in binary form must reproduce the above copyright
- *    notice, this list of conditions and the following disclaimer in
- *    the documentation and/or other materials provided with the
- *    distribution.
- *
- * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
- * "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
- * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
- * FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
- * COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
- * INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
- * BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS
- * OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED
- * AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
- * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT
- * OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
- * SUCH DAMAGE.
- */
-
-#include <stdio.h>
-#include <stdlib.h>
-#include <unistd.h>
-#include <string.h>
-
-#include <sys/ioctl.h>
-#include <sys/types.h>
-#include <dirent.h>
-#include <fcntl.h>
-#include <errno.h>
-#include <pthread.h>
-#include <ctype.h>
-
-#include <linux/usbdevice_fs.h>
-#include <linux/usbdevice_fs.h>
-#include <linux/version.h>
-#include <linux/usb/ch9.h>
-#include <asm/byteorder.h>
-
-#include "usb.h"
-
-#define MAX_RETRIES 2
-
-#ifdef TRACE_USB
-#define DBG1(x...) fprintf(stderr, x)
-#define DBG(x...) fprintf(stderr, x)
-#else
-#define DBG(x...)
-#define DBG1(x...)
-#endif
-
-struct usb_handle {
-	char fname[64];
-	int desc;
-	unsigned char ep_in;
-	unsigned char ep_out;
-};
-
-static inline int badname(const char *name)
-{
-	while (*name) {
-		if (!isdigit(*name++))
-			return 1;
-	}
-	return 0;
-}
-
-static int check(void *_desc, int len, unsigned type, int size)
-{
-	unsigned char *desc = _desc;
-
-	if (len < size)
-		return -1;
-	if (desc[0] < size)
-		return -1;
-	if (desc[0] > len)
-		return -1;
-	if (desc[1] != type)
-		return -1;
-
-	return 0;
-}
-
-static int filter_usb_device(int fd, char *ptr, int len, int writable,
-	ifc_match_func callback, int *ept_in_id, int *ept_out_id, int *ifc_id)
-{
-	struct usb_device_descriptor *dev;
-	struct usb_config_descriptor *cfg;
-	struct usb_interface_descriptor *ifc;
-	struct usb_endpoint_descriptor *ept;
-	struct usb_ifc_info info;
-
-	int in, out;
-	unsigned i;
-	unsigned e;
-
-	if (check(ptr, len, USB_DT_DEVICE, USB_DT_DEVICE_SIZE))
-		return -1;
-	dev = (void *) ptr;
-	len -= dev->bLength;
-	ptr += dev->bLength;
-
-	if (check(ptr, len, USB_DT_CONFIG, USB_DT_CONFIG_SIZE))
-		return -1;
-	cfg = (void *) ptr;
-	len -= cfg->bLength;
-	ptr += cfg->bLength;
-
-	info.dev_vendor = dev->idVendor;
-	info.dev_product = dev->idProduct;
-	info.dev_class = dev->bDeviceClass;
-	info.dev_subclass = dev->bDeviceSubClass;
-	info.dev_protocol = dev->bDeviceProtocol;
-	info.writable = writable;
-
-	/* read device serial number (if there is one) */
-	info.serial_number[0] = 0;
-	if (dev->iSerialNumber) {
-		struct usbdevfs_ctrltransfer  ctrl;
-		__u16 buffer[128];
-		int result;
-
-		memset(buffer, 0, sizeof(buffer));
-
-		ctrl.bRequestType = USB_DIR_IN|
-			USB_TYPE_STANDARD|USB_RECIP_DEVICE;
-		ctrl.bRequest = USB_REQ_GET_DESCRIPTOR;
-		ctrl.wValue = (USB_DT_STRING << 8) | dev->iSerialNumber;
-		ctrl.wIndex = 0;
-		ctrl.wLength = sizeof(buffer);
-		ctrl.data = buffer;
-		ctrl.timeout = 50;
-
-		result = ioctl(fd, USBDEVFS_CONTROL, &ctrl);
-		if (result > 0) {
-			int i;
-			/* skip first word, and copy the rest to the serial
-			string, changing shorts to bytes. */
-			result /= 2;
-			for (i = 1; i < result; i++)
-				info.serial_number[i - 1] = buffer[i];
-			info.serial_number[i - 1] = 0;
-		}
-	}
-
-	for (i = 0; i < cfg->bNumInterfaces; i++) {
-		if (check(ptr, len, USB_DT_INTERFACE, USB_DT_INTERFACE_SIZE))
-			return -1;
-		ifc = (void *) ptr;
-		len -= ifc->bLength;
-		ptr += ifc->bLength;
-
-		in = -1;
-		out = -1;
-		info.ifc_class = ifc->bInterfaceClass;
-		info.ifc_subclass = ifc->bInterfaceSubClass;
-		info.ifc_protocol = ifc->bInterfaceProtocol;
-
-		for (e = 0; e < ifc->bNumEndpoints; e++) {
-			if (check(ptr, len, USB_DT_ENDPOINT,
-				USB_DT_ENDPOINT_SIZE)
-			)
-				return -1;
-			ept = (void *) ptr;
-			len -= ept->bLength;
-			ptr += ept->bLength;
-
-			if ((ept->bmAttributes & 0x03) != 0x02)
-				continue;
-
-			if (ept->bEndpointAddress & 0x80)
-				in = ept->bEndpointAddress;
-			else
-				out = ept->bEndpointAddress;
-		}
-
-		info.has_bulk_in = (in != -1);
-		info.has_bulk_out = (out != -1);
-
-		if (callback(&info) == 0) {
-			*ept_in_id = in;
-			*ept_out_id = out;
-			*ifc_id = ifc->bInterfaceNumber;
-			return 0;
-		}
-	}
-
-	return -1;
-}
-
-static struct usb_handle *find_usb_device(
-	const char *base, ifc_match_func callback)
-{
-	struct usb_handle *usb = 0;
-	char busname[64], devname[64];
-	char desc[1024];
-	int n, in, out, ifc;
-
-	DIR *busdir, *devdir;
-	struct dirent *de;
-	int fd;
-	int writable;
-
-	busdir = opendir(base);
-	if (busdir == 0)
-		return 0;
-
-	while ((de = readdir(busdir)) && (usb == 0)) {
-		if (badname(de->d_name))
-			continue;
-
-		sprintf(busname, "%s/%s", base, de->d_name);
-		devdir = opendir(busname);
-		if (devdir == 0)
-			continue;
-
-		/* DBG("[ scanning %s ]\n", busname); */
-		while ((de = readdir(devdir)) && (usb == 0)) {
-
-			if (badname(de->d_name))
-				continue;
-			sprintf(devname, "%s/%s", busname, de->d_name);
-
-			/* DBG("[ scanning %s ]\n", devname); */
-			writable = 1;
-			fd = open(devname, O_RDWR);
-			if (fd < 0) {
-				/* Check if we have read-only access,
-				so we can give a helpful diagnostic
-				like "adb devices" does. */
-				writable = 0;
-				fd = open(devname, O_RDONLY);
-				if (fd < 0)
-					continue;
-			}
-
-			n = read(fd, desc, sizeof(desc));
-
-			if (filter_usb_device(fd, desc, n, writable,
-				callback, &in, &out, &ifc) == 0
-			) {
-				usb = calloc(1, sizeof(struct usb_handle));
-				strcpy(usb->fname, devname);
-				usb->ep_in = in;
-				usb->ep_out = out;
-				usb->desc = fd;
-
-				n = ioctl(fd, USBDEVFS_CLAIMINTERFACE, &ifc);
-				if (n != 0) {
-					close(fd);
-					free(usb);
-					usb = 0;
-					continue;
-				}
-			} else
-				close(fd);
-		}
-		closedir(devdir);
-	}
-	closedir(busdir);
-
-	return usb;
-}
-
-int usb_write(struct usb_handle *h, const void *_data, int len)
-{
-	unsigned char *data = (unsigned char *) _data;
-	unsigned count = 0;
-	struct usbdevfs_bulktransfer bulk;
-	int n;
-
-	if (h->ep_out == 0)
-		return -1;
-
-	if (len == 0) {
-		bulk.ep = h->ep_out;
-		bulk.len = 0;
-		bulk.data = data;
-		bulk.timeout = 0;
-
-		n = ioctl(h->desc, USBDEVFS_BULK, &bulk);
-		if (n != 0) {
-			fprintf(stderr, "ERROR: n = %d, errno = %d (%s)\n",
-			n, errno, strerror(errno));
-			return -1;
-		}
-		return 0;
-	}
-
-	while (len > 0) {
-		int xfer;
-		xfer = (len > 4096) ? 4096 : len;
-
-		bulk.ep = h->ep_out;
-		bulk.len = xfer;
-		bulk.data = data;
-		bulk.timeout = 0;
-
-		n = ioctl(h->desc, USBDEVFS_BULK, &bulk);
-		if (n != xfer) {
-			DBG("ERROR: n = %d, errno = %d (%s)\n",
-				n, errno, strerror(errno));
-			return -1;
-		}
-
-		count += xfer;
-		len -= xfer;
-		data += xfer;
-	}
-
-	return count;
-}
-
-int usb_read(struct usb_handle *h, void *_data, int len)
-{
-	unsigned char *data = (unsigned char *) _data;
-	unsigned count = 0;
-	struct usbdevfs_bulktransfer bulk;
-	int n, retry;
-
-	if (h->ep_in == 0)
-		return -1;
-
-	while (len > 0) {
-		int xfer = (len > 4096) ? 4096 : len;
-
-		bulk.ep = h->ep_in;
-		bulk.len = xfer;
-		bulk.data = data;
-		bulk.timeout = 0;
-		retry = 0;
-
-		do {
-			DBG("[ usb read %d fd = %d], fname=%s\n",
-				xfer, h->desc, h->fname);
-			n = ioctl(h->desc, USBDEVFS_BULK, &bulk);
-			DBG("[ usb read %d ] = %d, fname=%s, Retry %d\n",
-			xfer, n, h->fname, retry);
-
-			if (n < 0) {
-				DBG1("ERROR: n = %d, errno = %d (%s)\n",
-				n, errno, strerror(errno));
-				if (++retry > MAX_RETRIES)
-					return -1;
-				usleep(10000);
-			}
-		} while (n < 0);
-
-		count += n;
-		len -= n;
-		data += n;
-
-		if (n < xfer)
-			break;
-	}
-
-	return count;
-}
-
-void usb_kick(struct usb_handle *h)
-{
-	int fd;
-
-	fd = h->desc;
-	h->desc = -1;
-	if (fd >= 0) {
-		close(fd);
-		DBG("[ usb closed %d ]\n", fd);
-	}
-}
-
-int usb_close(struct usb_handle *h)
-{
-	int fd;
-
-	fd = h->desc;
-	h->desc = -1;
-	if (fd >= 0) {
-		close(fd);
-		DBG("[ usb closed %d ]\n", fd);
-	}
-
-	return 0;
-}
-
-struct usb_handle *usb_open(ifc_match_func callback)
-{
-	return find_usb_device("/dev/bus/usb", callback);
-}
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
