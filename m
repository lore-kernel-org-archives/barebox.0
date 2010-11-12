Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bw0-f49.google.com ([209.85.214.49])
	by canuck.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PGt3d-0001cS-QL
	for barebox@lists.infradead.org; Fri, 12 Nov 2010 12:48:46 +0000
Received: by bwz5 with SMTP id 5so3048799bwz.36
	for <barebox@lists.infradead.org>; Fri, 12 Nov 2010 04:48:43 -0800 (PST)
From: Marek Belisko <marek.belisko@gmail.com>
Date: Fri, 12 Nov 2010 13:50:55 +0100
Message-Id: <1289566255-18325-1-git-send-email-marek.belisko@gmail.com>
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
Subject: [PATCH] mini2440: Fix compilation error.
To: barebox@lists.infradead.org

Patch fix following compilation error:
../mini2440.c:33:28: error: asm/mach-types.h: No such file or directory
../mini2440.c: In function 'mini2440_devices_init':
../mini2440.c:113: error: 'MACH_TYPE_MINI2440' undeclared (first use in this function)
../mini2440.c:113: error: (Each undeclared identifier is reported only once
../mini2440.c:113: error: for each function it appears in.)

Signed-off-by: Marek Belisko <marek.belisko@gmail.com>
---
 arch/arm/boards/mini2440/mini2440.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/arch/arm/boards/mini2440/mini2440.c b/arch/arm/boards/mini2440/mini2440.c
index f0d6e65..a673a5d 100644
--- a/arch/arm/boards/mini2440/mini2440.c
+++ b/arch/arm/boards/mini2440/mini2440.c
@@ -30,7 +30,7 @@
 #include <driver.h>
 #include <init.h>
 #include <asm/armlinux.h>
-#include <asm/mach-types.h>
+#include <generated/mach-types.h>
 #include <partition.h>
 #include <nand.h>
 #include <asm/io.h>
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
