Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1ReC1O-0005QK-15
 for barebox@lists.infradead.org; Fri, 23 Dec 2011 20:47:19 +0000
From: Wolfram Sang <w.sang@pengutronix.de>
Date: Fri, 23 Dec 2011 21:47:07 +0100
Message-Id: <1324673227-5698-1-git-send-email-w.sang@pengutronix.de>
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
Subject: [RFC] net: dhcp: make serverip a magicvar
To: barebox@lists.infradead.org

There are setups where the DHCP server is not the TFTP server. Make
'serverip' a magicvar and allow it to be preset. If not preset, DHCP
server will be used like before.

Signed-off-by: Wolfram Sang <w.sang@pengutronix.de>
---

Is that the right way to do it?

 defaultenv/config |    3 ++-
 net/dhcp.c        |   10 ++++++++--
 2 files changed, 10 insertions(+), 3 deletions(-)

diff --git a/defaultenv/config b/defaultenv/config
index 9866273..6bf5a59 100644
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
index 2ce9090..8900476 100644
--- a/net/dhcp.c
+++ b/net/dhcp.c
@@ -114,9 +114,14 @@ static void bootp_copy_net_params(struct bootp *bp)
 	tmp_ip = net_read_ip(&bp->bp_yiaddr);
 	net_set_ip(tmp_ip);
 
-	tmp_ip = net_read_ip(&bp->bp_siaddr);
-	if (tmp_ip != 0)
+	tmp_ip = getenv_ip("serverip");
+	if (!tmp_ip)
+		tmp_ip = net_read_ip(&bp->bp_siaddr);
+
+	if (tmp_ip) {
 		net_set_serverip(tmp_ip);
+		setenv_ip("serverip", tmp_ip);
+	}
 
 	if (strlen(bp->bp_file) > 0)
 		setenv("bootfile", bp->bp_file);
@@ -485,6 +490,7 @@ BAREBOX_CMD_END
 
 BAREBOX_MAGICVAR(bootfile, "bootfile returned from DHCP request");
 BAREBOX_MAGICVAR(nameserver, "Nameserver returned from DHCP request");
+BAREBOX_MAGICVAR(serverip, "Server used for TFTP. If not preset, same as DHCP server");
 BAREBOX_MAGICVAR(hostname, "hostname returned from DHCP request");
 BAREBOX_MAGICVAR(domainname, "domainname returned from DHCP request");
 BAREBOX_MAGICVAR(rootpath, "rootpath returned from DHCP request");
-- 
1.7.7.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
