Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PocfC-0001Jb-Nq
	for barebox@lists.infradead.org; Sun, 13 Feb 2011 14:11:04 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Sun, 13 Feb 2011 15:10:51 +0100
Message-Id: <1297606252-802-15-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1297606252-802-1-git-send-email-jbe@pengutronix.de>
References: <1297606252-802-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 14/15] mini2440: Remove some A9M2440 platform leftovers
To: barebox@lists.infradead.org
Cc: Juergen Beisert <juergen@kreuzholzen.de>

From: Juergen Beisert <juergen@kreuzholzen.de>

Signed-off-by: Juergen Beisert <juergen@kreuzholzen.de>
---
 arch/arm/boards/mini2440/env/config |    5 ++---
 1 files changed, 2 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boards/mini2440/env/config b/arch/arm/boards/mini2440/env/config
index 05a2d01..3169fd9 100644
--- a/arch/arm/boards/mini2440/env/config
+++ b/arch/arm/boards/mini2440/env/config
@@ -4,9 +4,8 @@
 kernel=net
 root=net
 
-#uimage=uImage-a9m2440
-uimage=uImage
-jffs2=root-a9m2440.jffs2
+uimage=uImage-mini2440
+jffs2=root-mini2440.jffs2
 
 autoboot_timeout=3
 
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
