Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Tyfj6-00082Q-23
 for barebox@lists.infradead.org; Fri, 25 Jan 2013 09:37:36 +0000
From: Michael Olbrich <m.olbrich@pengutronix.de>
Date: Fri, 25 Jan 2013 10:37:30 +0100
Message-Id: <1359106650-12290-1-git-send-email-m.olbrich@pengutronix.de>
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
Subject: [PATCH] defenv-2: source /env/config after /env/init/*
To: barebox@lists.infradead.org

This way variables in /env/config can actually overwrite things from
e.g. /env/init/config-board.

Signed-off-by: Michael Olbrich <m.olbrich@pengutronix.de>
---

This is really confusing right now. The comment in config-board says
"Change /env/config instead" and that doesn't work.

I'd like to see this in master as well, but that only works if these
commits are applied first:

f19a924 defaultenv-2: move ps1 to base/init/ps1
b26c1c3 defaultenv-2: execute init/* before timeout

otherwise global.autoboot_timeout and global.allow_color are set too late.

Michael

 defaultenv-2/base/bin/init |    4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/defaultenv-2/base/bin/init b/defaultenv-2/base/bin/init
index b606b63..4a1b22e 100644
--- a/defaultenv-2/base/bin/init
+++ b/defaultenv-2/base/bin/init
@@ -13,8 +13,6 @@ global linux.bootargs.dyn.ip
 global linux.bootargs.dyn.root
 global editcmd=sedit
 
-/env/config
-
 if [ -e /env/menu ]; then
 	echo -e -n "\nHit m for menu or any other key to stop autoboot: "
 else
@@ -33,6 +31,8 @@ for i in /env/init/*; do
 	. $i
 done
 
+/env/config
+
 timeout -a $global.autoboot_timeout -v key
 autoboot="$?"
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
