Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gD2Go-0003RN-2M
 for barebox@lists.infradead.org; Thu, 18 Oct 2018 06:59:06 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 18 Oct 2018 08:58:20 +0200
Message-Id: <20181018065827.19973-14-s.hauer@pengutronix.de>
In-Reply-To: <20181018065827.19973-1-s.hauer@pengutronix.de>
References: <20181018065827.19973-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 13/20] ARM: boards: phytec-som-imx6: Make locally used
 function static
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/phytec-som-imx6/board.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boards/phytec-som-imx6/board.c b/arch/arm/boards/phytec-som-imx6/board.c
index 34a0fe4183..4079bc9de1 100644
--- a/arch/arm/boards/phytec-som-imx6/board.c
+++ b/arch/arm/boards/phytec-som-imx6/board.c
@@ -97,7 +97,7 @@ static unsigned int get_module_rev(void)
 	return 16 - val;
 }
 
-int ksz8081_phy_fixup(struct phy_device *phydev)
+static int ksz8081_phy_fixup(struct phy_device *phydev)
 {
 	phy_write(phydev, 0x1f, 0x8190);
 	phy_write(phydev, 0x16, 0x202);
-- 
2.19.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
