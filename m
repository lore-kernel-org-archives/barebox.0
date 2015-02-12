Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YLpY3-0003mJ-Uk
 for barebox@lists.infradead.org; Thu, 12 Feb 2015 08:55:06 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 12 Feb 2015 09:54:34 +0100
Message-Id: <1423731274-9860-18-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1423731274-9860-1-git-send-email-s.hauer@pengutronix.de>
References: <1423731274-9860-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 17/17] defaultenv-2: mtdparts-add: Use new partition parameter
To: Barebox List <barebox@lists.infradead.org>

mtd devices now have a partition parameter to create mtd partitions.
Use it to simplify the mtdparts-add script.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 defaultenv/defaultenv-2-base/bin/mtdparts-add | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/defaultenv/defaultenv-2-base/bin/mtdparts-add b/defaultenv/defaultenv-2-base/bin/mtdparts-add
index a0e419e..805e3e2 100644
--- a/defaultenv/defaultenv-2-base/bin/mtdparts-add
+++ b/defaultenv/defaultenv-2-base/bin/mtdparts-add
@@ -26,13 +26,12 @@ if [ -z "${parts}" ]; then
 	exit
 fi
 
-if [ -e /tmp/mtdparts/${device} ]; then
-	delpart /dev/${device}.*
+${device}.partitions="$parts"
+if [ $? != 0 ]; then
+	echo "Failed to add partitions $parts to $device"
+	exit 1
 fi
 
-addpart -n /dev/${device} "$parts" || exit
-mkdir -p /tmp/mtdparts/${device}
-
 if [ -n ${kernelname} ]; then
 	global linux.mtdparts.${device}
 	global.linux.mtdparts.${device}="${kernelname}:${parts}"
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
