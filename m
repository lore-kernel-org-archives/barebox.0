Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RUvgN-00006K-G2
 for barebox@lists.infradead.org; Mon, 28 Nov 2011 07:31:20 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 28 Nov 2011 08:31:13 +0100
Message-Id: <1322465473-4256-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] MAKEALL: use '.' instead of 'source'
To: barebox@lists.infradead.org

'source' is not available on dash.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 MAKEALL |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/MAKEALL b/MAKEALL
index e987de2..25b9977 100755
--- a/MAKEALL
+++ b/MAKEALL
@@ -234,7 +234,7 @@ then
 		CONFIG="./${CONFIG}"
 	fi
 
-	source "${CONFIG}"
+	. "${CONFIG}"
 fi
 
 [ -d "${LOGDIR}" ] || mkdir ${LOGDIR} || exit 1
-- 
1.7.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
