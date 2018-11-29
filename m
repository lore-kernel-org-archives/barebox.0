Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gSJS0-0000q6-H8
 for barebox@lists.infradead.org; Thu, 29 Nov 2018 10:21:43 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 29 Nov 2018 11:21:26 +0100
Message-Id: <20181129102127.17158-2-s.hauer@pengutronix.de>
In-Reply-To: <20181129102127.17158-1-s.hauer@pengutronix.de>
References: <20181129102127.17158-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/3] ping command: Print which host is pinged
To: Barebox List <barebox@lists.infradead.org>

When a hostname instead a IP is given to the ping command then the
IP the host is resolved to is a useful information. Add a message
printing it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 net/ping.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/net/ping.c b/net/ping.c
index 4eb77cb785..b5926280e0 100644
--- a/net/ping.c
+++ b/net/ping.c
@@ -76,6 +76,8 @@ static int do_ping(int argc, char *argv[])
 		goto out;
 	}
 
+	printf("PING %s (%pI4)\n", argv[1], &net_ping_ip);
+
 	ping_start = get_time_ns();
 	ret = ping_send();
 	if (ret)
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
