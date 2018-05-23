Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x244.google.com ([2a00:1450:400c:c09::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fLSDp-0003BA-41
 for barebox@lists.infradead.org; Wed, 23 May 2018 11:46:26 +0000
Received: by mail-wm0-x244.google.com with SMTP id j4-v6so8166348wme.1
 for <barebox@lists.infradead.org>; Wed, 23 May 2018 04:46:14 -0700 (PDT)
From: Peter Mamonov <pmamonov@gmail.com>
Date: Wed, 23 May 2018 14:45:55 +0300
Message-Id: <20180523114555.6031-1-pmamonov@gmail.com>
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
Subject: [PATCH] mw command: add `-x` option description
To: barebox@lists.infradead.org
Cc: Peter Mamonov <pmamonov@gmail.com>

Signed-off-by: Peter Mamonov <pmamonov@gmail.com>
---
 commands/mw.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/commands/mw.c b/commands/mw.c
index bb6a16ef3..7ff589abb 100644
--- a/commands/mw.c
+++ b/commands/mw.c
@@ -107,12 +107,13 @@ BAREBOX_CMD_HELP_OPT ("-w",  "word access (16 bit)")
 BAREBOX_CMD_HELP_OPT ("-l",  "long access (32 bit)")
 BAREBOX_CMD_HELP_OPT ("-q",  "quad access (64 bit)")
 BAREBOX_CMD_HELP_OPT ("-d FILE",  "write file (default /dev/mem)")
+BAREBOX_CMD_HELP_OPT ("-x",       "swap bytes")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(mw)
 	.cmd		= do_mem_mw,
 	BAREBOX_CMD_DESC("memory write")
-	BAREBOX_CMD_OPTS("[-bwld] REGION DATA...")
+	BAREBOX_CMD_OPTS("[-bwldx] REGION DATA...")
 	BAREBOX_CMD_GROUP(CMD_GRP_MEM)
 	BAREBOX_CMD_HELP(cmd_mw_help)
 BAREBOX_CMD_END
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
