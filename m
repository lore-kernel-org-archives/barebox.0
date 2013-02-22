Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-f43.google.com ([74.125.83.43])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U8pab-00053p-5c
 for barebox@lists.infradead.org; Fri, 22 Feb 2013 10:10:49 +0000
Received: by mail-ee0-f43.google.com with SMTP id c50so223042eek.16
 for <barebox@lists.infradead.org>; Fri, 22 Feb 2013 02:10:47 -0800 (PST)
From: Fabio Porcedda <fabio.porcedda@gmail.com>
Date: Fri, 22 Feb 2013 11:10:41 +0100
Message-Id: <1361527842-25815-2-git-send-email-fabio.porcedda@gmail.com>
In-Reply-To: <1361527842-25815-1-git-send-email-fabio.porcedda@gmail.com>
References: <1361527842-25815-1-git-send-email-fabio.porcedda@gmail.com>
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
Subject: [PATCH v2 next 1/2] defenv2: comment setting default values in
 /env/config
To: barebox@lists.infradead.org

There is no need to set againg deafult values in /env/config
because they are already setted in /env/bin/init,
that allow /env/config-board to change those default values
without being overwritten by /env/config.

Signed-off-by: Fabio Porcedda <fabio.porcedda@gmail.com>
---
 defaultenv-2/base/config | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/defaultenv-2/base/config b/defaultenv-2/base/config
index 189e5a6..dec0595 100644
--- a/defaultenv-2/base/config
+++ b/defaultenv-2/base/config
@@ -6,16 +6,16 @@
 #global.hostname=
 
 # set to false if you do not want to have colors
-global.allow_color=true
+#global.allow_color=true
 
 # user (used for network filenames)
-global.user=none
+#global.user=none
 
 # timeout in seconds before the default boot entry is started
-global.autoboot_timeout=3
+#global.autoboot_timeout=3
 
 # default boot entry (one of /env/boot/*)
-global.boot.default=net
+#global.boot.default=net
 
 # base bootargs
 #global.linux.bootargs.base="console=ttyS0,115200"
-- 
1.8.1.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
