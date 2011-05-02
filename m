Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ww0-f49.google.com ([74.125.82.49])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1QGzBD-0000K9-GP
	for barebox@lists.infradead.org; Mon, 02 May 2011 19:53:17 +0000
Received: by wwb39 with SMTP id 39so4761338wwb.18
	for <barebox@lists.infradead.org>; Mon, 02 May 2011 12:53:14 -0700 (PDT)
From: Marek Belisko <marek.belisko@open-nandra.com>
Date: Mon,  2 May 2011 21:52:58 +0200
Message-Id: <1304365979-5546-2-git-send-email-marek.belisko@open-nandra.com>
In-Reply-To: <1304365979-5546-1-git-send-email-marek.belisko@open-nandra.com>
References: <1304365979-5546-1-git-send-email-marek.belisko@open-nandra.com>
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
Subject: [PATCH 2/3] arm: karo-tx25: Fix compilation warning.
To: barebox@lists.infradead.org
Cc: Marek Belisko <marek.belisko@open-nandra.com>

Fix following warning:
arch/arm/boards/karo-tx25/lowlevel.c: In function 'board_init_lowlevel':
arch/arm/boards/karo-tx25/lowlevel.c:75:6: warning: unused variable 'i'

Signed-off-by: Marek Belisko <marek.belisko@open-nandra.com>
---
 arch/arm/boards/karo-tx25/lowlevel.c |    1 -
 1 files changed, 0 insertions(+), 1 deletions(-)

diff --git a/arch/arm/boards/karo-tx25/lowlevel.c b/arch/arm/boards/karo-tx25/lowlevel.c
index 86319d7..868ba08 100644
--- a/arch/arm/boards/karo-tx25/lowlevel.c
+++ b/arch/arm/boards/karo-tx25/lowlevel.c
@@ -72,7 +72,6 @@ static inline void __bare_init  setup_sdram(uint32_t base, uint32_t esdctl,
 void __bare_init __naked board_init_lowlevel(void)
 {
 	uint32_t r;
-	int i;
 #ifdef CONFIG_NAND_IMX_BOOT
 	unsigned int *trg, *src;
 #endif
-- 
1.7.4.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
