Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bfMVr-0005vH-BP
 for barebox@lists.infradead.org; Thu, 01 Sep 2016 07:34:17 +0000
From: Enrico Jorns <ejo@pengutronix.de>
Date: Thu,  1 Sep 2016 09:33:44 +0200
Message-Id: <1472715224-2562-1-git-send-email-ejo@pengutronix.de>
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
Subject: [PATCH] commands: saveenv: exit on invalid option
To: barebox@lists.infradead.org
Cc: Enrico Jorns <ejo@pengutronix.de>

Saveenv should not perform any actions if an invalid parameter was
given.

Signed-off-by: Enrico Jorns <ejo@pengutronix.de>
---
 commands/saveenv.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/commands/saveenv.c b/commands/saveenv.c
index 6f210b7..bc1202f 100644
--- a/commands/saveenv.c
+++ b/commands/saveenv.c
@@ -35,6 +35,8 @@ static int do_saveenv(int argc, char *argv[])
 		case 'z':
 			envfs_flags |= ENVFS_FLAGS_FORCE_BUILT_IN;
 			break;
+		default:
+			return COMMAND_ERROR_USAGE;
 		}
 	}
 
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
