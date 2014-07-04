Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X36CZ-0006C9-TO
 for barebox@lists.infradead.org; Fri, 04 Jul 2014 16:19:10 +0000
Received: from [99.240.204.5] (port=53915 helo=crashcourse.ca)
 by astoria.ccjclearline.com with esmtpsa (TLSv1:AES128-SHA:128)
 (Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
 id 1X36CD-0002DD-11
 for barebox@lists.infradead.org; Fri, 04 Jul 2014 12:18:45 -0400
Date: Fri, 4 Jul 2014 12:18:42 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
Message-ID: <alpine.LFD.2.11.1407041217080.16169@localhost>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] Clean up Kconfig and source for a couple device tree commands.
To: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>


Correct options listings for a couple device tree-related commands.

Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

---

  i *think* the following is valid.

diff --git a/commands/Kconfig b/commands/Kconfig
index eed6fbd..3248de9 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -1950,10 +1950,11 @@ config CMD_OFTREE
 	help
 	  oftree - handle device trees

-	  Usage: oftree [-lpfdn] [DTB]
+	  Usage: oftree [-lspf] [DTB]

 	  Options:
 		  -l		Load DTB to internal device tree
+		  -s		save internal device tree to DTB
 		  -p		probe devices from stored device tree
 		  -f		free stored device tree

diff --git a/commands/of_dump.c b/commands/of_dump.c
index e341942..cafde07 100644
--- a/commands/of_dump.c
+++ b/commands/of_dump.c
@@ -101,7 +101,7 @@ BAREBOX_CMD_HELP_END
 BAREBOX_CMD_START(of_dump)
 	.cmd		= do_of_dump,
 	BAREBOX_CMD_DESC("dump devicetree nodes")
-	BAREBOX_CMD_OPTS("[-f]")
+	BAREBOX_CMD_OPTS("[-f] [NODE]")
 	BAREBOX_CMD_GROUP(CMD_GRP_MISC)
 	BAREBOX_CMD_COMPLETE(devicetree_file_complete)
 	BAREBOX_CMD_HELP(cmd_of_dump_help)
diff --git a/commands/oftree.c b/commands/oftree.c
index a3b0e04..983a0a5 100644
--- a/commands/oftree.c
+++ b/commands/oftree.c
@@ -145,7 +145,7 @@ BAREBOX_CMD_HELP_END
 BAREBOX_CMD_START(oftree)
 	.cmd		= do_oftree,
 	BAREBOX_CMD_DESC("handle device trees")
-	BAREBOX_CMD_OPTS("[-lpfs]")
+	BAREBOX_CMD_OPTS("[-lspf]")
 	BAREBOX_CMD_GROUP(CMD_GRP_MISC)
 	BAREBOX_CMD_HELP(cmd_oftree_help)
 BAREBOX_CMD_END

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
