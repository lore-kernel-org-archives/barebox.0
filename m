Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lpp01m010-f49.google.com ([209.85.215.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Syos9-0005Rf-5i
 for barebox@lists.infradead.org; Tue, 07 Aug 2012 18:51:18 +0000
Received: by lagu2 with SMTP id u2so1072727lag.36
 for <barebox@lists.infradead.org>; Tue, 07 Aug 2012 11:51:14 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue,  7 Aug 2012 22:51:06 +0400
Message-Id: <1344365466-17944-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH] commands: memset: fix help message
To: barebox@lists.infradead.org

memset has no '-s' option so remove related help string.
Also this patch makes the command's description more clear.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 commands/mem.c |    5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/commands/mem.c b/commands/mem.c
index cc94062..ec46a48 100644
--- a/commands/mem.c
+++ b/commands/mem.c
@@ -566,14 +566,13 @@ out:
 }
 
 static const __maybe_unused char cmd_memset_help[] =
-"Usage: memset [OPTIONS] <src> <c> <n>\n"
+"Usage: memset [OPTIONS] <addr> <c> <n>\n"
 "\n"
 "options:\n"
 "  -b, -w, -l   use byte, halfword, or word accesses\n"
-"  -s <file>    source file (default /dev/mem)\n"
 "  -d <file>    destination file (default /dev/mem)\n"
 "\n"
-"Fill the first n bytes of area with byte c\n";
+"Fill the first <n> bytes at offset <addr> with byte <c>\n";
 
 BAREBOX_CMD_START(memset)
 	.cmd		= do_memset,
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
