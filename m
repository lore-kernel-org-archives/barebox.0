Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.76.mail-out.ovh.net ([87.98.164.52] helo=76.mail-out.ovh.net)
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PM52s-0006nS-In
	for barebox@lists.infradead.org; Fri, 26 Nov 2010 20:37:27 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 26 Nov 2010 20:58:37 +0100
Message-Id: <1290801517-3281-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1290801517-3281-1-git-send-email-plagnioj@jcrosoft.com>
References: <1290801517-3281-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/2] defaultenv/udpate: in xmodem mode load the data before
	erasing
To: barebox@lists.infradead.org

and abort the update if loadb failed or cancelled

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 defaultenv/bin/_update |    9 ++++++++-
 1 files changed, 8 insertions(+), 1 deletions(-)

diff --git a/defaultenv/bin/_update b/defaultenv/bin/_update
index 87e6922..f736acc 100644
--- a/defaultenv/bin/_update
+++ b/defaultenv/bin/_update
@@ -22,6 +22,14 @@ if [ x$mode = xtftp ]; then
 	fi
 fi
 
+if [ x$mode = xxmodem ]; then
+	loadb -f $image -c
+	if [ $? -ne 0 ] ; then
+		echo "loadb failed or cancelled! Update aborted."
+		exit 1
+	fi
+fi
+
 unprotect $part
 
 echo
@@ -36,7 +44,6 @@ echo
 if [ x$mode = xtftp ]; then
 	tftp $image $part
 else
-	loadb -f $image -c
 	cp $image $part
 fi
 
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
