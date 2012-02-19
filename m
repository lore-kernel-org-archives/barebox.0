Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RzB1s-0007jk-Ox
 for barebox@lists.infradead.org; Sun, 19 Feb 2012 17:58:36 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 19 Feb 2012 18:58:07 +0100
Message-Id: <1329674288-25583-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1329674288-25583-1-git-send-email-s.hauer@pengutronix.de>
References: <1329674288-25583-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/5] add string for -ETIMEDOUT
To: barebox@lists.infradead.org

-ETIMEDOUT is a common error value, so print the string rather
than just the number.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/misc.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/common/misc.c b/common/misc.c
index 7edf536..a0059c1 100644
--- a/common/misc.c
+++ b/common/misc.c
@@ -60,6 +60,7 @@ const char *strerror(int errnum)
 	case	EINTR		: str = "Interrupted system call"; break;
 	case	ENETUNREACH	: str = "Network is unreachable"; break;
 	case	ENETDOWN	: str = "Network is down"; break;
+	case	ETIMEDOUT	: str = "Connection timed out"; break;
 #if 0 /* These are probably not needed */
 	case	ENOTBLK		: str = "Block device required"; break;
 	case	EFBIG		: str = "File too large"; break;
@@ -87,7 +88,6 @@ const char *strerror(int errnum)
 	case	ECONNABORTED	: str = "Software caused connection abort"; break;
 	case	ECONNRESET	: str = "Connection reset by peer"; break;
 	case	ENOBUFS		: str = "No buffer space available"; break;
-	case	ETIMEDOUT	: str = "Connection timed out"; break;
 	case	ECONNREFUSED	: str = "Connection refused"; break;
 	case	EHOSTDOWN	: str = "Host is down"; break;
 	case	EALREADY	: str = "Operation already in progress"; break;
-- 
1.7.9


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
