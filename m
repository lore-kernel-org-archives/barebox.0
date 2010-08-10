Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from tango.tkos.co.il ([62.219.50.35])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Oinbu-0006cR-H5
	for barebox@lists.infradead.org; Tue, 10 Aug 2010 12:07:15 +0000
From: Baruch Siach <baruch@tkos.co.il>
Date: Tue, 10 Aug 2010 15:06:51 +0300
Message-Id: <ae2bb35f25192515bafff6a78a1b7f915b9f0b53.1281441977.git.baruch@tkos.co.il>
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
Subject: [PATCH] cp: fix help text
To: barebox@lists.infradead.org

Copy to target directory is supported since commit b36fca0c, circa 2007.

Signed-off-by: Baruch Siach <baruch@tkos.co.il>
---
 commands/cp.c |    2 --
 1 files changed, 0 insertions(+), 2 deletions(-)

diff --git a/commands/cp.c b/commands/cp.c
index a0c7c84..2c35ba1 100644
--- a/commands/cp.c
+++ b/commands/cp.c
@@ -80,8 +80,6 @@ out:
 static const __maybe_unused char cmd_cp_help[] =
 "Usage: cp <source> <destination>\n"
 "cp copies file <source> to <destination>.\n"
-"Currently only this form is supported and you have to specify the exact target\n"
-"filename (not a target directory).\n"
 "This command is file based only. See memcpy for memory copy\n";
 
 BAREBOX_CMD_START(cp)
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
