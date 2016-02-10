Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aTRgo-0002W2-EL
 for barebox@lists.infradead.org; Wed, 10 Feb 2016 10:08:03 +0000
From: Robert Schwebel <r.schwebel@pengutronix.de>
Date: Wed, 10 Feb 2016 11:07:34 +0100
Message-Id: <1455098857-25339-1-git-send-email-r.schwebel@pengutronix.de>
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
Subject: [PATCH 1/4] Documentation: user manual: clarify kconfig+kbuild
To: barebox@lists.infradead.org

Signed-off-by: Robert Schwebel <r.schwebel@pengutronix.de>
---
 Documentation/user/barebox.rst | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/Documentation/user/barebox.rst b/Documentation/user/barebox.rst
index 00ceabb..b1f06b0 100644
--- a/Documentation/user/barebox.rst
+++ b/Documentation/user/barebox.rst
@@ -113,9 +113,9 @@ with the most popular being ``menuconfig``::
 
   make menuconfig
 
-barebox uses the same (Kbuild) configuration system as Linux, so you can use
-all the kernel config targets you already know, e.g. ``make xconfig``,
-``make allyesconfig`` etc.
+barebox uses the same configuration and build system as Linux (Kconfig,
+Kbuild), so you can use all the kernel config targets you already know, e.g.
+``make xconfig``, ``make allyesconfig`` etc.
 
 Configuring and compiling "out-of-tree"
 ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
-- 
2.7.0.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
