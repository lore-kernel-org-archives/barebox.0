Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YLpY2-0003m4-7c
 for barebox@lists.infradead.org; Thu, 12 Feb 2015 08:54:59 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 12 Feb 2015 09:54:33 +0100
Message-Id: <1423731274-9860-17-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 16/17] defaultenv-2: mtdparts-add: remove unused variable
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 defaultenv/defaultenv-2-base/bin/mtdparts-add | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/defaultenv/defaultenv-2-base/bin/mtdparts-add b/defaultenv/defaultenv-2-base/bin/mtdparts-add
index f49561c..a0e419e 100644
--- a/defaultenv/defaultenv-2-base/bin/mtdparts-add
+++ b/defaultenv/defaultenv-2-base/bin/mtdparts-add
@@ -5,7 +5,6 @@ mkdir -p /tmp/mtdparts
 parts=
 device=
 kernelname=
-bbdev=
 
 while getopt "p:d:k:b" opt; do
         if [ ${opt} = p ]; then
@@ -14,8 +13,6 @@ while getopt "p:d:k:b" opt; do
                 device=${OPTARG}
         elif [ ${opt} = k ]; then
                 kernelname=${OPTARG}
-	elif [ ${opt} = b ]; then
-		bbdev=true
         fi
 done
 
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
