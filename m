Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1bCiGC-0003eL-E7
 for barebox@lists.infradead.org; Tue, 14 Jun 2016 06:55:40 +0000
From: Alexander Aring <aar@pengutronix.de>
Date: Tue, 14 Jun 2016 08:55:05 +0200
Message-Id: <20160614065506.25821-1-aar@pengutronix.de>
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
Subject: [PATCH 1/2] ifup: remove deletion of ip env
To: barebox@lists.infradead.org
Cc: Alexander Aring <aar@pengutronix.de>

This patch removes the deletion of ip env and changes to the behaviour
that it use previous ip=$TYPE assignments if ip env is not part of network
env which will be sourced.

Example:
somewhere in shell: ip=dhcp
\- in case of ip=$TYPE in network env: overwrites the ip env
\- in case of NO ip=$TYPE in network env: use the ip="dhcp" from shell

Signed-off-by: Alexander Aring <aar@pengutronix.de>
---
Don't know if this patch breaks to much handling with previous env handling,
but I would except such handling.

Also don't know if the example is correct or I mixed something with
global/local envs.

Maybe apply patch 2/2 only.

 net/ifup.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/net/ifup.c b/net/ifup.c
index f22afc9..17e1b2f 100644
--- a/net/ifup.c
+++ b/net/ifup.c
@@ -62,8 +62,6 @@ int ifup(const char *name, unsigned flags)
 
 	env_push_context();
 
-	setenv("ip", "");
-
 	for (i = 0; i < ARRAY_SIZE(vars); i++)
 		setenv(vars[i], "");
 
-- 
2.8.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
