Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x244.google.com ([2607:f8b0:400e:c05::244])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dukLW-0002N9-M8
 for barebox@lists.infradead.org; Wed, 20 Sep 2017 19:07:44 +0000
Received: by mail-pg0-x244.google.com with SMTP id i130so2125832pgc.0
 for <barebox@lists.infradead.org>; Wed, 20 Sep 2017 12:07:21 -0700 (PDT)
From: Aleksander Morgado <aleksander@aleksander.es>
Date: Wed, 20 Sep 2017 12:07:16 -0700
Message-Id: <20170920190716.25768-1-aleksander@aleksander.es>
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
Subject: [PATCH] console_countdown: ignore errors in getchar()
To: barebox@lists.infradead.org
Cc: Aleksander Morgado <aleksander@aleksander.es>

The getchar() call may return an error reported as a -1, e.g. when the
console detects a RATP message and switches to RATP mode.

In general it probably is a good idea to ignore these errors in the
console countdown operation; and in particular for the RATP usecase,
this also prevents from interfering with the countdown and menu just
when switching one of the consoles to RATP mode.

As a hint, this is what the standard console was printing due to this
issue when the RATP console was activated:

   Hit m for menu or any other key to stop autoboot: [: missing `]'

Signed-off-by: Aleksander Morgado <aleksander@aleksander.es>
---
 common/console_countdown.c | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/common/console_countdown.c b/common/console_countdown.c
index 03b9b3353..36da1ce57 100644
--- a/common/console_countdown.c
+++ b/common/console_countdown.c
@@ -47,12 +47,14 @@ int console_countdown(int timeout_s, unsigned flags, char *out_key)
 	do {
 		if (tstc()) {
 			key = getchar();
-			if (flags & CONSOLE_COUNTDOWN_ANYKEY)
-				goto out;
-			if (flags & CONSOLE_COUNTDOWN_RETURN && key == '\n')
-				goto out;
-			if (flags & CONSOLE_COUNTDOWN_CTRLC && key == 3)
-				goto out;
+			if (key >= 0) {
+				if (flags & CONSOLE_COUNTDOWN_ANYKEY)
+					goto out;
+				if (flags & CONSOLE_COUNTDOWN_RETURN && key == '\n')
+					goto out;
+				if (flags & CONSOLE_COUNTDOWN_CTRLC && key == 3)
+					goto out;
+			}
 			key = 0;
 		}
 		if ((flags & CONSOLE_COUNTDOWN_EXTERN) &&
-- 
2.14.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
