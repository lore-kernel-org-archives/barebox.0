Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp37.i.mail.ru ([94.100.177.97])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UTPGg-0001yR-NR
 for barebox@lists.infradead.org; Sat, 20 Apr 2013 04:19:20 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Sat, 20 Apr 2013 08:18:48 +0400
Message-Id: <1366431532-29121-2-git-send-email-shc_work@mail.ru>
In-Reply-To: <1366431532-29121-1-git-send-email-shc_work@mail.ru>
References: <1366431532-29121-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH] ubimkvol: Typo fix
To: barebox@lists.infradead.org


Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 commands/ubi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/commands/ubi.c b/commands/ubi.c
index 1653eaa..7348394 100644
--- a/commands/ubi.c
+++ b/commands/ubi.c
@@ -47,7 +47,7 @@ static int do_ubimkvol(int argc, char *argv[])
 static const __maybe_unused char cmd_ubimkvol_help[] =
 "Usage: ubimkvol <ubidev> <name> <size>\n"
 "Create an ubi volume on <ubidev> with name <name> and size <size>\n"
-"If size os zero all available space is used for the volume\n";
+"If size is zero all available space is used for the volume\n";
 
 BAREBOX_CMD_START(ubimkvol)
 	.cmd		= do_ubimkvol,
-- 
1.8.1.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
