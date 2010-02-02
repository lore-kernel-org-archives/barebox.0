Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
	by bombadil.infradead.org with esmtp (Exim 4.69 #1 (Red Hat Linux))
	id 1NcNNY-0000sC-85
	for barebox@lists.infradead.org; Tue, 02 Feb 2010 18:21:40 +0000
Received: from d4rwin.no-ip.org (156.Red-88-18-58.staticIP.rima-tde.net
	[88.18.58.156])
	by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id 1A0FB225187
	for <barebox@lists.infradead.org>; Tue,  2 Feb 2010 19:21:26 +0100 (CET)
Date: Tue, 2 Feb 2010 19:16:29 +0100
From: Matthias Kaehlcke <matthias@kaehlcke.net>
Message-ID: <20100202181629.GR8053@darwin>
References: <cdf10f15d3d7edcf96ed380f0d883bcb4323a5cc.1265127584.git.matthias@kaehlcke.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cdf10f15d3d7edcf96ed380f0d883bcb4323a5cc.1265127584.git.matthias@kaehlcke.net>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] ep93xx eth driver: Remove unnecessary parentheses in
	constant definitions
To: barebox@lists.infradead.org

ep93xx eth driver: Remove unnecessary parentheses in definition of the constants
MII_ADDRESS_MAX and MII_REGISTER_MAX

Signed-off-by: Matthias Kaehlcke <matthias@kaehlcke.net>
---
 drivers/net/ep93xx.c |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ep93xx.c b/drivers/net/ep93xx.c
index a63eac1..e91a92e 100644
--- a/drivers/net/ep93xx.c
+++ b/drivers/net/ep93xx.c
@@ -563,12 +563,12 @@ eth_probe_done:
 /**
  * Maximum MII address we support
  */
-#define MII_ADDRESS_MAX			(31)
+#define MII_ADDRESS_MAX			31
 
 /**
  * Maximum MII register address we support
  */
-#define MII_REGISTER_MAX		(31)
+#define MII_REGISTER_MAX		31
 
 /**
  * Read a 16-bit value from an MII register.
-- 
1.6.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
