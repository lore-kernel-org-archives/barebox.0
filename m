Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp35.i.mail.ru ([94.100.177.95])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Xjn2H-0005Pt-8T
 for barebox@lists.infradead.org; Thu, 30 Oct 2014 10:32:58 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Thu, 30 Oct 2014 13:32:31 +0300
Message-Id: <1414665151-7229-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH] serial: ns16550: Remove unused fields from NS16550_plat
 structure
To: barebox@lists.infradead.org

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 include/ns16550.h | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/include/ns16550.h b/include/ns16550.h
index 876bb04..ccf950b 100644
--- a/include/ns16550.h
+++ b/include/ns16550.h
@@ -34,9 +34,6 @@ struct NS16550_plat {
 	/** Clock speed */
 	unsigned int clock;
 	int shift;
-	unsigned int flags;
-	int mmio;
-#define NS16650_FLAG_DISABLE_FIFO	1
 };
 
 #endif				/* __NS16650_PLATFORM_H_ */
-- 
2.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
