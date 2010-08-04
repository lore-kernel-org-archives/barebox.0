Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from tango.tkos.co.il ([62.219.50.35])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OgYxe-0003aN-7y
	for barebox@lists.infradead.org; Wed, 04 Aug 2010 08:04:27 +0000
From: Baruch Siach <baruch@tkos.co.il>
Date: Wed,  4 Aug 2010 11:04:10 +0300
Message-Id: <dc1d8290e67d38ef25daa2a86b8547afafa71ed3.1280909003.git.baruch@tkos.co.il>
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
Subject: [PATCH] md: fix help text
To: barebox@lists.infradead.org

Signed-off-by: Baruch Siach <baruch@tkos.co.il>
---
 commands/mem.c |    1 -
 1 files changed, 0 insertions(+), 1 deletions(-)

diff --git a/commands/mem.c b/commands/mem.c
index bd1d349..d609805 100644
--- a/commands/mem.c
+++ b/commands/mem.c
@@ -217,7 +217,6 @@ static const __maybe_unused char cmd_md_help[] =
 "display (hexdump) a memory region.\n"
 "options:\n"
 "  -s <file>   display file (default /dev/mem)\n"
-"  -d <file>   write file (default /dev/mem)\n"
 "  -b          output in bytes\n"
 "  -w          output in halfwords (16bit)\n"
 "  -l          output in words (32bit)\n"
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
