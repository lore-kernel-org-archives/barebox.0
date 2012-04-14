Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 15.mo3.mail-out.ovh.net ([87.98.150.177]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SJ5i7-0000qw-IH
 for barebox@lists.infradead.org; Sat, 14 Apr 2012 16:20:30 +0000
Received: from mail622.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id C4673FF8828
 for <barebox@lists.infradead.org>; Sat, 14 Apr 2012 18:21:35 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sat, 14 Apr 2012 18:02:20 +0200
Message-Id: <1334419343-1121-3-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20120414155623.GA30672@game.jcrosoft.org>
References: <20120414155623.GA30672@game.jcrosoft.org>
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
Subject: [PATCH 3/6] defaultenv/update: add oftree support
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 defaultenv/bin/_update_help |    3 ++-
 defaultenv/bin/update       |    5 +++++
 2 files changed, 7 insertions(+), 1 deletions(-)

diff --git a/defaultenv/bin/_update_help b/defaultenv/bin/_update_help
index 3b7ad23..b41e288 100644
--- a/defaultenv/bin/_update_help
+++ b/defaultenv/bin/_update_help
@@ -1,6 +1,6 @@
 #!/bin/sh
 
-echo "usage: update -t <kernel|rootfs|barebox|bareboxenv|xload> -d <nor|nand> [-m tftp|xmodem] [-f imagename] -c"
+echo "usage: update -t <kernel|rootfs|barebox|bareboxenv|xload|oftree> -d <nor|nand> [-m tftp|xmodem] [-f imagename] -c"
 echo "update tools."
 echo ""
 echo "options"
@@ -12,3 +12,4 @@ echo "type update -t rootfs -d <nor|nand> [-m tftp|xmodem|nfs] [-f imagename] to
 echo "type update -t barebox -d <nor|nand> [-m tftp|xmodem|nfs] [-f imagename] to update barebox into flash"
 echo "type update -t bareboxenv -d <nor|nand> [-m tftp|xmodem|nfs] [-f imagename] to update bareboxenv into flash"
 echo "type update -t xload -d <nor|nand> [-m tftp|xmodem|nfs] [-f imagename] to update xload into flash"
+echo "type update -t oftree -d <nor|nand> [-m tftp|xmodem|nfs] [-f imagename] to update oftree into flash"
diff --git a/defaultenv/bin/update b/defaultenv/bin/update
index 96442b1..1578789 100644
--- a/defaultenv/bin/update
+++ b/defaultenv/bin/update
@@ -36,6 +36,11 @@ elif [ x${type} = xbarebox ]; then
 	if [ -z ${image} ]; then
 		image=barebox.bin
 	fi
+elif [ x${type} = xoftree ]; then
+	image=$oftreeimage
+	if [ -z ${image} ]; then
+		image=oftree.bin
+	fi
 elif [ x${type} = xbareboxenv ]; then
 	image=$bareboxenvimage
 	if [ -z ${image} ]; then
-- 
1.7.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
