Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XPTLV-0005uL-5v
 for barebox@lists.infradead.org; Thu, 04 Sep 2014 09:28:49 +0000
From: Philipp Zabel <p.zabel@pengutronix.de>
Date: Thu,  4 Sep 2014 11:28:20 +0200
Message-Id: <1409822900-25526-1-git-send-email-p.zabel@pengutronix.de>
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
Subject: [PATCH] Fix barebox metadata
To: barebox@lists.infradead.org

Patch 97e81f2d78f3 (Add support for metadata in barebox images)
writes the wrong length for the model tag in the barebox metadata.
Fix this to use the correct value.

Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
---
 scripts/gen-dtb-s | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/gen-dtb-s b/scripts/gen-dtb-s
index 434612f..a920495 100755
--- a/scripts/gen-dtb-s
+++ b/scripts/gen-dtb-s
@@ -36,7 +36,7 @@ if [ "$imd" = "y" ]; then
 	if [ "$model" != "notfound" ]; then
 		modellen=$($FDTGET -t s "$dtb" / model | wc -c)
 		le32 0x640c8004
-		le32 $compatlen
+		le32 $modellen
 		echo ".byte " $model
 		echo ".balign 4"
 	fi
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
