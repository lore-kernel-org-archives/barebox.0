Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from tango.tkos.co.il ([62.219.50.35])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OSkh9-0003KK-UK
	for barebox@lists.infradead.org; Sun, 27 Jun 2010 05:46:20 +0000
From: Baruch Siach <baruch@tkos.co.il>
Date: Sun, 27 Jun 2010 08:46:05 +0300
Message-Id: <01b92fe3c69bda4a61e0376ea352fcd519ef756c.1277617440.git.baruch@tkos.co.il>
In-Reply-To: <20100624113527.GA12115@pengutronix.de>
References: <20100624113527.GA12115@pengutronix.de>
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
Subject: [PATCH] byteorder: add missing {BIG,LITTLE}_ENDIAN defines
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

This fixes build warnings when testing __BYTE_ORDER of the other kind.

Signed-off-by: Baruch Siach <baruch@tkos.co.il>
---
 include/linux/byteorder/generic.h |    6 ++++++
 1 files changed, 6 insertions(+), 0 deletions(-)

diff --git a/include/linux/byteorder/generic.h b/include/linux/byteorder/generic.h
index cff850f..aab8f4b 100644
--- a/include/linux/byteorder/generic.h
+++ b/include/linux/byteorder/generic.h
@@ -78,6 +78,12 @@
  *
  */
 
+#ifndef __LITTLE_ENDIAN
+#define __LITTLE_ENDIAN	1234
+#endif
+#ifndef __BIG_ENDIAN
+#define __BIG_ENDIAN	4321
+#endif
 
 #if defined(__KERNEL__)
 /*
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
