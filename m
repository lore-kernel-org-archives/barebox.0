Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1d8k84-00047A-TU
 for barebox@lists.infradead.org; Thu, 11 May 2017 09:11:26 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 11 May 2017 11:10:58 +0200
Message-Id: <20170511091101.5821-2-s.hauer@pengutronix.de>
In-Reply-To: <20170511091101.5821-1-s.hauer@pengutronix.de>
References: <20170511091101.5821-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/4] errno: Include string for ELOOP
To: Barebox List <barebox@lists.infradead.org>

Needed for printing a correct error message when symbolic link
loops are encountered.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/misc.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/common/misc.c b/common/misc.c
index f0f0b808b7..c5d3704c82 100644
--- a/common/misc.c
+++ b/common/misc.c
@@ -66,6 +66,7 @@ const char *strerror(int errnum)
 	case	ENETDOWN	: str = "Network is down"; break;
 	case	ETIMEDOUT	: str = "Connection timed out"; break;
 	case	EPROBE_DEFER	: str = "Requested probe deferral"; break;
+	case	ELOOP		: str = "Too many symbolic links encountered"; break;
 #if 0 /* These are probably not needed */
 	case	ENOTBLK		: str = "Block device required"; break;
 	case	EFBIG		: str = "File too large"; break;
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
