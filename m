Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from bar.sig21.net ([80.81.252.164])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1ScIju-0006m5-9D
 for barebox@lists.infradead.org; Wed, 06 Jun 2012 16:05:43 +0000
Received: from p5099b351.dip0.t-ipconnect.de ([80.153.179.81] helo=zzz.local)
 by bar.sig21.net with esmtpsa (TLS1.0:RSA_ARCFOUR_SHA1:16)
 (Exim 4.72) (envelope-from <js@sig21.net>) id 1ScIjO-00080S-8i
 for barebox@lists.infradead.org; Wed, 06 Jun 2012 18:05:15 +0200
Received: from js by zzz.local with local (Exim 4.80)
 (envelope-from <js@sig21.net>) id 1ScIjN-00060H-Kx
 for barebox@lists.infradead.org; Wed, 06 Jun 2012 18:05:09 +0200
From: Johannes Stezenbach <js@sig21.net>
Date: Wed,  6 Jun 2012 18:04:58 +0200
Message-Id: <1338998700-23012-4-git-send-email-js@sig21.net>
In-Reply-To: <1338998700-23012-1-git-send-email-js@sig21.net>
References: <1338998700-23012-1-git-send-email-js@sig21.net>
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
Subject: [PATCH 3/5] m25p80: progressbar tweak
To: barebox@lists.infradead.org

Show progressbar even when erasing just a single sector,
otherwise it looks as if erase didn't do anything.

Signed-off-by: Johannes Stezenbach <js@sig21.net>
---
 drivers/nor/m25p80.c |    4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/nor/m25p80.c b/drivers/nor/m25p80.c
index 86e6d25..77669c2 100644
--- a/drivers/nor/m25p80.c
+++ b/drivers/nor/m25p80.c
@@ -214,7 +214,7 @@ static ssize_t m25p80_erase(struct cdev *cdev, size_t count, unsigned long offse
 
 	start_sector = offset / flash->erasesize;
 	end_sector = (offset + count - 1) / flash->erasesize;
-	init_progression_bar(end_sector - start_sector);
+	init_progression_bar(end_sector - start_sector + 1);
 
 	/* whole-chip erase? */
 	if (len == flash->size) {
@@ -237,11 +237,11 @@ static ssize_t m25p80_erase(struct cdev *cdev, size_t count, unsigned long offse
 			if (erase_sector(flash, addr))
 				return -EIO;
 
+			show_progress(++progress);
 			if (len <= flash->erasesize)
 				break;
 			addr += flash->erasesize;
 			len -= flash->erasesize;
-			show_progress(progress++);
 		}
 	}
 
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
