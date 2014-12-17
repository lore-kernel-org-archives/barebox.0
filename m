Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp2-g21.free.fr ([212.27.42.2])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Y1HBL-0002R5-Fx
 for barebox@lists.infradead.org; Wed, 17 Dec 2014 16:10:36 +0000
From: victorien <victorien.vedrine@ophrys.net>
Date: Wed, 17 Dec 2014 17:09:57 +0100
Message-Id: <1418832597-3932-1-git-send-email-victorien.vedrine@ophrys.net>
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
Subject: [PATCH] partitions: dos: Fix support of extended partition type 0x05
To: barebox@lists.infradead.org

---
 common/partitions/dos.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/partitions/dos.c b/common/partitions/dos.c
index 37addfd..8a3c5c3 100644
--- a/common/partitions/dos.c
+++ b/common/partitions/dos.c
@@ -209,7 +209,7 @@ static void dos_partition(void *buf, struct block_device *blk,
 			 * here as this is the easiest to parse and common
 			 * enough.
 			 */
-			if (pentry.dos_partition_type == 0x0f) {
+			if ((pentry.dos_partition_type == 0x0f)||(pentry.dos_partition_type == 0x05)) {
 				if (!extended_partition)
 					extended_partition = &pd->parts[n];
 				else
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
