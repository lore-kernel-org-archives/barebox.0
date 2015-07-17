Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZGBEj-0002MF-2F
 for barebox@lists.infradead.org; Fri, 17 Jul 2015 19:23:57 +0000
From: Michael Olbrich <m.olbrich@pengutronix.de>
Date: Fri, 17 Jul 2015 21:22:45 +0200
Message-Id: <1437160969-31517-13-git-send-email-m.olbrich@pengutronix.de>
In-Reply-To: <1437160969-31517-1-git-send-email-m.olbrich@pengutronix.de>
References: <1437160969-31517-1-git-send-email-m.olbrich@pengutronix.de>
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
Subject: [PATCH 12/16] fs: efi: use xstrdup_* when appropriate
To: barebox@lists.infradead.org
Cc: Michael Olbrich <m.olbrich@pengutronix.de>

Signed-off-by: Michael Olbrich <m.olbrich@pengutronix.de>
---
 fs/efi.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/fs/efi.c b/fs/efi.c
index 8f4739a99e24..a7adcb98db57 100644
--- a/fs/efi.c
+++ b/fs/efi.c
@@ -114,9 +114,9 @@ static wchar_t *path_to_efi(const char *path)
 	wchar_t *ret;
 
 	if (!*path)
-		return strdup_char_to_wchar("\\");
+		return xstrdup_char_to_wchar("\\");
 
-	dst = strdup_char_to_wchar(path);
+	dst = xstrdup_char_to_wchar(path);
 	if (!dst)
 		return NULL;
 
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
