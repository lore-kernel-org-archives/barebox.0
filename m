Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 14.mo1.mail-out.ovh.net ([178.32.97.215]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1StwY2-0003rK-JR
 for barebox@lists.infradead.org; Wed, 25 Jul 2012 08:02:32 +0000
Received: from mail94.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 47337FF948D
 for <barebox@lists.infradead.org>; Wed, 25 Jul 2012 10:08:08 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 25 Jul 2012 10:02:53 +0200
Message-Id: <1343203373-18641-11-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1343203373-18641-1-git-send-email-plagnioj@jcrosoft.com>
References: <20120725075730.GT22657@game.jcrosoft.org>
 <1343203373-18641-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 11/11] at91: add lowlevel init to the decompressor
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/mach-at91/Makefile |    2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/mach-at91/Makefile b/arch/arm/mach-at91/Makefile
index 491c454..5565989 100644
--- a/arch/arm/mach-at91/Makefile
+++ b/arch/arm/mach-at91/Makefile
@@ -4,6 +4,8 @@ lowlevel_init-y = at91sam926x_lowlevel_init.o
 lowlevel_init-$(CONFIG_ARCH_AT91RM9200) = at91rm9200_lowlevel_init.o
 obj-$(CONFIG_MACH_DO_LOWLEVEL_INIT) += $(lowlevel_init-y)
 
+comp-$(CONFIG_MACH_DO_LOWLEVEL_INIT) += $(lowlevel_init-y)
+
 obj-$(CONFIG_AT91SAM9_RESET) += at91sam9_reset.o
 obj-$(CONFIG_AT91SAM9G45_RESET) += at91sam9g45_reset.o
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
