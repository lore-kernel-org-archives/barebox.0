Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f170.google.com ([209.85.217.170])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TyRm6-0001sN-Ks
 for barebox@lists.infradead.org; Thu, 24 Jan 2013 18:43:47 +0000
Received: by mail-lb0-f170.google.com with SMTP id ge1so4139208lbb.1
 for <barebox@lists.infradead.org>; Thu, 24 Jan 2013 10:43:42 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Thu, 24 Jan 2013 22:55:40 +0400
Message-Id: <1359053740-4793-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH] ARM OMAP: use SZ_*M constants in RAM device register functions
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/arm/boards/beaglebone/board.c  |    2 +-
 arch/arm/boards/omap343xdsp/board.c |    2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/beaglebone/board.c b/arch/arm/boards/beaglebone/board.c
index 830ff47..fda8031 100644
--- a/arch/arm/boards/beaglebone/board.c
+++ b/arch/arm/boards/beaglebone/board.c
@@ -311,7 +311,7 @@ console_initcall(beaglebone_console_init);
 
 static int beaglebone_mem_init(void)
 {
-	omap_add_ram0(256 * 1024 * 1024);
+	omap_add_ram0(SZ_256M);
 
 	return 0;
 }
diff --git a/arch/arm/boards/omap343xdsp/board.c b/arch/arm/boards/omap343xdsp/board.c
index 6dbbc4c..d894104 100644
--- a/arch/arm/boards/omap343xdsp/board.c
+++ b/arch/arm/boards/omap343xdsp/board.c
@@ -620,7 +620,7 @@ console_initcall(sdp3430_console_init);
 
 static int sdp3430_mem_init(void)
 {
-	omap_add_ram0(128 * 1024 * 1024);
+	omap_add_ram0(SZ_128M);
 
 	return 0;
 }
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
