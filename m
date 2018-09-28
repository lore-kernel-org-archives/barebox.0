Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g5qEI-0004zk-0j
 for barebox@lists.infradead.org; Fri, 28 Sep 2018 10:42:39 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Fri, 28 Sep 2018 12:42:04 +0200
Message-Id: <20180928104206.17764-4-s.trumtrar@pengutronix.de>
In-Reply-To: <20180928104206.17764-1-s.trumtrar@pengutronix.de>
References: <20180928104206.17764-1-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 4/6] ARM: socfpga: achilles: bitstream will not exceed 32M
To: Barebox List <barebox@lists.infradead.org>
Cc: Enrico Jorns <ejo@pengutronix.de>

From: Enrico Jorns <ejo@pengutronix.de>

Thus we decrease offsets to save space

Signed-off-by: Enrico Jorns <ejo@pengutronix.de>
---
 arch/arm/boards/reflex-achilles/lowlevel.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boards/reflex-achilles/lowlevel.c b/arch/arm/boards/reflex-achilles/lowlevel.c
index 2265aa882b1f..9cedc74e079f 100644
--- a/arch/arm/boards/reflex-achilles/lowlevel.c
+++ b/arch/arm/boards/reflex-achilles/lowlevel.c
@@ -25,7 +25,7 @@
 #define BAREBOX3_OFFSET    BAREBOX2_OFFSET + SZ_512K
 #define BAREBOX4_OFFSET    BAREBOX3_OFFSET + SZ_512K
 #define BITSTREAM1_OFFSET  0x0
-#define BITSTREAM2_OFFSET  BITSTREAM1_OFFSET + SZ_64M
+#define BITSTREAM2_OFFSET  BITSTREAM1_OFFSET + SZ_32M
 
 extern char __dtb_socfpga_arria10_achilles_start[];
 
-- 
2.19.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
