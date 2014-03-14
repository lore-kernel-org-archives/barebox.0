Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WOP4M-0006bK-Ev
 for barebox@lists.infradead.org; Fri, 14 Mar 2014 10:10:27 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 14 Mar 2014 11:10:03 +0100
Message-Id: <1394791803-20192-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] ifup: set serverip to provided value when doing dhcp
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 net/ifup.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/net/ifup.c b/net/ifup.c
index 3b89ce1..7b63136 100644
--- a/net/ifup.c
+++ b/net/ifup.c
@@ -95,6 +95,9 @@ int ifup(const char *name, unsigned flags)
 		ret = run_command("dhcp");
 		if (ret)
 			goto out;
+		ret = eth_set_param(dev, "serverip");
+		if (ret)
+			goto out;
 	} else if (!strcmp(ip, "static")) {
 		for (i = 0; i < ARRAY_SIZE(vars); i++) {
 			ret = eth_set_param(dev, vars[i]);
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
