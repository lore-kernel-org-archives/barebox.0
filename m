Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZZatb-0006xb-6n
 for barebox@lists.infradead.org; Wed, 09 Sep 2015 08:38:23 +0000
Received: from dude.hi.4.pengutronix.de ([10.1.0.7] helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.80)
 (envelope-from <l.stach@pengutronix.de>) id 1ZZatK-0001ql-HX
 for barebox@lists.infradead.org; Wed, 09 Sep 2015 10:38:06 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Wed,  9 Sep 2015 10:38:06 +0200
Message-Id: <1441787886-10673-2-git-send-email-l.stach@pengutronix.de>
In-Reply-To: <1441787886-10673-1-git-send-email-l.stach@pengutronix.de>
References: <1441787886-10673-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH 2/2] passwd: avoid NULL ptr usage
To: barebox@lists.infradead.org

Fixes
common/password.c: In function 'check_passwd':
common/password.c:292:4: warning: reading through null pointer (argument 3)
    pr_err("No such digest: %s\n", PASSWD_SUM);

if no algo is enabled in which case PASSWD_SUM is defined to NULL.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 common/password.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/common/password.c b/common/password.c
index 43c5e0cc0e08..b5b7655a6435 100644
--- a/common/password.c
+++ b/common/password.c
@@ -289,7 +289,8 @@ static int check_passwd(unsigned char *passwd, size_t length)
 	} else {
 		d = digest_alloc(PASSWD_SUM);
 		if (!d) {
-			pr_err("No such digest: %s\n", PASSWD_SUM);
+			pr_err("No such digest: %s\n",
+			       PASSWD_SUM ? PASSWD_SUM : "NULL");
 			return -ENOENT;
 		}
 
-- 
2.5.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
