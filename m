Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0geP-00033F-FE
 for barebox@lists.infradead.org; Thu, 22 Aug 2019 06:32:50 +0000
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Thu, 22 Aug 2019 08:32:36 +0200
Message-Id: <20190822063237.15194-1-ahmad@a3f.at>
In-Reply-To: <20190822055114.931-4-ahmad@a3f.at>
References: <20190822055114.931-4-ahmad@a3f.at>
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
Subject: [PATCH 1/2] fixup! complete: remove unused variable
To: barebox@lists.infradead.org
Cc: mol@pengutronix.de, afa@pengutronix.de

Split this unrelated changes into a seperate commit.

---
 include/ata_drive.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/include/ata_drive.h b/include/ata_drive.h
index d61c6f11d4d3..11685eef12cf 100644
--- a/include/ata_drive.h
+++ b/include/ata_drive.h
@@ -14,7 +14,7 @@
  */
 
 #ifndef ATA_DISK_H
-#define ATA_DISK_H
+# define ATA_DISK
 
 #include <block.h>
 
@@ -197,4 +197,4 @@ struct device_d;
  *       0x400         data      data       16 bit area with 1 kiB in size
  */
 
-#endif /* ATA_DISK_H */
+#endif /* ATA_DISK */
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
