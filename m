Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlTAR-0000as-7f
 for barebox@lists.infradead.org; Wed, 17 Jun 2020 08:11:36 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 17 Jun 2020 10:11:21 +0200
Message-Id: <20200617081126.5683-15-s.hauer@pengutronix.de>
In-Reply-To: <20200617081126.5683-1-s.hauer@pengutronix.de>
References: <20200617081126.5683-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 14/19] fastboot: remove double print
To: Barebox List <barebox@lists.infradead.org>
Cc: =?UTF-8?q?Daniel=20Gl=C3=B6ckner?= <dg@emlix.com>

In fastboot UDP we can't send two messages without waiting for an ack
from the host in between. Do not send two messages directly after each
other in fastboot_download_finished() to make it safe to be called from
the fastboot UDD code.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/fastboot.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/common/fastboot.c b/common/fastboot.c
index a647d8ffd4..f325c6247f 100644
--- a/common/fastboot.c
+++ b/common/fastboot.c
@@ -340,9 +340,6 @@ void fastboot_download_finished(struct fastboot *fb)
 
 	printf("\n");
 
-	fastboot_tx_print(fb, FASTBOOT_MSG_INFO, "Downloading %d bytes finished",
-			  fb->download_bytes);
-
 	fastboot_tx_print(fb, FASTBOOT_MSG_OKAY, "");
 }
 
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
