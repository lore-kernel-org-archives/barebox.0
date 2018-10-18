Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gD2GZ-0003M7-AH
 for barebox@lists.infradead.org; Thu, 18 Oct 2018 06:58:48 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 18 Oct 2018 08:58:17 +0200
Message-Id: <20181018065827.19973-11-s.hauer@pengutronix.de>
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
Subject: [PATCH 10/20] ARM: boards: karo-tx6x: Make locally used function
 static
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/karo-tx6x/board.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boards/karo-tx6x/board.c b/arch/arm/boards/karo-tx6x/board.c
index 31c1c3a9ff..54b1e248f4 100644
--- a/arch/arm/boards/karo-tx6x/board.c
+++ b/arch/arm/boards/karo-tx6x/board.c
@@ -54,7 +54,7 @@ static struct {
 	{ 0x33, rn5t567_pmic_setup, "rn5t567" },
 };
 
-int setup_pmic_voltages(void)
+static int setup_pmic_voltages(void)
 {
 	struct i2c_adapter *adapter;
 	struct i2c_client client;
-- 
2.19.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
