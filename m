Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WBh7e-0007r9-QM
 for barebox@lists.infradead.org; Fri, 07 Feb 2014 08:49:19 +0000
Received: from tellur.localdomain (p57B5E0F6.dip0.t-ipconnect.de
 [87.181.224.246]) by lynxeye.de (Postfix) with ESMTPA id D6EB018B4261
 for <barebox@lists.infradead.org>; Fri,  7 Feb 2014 09:47:35 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Fri,  7 Feb 2014 09:48:48 +0100
Message-Id: <1391762936-2747-7-git-send-email-dev@lynxeye.de>
In-Reply-To: <1391762936-2747-1-git-send-email-dev@lynxeye.de>
References: <1391762936-2747-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 06/14] lib: libbb: f should never be NULL
To: barebox@lists.infradead.org

We assume it to be non NULL in other places, so
we are in much greater trouble if it actually is.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 lib/libbb.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/lib/libbb.c b/lib/libbb.c
index 189a170..dd42e66 100644
--- a/lib/libbb.c
+++ b/lib/libbb.c
@@ -43,7 +43,7 @@ EXPORT_SYMBOL(concat_path_file);
 
 char *concat_subpath_file(const char *path, const char *f)
 {
-	if (f && DOT_OR_DOTDOT(f))
+	if (DOT_OR_DOTDOT(f))
 		return NULL;
 	return concat_path_file(path, f);
 }
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
