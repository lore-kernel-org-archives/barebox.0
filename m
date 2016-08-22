Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x243.google.com ([2a00:1450:400c:c09::243])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bbpYk-0007kV-FW
 for barebox@lists.infradead.org; Mon, 22 Aug 2016 13:46:45 +0000
Received: by mail-wm0-x243.google.com with SMTP id q128so13573284wma.1
 for <barebox@lists.infradead.org>; Mon, 22 Aug 2016 06:46:17 -0700 (PDT)
From: Guillermo Rodriguez <guille.rodriguez@gmail.com>
Date: Mon, 22 Aug 2016 15:45:34 +0200
Message-Id: <1471873534-17014-1-git-send-email-guille.rodriguez@gmail.com>
In-Reply-To: <20160822054521.GU20657@pengutronix.de>
References: <20160822054521.GU20657@pengutronix.de>
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
Subject: [PATCH] Call boot_board from boot, not from init.
To: barebox@lists.infradead.org
Cc: grodriguez <guille.rodriguez@gmail.com>

From: grodriguez <guille.rodriguez@gmail.com>

This ensures that any board-specific code that must be run at
boot time will be run both when autobooting and when manually
running the 'boot' command from the console.

Signed-off-by: Guillermo Rodriguez <guille.rodriguez@gmail.com>
---
 defaultenv/defaultenv-1/bin/boot |    4 ++++
 defaultenv/defaultenv-1/bin/init |    5 ++---
 2 files changed, 6 insertions(+), 3 deletions(-)

diff --git a/defaultenv/defaultenv-1/bin/boot b/defaultenv/defaultenv-1/bin/boot
index c17ccdb..a5d6596 100644
--- a/defaultenv/defaultenv-1/bin/boot
+++ b/defaultenv/defaultenv-1/bin/boot
@@ -2,6 +2,10 @@
 
 . /env/config
 
+if [ -f /env/bin/boot_board ]; then
+	. /env/bin/boot_board
+fi
+
 if [ x$kernel_loc = xnet ]; then
 	kernel_loc=tftp
 fi
diff --git a/defaultenv/defaultenv-1/bin/init b/defaultenv/defaultenv-1/bin/init
index a55d293..2dcddbe 100644
--- a/defaultenv/defaultenv-1/bin/init
+++ b/defaultenv/defaultenv-1/bin/init
@@ -23,9 +23,8 @@ if [ -f /env/bin/init_board ]; then
 fi
 
 echo -e "\e[?25h"
-if [ -f /env/bin/boot_board ]; then
-	. /env/bin/boot_board
-elif [ -n $autoboot_timeout ]; then
+
+if [ -n $autoboot_timeout ]; then
 	echo -n "Hit any key to stop autoboot: "
 	timeout -a $autoboot_timeout
 	if [ $? != 0 ]; then
-- 
1.7.9.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
