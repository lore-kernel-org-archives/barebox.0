Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from tango.tkos.co.il ([62.219.50.35])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Ogdxl-0005fT-7A
	for barebox@lists.infradead.org; Wed, 04 Aug 2010 13:24:54 +0000
From: Baruch Siach <baruch@tkos.co.il>
Date: Wed,  4 Aug 2010 16:24:38 +0300
Message-Id: <82244fa27764bff2dc26690b4c96fddda64ab616.1280928219.git.baruch@tkos.co.il>
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
Subject: [PATCH] mw: fix help text
To: barebox@lists.infradead.org

Signed-off-by: Baruch Siach <baruch@tkos.co.il>
---
 commands/mem.c |    4 +++-
 1 files changed, 3 insertions(+), 1 deletions(-)

diff --git a/commands/mem.c b/commands/mem.c
index d609805..8a4267c 100644
--- a/commands/mem.c
+++ b/commands/mem.c
@@ -292,7 +292,9 @@ static int do_mem_mw(struct command *cmdtp, int argc, char *argv[])
 static const __maybe_unused char cmd_mw_help[] =
 "Usage: mw [OPTIONS] <region> <value(s)>\n"
 "Write value(s) to the specifies region.\n"
-"see 'help md' for supported options.\n";
+"options:\n"
+"  -b, -w, -l	use byte, halfword, or word accesses\n"
+"  -d <file>	write file (default /dev/mem)\n";
 
 BAREBOX_CMD_START(mw)
 	.cmd		= do_mem_mw,
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
