Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from forward8l.mail.yandex.net ([2a02:6b8:0:1819::8])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZEez2-0006qv-N8
 for barebox@lists.infradead.org; Mon, 13 Jul 2015 14:45:30 +0000
From: Alexander Smirnov <alllecs@yandex.ru>
Date: Mon, 13 Jul 2015 17:47:00 +0300
Message-Id: <1436798820-7999-1-git-send-email-alllecs@yandex.ru>
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
Subject: [PATCH] fixup! ddr_spd: add routine for printing DDR2 SPD contents in
 human-readable format
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, Alexander Smirnov <alllecs@yandex.ru>

---
drop floating point stuff 

 common/ddr_spd.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/common/ddr_spd.c b/common/ddr_spd.c
index 39f383b..ec343ef 100644
--- a/common/ddr_spd.c
+++ b/common/ddr_spd.c
@@ -190,8 +190,8 @@ void ddr_spd_print(uint8_t *record)
 	pcclk = pcclk - (pcclk % 100);
 	i_i = (s->nrow_addr & 0x0f) + (s->ncol_addr & 0x0f) - 17;
 	k = ((s->mod_ranks & 0x7) + 1) * s->nbanks;
-	trcd = ((s->trcd >> 2) + ((s->trcd & 3) * 0.25)) * 100 / ctime;
-	trp = ((s->trp >> 2) + ((s->trp & 3) * 0.25)) * 100 / ctime;
+	trcd = ((s->trcd >> 2) * 4 + (s->trcd & 3)) * 25 / ctime;
+	trp = ((s->trp >> 2) * 4 + (s->trp & 3)) * 25 / ctime;
 	tras = s->tras * 100 / ctime ;
 	x = (int)(ctime / 100);
 	y = (ctime - (int)((ctime / 100) * 100)) / 10;
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
