Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Wk68E-0006xU-6A
 for barebox@lists.infradead.org; Tue, 13 May 2014 06:24:08 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 13 May 2014 08:23:39 +0200
Message-Id: <1399962220-27617-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] boot: fix multiple boot sources
To: barebox@lists.infradead.org

When there are multiple bootsources barebox should try booting them
until one succeeds. This is broken because we bail out of the iteration
loop with a goto. Remove the goto to fix this.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/boot.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/commands/boot.c b/commands/boot.c
index 4a83979..468d473 100644
--- a/commands/boot.c
+++ b/commands/boot.c
@@ -446,7 +446,6 @@ static int do_boot(int argc, char *argv[])
 		ret = boot(sources[i]);
 		if (!ret)
 			break;
-		goto out;
 	}
 
 out:
-- 
2.0.0.rc0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
