Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YY9iC-0004GB-Cp
 for barebox@lists.infradead.org; Wed, 18 Mar 2015 08:52:25 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 18 Mar 2015 09:52:01 +0100
Message-Id: <1426668721-20003-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] Documentation: booting-linux: Fix wrong variable name
To: Barebox List <barebox@lists.infradead.org>

All variables starting with global.linux.bootargs. are concatemated
to bootargs, not global.bootargs. .

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Documentation/user/booting-linux.rst | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/user/booting-linux.rst b/Documentation/user/booting-linux.rst
index 3a8da11..5ef1254 100644
--- a/Documentation/user/booting-linux.rst
+++ b/Documentation/user/booting-linux.rst
@@ -60,7 +60,7 @@ are to ways to pass bootargs to the Kernel. With ``CONFIG_FLEXIBLE_BOOTARGS``
 disabled the bootm command takes the bootargs from the ``bootargs`` environment
 variable. With ``CONFIG_FLEXIBLE_BOOTARGS`` enabled the bootargs are composed
 from different :ref:`global_device` variables. All variables beginning with
-``global.bootargs.`` will be concatenated to the bootargs:
+``global.linux.bootargs.`` will be concatenated to the bootargs:
 
 .. code-block:: sh
 
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
