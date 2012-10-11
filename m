Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-f171.google.com ([209.85.212.171])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TMPMs-0000Uk-1N
 for barebox@lists.infradead.org; Thu, 11 Oct 2012 20:28:31 +0000
Received: by mail-wi0-f171.google.com with SMTP id hj13so6894187wib.0
 for <barebox@lists.infradead.org>; Thu, 11 Oct 2012 13:28:27 -0700 (PDT)
From: Franck Jullien <franck.jullien@gmail.com>
Date: Thu, 11 Oct 2012 22:28:11 +0200
Message-Id: <1349987291-11714-2-git-send-email-franck.jullien@gmail.com>
In-Reply-To: <1349987291-11714-1-git-send-email-franck.jullien@gmail.com>
References: <1349987291-11714-1-git-send-email-franck.jullien@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/2] common/partitions.c: make use of is_fat_or_mbr
To: barebox@lists.infradead.org

Signed-off-by: Franck Jullien <franck.jullien@gmail.com>
---
 common/partitions.c |    3 ++-
 1 files changed, 2 insertions(+), 1 deletions(-)

diff --git a/common/partitions.c b/common/partitions.c
index 0e42937..85bca32 100644
--- a/common/partitions.c
+++ b/common/partitions.c
@@ -28,6 +28,7 @@
 #include <asm/unaligned.h>
 #include <disks.h>
 #include <dma.h>
+#include <filetype.h>
 
 struct partition {
 	uint64_t first_sec;
@@ -85,7 +86,7 @@ static void __maybe_unused try_dos_partition(struct block_device *blk,
 		goto on_error;
 	}
 
-	if ((buffer[510] != 0x55) || (buffer[511] != 0xAA)) {
+	if(is_fat_or_mbr(buffer, NULL) != filetype_mbr) {
 		dev_info(blk->dev, "No partition table found\n");
 		goto on_error;
 	}
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
