Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PfqBW-0004fH-9o
	for barebox@lists.infradead.org; Thu, 20 Jan 2011 08:48:07 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 20 Jan 2011 09:47:52 +0100
Message-Id: <1295513272-22108-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1295513272-22108-1-git-send-email-s.hauer@pengutronix.de>
References: <1295513272-22108-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] defaultenv: do not print usage information for update
	script
To: barebox@lists.infradead.org

This usage printout during startup more looks like there is
something wrong with the environment than a helpful message.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 defaultenv/bin/init |    3 ---
 1 files changed, 0 insertions(+), 3 deletions(-)

diff --git a/defaultenv/bin/init b/defaultenv/bin/init
index 877b541..b66f7d9 100644
--- a/defaultenv/bin/init
+++ b/defaultenv/bin/init
@@ -28,9 +28,6 @@ echo
 echo -n "Hit any key to stop autoboot: "
 timeout -a $autoboot_timeout
 if [ $? != 0 ]; then
-	echo
-	update -h
-	echo
 	exit
 fi
 
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
