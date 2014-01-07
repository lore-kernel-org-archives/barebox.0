Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W0TdD-0002Qn-Bk
 for barebox@lists.infradead.org; Tue, 07 Jan 2014 10:11:31 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  7 Jan 2014 11:05:31 +0100
Message-Id: <1389089135-29986-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1389089135-29986-1-git-send-email-s.hauer@pengutronix.de>
References: <1389089135-29986-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/9] UBI: Call scan_all() with correct offset in error case
To: barebox@lists.infradead.org
Cc: Richard Weinberger <richard@nod.at>

From: Richard Weinberger <richard@nod.at>

If we find an invalid fastmap we have to scan from the very beginning.
Otherwise we leak the first 64 PEBs.

Reported-and-tested-by: Richard Genoud <richard.genoud@gmail.com>
Signed-off-by: Richard Weinberger <richard@nod.at>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/ubi/attach.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/mtd/ubi/attach.c b/drivers/mtd/ubi/attach.c
index 62d6113..8c5c8c3 100644
--- a/drivers/mtd/ubi/attach.c
+++ b/drivers/mtd/ubi/attach.c
@@ -1397,9 +1397,11 @@ int ubi_attach(struct ubi_device *ubi, int force_scan)
 				ai = alloc_ai("ubi_aeb_slab_cache2");
 				if (!ai)
 					return -ENOMEM;
-			}
 
-			err = scan_all(ubi, ai, UBI_FM_MAX_START);
+				err = scan_all(ubi, ai, 0);
+			} else {
+				err = scan_all(ubi, ai, UBI_FM_MAX_START);
+			}
 		}
 	}
 #else
-- 
1.8.5.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
