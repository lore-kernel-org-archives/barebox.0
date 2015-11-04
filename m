Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZtvrR-0001yK-9f
 for barebox@lists.infradead.org; Wed, 04 Nov 2015 11:04:13 +0000
From: Enrico Jorns <ejo@pengutronix.de>
Date: Wed,  4 Nov 2015 12:03:24 +0100
Message-Id: <1446635004-26896-1-git-send-email-ejo@pengutronix.de>
In-Reply-To: <1446567541-21731-1-git-send-email-ejo@pengutronix.de>
References: <1446567541-21731-1-git-send-email-ejo@pengutronix.de>
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
Subject: [PATCH v2] edit: Return error when save_file failed
To: barebox@lists.infradead.org
Cc: Enrico Jorns <ejo@pengutronix.de>

When writing a file failed (e.g. due to a read-only file system), no
error was reported by the 'edit' tool. To be valid (and to not confuse
the poor user) at least '1' should be returned to indicate an error.

Signed-off-by: Enrico Jorns <ejo@pengutronix.de>
---
 commands/edit.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/commands/edit.c b/commands/edit.c
index b28e2b9..3b653b7 100644
--- a/commands/edit.c
+++ b/commands/edit.c
@@ -375,6 +375,7 @@ static int do_edit(int argc, char *argv[])
 	int i;
 	int linepos;
 	int c;
+	int ret = 0;
 
 	if (argc != 2)
 		return COMMAND_ERROR_USAGE;
@@ -533,7 +534,7 @@ static int do_edit(int argc, char *argv[])
 			}
 			break;
 		case 4:
-			save_file(argv[1]);
+			ret = save_file(argv[1]);
 			goto out;
 		case 3:
 			goto out;
@@ -546,7 +547,7 @@ out:
 	free_buffer();
 	printf("%c[2J%c[r", 27, 27);
 	printf("\n");
-	return 0;
+	return ret;
 }
 
 static const char *edit_aliases[] = { "sedit", NULL};
-- 
2.6.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
