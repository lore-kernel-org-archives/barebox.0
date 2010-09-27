Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 68.mail-out.ovh.net ([91.121.185.69])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1P06vX-00073u-H4
	for barebox@lists.infradead.org; Mon, 27 Sep 2010 06:11:05 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 27 Sep 2010 08:09:25 +0200
Message-Id: <1285567767-938-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/3] linux16: fix cmd_tbl_t as struct command
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 commands/linux16.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/commands/linux16.c b/commands/linux16.c
index b15812f..918c937 100644
--- a/commands/linux16.c
+++ b/commands/linux16.c
@@ -150,7 +150,7 @@ struct linux_kernel_header {
  * (setup = 'real mode code' and kernel = 'protected mode code') to their
  * default locations, switches back to real mode and runs the setup code.
  */
-static int do_linux16(cmd_tbl_t *cmdtp, int argc, char *argv[])
+static int do_linux16(struct command *cmdtp, int argc, char *argv[])
 {
 	struct linux_kernel_header *lh = NULL;
 	int rc;
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
