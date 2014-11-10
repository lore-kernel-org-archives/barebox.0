Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XnizA-000741-Ul
 for barebox@lists.infradead.org; Mon, 10 Nov 2014 07:02:01 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 10 Nov 2014 08:01:38 +0100
Message-Id: <1415602898-14537-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] command: memset: Fix argument order in help text
To: barebox@lists.infradead.org

memset takes ADDR DATA COUNT just like the C function, not
ADDR COUNT DATA.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/memset.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/commands/memset.c b/commands/memset.c
index f869306..bb5f46d 100644
--- a/commands/memset.c
+++ b/commands/memset.c
@@ -98,7 +98,7 @@ BAREBOX_CMD_HELP_END
 BAREBOX_CMD_START(memset)
 	.cmd		= do_memset,
 	BAREBOX_CMD_DESC("memory fill")
-	BAREBOX_CMD_OPTS("[-bwld] ADDR COUNT DATA")
+	BAREBOX_CMD_OPTS("[-bwld] ADDR DATA COUNT")
 	BAREBOX_CMD_GROUP(CMD_GRP_MEM)
 	BAREBOX_CMD_HELP(cmd_memset_help)
 BAREBOX_CMD_END
-- 
2.1.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
