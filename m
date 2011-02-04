Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PlL2U-0001O9-1D
	for barebox@lists.infradead.org; Fri, 04 Feb 2011 12:45:27 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Fri,  4 Feb 2011 13:45:16 +0100
Message-Id: <1296823516-7467-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH] defaultenv/bin/update: fix return values
To: sha@pengutronix.de
Cc: barebox@lists.infradead.org

This patch fixes the return values of the update script.

- Exit with an error of the "_update" script fails.
- Add a "else; true" to the crc check, otherwise the script
  exists with "1".

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 defaultenv/bin/update |    4 +++-
 1 files changed, 3 insertions(+), 1 deletions(-)

diff --git a/defaultenv/bin/update b/defaultenv/bin/update
index 43d3097..7c37c36 100644
--- a/defaultenv/bin/update
+++ b/defaultenv/bin/update
@@ -64,7 +64,9 @@ if [ x${mode} != xtftp ] && [ x${mode} != xxmodem ] ; then
 	exit 1
 fi
 
-. /env/bin/_update
+. /env/bin/_update || exit 1
 if [ x${check} = xy ]; then
 	crc32 -f $image -F $part
+else
+	true
 fi
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
