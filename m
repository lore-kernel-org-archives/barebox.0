Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jw3vz-0007BF-BH
 for barebox@lists.infradead.org; Thu, 16 Jul 2020 13:28:24 +0000
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 0056027E084E
 for <barebox@lists.infradead.org>; Thu, 16 Jul 2020 15:28:12 +0200 (CEST)
From: Jules Maselbas <jmaselbas@kalray.eu>
Date: Thu, 16 Jul 2020 15:27:53 +0200
Message-Id: <20200716132753.16342-1-jmaselbas@kalray.eu>
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
Subject: [PATCH] console_countdown: Add CR as valid return key
To: Barebox List <barebox@lists.infradead.org>
Cc: Jules Maselbas <jmaselbas@kalray.eu>

Now both LF ('\n') and CR ('\r') are valid keys to abort
console_countdown when using CONSOLE_COUNTDOWN_RETURN flag.

Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 common/console_countdown.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/console_countdown.c b/common/console_countdown.c
index 74dc38279..b92948f50 100644
--- a/common/console_countdown.c
+++ b/common/console_countdown.c
@@ -64,7 +64,7 @@ int console_countdown(int timeout_s, unsigned flags, const char *keys,
 					goto out;
 				if (flags & CONSOLE_COUNTDOWN_ANYKEY)
 					goto out;
-				if (flags & CONSOLE_COUNTDOWN_RETURN && key == '\n')
+				if (flags & CONSOLE_COUNTDOWN_RETURN && (key == '\n' || key == '\r'))
 					goto out;
 				if (flags & CONSOLE_COUNTDOWN_CTRLC && key == 3)
 					goto out;
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
