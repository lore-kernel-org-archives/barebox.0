Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YFh5h-0001yM-En
 for barebox@lists.infradead.org; Mon, 26 Jan 2015 10:40:22 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1YFh5J-0007QP-NY
 for barebox@lists.infradead.org; Mon, 26 Jan 2015 11:39:57 +0100
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.84)
 (envelope-from <jbe@pengutronix.de>) id 1YFh5J-0007Q9-M3
 for barebox@lists.infradead.org; Mon, 26 Jan 2015 11:39:57 +0100
From: Juergen Borleis <jbe@pengutronix.de>
Date: Mon, 26 Jan 2015 11:39:54 +0100
Message-Id: <1422268796-24782-8-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 7/9] Docs: the name of the default config file for the FSL
 i.MX23 evk has changed
To: barebox@lists.infradead.org

Signed-off-by: Juergen Borleis <jbe@pengutronix.de>
---
 Documentation/boards/mxs/Freescale-i.MX23-evk.rst | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/boards/mxs/Freescale-i.MX23-evk.rst b/Documentation/boards/mxs/Freescale-i.MX23-evk.rst
index 85dde46..cb73ec1 100644
--- a/Documentation/boards/mxs/Freescale-i.MX23-evk.rst
+++ b/Documentation/boards/mxs/Freescale-i.MX23-evk.rst
@@ -21,7 +21,7 @@ How to get the bootloader binary image
 
 Using the default configuration::
 
-  make ARCH=arm imx23evk_defconfig
+  make ARCH=arm freescale-mx23-evk_defconfig
 
 Build the bootloader binary image::
 
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
