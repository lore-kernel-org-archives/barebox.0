Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1R7viV-0006c8-AG
	for barebox@lists.infradead.org; Sun, 25 Sep 2011 20:54:31 +0000
From: Wolfram Sang <w.sang@pengutronix.de>
Date: Sun, 25 Sep 2011 22:54:14 +0200
Message-Id: <1316984054-31295-12-git-send-email-w.sang@pengutronix.de>
In-Reply-To: <1316984054-31295-1-git-send-email-w.sang@pengutronix.de>
References: <1316984054-31295-1-git-send-email-w.sang@pengutronix.de>
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
Subject: [PATCH 11/11] net: dhcp: introduce global serverip variable
To: barebox@lists.infradead.org

Sometimes, the TFTP/NFS server is different from the DHCP server. To handle
such situations, a global 'serverip' variable is introduced. If present and set
with a valid IP address, it will be used instead of the address returned by the
DHCP server.

Signed-off-by: Wolfram Sang <w.sang@pengutronix.de>
---
 defaultenv/config |    3 ++-
 net/dhcp.c        |    7 +++++--
 2 files changed, 7 insertions(+), 3 deletions(-)

diff --git a/defaultenv/config b/defaultenv/config
index 0aaead5..235deca 100644
--- a/defaultenv/config
+++ b/defaultenv/config
@@ -9,11 +9,12 @@ machine=FIXME
 # use 'dhcp' to do dhcp in barebox and in kernel
 # use 'none' if you want to skip kernel ip autoconfiguration
 ip=dhcp
+# IP of the TFTP/NFS-server. If empty (or invalid), DHCP server will be used
+#serverip=a.b.c.d
 
 # or set your networking parameters here
 #eth0.ipaddr=a.b.c.d
 #eth0.netmask=a.b.c.d
-#eth0.serverip=a.b.c.d
 #eth0.gateway=a.b.c.d
 
 # can be either 'tftp', 'nfs', 'nand', 'nor' or 'disk'
diff --git a/net/dhcp.c b/net/dhcp.c
index d1781bc..899c873 100644
--- a/net/dhcp.c
+++ b/net/dhcp.c
@@ -113,8 +113,11 @@ static void bootp_copy_net_params(struct bootp *bp)
 	tmp_ip = net_read_ip(&bp->bp_yiaddr);
 	net_set_ip(tmp_ip);
 
-	tmp_ip = net_read_ip(&bp->bp_siaddr);
-	if (tmp_ip != 0)
+	tmp_ip = getenv_ip("serverip");
+	if (!tmp_ip)
+		tmp_ip = net_read_ip(&bp->bp_siaddr);
+
+	if (tmp_ip)
 		net_set_serverip(tmp_ip);
 
 	if (strlen(bp->bp_file) > 0)
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
