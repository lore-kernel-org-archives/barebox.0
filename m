Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OO4Kh-0005mR-Kc
	for barebox@lists.infradead.org; Mon, 14 Jun 2010 07:43:48 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 14 Jun 2010 09:43:44 +0200
Message-Id: <1276501424-3224-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1276501424-3224-1-git-send-email-s.hauer@pengutronix.de>
References: <1276501424-3224-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/3] dhcp: do not call net_unregister if net_udp_new failed
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 net/dhcp.c |   10 +++++-----
 1 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/net/dhcp.c b/net/dhcp.c
index 54c5179..0771964 100644
--- a/net/dhcp.c
+++ b/net/dhcp.c
@@ -447,13 +447,13 @@ static int do_dhcp(struct command *cmdtp, int argc, char *argv[])
 
 	ret = net_udp_bind(dhcp_con, PORT_BOOTPC);
 	if (ret)
-		goto out;
+		goto out1;
 
 	net_set_ip(0);
 
 	ret = bootp_request(); /* Basically same as BOOTP */
 	if (ret)
-		goto out;
+		goto out1;
 
 	while (dhcp_state != BOUND) {
 		if (ctrlc())
@@ -464,13 +464,13 @@ static int do_dhcp(struct command *cmdtp, int argc, char *argv[])
 			printf("T ");
 			ret = bootp_request();
 			if (ret)
-				goto out;
+				goto out1;
 		}
 	}
 
-out:
+out1:
 	net_unregister(dhcp_con);
-
+out:
 	if (ret)
 		printf("dhcp failed: %s\n", strerror(-ret));
 
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
