Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcsTF-0005sJ-60
 for barebox@lists.infradead.org; Mon, 17 Jun 2019 14:18:54 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1hcsTA-0002Pi-Lo
 for barebox@lists.infradead.org; Mon, 17 Jun 2019 16:18:48 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1hcsTA-0006gE-EO
 for barebox@lists.infradead.org; Mon, 17 Jun 2019 16:18:48 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 17 Jun 2019 16:18:46 +0200
Message-Id: <20190617141846.25638-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] Documentation: user: suggest U-Boot's bootm, not go
To: barebox@lists.infradead.org

Unlike barebox, U-Boot's go command doesn't have any provisions
for cache handling and as such, bootstrapping barebox via go can
cause stale data to be erroneously executed as instructions.

The official documentation[1] suggests use of bootm instead, which
does the necessary flushing and invalidation. Update our documentation
accordingly.

[1]: http://www.denx.de/wiki/view/DULG/UBootStandalone#Section_5.12.3.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/user/barebox.rst | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/user/barebox.rst b/Documentation/user/barebox.rst
index 1927fe4efcc5..d82163a88634 100644
--- a/Documentation/user/barebox.rst
+++ b/Documentation/user/barebox.rst
@@ -206,12 +206,12 @@ board documentation for initial bringup.
 
 barebox binaries are, where possible, designed to be startable second stage from another
 bootloader. For example, if you have U-Boot running on your board, you can start barebox
-with U-Boot's 'go' command:
+with U-Boot's ``bootm`` command:
 
 .. code-block:: console
 
   U-Boot: tftp $load_addr barebox.bin
-  U-Boot: go $load_addr
+  U-Boot: bootm $load_addr
 
 With barebox already running on your board, this can be used to chainload
 another barebox. For instance, if you mounted a TFTP server to ``/mnt/tftp``
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
