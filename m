Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VPRqQ-0000AG-Es
 for barebox@lists.infradead.org; Fri, 27 Sep 2013 06:48:13 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 27 Sep 2013 08:47:42 +0200
Message-Id: <1380264462-27614-12-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1380264462-27614-1-git-send-email-s.hauer@pengutronix.de>
References: <1380264462-27614-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 11/11] defenv-2: Do not overwrite previously existing global
 variables
To: barebox@lists.infradead.org

In case board code has already initialized global variables during
init do not overwrite them.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 defaultenv-2/base/bin/init | 19 +++++++++++++------
 1 file changed, 13 insertions(+), 6 deletions(-)

diff --git a/defaultenv-2/base/bin/init b/defaultenv-2/base/bin/init
index ca02ba6..996fea7 100644
--- a/defaultenv-2/base/bin/init
+++ b/defaultenv-2/base/bin/init
@@ -2,16 +2,23 @@
 
 export PATH=/env/bin
 
-global hostname=generic
-global user=none
-global autoboot_timeout=3
-global boot.default=net
-global allow_color=true
+global hostname
+global user
+global autoboot_timeout
+global boot.default
+global allow_color
 global linux.bootargs.base
 #linux.bootargs.dyn.* will be cleared at the beginning of boot
 global linux.bootargs.dyn.ip
 global linux.bootargs.dyn.root
-global editcmd=sedit
+global editcmd
+
+[ -z "${global.hostname}" ] && global.hostname=generic
+[ -z "${global.user}" ] && global.user=none
+[ -z "${global.autoboot_timeout}" ] && global.autoboot_timeout=3
+[ -z "${global.boot.default}" ] && global.boot.default=net
+[ -z "${global.allow_color}" ] && global.allow_color=true
+[ -z "${global.editcmd}" ] && global.editcmd=sedit
 
 [ -e /env/config-board ] && /env/config-board
 /env/config
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
