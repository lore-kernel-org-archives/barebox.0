Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eoR5u-0007bZ-9u
 for barebox@lists.infradead.org; Wed, 21 Feb 2018 09:53:49 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.89)
 (envelope-from <l.stach@pengutronix.de>) id 1eoR5i-0007XQ-TB
 for barebox@lists.infradead.org; Wed, 21 Feb 2018 10:53:34 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Wed, 21 Feb 2018 10:53:34 +0100
Message-Id: <20180221095334.30747-3-l.stach@pengutronix.de>
In-Reply-To: <20180221095334.30747-1-l.stach@pengutronix.de>
References: <20180221095334.30747-1-l.stach@pengutronix.de>
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
Subject: [PATCH 3/3] at91sam9263ek: don't build legacy init when OFDEVICE is
 enabled
To: barebox@lists.infradead.org

The DT enabled build will fail when trying to reference the legacy
init funtions.

Fixes: b467c262b5a7 (at91sam9263ek: enable DT support)
Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
Is this the correct fix?
---
 arch/arm/boards/at91sam9263ek/Makefile | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boards/at91sam9263ek/Makefile b/arch/arm/boards/at91sam9263ek/Makefile
index 7af6fab8e108..66083a239e75 100644
--- a/arch/arm/boards/at91sam9263ek/Makefile
+++ b/arch/arm/boards/at91sam9263ek/Makefile
@@ -1,4 +1,6 @@
-obj-$(CONFIG_AT91_BOOTSTRAP) += init.o
+ifeq ($(CONFIG_OFDEVICE),)
+obj-y += init.o
+endif
 obj-$(CONFIG_OF_DEVICE) += of_init.o
 
 lwl-y += lowlevel_init.o
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
