Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YFh5h-0001yN-Eq
 for barebox@lists.infradead.org; Mon, 26 Jan 2015 10:40:25 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1YFh5J-0007QX-P6
 for barebox@lists.infradead.org; Mon, 26 Jan 2015 11:39:57 +0100
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.84)
 (envelope-from <jbe@pengutronix.de>) id 1YFh5J-0007QJ-N5
 for barebox@lists.infradead.org; Mon, 26 Jan 2015 11:39:57 +0100
From: Juergen Borleis <jbe@pengutronix.de>
Date: Mon, 26 Jan 2015 11:39:56 +0100
Message-Id: <1422268796-24782-10-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1422268796-24782-1-git-send-email-jbe@pengutronix.de>
References: <1422268796-24782-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 9/9] Docs: add some info about the Olimex's Olinuxino related
 bootloader images
To: barebox@lists.infradead.org

Signed-off-by: Juergen Borleis <jbe@pengutronix.de>
---
 Documentation/boards/mxs/Olimex-olinuxino.rst | 26 ++++++++++++++++++++++++++
 1 file changed, 26 insertions(+)
 create mode 100644 Documentation/boards/mxs/Olimex-olinuxino.rst

diff --git a/Documentation/boards/mxs/Olimex-olinuxino.rst b/Documentation/boards/mxs/Olimex-olinuxino.rst
new file mode 100644
index 0000000..a06eb33
--- /dev/null
+++ b/Documentation/boards/mxs/Olimex-olinuxino.rst
@@ -0,0 +1,26 @@
+Olimex LTD Olinuxino
+====================
+
+The CPU module
+--------------
+
+This CPU module is based on a Freescale i.MX23 CPU.
+
+How to get the bootloader binary image
+--------------------------------------
+
+Using the default configuration::
+
+  make ARCH=arm imx233-olinuxino_defconfig
+
+Build the binary image::
+
+  make ARCH=arm CROSS_COMPILE=armv5compiler
+
+**NOTE:** replace the armv5compiler with your ARM v5 cross compiler.
+
+This produces the following images:
+
+ * barebox-olinuxino-imx23-bootstream.img - Use with the bcb command
+ * barebox-olinuxino-imx23-sd.img - Use for SD cards
+ * barebox-olinuxino-imx23-2nd.img - Use for 2nd stage booting (with :ref:`command_bootm`)
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
