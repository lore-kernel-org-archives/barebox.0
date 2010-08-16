Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from tango.tkos.co.il ([62.219.50.35])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Ol0P5-0000al-HM
	for barebox@lists.infradead.org; Mon, 16 Aug 2010 14:11:17 +0000
From: Baruch Siach <baruch@tkos.co.il>
Date: Mon, 16 Aug 2010 17:10:38 +0300
Message-Id: <6787b77daf3f9a36e0de6b904b90824e71afb3cd.1281966840.git.baruch@tkos.co.il>
In-Reply-To: <cover.1281966840.git.baruch@tkos.co.il>
References: <cover.1281966840.git.baruch@tkos.co.il>
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
Subject: [PATCH v2 6/6] fec_imx: add support for IIM stored mac address
To: barebox@lists.infradead.org

The mac address information is taken from the imx_iim driver if it's present.

Signed-off-by: Baruch Siach <baruch@tkos.co.il>
---
 drivers/net/fec_imx.c |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
index 40a7543..9e752f6 100644
--- a/drivers/net/fec_imx.c
+++ b/drivers/net/fec_imx.c
@@ -32,6 +32,7 @@
 #include <mach/imx-regs.h>
 #include <clock.h>
 #include <mach/clock.h>
+#include <mach/iim.h>
 #include <xfuncs.h>
 
 #include "fec_imx.h"
@@ -235,8 +236,7 @@ static void fec_rbd_clean(int last, struct buffer_descriptor *pRbd)
 
 static int fec_get_hwaddr(struct eth_device *dev, unsigned char *mac)
 {
-	/* no eeprom */
-	return -1;
+	return imx_iim_get_mac(mac);
 }
 
 static int fec_set_hwaddr(struct eth_device *dev, unsigned char *mac)
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
