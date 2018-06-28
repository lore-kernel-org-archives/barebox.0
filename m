Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x22b.google.com ([2a00:1450:4010:c07::22b])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fYRaA-0004R7-TJ
 for barebox@lists.infradead.org; Thu, 28 Jun 2018 07:43:13 +0000
Received: by mail-lf0-x22b.google.com with SMTP id u202-v6so3454351lff.9
 for <barebox@lists.infradead.org>; Thu, 28 Jun 2018 00:43:00 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Thu, 28 Jun 2018 10:39:52 +0300
Message-Id: <20180628073953.15384-12-antonynpavlov@gmail.com>
In-Reply-To: <20180628073953.15384-1-antonynpavlov@gmail.com>
References: <20180628073953.15384-1-antonynpavlov@gmail.com>
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
Subject: [PATCH v2 11/12] scripts: add nmon-loader
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 scripts/nmon-loader | 31 +++++++++++++++++++++++++++++++
 1 file changed, 31 insertions(+)

diff --git a/scripts/nmon-loader b/scripts/nmon-loader
new file mode 100755
index 0000000000..d80a53097a
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
2.18.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
