Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eixjn-0000um-ND
 for barebox@lists.infradead.org; Tue, 06 Feb 2018 07:32:22 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  6 Feb 2018 08:32:02 +0100
Message-Id: <20180206073202.15988-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] pstore: lower message priority
To: Barebox List <barebox@lists.infradead.org>

Having no valid data in pstore after a coldstart is pretty much
expected, so do not print a scary error message, but a debug message
instead.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/pstore/ram_core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/pstore/ram_core.c b/fs/pstore/ram_core.c
index d68d80900b..9de6dc614d 100644
--- a/fs/pstore/ram_core.c
+++ b/fs/pstore/ram_core.c
@@ -219,7 +219,7 @@ static int persistent_ram_init_ecc(struct persistent_ram_zone *prz,
 		pr_info("error in header, %d\n", numerr);
 		prz->corrected_bytes += numerr;
 	} else if (numerr < 0) {
-		pr_info("uncorrectable error in header\n");
+		pr_debug("No valid data in block, assuming it is empty\n");
 		prz->bad_blocks++;
 	}
 
-- 
2.15.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
