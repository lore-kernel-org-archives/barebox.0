Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1USQie-0002R1-0b
 for barebox@lists.infradead.org; Wed, 17 Apr 2013 11:40:09 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 17 Apr 2013 13:40:02 +0200
Message-Id: <1366198803-25613-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] defaultenv-2: Fix verbose booting
To: barebox@lists.infradead.org

During option parsing we use the variable BOOT_BOOTMOPTS, all other
scripts use BOOT_BOOTM_OPTS though. Fix this by using the same variable
everywhere.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 defaultenv-2/base/bin/boot | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/defaultenv-2/base/bin/boot b/defaultenv-2/base/bin/boot
index f7f460e..eed4b3c 100644
--- a/defaultenv-2/base/bin/boot
+++ b/defaultenv-2/base/bin/boot
@@ -17,7 +17,7 @@ $0 [OPTIONS] [source]\n
 
 while getopt "vdhl" opt; do
 	if [ ${opt} = v ]; then
-		BOOT_BOOTMOPTS="$BOOT_BOOTMOPTS -v"
+		BOOT_BOOTM_OPTS="$BOOT_BOOTM_OPTS -v"
 		BOOT_VERBOSE=1
 	elif [ ${opt} = d ]; then
 		BOOT_DRYRUN=1
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
