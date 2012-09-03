Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-f171.google.com ([209.85.212.171])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T8PyO-0001qu-Ts
 for barebox@lists.infradead.org; Mon, 03 Sep 2012 06:17:25 +0000
Received: by wibhq4 with SMTP id hq4so2591976wib.0
 for <barebox@lists.infradead.org>; Sun, 02 Sep 2012 23:17:23 -0700 (PDT)
From: Alexander Aring <alex.aring@googlemail.com>
Date: Mon,  3 Sep 2012 08:18:07 +0200
Message-Id: <1346653088-7576-2-git-send-email-alex.aring@gmail.com>
In-Reply-To: <1346653088-7576-1-git-send-email-alex.aring@gmail.com>
References: <1346653088-7576-1-git-send-email-alex.aring@gmail.com>
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
Subject: [PATCH 2/3] sandbox: fix whitespaces in board file
To: barebox@lists.infradead.org

Fix whitespaces in board file.

Signed-off-by: Alexander Aring <alex.aring@gmail.com>
---
 arch/sandbox/board/board.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/sandbox/board/board.c b/arch/sandbox/board/board.c
index d2f0667..6bccd2c 100644
--- a/arch/sandbox/board/board.c
+++ b/arch/sandbox/board/board.c
@@ -29,7 +29,7 @@
 
 static struct device_d tap_device = {
 	.id	  = DEVICE_ID_DYNAMIC,
-        .name     = "tap",
+	.name     = "tap",
 };
 
 static int devices_init(void)
-- 
1.7.12


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
