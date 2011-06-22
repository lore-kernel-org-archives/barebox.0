Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.x-arc.co.uk ([217.6.246.34] helo=root.phytec.de)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QZJwh-0004ps-Qe
	for barebox@lists.infradead.org; Wed, 22 Jun 2011 09:42:04 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
	by root.phytec.de (Postfix) with ESMTP id ADCAFBF092
	for <barebox@lists.infradead.org>;
	Wed, 22 Jun 2011 11:44:57 +0200 (CEST)
From: Jan Weitzel <j.weitzel@phytec.de>
Date: Wed, 22 Jun 2011 11:41:55 +0200
Message-Id: <1308735715-8758-1-git-send-email-j.weitzel@phytec.de>
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
Subject: [RFC] update: Add eccmode switching for different types
To: barebox@lists.infradead.org

to use update on nand with different eccmodes for the nand partitions
we need to set the eccmode before updating.
Adding eccdev and eccmode to enviroment to use.
eccdev example: gpmc_nand0
eccmode for the different types:
root_eccmode
barebox_eccmode
bareboxenv_eccmode
xload_eccmode

Signed-off-by: Jan Weitzel <j.weitzel@phytec.de>
---
 defaultenv/bin/update |    8 ++++++++
 1 files changed, 8 insertions(+), 0 deletions(-)

diff --git a/defaultenv/bin/update b/defaultenv/bin/update
index 55ac10b..7473611 100644
--- a/defaultenv/bin/update
+++ b/defaultenv/bin/update
@@ -27,21 +27,26 @@ done
 
 if [ x${type} = xkernel ]; then
 	image=$kernelimage
+	eccmode=${kernel_eccmode}
 elif [ x${type} = xrootfs ]; then
 	image=$rootfsimage
 	type=root
+	eccmode=${root_eccmode}
 elif [ x${type} = xbarebox ]; then
 	image=$bareboximage
 	if [ x${image} = x ]; then
 		image=barebox.bin
 	fi
+	eccmode=${barebox_eccmode}
 elif [ x${type} = xbareboxenv ]; then
 	image=$bareboxenvimage
 	if [ x${image} = x ]; then
 		image=bareboxenv.bin
 	fi
+	eccmode=${bareboxenv_eccmode}
 elif [ x${type} = xxload ]; then
 	image=$xloadimage
+	eccmode=${xload_eccmode}
 else
 	. /env/bin/_update_help
 	exit 1
@@ -53,6 +58,9 @@ fi
 
 if [ x${device_type} = xnand ]; then
 	part=/dev/nand0.${type}.bb
+	if [ x${eccmode} != x ] && [ x${eccdev} != x ]; then
+		${eccdev}.eccmode=${eccmode}
+	fi
 elif [ x${device_type} = xnor ]; then
 	part=/dev/nor0.${type}
 else
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
