Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 3.mo3.mail-out.ovh.net ([46.105.44.175]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SDTji-00043z-NZ
 for barebox@lists.infradead.org; Fri, 30 Mar 2012 04:46:58 +0000
Received: from mail622.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id E7534FF8B12
 for <barebox@lists.infradead.org>; Fri, 30 Mar 2012 06:47:22 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 30 Mar 2012 06:31:52 +0200
Message-Id: <1333081913-19168-7-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20120330042713.GX444@game.jcrosoft.org>
References: <20120330042713.GX444@game.jcrosoft.org>
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
Subject: [PATCH 7/8] net: dns: export resolved ip to var resolved_ip
To: barebox@lists.infradead.org

This will allow to use it in scripting.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 net/dns.c |    5 +++++
 1 files changed, 5 insertions(+), 0 deletions(-)

diff --git a/net/dns.c b/net/dns.c
index 3c7aa5f..50d953b 100644
--- a/net/dns.c
+++ b/net/dns.c
@@ -27,6 +27,7 @@
 #include <net.h>
 #include <clock.h>
 #include <environment.h>
+#include <magicvar.h>
 #include <linux/err.h>
 
 #define DNS_PORT 53
@@ -238,6 +239,8 @@ static int do_host(int argc, char *argv[])
 {
 	IPaddr_t ip;
 
+	setenv("resolved_ip", "");
+
 	if (argc != 2)
 		return COMMAND_ERROR_USAGE;
 
@@ -248,6 +251,7 @@ static int do_host(int argc, char *argv[])
 		printf("%s is at ", argv[1]);
 		print_IPaddr(ip);
 		printf("\n");
+		setenv_ip("resolved_ip", ip);
 	}
 
 	return 0;
@@ -262,3 +266,4 @@ BAREBOX_CMD_START(host)
 	BAREBOX_CMD_HELP(cmd_host_help)
 BAREBOX_CMD_END
 
+BAREBOX_MAGICVAR(resolved_ip, "Resolved IP");
-- 
1.7.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
