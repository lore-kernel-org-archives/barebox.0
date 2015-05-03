Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Yoy7B-0002BJ-Ow
 for barebox@lists.infradead.org; Sun, 03 May 2015 17:55:42 +0000
From: Robert Schwebel <r.schwebel@pengutronix.de>
Date: Sun,  3 May 2015 19:55:10 +0200
Message-Id: <1430675710-11568-1-git-send-email-r.schwebel@pengutronix.de>
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
Subject: [PATCH] Documentation: booting linux: improve doc text
To: barebox@lists.infradead.org

Signed-off-by: Robert Schwebel <r.schwebel@pengutronix.de>
---
 Documentation/user/booting-linux.rst | 13 +++++++------
 1 file changed, 7 insertions(+), 6 deletions(-)

diff --git a/Documentation/user/booting-linux.rst b/Documentation/user/booting-linux.rst
index 5ef1254..ad32907 100644
--- a/Documentation/user/booting-linux.rst
+++ b/Documentation/user/booting-linux.rst
@@ -55,12 +55,13 @@ to free the internal devicetree before calling ``bootm``
 Passing Kernel Arguments
 ^^^^^^^^^^^^^^^^^^^^^^^^
 
-Depending on the barebox configuration (``CONFIG_FLEXIBLE_BOOTARGS``) there
-are to ways to pass bootargs to the Kernel. With ``CONFIG_FLEXIBLE_BOOTARGS``
-disabled the bootm command takes the bootargs from the ``bootargs`` environment
-variable. With ``CONFIG_FLEXIBLE_BOOTARGS`` enabled the bootargs are composed
-from different :ref:`global_device` variables. All variables beginning with
-``global.linux.bootargs.`` will be concatenated to the bootargs:
+The simple method to pass bootargs to the kernel is with
+``CONFIG_FLEXIBLE_BOOTARGS`` disabled: in this case the bootm command
+takes the bootargs from the ``bootargs`` environment variable.
+
+With ``CONFIG_FLEXIBLE_BOOTARGS`` enabled, the bootargs are composed
+from different :ref:`global device<global_device>` variables. All variables beginning
+with ``global.linux.bootargs.`` will be concatenated to the bootargs:
 
 .. code-block:: sh
 
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
