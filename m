Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UqqVd-0000hj-LI
 for barebox@lists.infradead.org; Sun, 23 Jun 2013 20:03:38 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 23 Jun 2013 22:02:55 +0200
Message-Id: <1372017777-787-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1372017777-787-1-git-send-email-s.hauer@pengutronix.de>
References: <1372017777-787-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/3] ARM: Marvell boards: remove empty config.h files
To: barebox@lists.infradead.org

config.h is automatically generated if not existing, so remove
the empty files.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/globalscale-guruplug/config.h    | 4 ----
 arch/arm/boards/globalscale-mirabox/config.h     | 4 ----
 arch/arm/boards/marvell-armada-xp-gp/config.h    | 4 ----
 arch/arm/boards/plathome-openblocks-ax3/config.h | 4 ----
 4 files changed, 16 deletions(-)
 delete mode 100644 arch/arm/boards/globalscale-guruplug/config.h
 delete mode 100644 arch/arm/boards/globalscale-mirabox/config.h
 delete mode 100644 arch/arm/boards/marvell-armada-xp-gp/config.h
 delete mode 100644 arch/arm/boards/plathome-openblocks-ax3/config.h

diff --git a/arch/arm/boards/globalscale-guruplug/config.h b/arch/arm/boards/globalscale-guruplug/config.h
deleted file mode 100644
index ca15136..0000000
--- a/arch/arm/boards/globalscale-guruplug/config.h
+++ /dev/null
@@ -1,4 +0,0 @@
-#ifndef __CONFIG_H
-#define __CONFIG_H
-
-#endif	/* __CONFIG_H */
diff --git a/arch/arm/boards/globalscale-mirabox/config.h b/arch/arm/boards/globalscale-mirabox/config.h
deleted file mode 100644
index ca15136..0000000
--- a/arch/arm/boards/globalscale-mirabox/config.h
+++ /dev/null
@@ -1,4 +0,0 @@
-#ifndef __CONFIG_H
-#define __CONFIG_H
-
-#endif	/* __CONFIG_H */
diff --git a/arch/arm/boards/marvell-armada-xp-gp/config.h b/arch/arm/boards/marvell-armada-xp-gp/config.h
deleted file mode 100644
index ca15136..0000000
--- a/arch/arm/boards/marvell-armada-xp-gp/config.h
+++ /dev/null
@@ -1,4 +0,0 @@
-#ifndef __CONFIG_H
-#define __CONFIG_H
-
-#endif	/* __CONFIG_H */
diff --git a/arch/arm/boards/plathome-openblocks-ax3/config.h b/arch/arm/boards/plathome-openblocks-ax3/config.h
deleted file mode 100644
index ca15136..0000000
--- a/arch/arm/boards/plathome-openblocks-ax3/config.h
+++ /dev/null
@@ -1,4 +0,0 @@
-#ifndef __CONFIG_H
-#define __CONFIG_H
-
-#endif	/* __CONFIG_H */
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
