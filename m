Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp2-g21.free.fr ([212.27.42.2])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Y36f5-0007D2-EE
 for barebox@lists.infradead.org; Mon, 22 Dec 2014 17:20:52 +0000
From: Victorien Vedrine <victorien.vedrine@ophrys.net>
Date: Mon, 22 Dec 2014 18:20:22 +0100
Message-Id: <1419268822-30204-1-git-send-email-victorien.vedrine@ophrys.net>
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
Subject: [PATCH v3] partitions: dos: Fix support of extended partition type
 0x05
To: barebox@lists.infradead.org
Cc: victorien <victorien.vedrine@ophrys.net>

From: victorien <victorien.vedrine@ophrys.net>

Signed-off-by: Victorien Vedrine <victorien.vedrine@ophrys.net>
---
 common/partitions/dos.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/common/partitions/dos.c b/common/partitions/dos.c
index 37addfd..f02c822 100644
--- a/common/partitions/dos.c
+++ b/common/partitions/dos.c
@@ -205,11 +205,11 @@ static void dos_partition(void *buf, struct block_device *blk,
 			pd->used_entries++;
 			/*
 			 * Partitions of type 0x05 and 0x0f (and some more)
-			 * contain extended partitions. Only check for type 0x0f
-			 * here as this is the easiest to parse and common
-			 * enough.
+			 * contain extended partitions. Only check for type
+			 * 0x05 and 0x0f.
 			 */
-			if (pentry.dos_partition_type == 0x0f) {
+			if (pentry.dos_partition_type == 0x0f ||
+				pentry.dos_partition_type == 0x05) {
 				if (!extended_partition)
 					extended_partition = &pd->parts[n];
 				else
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
