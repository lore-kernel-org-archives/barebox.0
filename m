Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1O7OXj-0008De-Pw
	for barebox@lists.infradead.org; Thu, 29 Apr 2010 07:52:22 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 29 Apr 2010 09:51:59 +0200
Message-Id: <1272527535-17527-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1272527535-17527-1-git-send-email-s.hauer@pengutronix.de>
References: <1272527535-17527-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 01/17] i.MX35 stack: Fix mc9sdz60 reset register offset
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 board/freescale-mx35-3-stack/3stack.c |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/board/freescale-mx35-3-stack/3stack.c b/board/freescale-mx35-3-stack/3stack.c
index 481f9f0..fcb87cf 100644
--- a/board/freescale-mx35-3-stack/3stack.c
+++ b/board/freescale-mx35-3-stack/3stack.c
@@ -396,9 +396,9 @@ static int f3s_pmic_init_all(struct mc9sdz60 *mc9sdz60)
 
 	err |= mc9sdz60_set_bits(mc9sdz60, MC9SDZ60_REG_GPIO_1, 0x04, 0x04);
 
-	err |= mc9sdz60_set_bits(mc9sdz60, MC9SDZ60_REG_RESET_2, 0x80, 0x00);
+	err |= mc9sdz60_set_bits(mc9sdz60, MC9SDZ60_REG_RESET_1, 0x80, 0x00);
 	mdelay(200);
-	err |= mc9sdz60_set_bits(mc9sdz60, MC9SDZ60_REG_RESET_2, 0x80, 0x80);
+	err |= mc9sdz60_set_bits(mc9sdz60, MC9SDZ60_REG_RESET_1, 0x80, 0x80);
 
 	if (err)
 		dev_err(&mc9sdz60->client->dev,
-- 
1.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
