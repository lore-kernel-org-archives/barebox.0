Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 15.mo5.mail-out.ovh.net ([178.33.107.29]
 helo=mo5.mail-out.ovh.net)
 by casper.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TBnmH-0000so-Df
 for barebox@lists.infradead.org; Wed, 12 Sep 2012 14:18:54 +0000
Received: from mail404.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id D3E19FF9A20
 for <barebox@lists.infradead.org>; Wed, 12 Sep 2012 16:20:24 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 12 Sep 2012 16:12:11 +0200
Message-Id: <1347459131-16836-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/1] arm: armlinux: get the architecture before shutdown
 barebox
To: barebox@lists.infradead.org

As we may try to get it from the env.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/lib/armlinux.c |    3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/arch/arm/lib/armlinux.c b/arch/arm/lib/armlinux.c
index 9f9dea8..191274e 100644
--- a/arch/arm/lib/armlinux.c
+++ b/arch/arm/lib/armlinux.c
@@ -264,6 +264,7 @@ void start_linux(void *adr, int swap, unsigned long initrd_address,
 		setup_tags(initrd_address, initrd_size, swap);
 		params = armlinux_bootparams;
 	}
+	architecture = armlinux_get_architecture();
 
 	shutdown_barebox();
 	if (swap) {
@@ -273,8 +274,6 @@ void start_linux(void *adr, int swap, unsigned long initrd_address,
 		__asm__ __volatile__("mcr p15, 0, %0, c1, c0" :: "r" (reg));
 	}
 
-	architecture = armlinux_get_architecture();
-
 #ifdef CONFIG_THUMB2_BAREBOX
 	__asm__ __volatile__ (
 		"mov r0, #0\n"
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
