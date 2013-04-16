Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x22e.google.com ([2a00:1450:400c:c05::22e])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1USDUv-0007tK-BX
 for barebox@lists.infradead.org; Tue, 16 Apr 2013 21:33:06 +0000
Received: by mail-wi0-f174.google.com with SMTP id m6so2032871wiv.1
 for <barebox@lists.infradead.org>; Tue, 16 Apr 2013 14:33:03 -0700 (PDT)
From: Vicente Bergas <vicencb@gmail.com>
Date: Tue, 16 Apr 2013 23:32:01 +0200
Message-Id: <1366147921-23073-1-git-send-email-vicencb@gmail.com>
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
Subject: [PATCH] omap4 regression: set correct boot source
To: barebox@lists.infradead.org
Cc: Vicente Bergas <vicencb@gmail.com>


Signed-off-by: Vicente Bergas <vicencb@gmail.com>
---
 arch/arm/mach-omap/omap4_generic.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-omap/omap4_generic.c b/arch/arm/mach-omap/omap4_generic.c
index b33ed60..3d6ec25 100644
--- a/arch/arm/mach-omap/omap4_generic.c
+++ b/arch/arm/mach-omap/omap4_generic.c
@@ -507,11 +507,11 @@ static int omap4_bootsource(void)
 	u32 bootsrc = readl(OMAP4_TRACING_VECTOR3);
 
 	if (bootsrc & (1 << 5))
-		return BOOTSOURCE_MMC;
+		src = BOOTSOURCE_MMC;
 	if (bootsrc & (1 << 3))
-		return BOOTSOURCE_NAND;
+		src = BOOTSOURCE_NAND;
 	if (bootsrc & (1<<20))
-		return BOOTSOURCE_USB;
+		src = BOOTSOURCE_USB;
 	bootsource_set(src);
 	bootsource_set_instance(0);
 
-- 
1.8.2.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
