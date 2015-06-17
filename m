Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x230.google.com ([2a00:1450:400c:c05::230])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Z5D0N-0000sy-Mb
 for barebox@lists.infradead.org; Wed, 17 Jun 2015 13:03:52 +0000
Received: by wiwd19 with SMTP id d19so132910905wiw.0
 for <barebox@lists.infradead.org>; Wed, 17 Jun 2015 06:03:25 -0700 (PDT)
From: Hubert Feurstein <h.feurstein@gmail.com>
Date: Wed, 17 Jun 2015 15:02:53 +0200
Message-Id: <1434546173-18283-1-git-send-email-h.feurstein@gmail.com>
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
Subject: [PATCH] login: fix broken login command
To: barebox@lists.infradead.org

It was possible to login with ctrl-c or an empty password. This bug was
introduced by the recent digest changes in common/password.c (e49a47fb).
The function check_passwd returns now also negative error codes which were
not correctly handled in do_login.

Signed-off-by: Hubert Feurstein <h.feurstein@gmail.com>
---
 commands/login.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/commands/login.c b/commands/login.c
index 210eb20..bf5085c 100644
--- a/commands/login.c
+++ b/commands/login.c
@@ -71,7 +71,7 @@ static int do_login(int argc, char *argv[])
 			run_command(timeout_cmd);
 		}
 
-		if (check_passwd(passwd, passwd_len))
+		if (check_passwd(passwd, passwd_len) == 1)
 			return 0;
 	} while(1);
 
-- 
2.4.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
