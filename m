Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 19.mo3.mail-out.ovh.net ([178.32.98.231]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RnK16-0002nb-Hy
 for barebox@lists.infradead.org; Wed, 18 Jan 2012 01:08:46 +0000
Received: from mail617.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 89109FFB34D
 for <barebox@lists.infradead.org>; Wed, 18 Jan 2012 02:10:16 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 18 Jan 2012 02:07:34 +0100
Message-Id: <1326848854-21033-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1326848854-21033-1-git-send-email-plagnioj@jcrosoft.com>
References: <1326848854-21033-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/2] at91: specify the bare_init max size for each soc
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/mach-at91/Kconfig |   10 ++++++++++
 1 files changed, 10 insertions(+), 0 deletions(-)

diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index 8f3b8ce..41e9b99 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -83,6 +83,16 @@ config ARCH_AT91SAM9G45
 
 endchoice
 
+config ARCH_BAREBOX_MAX_BARE_INIT_SIZE
+	hex
+	default 0x1000 if ARCH_AT91SAM9260
+	default 0x270000 if ARCH_AT91SAM9261
+	default 0x12000 if ARCH_AT91SAM9263
+	default 0x4000 if ARCH_AT91SAM9G20
+	default 0x3000 if ARCH_AT91SAM9G10
+	default 0xF000 if ARCH_AT91SAM9G45
+	default 0xffffffff
+
 # ----------------------------------------------------------
 
 if ARCH_AT91RM9200
-- 
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
