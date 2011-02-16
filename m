Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Pplsz-0001nQ-9M
	for barebox@lists.infradead.org; Wed, 16 Feb 2011 18:14:00 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Wed, 16 Feb 2011 19:13:32 +0100
Message-Id: <1297880025-7184-8-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1297880025-7184-1-git-send-email-jbe@pengutronix.de>
References: <1297880025-7184-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 07/20] mini2440: Be a little be pedantic with the include file
	order
To: barebox@lists.infradead.org
Cc: Juergen Beisert <juergen@kreuzholzen.de>

From: Juergen Beisert <juergen@kreuzholzen.de>

Signed-off-by: Juergen Beisert <juergen@kreuzholzen.de>
---
 arch/arm/boards/mini2440/mini2440.c |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/mini2440/mini2440.c b/arch/arm/boards/mini2440/mini2440.c
index 9639176..a3bb817 100644
--- a/arch/arm/boards/mini2440/mini2440.c
+++ b/arch/arm/boards/mini2440/mini2440.c
@@ -29,15 +29,15 @@
 #include <common.h>
 #include <driver.h>
 #include <init.h>
-#include <asm/armlinux.h>
 #include <generated/mach-types.h>
 #include <partition.h>
+#include <dm9000.h>
 #include <nand.h>
+#include <asm/armlinux.h>
 #include <asm/io.h>
 #include <mach/s3c24x0-iomap.h>
 #include <mach/s3c24x0-nand.h>
 #include <mach/s3c24xx-generic.h>
-#include <dm9000.h>
 
 static struct memory_platform_data ram_pdata = {
 	.name		= "ram0",
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
