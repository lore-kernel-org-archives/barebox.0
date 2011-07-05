Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 16.mo1.mail-out.ovh.net ([178.33.104.224]
	helo=mo1.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1Qdyr7-0006Mf-Ph
	for barebox@lists.infradead.org; Tue, 05 Jul 2011 06:11:34 +0000
Received: from mail31.ha.ovh.net (b7.ovh.net [213.186.33.57])
	by mo1.mail-out.ovh.net (Postfix) with SMTP id 6E66E100C78A
	for <barebox@lists.infradead.org>;
	Tue,  5 Jul 2011 08:11:45 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue,  5 Jul 2011 07:55:57 +0200
Message-Id: <1309845357-12285-4-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1309845357-12285-1-git-send-email-plagnioj@jcrosoft.com>
References: <1309845357-12285-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 4/4] password: fix command support as module
To: barebox@lists.infradead.org

add missing EXPORT_SYMBOL for nan static function

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 common/password.c |    7 +++++++
 1 files changed, 7 insertions(+), 0 deletions(-)

diff --git a/common/password.c b/common/password.c
index cf36970..20e398f 100644
--- a/common/password.c
+++ b/common/password.c
@@ -87,6 +87,7 @@ int password(unsigned char *passwd, size_t length, int flags)
 		}
 	} while(1);
 }
+EXPORT_SYMBOL(password);
 
 int is_passwd_enable(void)
 {
@@ -101,11 +102,13 @@ int is_passwd_enable(void)
 
 	return 1;
 }
+EXPORT_SYMBOL(is_passwd_enable);
 
 int passwd_disable(void)
 {
 	return unlink(PASSWD_FILE);
 }
+EXPORT_SYMBOL(passwd_disable);
 
 static unsigned char to_digit(unsigned char c)
 {
@@ -167,6 +170,7 @@ exit:
 
 	return ret;
 }
+EXPORT_SYMBOL(read_passwd);
 
 int write_passwd(unsigned char *sum, size_t length)
 {
@@ -215,6 +219,7 @@ exit:
 
 	return ret;
 }
+EXPORT_SYMBOL(write_passwd);
 
 int check_passwd(unsigned char* passwd, size_t length)
 {
@@ -258,6 +263,7 @@ err1:
 
 	return ret;
 }
+EXPORT_SYMBOL(check_passwd);
 
 int set_passwd(unsigned char* passwd, size_t length)
 {
@@ -284,3 +290,4 @@ int set_passwd(unsigned char* passwd, size_t length)
 
 	return ret;
 }
+EXPORT_SYMBOL(set_passwd);
-- 
1.7.4.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
