Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZFjYt-0000Qz-FD
 for barebox@lists.infradead.org; Thu, 16 Jul 2015 13:50:55 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 16 Jul 2015 15:50:17 +0200
Message-Id: <1437054617-1819-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1437054617-1819-1-git-send-email-s.hauer@pengutronix.de>
References: <1437054617-1819-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/3] ARM: i.MX6 cm-fx6: Fix area for get_ram_size
To: Barebox List <barebox@lists.infradead.org>
Cc: Nikita Kiryanov <nikita@compulab.co.il>, embeddedsupport@compulab.co.il

for bank2_size get_ram_size must be called with the CS1 area. With the
recent fix to calculate CS1 start this now starts at 0x90000000 and no
longer at 0x80000000.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/cm-fx6/lowlevel.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/cm-fx6/lowlevel.c b/arch/arm/boards/cm-fx6/lowlevel.c
index fa8bd7b..60ffbbf 100644
--- a/arch/arm/boards/cm-fx6/lowlevel.c
+++ b/arch/arm/boards/cm-fx6/lowlevel.c
@@ -257,8 +257,8 @@ static unsigned long cm_fx6_spl_dram_init(void)
 			return SZ_2G;
 
 		if (bank1_size == 0x40000000) {
-			bank2_size = get_ram_size((long int *)0x80000000,
-								0x80000000);
+			bank2_size = get_ram_size((long int *)0x90000000,
+								0x40000000);
 			if (bank2_size == 0x40000000) {
 				/* Don't do a full reset here */
 				spl_mx6q_dram_init(DDR_64BIT_2GB, false);
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
