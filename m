Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1d0mBW-0006LA-Vf
 for barebox@lists.infradead.org; Wed, 19 Apr 2017 09:46:04 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 19 Apr 2017 11:45:40 +0200
Message-Id: <20170419094540.20498-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] ARM: at91sam9x5ek: Actually build image
To: Barebox List <barebox@lists.infradead.org>
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

The Kconfig variable is named CONFIG_MACH_AT91SAM9X5EK, not
MACH_AT91SAM9X5EK.

Reported-by: Sam Ravnborg <sam@ravnborg.org>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 images/Makefile.at91 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/images/Makefile.at91 b/images/Makefile.at91
index 686d5011ef..dc6c1db4b1 100644
--- a/images/Makefile.at91
+++ b/images/Makefile.at91
@@ -2,6 +2,6 @@
 # barebox image generation Makefile for AT91 images
 #
 
-pblx-$(MACH_AT91SAM9X5EK) += start_at91sam9x5ek
+pblx-$(CONFIG_MACH_AT91SAM9X5EK) += start_at91sam9x5ek
 FILE_barebox-at91sam9x5ek.img = start_at91sam9x5ek.pblx
-image-$(MACH_AT91SAM9X5EK) += barebox-at91sam9x5ek.img
+image-$(CONFIG_MACH_AT91SAM9X5EK) += barebox-at91sam9x5ek.img
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
