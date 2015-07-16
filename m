Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZFesV-0005kR-PR
 for barebox@lists.infradead.org; Thu, 16 Jul 2015 08:50:52 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 16 Jul 2015 10:50:21 +0200
Message-Id: <1437036628-29439-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1437036628-29439-1-git-send-email-s.hauer@pengutronix.de>
References: <1437036628-29439-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 04/11] memsize: Compile for PBL aswell
To: Barebox List <barebox@lists.infradead.org>

Detecting the memory size is a domain for PBL, so compile it for PBL
aswell.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/Makefile b/common/Makefile
index 74801f7..ed131c8 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -5,7 +5,7 @@ obj-y				+= clock.o
 obj-y				+= console_common.o
 obj-y				+= startup.o
 obj-y				+= misc.o
-obj-y				+= memsize.o
+obj-pbl-y			+= memsize.o
 obj-y				+= resource.o
 obj-y				+= bootsource.o
 obj-$(CONFIG_AUTO_COMPLETE)	+= complete.o
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
