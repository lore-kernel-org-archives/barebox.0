Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SIlsL-0000Uo-87
 for barebox@lists.infradead.org; Fri, 13 Apr 2012 19:09:42 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 13 Apr 2012 21:09:33 +0200
Message-Id: <1334344173-26365-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] addpart: remove duplicate line in help text
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/partition.c |    1 -
 1 file changed, 1 deletion(-)

diff --git a/commands/partition.c b/commands/partition.c
index 17e3678..4892261 100644
--- a/commands/partition.c
+++ b/commands/partition.c
@@ -169,7 +169,6 @@ BAREBOX_CMD_HELP_USAGE("addpart <device> <part_desc>\n")
 BAREBOX_CMD_HELP_SHORT("Add a partition description to a device.\n")
 BAREBOX_CMD_HELP_OPT  ("-n", "no prefix. Do not prepend the device name as prefix before the partition name\n")
 BAREBOX_CMD_HELP_OPT  ("<device>",    "device being worked on\n")
-BAREBOX_CMD_HELP_OPT  ("<device>",    "device being worked on\n")
 BAREBOX_CMD_HELP_OPT  ("<part_desc>", "size1[@offset1](name1)[ro],size2[@offset2](name2)[ro],...\n")
 BAREBOX_CMD_HELP_END
 
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
