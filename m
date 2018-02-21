Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eoR5u-0007bX-9o
 for barebox@lists.infradead.org; Wed, 21 Feb 2018 09:53:51 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.89)
 (envelope-from <l.stach@pengutronix.de>) id 1eoR5i-0007XQ-Pi
 for barebox@lists.infradead.org; Wed, 21 Feb 2018 10:53:34 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Wed, 21 Feb 2018 10:53:32 +0100
Message-Id: <20180221095334.30747-1-l.stach@pengutronix.de>
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
Subject: [PATCH 1/3] arm: ARM64 doen't provide the armlinux_ functions
To: barebox@lists.infradead.org

Those set parameters specific to the older ARM Linux implementation.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/include/asm/armlinux.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/include/asm/armlinux.h b/arch/arm/include/asm/armlinux.h
index 5c39200a0c33..135f11b860ce 100644
--- a/arch/arm/include/asm/armlinux.h
+++ b/arch/arm/include/asm/armlinux.h
@@ -5,7 +5,7 @@
 #include <asm/setup.h>
 #include <asm/secure.h>
 
-#if defined CONFIG_ARM_LINUX
+#if defined CONFIG_ARM_LINUX && defined CONFIG_CPU_32
 void armlinux_set_bootparams(void *params);
 void armlinux_set_architecture(int architecture);
 void armlinux_set_revision(unsigned int);
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
