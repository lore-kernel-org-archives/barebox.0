Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wr0-x242.google.com ([2a00:1450:400c:c0c::242])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dxhzj-0004TO-9I
 for barebox@lists.infradead.org; Thu, 28 Sep 2017 23:13:31 +0000
Received: by mail-wr0-x242.google.com with SMTP id 108so5337170wra.5
 for <barebox@lists.infradead.org>; Thu, 28 Sep 2017 16:13:07 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri, 29 Sep 2017 02:12:48 +0300
Message-Id: <20170928231249.4158-10-antonynpavlov@gmail.com>
In-Reply-To: <20170928231249.4158-1-antonynpavlov@gmail.com>
References: <20170928231249.4158-1-antonynpavlov@gmail.com>
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
Subject: [RFC v4 09/10] scripts: add nmon-loader
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 scripts/nmon-loader | 31 +++++++++++++++++++++++++++++++
 1 file changed, 31 insertions(+)

diff --git a/scripts/nmon-loader b/scripts/nmon-loader
new file mode 100755
index 000000000..d80a53097
--- /dev/null
+++ b/scripts/nmon-loader
@@ -0,0 +1,31 @@
+#!/usr/bin/expect -f
+
+# device
+set image [lindex $argv 0];
+set modem [lindex $argv 1];
+set speed [lindex $argv 2];
+
+if {$argc != 3} {
+    puts "Usage:"
+    puts "    nmon-loader.expect <file> <device> <speed>"
+    exit 2
+}
+
+# keep it open
+exec sh -c "sleep 3 < $modem" &
+
+# serial port parameters
+exec stty -F $modem $speed raw -clocal -echo -istrip -hup
+
+# connect
+send_user "connecting to $modem, exit with ~.\n"
+spawn -open [open $modem w+]
+send_user "connected\n"
+send "\r"
+
+source $image
+
+interact {
+    ~- exit
+    ~~ {send "\034"}
+}
-- 
2.14.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
