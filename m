Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22a.google.com ([2a00:1450:4010:c04::22a])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X0IUY-00036h-Ew
 for barebox@lists.infradead.org; Thu, 26 Jun 2014 22:50:07 +0000
Received: by mail-lb0-f170.google.com with SMTP id 10so3457754lbg.1
 for <barebox@lists.infradead.org>; Thu, 26 Jun 2014 15:49:43 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri, 27 Jun 2014 02:49:31 +0400
Message-Id: <1403822973-3151-3-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1403822973-3151-1-git-send-email-antonynpavlov@gmail.com>
References: <1403822973-3151-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 2/4] MIPS: XBurst: use gpiolib
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/mips/Kconfig b/arch/mips/Kconfig
index 077586c..d4e9e1c 100644
--- a/arch/mips/Kconfig
+++ b/arch/mips/Kconfig
@@ -89,6 +89,7 @@ config MACH_MIPS_XBURST
 	select HAVE_PBL_IMAGE
 	select HAVE_IMAGE_COMPRESSION
 	select HAS_NMON
+	select GPIOLIB
 endchoice
 
 source arch/mips/mach-malta/Kconfig
-- 
1.9.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
