Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SOoqg-0000O3-DH
 for barebox@lists.infradead.org; Mon, 30 Apr 2012 11:32:59 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 30 Apr 2012 13:32:54 +0200
Message-Id: <1335785575-14953-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1335785575-14953-1-git-send-email-s.hauer@pengutronix.de>
References: <1335785575-14953-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/4] dhcp: set start time
To: barebox@lists.infradead.org

The dhcp command starts with an unitialized start time. The start
time is often long in the past which results in an immediate timeout
and resend of the dhcp packet. Fix this by initializing the start time
correctly.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 net/dhcp.c |    1 +
 1 file changed, 1 insertion(+)

diff --git a/net/dhcp.c b/net/dhcp.c
index 0c882fb..bd3ac1a 100644
--- a/net/dhcp.c
+++ b/net/dhcp.c
@@ -651,6 +651,7 @@ static int do_dhcp(int argc, char *argv[])
 
 	net_set_ip(0);
 
+	dhcp_start = get_time_ns();
 	ret = bootp_request(); /* Basically same as BOOTP */
 	if (ret)
 		goto out1;
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
