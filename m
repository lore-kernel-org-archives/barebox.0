Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp38.i.mail.ru ([94.100.177.98])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WsY0a-0003Rt-4O
 for barebox@lists.infradead.org; Thu, 05 Jun 2014 13:47:08 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Thu,  5 Jun 2014 17:46:43 +0400
Message-Id: <1401976003-30679-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH] 2048: Reset score on startup
To: barebox@lists.infradead.org

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 commands/2048.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/commands/2048.c b/commands/2048.c
index 26c9e6c..5ceb5cf 100644
--- a/commands/2048.c
+++ b/commands/2048.c
@@ -337,6 +337,8 @@ static int do_2048(int argc, char *argv[])
 		return test();
 	}
 
+	score = 0;
+
 	printf("\033[?25l\033[2J\033[H");
 
 	memset(board,0,sizeof(board));
-- 
1.8.5.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
