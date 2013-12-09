Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x230.google.com ([2a00:1450:400c:c05::230])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VpzrQ-000435-AW
 for barebox@lists.infradead.org; Mon, 09 Dec 2013 12:22:53 +0000
Received: by mail-wi0-f176.google.com with SMTP id hq4so3659914wib.3
 for <barebox@lists.infradead.org>; Mon, 09 Dec 2013 04:22:29 -0800 (PST)
From: Alexander Aring <alex.aring@gmail.com>
Date: Mon,  9 Dec 2013 13:15:13 +0100
Message-Id: <1386591313-15913-1-git-send-email-alex.aring@gmail.com>
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
Subject: [PATCH] memtest: add missing newline at usagestring
To: barebox@lists.infradead.org

All other commands have a newline at the end of usagestring. Add this
for memtest as well.

Signed-off-by: Alexander Aring <alex.aring@gmail.com>
---
 commands/memtest.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/commands/memtest.c b/commands/memtest.c
index c82badc..e988132 100644
--- a/commands/memtest.c
+++ b/commands/memtest.c
@@ -244,7 +244,7 @@ static const __maybe_unused char cmd_memtest_help[] =
 "Usage: memtest [OPTION]...\n"
 "memtest related commands\n"
 "	-i	<iterations>	iterations [default=1, endless=0].\n"
-"	-b			perform only a test on buslines.";
+"	-b			perform only a test on buslines.\n";
 
 BAREBOX_CMD_START(memtest)
 	.cmd		= do_memtest,
-- 
1.8.5.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
