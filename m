Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T3Sqd-0006Qk-Hf
 for barebox@lists.infradead.org; Mon, 20 Aug 2012 14:21:03 +0000
From: Jan Luebbe <jlu@pengutronix.de>
Date: Mon, 20 Aug 2012 16:20:26 +0200
Message-Id: <1345472428-17417-12-git-send-email-jlu@pengutronix.de>
In-Reply-To: <1345472428-17417-1-git-send-email-jlu@pengutronix.de>
References: <1345472428-17417-1-git-send-email-jlu@pengutronix.de>
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
Subject: [PATCH 11/13] defaultenv: use /env/oftree if it exists
To: barebox@lists.infradead.org

Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
---
 defaultenv/bin/boot |    6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/defaultenv/bin/boot b/defaultenv/bin/boot
index cc72af5..bf6ec76 100644
--- a/defaultenv/bin/boot
+++ b/defaultenv/bin/boot
@@ -135,8 +135,10 @@ else
 	exit 1
 fi
 
-if [ x$oftree_loc = xnfs -o x$oftree_loc = xtftp ]; then
-	odev=/oftree
+if [ -e /env/oftree ]; then
+	odev="/env/oftree"
+elif [ x$oftree_loc = xnfs -o x$oftree_loc = xtftp ]; then
+	odev="/oftree"
 	$oftree_loc $oftreeimage $odev || exit 1
 elif [ x$oftree_loc = xnor ]; then
 	odev="/dev/nor0.oftree"
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
