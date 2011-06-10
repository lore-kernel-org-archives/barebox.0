Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.de ([217.6.246.34] helo=root.phytec.de)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QUyLh-0003AB-BY
	for barebox@lists.infradead.org; Fri, 10 Jun 2011 09:49:54 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
	by root.phytec.de (Postfix) with ESMTP id 0B526BF0CE
	for <barebox@lists.infradead.org>;
	Fri, 10 Jun 2011 11:52:44 +0200 (CEST)
From: Jan Weitzel <j.weitzel@phytec.de>
Date: Fri, 10 Jun 2011 11:49:50 +0200
Message-Id: <1307699390-11769-1-git-send-email-j.weitzel@phytec.de>
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
Subject: [PATCH] update: add xload
To: barebox@lists.infradead.org

add xload as vaild update type. Default name should be stored in enviroment
variable "xloadimage"

Signed-off-by: Jan Weitzel <j.weitzel@phytec.de>
---
 defaultenv/bin/_update_help |    3 ++-
 defaultenv/bin/update       |    2 ++
 2 files changed, 4 insertions(+), 1 deletions(-)

diff --git a/defaultenv/bin/_update_help b/defaultenv/bin/_update_help
index 5e3ca45..98096da 100644
--- a/defaultenv/bin/_update_help
+++ b/defaultenv/bin/_update_help
@@ -1,6 +1,6 @@
 #!/bin/sh
 
-echo "usage: update -t <kernel|rootfs|barebox|bareboxenv> -d <nor|nand> [-m tftp|xmodem] [-f imagename] -c"
+echo "usage: update -t <kernel|rootfs|barebox|bareboxenv|xload> -d <nor|nand> [-m tftp|xmodem] [-f imagename] -c"
 echo "update tools."
 echo ""
 echo "options"
@@ -11,3 +11,4 @@ echo "type update -t kernel -d <nor|nand> [-m tftp|xmodem] [-f imagename] to upd
 echo "type update -t rootfs -d <nor|nand> [-m tftp|xmodem] [-f imagename] to update rootfs into flash"
 echo "type update -t barebox -d <nor|nand> [-m tftp|xmodem] [-f imagename] to update barebox into flash"
 echo "type update -t bareboxenv -d <nor|nand> [-m tftp|xmodem] [-f imagename] to update bareboxenv into flash"
+echo "type update -t xload -d <nor|nand> [-m tftp|xmodem] [-f imagename] to update xload into flash"
diff --git a/defaultenv/bin/update b/defaultenv/bin/update
index 7c37c36..55ac10b 100644
--- a/defaultenv/bin/update
+++ b/defaultenv/bin/update
@@ -40,6 +40,8 @@ elif [ x${type} = xbareboxenv ]; then
 	if [ x${image} = x ]; then
 		image=bareboxenv.bin
 	fi
+elif [ x${type} = xxload ]; then
+	image=$xloadimage
 else
 	. /env/bin/_update_help
 	exit 1
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
