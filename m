Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 68.mail-out.ovh.net ([91.121.185.69])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PM4VC-0003wE-9m
	for barebox@lists.infradead.org; Fri, 26 Nov 2010 20:02:39 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 26 Nov 2010 20:58:36 +0100
Message-Id: <1290801517-3281-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/2] defaultenv/udpate: fix typo in default barebox image name
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 defaultenv/bin/update |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/defaultenv/bin/update b/defaultenv/bin/update
index 3601177..29c240b 100644
--- a/defaultenv/bin/update
+++ b/defaultenv/bin/update
@@ -33,7 +33,7 @@ elif [ x${type} = xrootfs ]; then
 elif [ x${type} = xbarebox ]; then
 	image=$bareboximage
 	if [ x${image} = x ]; then
-		imamge=barebox.bin
+		image=barebox.bin
 	fi
 else
 	. /env/bin/_update_help
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
