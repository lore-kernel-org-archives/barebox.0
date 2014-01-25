Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp35.i.mail.ru ([94.100.177.95])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W790M-0006z2-IM
 for barebox@lists.infradead.org; Sat, 25 Jan 2014 19:35:05 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Sat, 25 Jan 2014 23:34:19 +0400
Message-Id: <1390678468-28378-3-git-send-email-shc_work@mail.ru>
In-Reply-To: <1390678468-28378-1-git-send-email-shc_work@mail.ru>
References: <1390678468-28378-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 03/12] ARM: tqma6x: Use __iomem specifier for memory pointer
To: barebox@lists.infradead.org

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/boards/tqma6x/board.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/tqma6x/board.c b/arch/arm/boards/tqma6x/board.c
index a870bf2..6ece7b5 100644
--- a/arch/arm/boards/tqma6x/board.c
+++ b/arch/arm/boards/tqma6x/board.c
@@ -106,8 +106,8 @@ extern char flash_header_tqma6q_end[];
 
 static int tqma6x_env_init(void)
 {
-	void *flash_header_start;
-	void *flash_header_end;
+	void __iomem *flash_header_start;
+	void __iomem *flash_header_end;
 
 	if (of_machine_is_compatible("tq,tqma6s")) {
 		flash_header_start = (void *)flash_header_tqma6dl_start;
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
