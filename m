Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1OKTcP-00034z-Cq
	for barebox@lists.infradead.org; Fri, 04 Jun 2010 09:55:14 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  4 Jun 2010 11:55:08 +0200
Message-Id: <1275645309-9756-13-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1275645309-9756-1-git-send-email-s.hauer@pengutronix.de>
References: <1275645309-9756-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 12/13] errno: add strings for network related error messages
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/misc.c |    7 ++++---
 1 files changed, 4 insertions(+), 3 deletions(-)

diff --git a/common/misc.c b/common/misc.c
index b3292d3..7edf536 100644
--- a/common/misc.c
+++ b/common/misc.c
@@ -56,6 +56,10 @@ const char *strerror(int errnum)
 	case	ENAMETOOLONG	: str = "File name too long"; break;
 	case	ENOSYS		: str = "Function not implemented"; break;
 	case	ENOTEMPTY	: str = "Directory not empty"; break;
+	case	EHOSTUNREACH	: str = "No route to host"; break;
+	case	EINTR		: str = "Interrupted system call"; break;
+	case	ENETUNREACH	: str = "Network is unreachable"; break;
+	case	ENETDOWN	: str = "Network is down"; break;
 #if 0 /* These are probably not needed */
 	case	ENOTBLK		: str = "Block device required"; break;
 	case	EFBIG		: str = "File too large"; break;
@@ -79,8 +83,6 @@ const char *strerror(int errnum)
 	case	EAFNOSUPPORT	: str = "Address family not supported by protocol"; break;
 	case	EADDRINUSE	: str = "Address already in use"; break;
 	case	EADDRNOTAVAIL	: str = "Cannot assign requested address"; break;
-	case	ENETDOWN	: str = "Network is down"; break;
-	case	ENETUNREACH	: str = "Network is unreachable"; break;
 	case	ENETRESET	: str = "Network dropped connection because of reset"; break;
 	case	ECONNABORTED	: str = "Software caused connection abort"; break;
 	case	ECONNRESET	: str = "Connection reset by peer"; break;
@@ -88,7 +90,6 @@ const char *strerror(int errnum)
 	case	ETIMEDOUT	: str = "Connection timed out"; break;
 	case	ECONNREFUSED	: str = "Connection refused"; break;
 	case	EHOSTDOWN	: str = "Host is down"; break;
-	case	EHOSTUNREACH	: str = "No route to host"; break;
 	case	EALREADY	: str = "Operation already in progress"; break;
 	case	EINPROGRESS	: str = "Operation now in progress"; break;
 	case	ESTALE		: str = "Stale NFS file handle"; break;
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
