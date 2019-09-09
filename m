Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7Fr4-0006fb-Iy
 for barebox@lists.infradead.org; Mon, 09 Sep 2019 09:21:04 +0000
Received: from geraet.pengutronix.de (hazel.nat.pengutronix.de [85.220.165.66])
 (Authenticated sender: ahmad@a3f.at)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id 2E76F4000A
 for <barebox@lists.infradead.org>; Mon,  9 Sep 2019 09:20:52 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Mon,  9 Sep 2019 11:20:47 +0200
Message-Id: <20190909092047.27504-1-ahmad@a3f.at>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] edit: replace ASCII codes by symbolic names
To: barebox@lists.infradead.org

Code has some magic numbers, replace them. This has the added benefit that
at least the touched lines are now charset-agnostic.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 commands/edit.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/commands/edit.c b/commands/edit.c
index 290222ce152f..ba6a8c7cdd78 100644
--- a/commands/edit.c
+++ b/commands/edit.c
@@ -524,12 +524,12 @@ static int do_edit(int argc, char *argv[])
 			} else
 				delete_char(textx);
 			break;
-		case 13:
-		case 10:
+		case '\r':
+		case '\n':
 			split_line();
 			break;
 		case 127:
-		case 8:
+		case '\b':
 			if (textx > 0) {
 				textx--;
 				delete_char(textx);
@@ -542,10 +542,10 @@ static int do_edit(int argc, char *argv[])
 				merge_line(curline);
 			}
 			break;
-		case 4:
+		case CTL_CH('d'):
 			ret = save_file(argv[1]);
 			goto out;
-		case 3:
+		case CTL_CH('c'):
 			goto out;
 		default:
 			if ((signed char)c != -1)
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
