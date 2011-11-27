Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RUdYN-0002tt-MB
 for barebox@lists.infradead.org; Sun, 27 Nov 2011 12:09:52 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 27 Nov 2011 13:09:40 +0100
Message-Id: <1322395780-21916-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1322395780-21916-1-git-send-email-s.hauer@pengutronix.de>
References: <1322395780-21916-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/5] dhcp: Add magicvars
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 net/dhcp.c |    6 ++++++
 1 files changed, 6 insertions(+), 0 deletions(-)

diff --git a/net/dhcp.c b/net/dhcp.c
index d1781bc..954c52e 100644
--- a/net/dhcp.c
+++ b/net/dhcp.c
@@ -15,6 +15,7 @@
 #include <net.h>
 #include <libbb.h>
 #include <errno.h>
+#include <magicvar.h>
 #include <linux/err.h>
 
 #define OPT_SIZE 312	/* Minimum DHCP Options size per RFC2131 - results in 576 byte pkt */
@@ -482,3 +483,8 @@ BAREBOX_CMD_START(dhcp)
 	.usage		= "invoke dhcp client to obtain ip/boot params",
 BAREBOX_CMD_END
 
+BAREBOX_MAGIC_VAR(bootfile, "bootfile returned from DHCP request");
+BAREBOX_MAGIC_VAR(nameserver, "Nameserver returned from DHCP request");
+BAREBOX_MAGIC_VAR(hostname, "hostname returned from DHCP request");
+BAREBOX_MAGIC_VAR(domainname, "domainname returned from DHCP request");
+BAREBOX_MAGIC_VAR(rootpath, "rootpath returned from DHCP request");
-- 
1.7.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
