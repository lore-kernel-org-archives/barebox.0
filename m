Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WXn6r-0000GN-T9
 for barebox@lists.infradead.org; Wed, 09 Apr 2014 07:39:51 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  9 Apr 2014 09:39:23 +0200
Message-Id: <1397029166-4412-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1397029166-4412-1-git-send-email-s.hauer@pengutronix.de>
References: <1397029166-4412-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/4] unlink_recursive: return negative error value
To: barebox@lists.infradead.org

In case of an error unlink_recursive returns errno which is positive.
Return -errno instead.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 lib/unlink-recursive.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/lib/unlink-recursive.c b/lib/unlink-recursive.c
index 8f7812f..78dc015 100644
--- a/lib/unlink-recursive.c
+++ b/lib/unlink-recursive.c
@@ -53,5 +53,5 @@ int unlink_recursive(const char *path, char **failedpath)
 	if (!ret && failedpath)
 		*failedpath = unlink_recursive_failedpath;
 
-	return ret ? 0 : errno;
+	return ret ? 0 : -errno;
 }
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
