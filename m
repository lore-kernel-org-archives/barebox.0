Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 17.mo3.mail-out.ovh.net ([87.98.178.58]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T9EiK-0003B6-FG
 for barebox@lists.infradead.org; Wed, 05 Sep 2012 12:28:14 +0000
Received: from mail91.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 5C65AFF86D3
 for <barebox@lists.infradead.org>; Wed,  5 Sep 2012 14:35:46 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed,  5 Sep 2012 14:28:25 +0200
Message-Id: <1346848107-4664-5-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1346848107-4664-1-git-send-email-plagnioj@jcrosoft.com>
References: <20120905122556.GF32603@game.jcrosoft.org>
 <1346848107-4664-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 5/7] echo: always allow to pass -e option
To: barebox@lists.infradead.org

This will allow to do not taint if not enabled

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 commands/echo.c |    4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/commands/echo.c b/commands/echo.c
index a19d992..566f5c2 100644
--- a/commands/echo.c
+++ b/commands/echo.c
@@ -66,11 +66,11 @@ static int do_echo(int argc, char *argv[])
 				goto no_optarg_out;
 			optind++;
 			break;
-#ifdef CONFIG_CMD_ECHO_E
 		case 'e':
+#ifdef CONFIG_CMD_ECHO_E
 			process_escape = 1;
-			break;
 #endif
+			break;
 		default:
 			goto exit_parse;
 		}
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
