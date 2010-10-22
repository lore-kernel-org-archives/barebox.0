Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P9HT5-0006Hy-1v
	for barebox@lists.infradead.org; Fri, 22 Oct 2010 13:15:39 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 22 Oct 2010 15:15:30 +0200
Message-Id: <1287753331-7696-13-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1287753331-7696-1-git-send-email-s.hauer@pengutronix.de>
References: <1287753331-7696-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 12/13] defaultenv: fix mtdparts
To: barebox@lists.infradead.org

We had some \" in mtdparts to allow for spaces in the mtdparts
kernel option. Barebox does not handle these correctly, so remove
them and disallow spaces in mtdparts

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 defaultenv/bin/boot |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/defaultenv/bin/boot b/defaultenv/bin/boot
index 3fdc5c1..42c7ec2 100644
--- a/defaultenv/bin/boot
+++ b/defaultenv/bin/boot
@@ -51,7 +51,7 @@ if [ -n $nand_parts ]; then
 fi
 
 if [ -n $mtdparts ]; then
-	bootargs="${bootargs} mtdparts=\"${mtdparts}\""
+	bootargs="${bootargs} mtdparts=${mtdparts}"
 fi
 
 if [ ! -e /dev/ram0.kernelraw ]; then
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
