Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ggPW8-00015z-9N
 for barebox@lists.infradead.org; Mon, 07 Jan 2019 07:40:15 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  7 Jan 2019 08:40:02 +0100
Message-Id: <20190107074008.3797-4-s.hauer@pengutronix.de>
In-Reply-To: <20190107074008.3797-1-s.hauer@pengutronix.de>
References: <20190107074008.3797-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/9] net: dns: leave host command with error on failure
To: Barebox List <barebox@lists.infradead.org>

When we can't resolv a host we should return an error rather than just
successfully.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 net/dns.c | 13 +++++++++----
 1 file changed, 9 insertions(+), 4 deletions(-)

diff --git a/net/dns.c b/net/dns.c
index 4516235df2..d241781939 100644
--- a/net/dns.c
+++ b/net/dns.c
@@ -258,15 +258,20 @@ static int do_host(int argc, char *argv[])
 {
 	IPaddr_t ip;
 	int ret;
+	char *hostname;
 
 	if (argc != 2)
 		return COMMAND_ERROR_USAGE;
 
+	hostname = argv[1];
+
 	ret = resolv(argv[1], &ip);
-	if (ret)
-		printf("unknown host %s\n", argv[1]);
-	else
-		printf("%s is at %pI4\n", argv[1], &ip);
+	if (ret) {
+		printf("unknown host %s\n", hostname);
+		return 1;
+	}
+
+	printf("%s is at %pI4\n", hostname, &ip);
 
 	return 0;
 }
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
