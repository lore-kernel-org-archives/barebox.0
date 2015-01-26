Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YFh5h-0001yJ-Ep
 for barebox@lists.infradead.org; Mon, 26 Jan 2015 10:40:22 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1YFh5J-0007QG-LO
 for barebox@lists.infradead.org; Mon, 26 Jan 2015 11:39:57 +0100
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.84)
 (envelope-from <jbe@pengutronix.de>) id 1YFh5J-0007Po-KJ
 for barebox@lists.infradead.org; Mon, 26 Jan 2015 11:39:57 +0100
From: Juergen Borleis <jbe@pengutronix.de>
Date: Mon, 26 Jan 2015 11:39:50 +0100
Message-Id: <1422268796-24782-4-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 3/9] Docs: add some info about the Ka-Ro TX25 related
 bootloader images
To: barebox@lists.infradead.org

Signed-off-by: Juergen Borleis <jbe@pengutronix.de>
---
 Documentation/boards/imx/Karo-TX25.rst | 10 ++++++++++
 1 file changed, 10 insertions(+)
 create mode 100644 Documentation/boards/imx/Karo-TX25.rst

diff --git a/Documentation/boards/imx/Karo-TX25.rst b/Documentation/boards/imx/Karo-TX25.rst
new file mode 100644
index 0000000..756c99d
--- /dev/null
+++ b/Documentation/boards/imx/Karo-TX25.rst
@@ -0,0 +1,10 @@
+Ka-Ro TX25
+==========
+
+Building the bootloader image for this target is covered by the ``imx_defconfig``
+multiimage configuration if the ``System Type`` menu entry ``Ka-Ro TX25``
+is enabled.
+
+Use the corresponding ``barebox-karo-tx25.img`` for external NAND boot.
+Use the corresponding ``barebox-karo-tx25-internal.img`` for internal NAND, USB
+or SD card boot.
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
