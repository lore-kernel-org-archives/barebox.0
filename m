Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp14.mail.ru ([94.100.176.91])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UCtUY-0005kU-15
 for barebox@lists.infradead.org; Tue, 05 Mar 2013 15:09:22 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Tue,  5 Mar 2013 19:09:02 +0400
Message-Id: <1362496142-23729-2-git-send-email-shc_work@mail.ru>
In-Reply-To: <1362496142-23729-1-git-send-email-shc_work@mail.ru>
References: <1362496142-23729-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 2/2] w1: Fix compiler warning
To: barebox@lists.infradead.org

This patch fixes following warning:
drivers/w1/w1.c: In function 'w1_found':
drivers/w1/w1.c:471: warning: integer constant is too large for 'long' type

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 drivers/w1/w1.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/w1/w1.c b/drivers/w1/w1.c
index eb6bec8..bbef470 100644
--- a/drivers/w1/w1.c
+++ b/drivers/w1/w1.c
@@ -468,7 +468,7 @@ void w1_found(struct w1_bus *bus, u64 rn)
 
 	dev->reg_num = rn;
 	dev->fid = tmp >> 56;
-	dev->id = (tmp >> 8) & 0xffffffffffff;
+	dev->id = (tmp >> 8) & 0xffffffffffffULL;
 	dev->crc = tmp & 0xff;
 
 	dev_dbg(&bus->dev, "%s:  familly = 0x%x, id = 0x%llx, crc = 0x%x\n",
-- 
1.7.12.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
