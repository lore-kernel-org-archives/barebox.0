Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x22d.google.com ([2a00:1450:4010:c07::22d])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zs9DC-0006Zh-Kr
 for barebox@lists.infradead.org; Fri, 30 Oct 2015 12:55:19 +0000
Received: by lfaz124 with SMTP id z124so32881743lfa.1
 for <barebox@lists.infradead.org>; Fri, 30 Oct 2015 05:54:56 -0700 (PDT)
From: Sergey Koshechkin <tritel59@gmail.com>
Date: Fri, 30 Oct 2015 15:55:00 +0300
Message-Id: <1446209700-21282-1-git-send-email-tritel59@gmail.com>
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
Subject: [PATCH] login: make some locally used functions static
To: barebox@lists.infradead.org
Cc: tritel59@gmail.com

This patch continues cleanup password code from

  commit 40596b856f61c281fb34f804bf42550c099f26c3
  Author: Sascha Hauer <s.hauer@pengutronix.de>
  Date:   Thu Aug 27 15:58:50 2015 +0200

      login: cleanup password code

Signed-off-by: Sergey Koshechkin <tritel59@gmail.com>
---
 common/password.c | 9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/common/password.c b/common/password.c
index b5b7655..5b754d9 100644
--- a/common/password.c
+++ b/common/password.c
@@ -111,13 +111,12 @@ int password(unsigned char *passwd, size_t length, int flags, int timeout)
 }
 EXPORT_SYMBOL(password);
 
-int is_passwd_default_enable(void)
+static int is_passwd_default_enable(void)
 {
 	return strlen(default_passwd) > 0;
 }
-EXPORT_SYMBOL(is_passwd_default_enable);
 
-int is_passwd_env_enable(void)
+static int is_passwd_env_enable(void)
 {
 	int fd;
 
@@ -130,7 +129,6 @@ int is_passwd_env_enable(void)
 
 	return 1;
 }
-EXPORT_SYMBOL(is_passwd_env_enable);
 
 int passwd_env_disable(void)
 {
@@ -227,7 +225,7 @@ exit:
 }
 EXPORT_SYMBOL(read_env_passwd);
 
-int write_env_passwd(unsigned char *sum, size_t length)
+static int write_env_passwd(unsigned char *sum, size_t length)
 {
 	int fd;
 	unsigned char c;
@@ -274,7 +272,6 @@ exit:
 
 	return ret;
 }
-EXPORT_SYMBOL(write_env_passwd);
 
 static int check_passwd(unsigned char *passwd, size_t length)
 {
-- 
2.6.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
