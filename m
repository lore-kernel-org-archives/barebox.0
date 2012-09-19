Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 18.mo5.mail-out.ovh.net ([178.33.45.10]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TELbm-000353-O7
 for barebox@lists.infradead.org; Wed, 19 Sep 2012 14:50:36 +0000
Received: from mail404.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id B4055FF8621
 for <barebox@lists.infradead.org>; Wed, 19 Sep 2012 16:56:21 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 19 Sep 2012 16:47:54 +0200
Message-Id: <1348066078-26482-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20120919144332.GX25990@game.jcrosoft.org>
References: <20120919144332.GX25990@game.jcrosoft.org>
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
Subject: [PATCH 1/5] sandbox: check only image option in the second getopt
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/sandbox/os/common.c |   12 +-----------
 1 file changed, 1 insertion(+), 11 deletions(-)

diff --git a/arch/sandbox/os/common.c b/arch/sandbox/os/common.c
index ef5ebdf..0e8e60d 100644
--- a/arch/sandbox/os/common.c
+++ b/arch/sandbox/os/common.c
@@ -358,10 +358,6 @@ int main(int argc, char *argv[])
 			break;
 
 		switch (opt) {
-		case 'h':
-			break;
-		case 'm':
-			break;
 		case 'i':
 			sprintf(str, "fd%d", fdno);
 			ret = add_image(optarg, str);
@@ -369,14 +365,8 @@ int main(int argc, char *argv[])
 				exit(1);
 			fdno++;
 			break;
-		case 'e':
-			break;
-		case 'O':
-			break;
-		case 'I':
-			break;
 		default:
-			exit(1);
+			break;
 		}
 	}
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
