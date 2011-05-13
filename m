Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bw0-f49.google.com ([209.85.214.49])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1QKsoB-0002w1-OP
	for barebox@lists.infradead.org; Fri, 13 May 2011 13:53:36 +0000
Received: by bwz1 with SMTP id 1so2734512bwz.36
	for <barebox@lists.infradead.org>; Fri, 13 May 2011 06:53:33 -0700 (PDT)
Message-ID: <4DCD37D9.5020408@gmail.com>
Date: Fri, 13 May 2011 19:53:29 +0600
From: Alexey Galakhov <agalakhov@gmail.com>
MIME-Version: 1.0
References: <4DCD32B4.9090606@yandex-team.ru>
In-Reply-To: <4DCD32B4.9090606@yandex-team.ru>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] fix console fifo (and loadb/loady commands)
To: barebox@lists.infradead.org

This patch fixes loadb and loady commands. tstc() should return true if
console_input_buffer is not empty.

diff -udp ./common/console.c.orig ./common/console.c
--- ./common/console.c.orig    2011-05-06 13:30:20.000000000 +0600
+++ ./common/console.c    2011-05-13 19:42:12.000000000 +0600
@@ -195,6 +195,20 @@ static int getc_raw(void)
     }
 }
 
+static int tstc_raw(void)
+{
+    struct console_device *cdev;
+
+    for_each_console(cdev) {
+        if (!(cdev->f_active & CONSOLE_STDIN))
+            continue;
+        if (cdev->tstc(cdev))
+            return 1;
+    }
+
+    return 0;
+}
+
 int getc(void)
 {
     unsigned char ch;
@@ -209,7 +223,7 @@ int getc(void)
     while (1) {
         poller_call();
 
-        if (tstc()) {
+        if (tstc_raw()) {
             kfifo_putc(console_input_buffer, getc_raw());
 
             start = get_time_ns();
@@ -236,16 +250,7 @@ EXPORT_SYMBOL(fgetc);
 
 int tstc(void)
 {
-    struct console_device *cdev;
-
-    for_each_console(cdev) {
-        if (!(cdev->f_active & CONSOLE_STDIN))
-            continue;
-        if (cdev->tstc(cdev))
-            return 1;
-    }
-
-    return 0;
+    return kfifo_len(console_input_buffer) || tstc_raw();
 }
 EXPORT_SYMBOL(tstc);
 


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
