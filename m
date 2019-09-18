Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAUnC-0001qT-KT
 for barebox@lists.infradead.org; Wed, 18 Sep 2019 07:54:28 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 18 Sep 2019 09:54:10 +0200
Message-Id: <20190918075421.20456-6-s.hauer@pengutronix.de>
In-Reply-To: <20190918075421.20456-1-s.hauer@pengutronix.de>
References: <20190918075421.20456-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 05/16] ARM: Freescale mx28evk: Check machine type in initcalls
To: Barebox List <barebox@lists.infradead.org>

Check for the right machine type in initcalls before executing them to
make the board multi image safe.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/freescale-mx28-evk/board.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/boards/freescale-mx28-evk/board.c b/arch/arm/boards/freescale-mx28-evk/board.c
index 4590ceaa35..92097a2bca 100644
--- a/arch/arm/boards/freescale-mx28-evk/board.c
+++ b/arch/arm/boards/freescale-mx28-evk/board.c
@@ -34,6 +34,9 @@ static void mx28_evk_get_ethaddr(void)
 
 static int mx28_evk_devices_init(void)
 {
+	if (!of_machine_is_compatible("fsl,imx28-evk"))
+		return 0;
+
 	mx28_evk_get_ethaddr(); /* must be after registering ocotp */
 
 	return 0;
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
