Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RUOmK-0000zy-9o
 for barebox@lists.infradead.org; Sat, 26 Nov 2011 20:23:23 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1RUOmA-0004rr-4e
 for barebox@lists.infradead.org; Sat, 26 Nov 2011 21:23:06 +0100
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.77)
 (envelope-from <jbe@pengutronix.de>) id 1RUOm9-00084R-4v
 for barebox@lists.infradead.org; Sat, 26 Nov 2011 21:23:05 +0100
From: Juergen Beisert <jbe@pengutronix.de>
Date: Sat, 26 Nov 2011 21:22:49 +0100
Message-Id: <1322338981-30978-3-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1322338981-30978-1-git-send-email-jbe@pengutronix.de>
References: <1322338981-30978-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 02/14] MACH SAMSUNG/S3C: Do not compile S3C24xx's GPIO support
 unconditionally
To: barebox@lists.infradead.org

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 arch/arm/mach-samsung/Makefile |    3 ++-
 1 files changed, 2 insertions(+), 1 deletions(-)

diff --git a/arch/arm/mach-samsung/Makefile b/arch/arm/mach-samsung/Makefile
index 88d45fe..f329cdb 100644
--- a/arch/arm/mach-samsung/Makefile
+++ b/arch/arm/mach-samsung/Makefile
@@ -1,2 +1,3 @@
-obj-y += generic.o gpio-s3c24x0.o
+obj-y += generic.o
+obj-$(CONFIG_ARCH_S3C24xx) += gpio-s3c24x0.o
 obj-$(CONFIG_S3C24XX_LOW_LEVEL_INIT) += lowlevel-init.o
-- 
1.7.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
