Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 19.mo3.mail-out.ovh.net ([178.32.98.231]
	helo=mo3.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1RHupq-0008BX-13
	for barebox@lists.infradead.org; Sun, 23 Oct 2011 09:59:18 +0000
Received: from mail627.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo3.mail-out.ovh.net (Postfix) with SMTP id 02053FFCCE1
	for <barebox@lists.infradead.org>;
	Sun, 23 Oct 2011 12:01:54 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun, 23 Oct 2011 17:59:12 +0800
Message-Id: <1319363952-4908-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/1] password: remove not used variable 'second'
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 common/password.c |    3 +--
 1 files changed, 1 insertions(+), 2 deletions(-)

diff --git a/common/password.c b/common/password.c
index ece7704..311f9cb 100644
--- a/common/password.c
+++ b/common/password.c
@@ -42,13 +42,12 @@ int password(unsigned char *passwd, size_t length, int flags, int timeout)
 	unsigned char *buf = passwd;
 	int pos = 0;
 	unsigned char ch;
-	uint64_t start, second;
+	uint64_t start;
 
 	if (!passwd)
 		return -EINVAL;
 
 	start = get_time_ns();
-	second = start;
 
 	do {
 		if (tstc()) {
-- 
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
