Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1d0kdH-0002Yg-Fw
 for barebox@lists.infradead.org; Wed, 19 Apr 2017 08:06:41 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 19 Apr 2017 10:06:12 +0200
Message-Id: <20170419080612.19797-3-s.hauer@pengutronix.de>
In-Reply-To: <20170419080612.19797-1-s.hauer@pengutronix.de>
References: <20170419080612.19797-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/3] commands: basename: Use posix_basename()
To: Barebox List <barebox@lists.infradead.org>

The Linux shell basename command uses the POSIX basename version,
so the same for barebox.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/basename.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/commands/basename.c b/commands/basename.c
index 028b0e0f24..c1a28e9e1d 100644
--- a/commands/basename.c
+++ b/commands/basename.c
@@ -27,7 +27,7 @@ static int do_basename(int argc, char *argv[])
 	if (argc != 3)
 		return COMMAND_ERROR_USAGE;
 
-	setenv(argv[2], basename(argv[1]));
+	setenv(argv[2], posix_basename(argv[1]));
 
 	return 0;
 }
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
