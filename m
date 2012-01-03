Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 8.mo2.mail-out.ovh.net ([188.165.52.147]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RhwaS-0006Ry-RD
 for barebox@lists.infradead.org; Tue, 03 Jan 2012 05:07:02 +0000
Received: from mail190.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id B5FF7DC340E
 for <barebox@lists.infradead.org>; Tue,  3 Jan 2012 06:07:56 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue,  3 Jan 2012 06:00:50 +0100
Message-Id: <1325566850-24432-6-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1325566850-24432-1-git-send-email-plagnioj@jcrosoft.com>
References: <1325566850-24432-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 6/6] at91: use ARM_EXCEPTION_VECTOR6 options
To: barebox@lists.infradead.org

to pass the bare_init or barebox size via the vector 6

ARM_EXCEPTION_VECTOR6_BARE_INIT_SIZE    bare_init size
ARM_EXCEPTION_VECTOR6_SIZE              barebox size

need by at91 bootstrap (optional, binary size) or
rom code to boot from nand as example (mandatory, code to load and run in sram)

and the exception vector MUST be at the beginning of the binary

for now use barebox size

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/mach-at91/Kconfig |   12 ++++++++++++
 1 files changed, 12 insertions(+), 0 deletions(-)

diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index 0e56afb..0df8e68 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -49,34 +49,46 @@ config ARCH_AT91SAM9260
 	select CPU_ARM926T
 	select HAS_MACB
 	select AT91SAM9_RESET
+	select ARM_EXCEPTION_VECTOR6
+	select ARM_EXCEPTION_VECTOR6_SIZE
 
 config ARCH_AT91SAM9261
 	bool "AT91SAM9261"
 	select CPU_ARM926T
 	select AT91SAM9_RESET
+	select ARM_EXCEPTION_VECTOR6
+	select ARM_EXCEPTION_VECTOR6_SIZE
 
 config ARCH_AT91SAM9263
 	bool "AT91SAM9263"
 	select CPU_ARM926T
 	select HAS_MACB
 	select AT91SAM9_RESET
+	select ARM_EXCEPTION_VECTOR6
+	select ARM_EXCEPTION_VECTOR6_SIZE
 
 config ARCH_AT91SAM9G10
 	bool "AT91SAM9G10"
 	select CPU_ARM926T
 	select AT91SAM9_RESET
+	select ARM_EXCEPTION_VECTOR6
+	select ARM_EXCEPTION_VECTOR6_SIZE
 
 config ARCH_AT91SAM9G20
 	bool "AT91SAM9G20"
 	select CPU_ARM926T
 	select HAS_MACB
 	select AT91SAM9_RESET
+	select ARM_EXCEPTION_VECTOR6
+	select ARM_EXCEPTION_VECTOR6_SIZE
 
 config ARCH_AT91SAM9G45
 	bool "AT91SAM9G45 or AT91SAM9M10"
 	select CPU_ARM926T
 	select HAS_MACB
 	select AT91SAM9G45_RESET
+	select ARM_EXCEPTION_VECTOR6
+	select ARM_EXCEPTION_VECTOR6_SIZE
 
 endchoice
 
-- 
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
