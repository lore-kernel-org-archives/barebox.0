Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X5Vmt-0004eK-UO
 for barebox@lists.infradead.org; Fri, 11 Jul 2014 08:02:36 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 11 Jul 2014 10:02:12 +0200
Message-Id: <1405065733-31407-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1405065733-31407-1-git-send-email-s.hauer@pengutronix.de>
References: <1405065733-31407-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/4] netconsole: rename console to "netconsole"
To: barebox@lists.infradead.org

So that it can be used without guessing the name first.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 net/netconsole.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/net/netconsole.c b/net/netconsole.c
index 021820b..c817107 100644
--- a/net/netconsole.c
+++ b/net/netconsole.c
@@ -141,6 +141,7 @@ static int netconsole_init(void)
 	cdev->tstc = nc_tstc;
 	cdev->putc = nc_putc;
 	cdev->getc = nc_getc;
+	cdev->devname = "netconsole";
 
 	g_priv = priv;
 
-- 
2.0.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
