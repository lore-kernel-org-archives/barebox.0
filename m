Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Whwqk-0008K5-Sj
 for barebox@lists.infradead.org; Wed, 07 May 2014 08:05:11 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  7 May 2014 10:04:37 +0200
Message-Id: <1399449884-19089-7-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1399449884-19089-1-git-send-email-s.hauer@pengutronix.de>
References: <1399449884-19089-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 07/14] ARM: i.MX53 tqma53: Set model from devicetree
To: barebox@lists.infradead.org

The model is correctly set from the devicetree, no need to do it
from code.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/tqma53/board.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/boards/tqma53/board.c b/arch/arm/boards/tqma53/board.c
index 8f8a6a4..055ceeb 100644
--- a/arch/arm/boards/tqma53/board.c
+++ b/arch/arm/boards/tqma53/board.c
@@ -30,7 +30,6 @@ static int tqma53_devices_init(void)
 	if (!of_machine_is_compatible("tq,tqma53"))
 		return 0;
 
-	barebox_set_model("TQ tqma53");
 	barebox_set_hostname("tqma53");
 
 	if (bootsource_get() == BOOTSOURCE_MMC &&
-- 
2.0.0.rc0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
