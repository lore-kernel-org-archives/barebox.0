Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-x233.google.com ([2a00:1450:400c:c00::233])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WRPtn-0003Or-I1
 for barebox@lists.infradead.org; Sat, 22 Mar 2014 17:40:00 +0000
Received: by mail-wg0-f51.google.com with SMTP id k14so2441058wgh.10
 for <barebox@lists.infradead.org>; Sat, 22 Mar 2014 10:39:32 -0700 (PDT)
From: Vicente Bergas <vicencb@gmail.com>
Date: Sat, 22 Mar 2014 17:39:04 +0000
Message-Id: <1395509944-1512-1-git-send-email-vicencb@gmail.com>
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
Subject: [PATCH] OMAP4_USBboot: Change output text formatting
To: barebox@lists.infradead.org
Cc: Vicente Bergas <vicencb@gmail.com>

The basic console used for USBboot has two different formattings,
one for text coming from the host and another for text coming from
the target.
This change makes both formattings readable regardless of the
console background color.

Signed-off-by: Vicente Bergas <vicencb@gmail.com>
---
 scripts/omap4_usbboot/omap4_usbboot.c | 17 +++++++++--------
 1 file changed, 9 insertions(+), 8 deletions(-)

diff --git a/scripts/omap4_usbboot/omap4_usbboot.c b/scripts/omap4_usbboot/omap4_usbboot.c
index e521086..0e5abcb 100644
--- a/scripts/omap4_usbboot/omap4_usbboot.c
+++ b/scripts/omap4_usbboot/omap4_usbboot.c
@@ -35,16 +35,17 @@
 #define WHITE   8
 #define RED     1
 #define BLACK   0
-#define FORMAT        "%c[%d;%d;%dm"
-#define TARGET_FORMAT 0x1B, BRIGHT, RED+30, BLACK+40
-#define HOST_FORMAT   0x1B, RESET, WHITE+30, BLACK+40
-#define host_print(fmt, arg...)	printf(FORMAT fmt FORMAT, \
+#define TFORMAT       "%c[%d;%dm"
+#define HFORMAT       "%c[%dm"
+#define TARGET_FORMAT 0x1B, BRIGHT, RED+30
+#define HOST_FORMAT   0x1B, RESET
+#define host_print(fmt, arg...)	printf(HFORMAT fmt TFORMAT, \
 					HOST_FORMAT, ##arg, TARGET_FORMAT)
 
 void panic(struct termios *t_restore)
 {
 	tcsetattr(STDIN_FILENO, TCSANOW, t_restore);
-	printf(FORMAT, HOST_FORMAT);
+	printf(HFORMAT, HOST_FORMAT);
 	exit(1);
 }
 
@@ -354,7 +355,7 @@ int usb_boot(
 	tcgetattr(STDIN_FILENO, &vars.t_restore);
 	tn = vars.t_restore;
 	tn.c_lflag &= ~(ICANON | ECHO);
-	printf(FORMAT, TARGET_FORMAT);
+	printf(TFORMAT, TARGET_FORMAT);
 	tcsetattr(STDIN_FILENO, TCSANOW, &tn);
 	if (pthread_create(&thread, NULL, listenerTask, &vars))
 		host_print("listenerTask failed\n");
@@ -375,7 +376,7 @@ int usb_boot(
 	usb_close(usb);
 	pthread_mutex_destroy(&vars.usb_mutex);
 	tcsetattr(STDIN_FILENO, TCSANOW, &vars.t_restore);
-	printf(FORMAT, HOST_FORMAT);
+	printf(HFORMAT, HOST_FORMAT);
 	return 0;
 }
 
@@ -415,7 +416,7 @@ int main(int argc, char **argv)
 	sz = s.st_size;
 	close(fd);
 	argv++;
-	printf(FORMAT, HOST_FORMAT);
+	printf(HFORMAT, HOST_FORMAT);
 	for (once = 1;;) {
 		usb = usb_open(match_omap4_bootloader);
 		if (usb)
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
