Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WsSy0-0008SM-Nv
 for barebox@lists.infradead.org; Thu, 05 Jun 2014 08:24:09 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  5 Jun 2014 10:23:43 +0200
Message-Id: <1401956624-31802-9-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1401956624-31802-1-git-send-email-s.hauer@pengutronix.de>
References: <1401956624-31802-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 8/9] gui: IMAGE_RENDERER does not depend on VIDEO
To: barebox@lists.infradead.org

Image renderer may not be particularly useful without framebuffer
support, but technically it does not depend on VIDEO. Fixes:

warning: (CMD_SPLASH) selects IMAGE_RENDERER which has unmet direct dependencies (VIDEO)

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 lib/gui/Kconfig | 1 -
 1 file changed, 1 deletion(-)

diff --git a/lib/gui/Kconfig b/lib/gui/Kconfig
index da71bae..eac9597 100644
--- a/lib/gui/Kconfig
+++ b/lib/gui/Kconfig
@@ -2,7 +2,6 @@ menu "Library gui routines"
 
 config IMAGE_RENDERER
 	bool
-	depends on VIDEO
 	select FILETYPE
 
 if IMAGE_RENDERER
-- 
2.0.0.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
