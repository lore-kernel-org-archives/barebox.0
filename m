Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 26.mail-out.ovh.net ([91.121.27.225])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1P5JUm-00085f-Co
	for barebox@lists.infradead.org; Mon, 11 Oct 2010 14:36:59 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 11 Oct 2010 16:34:44 +0200
Message-Id: <1286807684-17355-6-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20101011135329.GA7412@game.jcrosoft.org>
References: <20101011135329.GA7412@game.jcrosoft.org>
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
Subject: [PATCH 6/6] defaultenv: add update_barebox to update barebox easly
	via tftp or xmodem
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 defaultenv/bin/_update_help |    3 ++-
 defaultenv/bin/update       |    5 +++++
 2 files changed, 7 insertions(+), 1 deletions(-)

diff --git a/defaultenv/bin/_update_help b/defaultenv/bin/_update_help
index 1d9b28e..22d940e 100644
--- a/defaultenv/bin/_update_help
+++ b/defaultenv/bin/_update_help
@@ -1,6 +1,6 @@
 #!/bin/sh
 
-echo "usage: $0 -t <kernel|rootfs> -d <nor|nand> [-m tftp|xmodem] [-f imagename] -c"
+echo "usage: $0 -t <kernel|rootfs|barebox> -d <nor|nand> [-m tftp|xmodem] [-f imagename] -c"
 echo "update tools."
 echo ""
 echo "options"
@@ -9,3 +9,4 @@ echo ""
 echo "default mode is tftp"
 echo "type update -t kernel -d <nor|nand> [-m tftp|xmodem] [-f imagename] to update kernel into flash"
 echo "type update -t rootfs -d <nor|nand> [-m tftp|xmodem] [-f imagename] to update rootfs into flash"
+echo "type update -t barebox -d <nor|nand> [-m tftp|xmodem] [-f imagename] to update barebox into flash"
diff --git a/defaultenv/bin/update b/defaultenv/bin/update
index 032f340..3601177 100644
--- a/defaultenv/bin/update
+++ b/defaultenv/bin/update
@@ -30,6 +30,11 @@ if [ x${type} = xkernel ]; then
 elif [ x${type} = xrootfs ]; then
 	image=$rootfsimage
 	type=root
+elif [ x${type} = xbarebox ]; then
+	image=$bareboximage
+	if [ x${image} = x ]; then
+		imamge=barebox.bin
+	fi
 else
 	. /env/bin/_update_help
 	exit 1
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
