Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f3Ggn-00021Z-Qw
 for barebox@lists.infradead.org; Tue, 03 Apr 2018 07:49:14 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  3 Apr 2018 09:48:42 +0200
Message-Id: <20180403074851.5411-11-s.hauer@pengutronix.de>
In-Reply-To: <20180403074851.5411-1-s.hauer@pengutronix.de>
References: <20180403074851.5411-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 10/19] ls: Do not depend on normalise_path()
To: Barebox List <barebox@lists.infradead.org>

When we want to show a directory we want to show the path
ls is passed, not the normalised one.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/ls.c | 9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/commands/ls.c b/commands/ls.c
index 771477b6e0..e54991862d 100644
--- a/commands/ls.c
+++ b/commands/ls.c
@@ -115,11 +115,8 @@ int ls(const char *path, ulong flags)
 			continue;
 		}
 
-		if (s.st_mode & S_IFDIR) {
-			char *norm = normalise_path(tmp);
-			ls(norm, flags);
-			free(norm);
-		}
+		if (s.st_mode & S_IFDIR)
+			ls(tmp, flags);
 	}
 
 out:
@@ -158,7 +155,7 @@ static int do_ls(int argc, char *argv[])
 		flags |= LS_SHOWARG;
 
 	if (optind == argc) {
-		ret = ls(getcwd(), flags);
+		ret = ls(".", flags);
 		return ret ? 1 : 0;
 	}
 
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
