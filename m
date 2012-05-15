Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp6-g21.free.fr ([2a01:e0c:1:1599::15])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SUPBU-0003pG-Ee
 for barebox@lists.infradead.org; Tue, 15 May 2012 21:21:33 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
Date: Tue, 15 May 2012 23:21:14 +0200
Message-Id: <1337116877-17657-3-git-send-email-robert.jarzmik@free.fr>
In-Reply-To: <1337116877-17657-1-git-send-email-robert.jarzmik@free.fr>
References: <1337116877-17657-1-git-send-email-robert.jarzmik@free.fr>
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
Subject: [PATCH 2/5] arch/arm: mioa701 make autoboot of Linux work
To: barebox@lists.infradead.org

Make the autoboot work :
 - if no USB cuable is plugged, continue directly to
   autoboot
 - if an USB cable is plugged, wait for 3 seconds for
   any input on the USB serial gadget, and if none
   happens, continue to autoboot linux kernel
 - else interrupt autoboot and interact on barebox
   console

Signed-off-by: Robert Jarzmik <robert.jarzmik@free.fr>
---
 arch/arm/boards/mioa701/env/bin/init |   17 +++++++++++------
 1 file changed, 11 insertions(+), 6 deletions(-)

diff --git a/arch/arm/boards/mioa701/env/bin/init b/arch/arm/boards/mioa701/env/bin/init
index 2e806b9..494d067 100644
--- a/arch/arm/boards/mioa701/env/bin/init
+++ b/arch/arm/boards/mioa701/env/bin/init
@@ -22,12 +22,17 @@ if [ $? = 0 ]; then
 fi
 
 echo "No custom environment found"
-echo -n "Hit any key to stop autoboot: "
-timeout -a $autoboot_timeout
-if [ $? != 0 ]; then
-	echo
-	echo "Welcome to barebox console"
-	exit
+
+gpio_get_value 22
+is_usb_connected=$?
+if [ $is_usb_connected != 0 ]; then
+	echo -n "Hit any key to stop autoboot: "
+	timeout -a $autoboot_timeout
+	if [ $? != 0 ]; then
+		echo
+		echo "Welcome to barebox console"
+		exit
+	fi
 fi
 
 echo "Booting linux kernel on docg3 chip ..."
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
