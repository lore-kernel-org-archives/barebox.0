Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Tkcvk-0003zS-UJ
 for barebox@lists.infradead.org; Mon, 17 Dec 2012 15:48:38 +0000
From: Wolfram Sang <w.sang@pengutronix.de>
Date: Mon, 17 Dec 2012 16:48:24 +0100
Message-Id: <1355759313-23329-3-git-send-email-w.sang@pengutronix.de>
In-Reply-To: <1355759313-23329-1-git-send-email-w.sang@pengutronix.de>
References: <1355759313-23329-1-git-send-email-w.sang@pengutronix.de>
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
Subject: [PATCH V3 02/11] lib: misc: add 'iB' suffixes to strtoull_suffix
To: barebox@lists.infradead.org
Cc: Wolfram Sang <w.sang@pengutronix.de>

Since this is the 'official' notation, we should support it.

Signed-off-by: Wolfram Sang <w.sang@pengutronix.de>
---
 lib/misc.c |    5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/lib/misc.c b/lib/misc.c
index 1a08502..0f3eb9a 100644
--- a/lib/misc.c
+++ b/lib/misc.c
@@ -47,8 +47,11 @@ unsigned long long strtoull_suffix(const char *str, char **endp, int base)
 		break;
 	}
 
+	if (strncmp(end, "iB", 2) == 0)
+		end += 2;
+
 	if (endp)
-		*endp = (char *)end;
+		*endp = end;
 
 	return val;
 }
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
