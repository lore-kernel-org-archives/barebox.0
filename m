Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp38.i.mail.ru ([94.100.177.98])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W8ZmE-0005B9-6k
 for barebox@lists.infradead.org; Wed, 29 Jan 2014 18:22:19 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Wed, 29 Jan 2014 22:21:46 +0400
Message-Id: <1391019709-30606-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 1/4] MIPS: mach-ar231x: Fix uninitialized variable
To: barebox@lists.infradead.org

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/mips/mach-ar231x/board.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/mips/mach-ar231x/board.c b/arch/mips/mach-ar231x/board.c
index f1b876f..8bd1787 100644
--- a/arch/mips/mach-ar231x/board.c
+++ b/arch/mips/mach-ar231x/board.c
@@ -111,7 +111,7 @@ static u16
 ar231x_cksum16(u8 *data, int size)
 {
 	int i;
-	u16 sum;
+	u16 sum = 0;
 
 	for (i = 0; i < size; i++)
 		sum += data[i];
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
