Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Tvluu-0001sS-CF
 for barebox@lists.infradead.org; Thu, 17 Jan 2013 09:37:49 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 17 Jan 2013 10:37:41 +0100
Message-Id: <1358415464-4657-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1358415464-4657-1-git-send-email-s.hauer@pengutronix.de>
References: <1358415464-4657-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/4] ARM Ka-Ro TX25: fix running in SDRAM test
To: barebox@lists.infradead.org

The end of SDRAM is at 0x9fffffff, not at 0x8fffffff. This fixes starting
barebox when it is located in the second SDRAM bank.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/karo-tx25/lowlevel.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boards/karo-tx25/lowlevel.c b/arch/arm/boards/karo-tx25/lowlevel.c
index 9c5cc5c..d0afad2 100644
--- a/arch/arm/boards/karo-tx25/lowlevel.c
+++ b/arch/arm/boards/karo-tx25/lowlevel.c
@@ -130,7 +130,7 @@ void __bare_init __naked reset(void)
 
 	/* Skip SDRAM initialization if we run from RAM */
 	r = get_pc();
-	if (r > 0x80000000 && r < 0x90000000)
+	if (r > 0x80000000 && r < 0xa0000000)
 		board_init_lowlevel_return();
 
 	/* set to 3.3v SDRAM */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
