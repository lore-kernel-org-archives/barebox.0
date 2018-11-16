Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.17.22])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gNb5R-0004J5-0x
 for barebox@lists.infradead.org; Fri, 16 Nov 2018 10:10:55 +0000
From: Oleksij Rempel <linux@rempel-privat.de>
Date: Fri, 16 Nov 2018 11:10:29 +0100
Message-Id: <20181116101032.3358-2-linux@rempel-privat.de>
In-Reply-To: <20181116101032.3358-1-linux@rempel-privat.de>
References: <20181116101032.3358-1-linux@rempel-privat.de>
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
Subject: [PATCH v2 1/4] ddr_spd: remove unused array
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <linux@rempel-privat.de>

Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
---
 common/ddr_spd.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/common/ddr_spd.c b/common/ddr_spd.c
index ec343ef5a..7e2945ed9 100644
--- a/common/ddr_spd.c
+++ b/common/ddr_spd.c
@@ -166,7 +166,6 @@ static int ddr2_sdram_ctime(uint8_t byte)
 void ddr_spd_print(uint8_t *record)
 {
 	int highestCAS = 0;
-	int cas[256];
 	int i, i_i, k, x, y;
 	int ddrclk, tbits, pcclk;
 	int trcd, trp, tras;
@@ -199,7 +198,6 @@ void ddr_spd_print(uint8_t *record)
 	for (i_i = 2; i_i < 7; i_i++) {
 		if (s->cas_lat & 1 << i_i) {
 			highestCAS = i_i;
-			cas[highestCAS]++;
 		}
 	}
 
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
