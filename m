Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mx1.emlix.com ([188.40.240.192])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jksnC-000708-VB
 for barebox@lists.infradead.org; Mon, 15 Jun 2020 17:21:09 +0000
From: =?UTF-8?q?Daniel=20Gl=C3=B6ckner?= <dg@emlix.com>
Date: Mon, 15 Jun 2020 19:20:40 +0200
Message-Id: <9af968da84c9a54c1806e8193695b27207d3ef6e.1592241105.git.dg@emlix.com>
In-Reply-To: <cover.1592241105.git.dg@emlix.com>
References: <cover.1592241105.git.dg@emlix.com>
In-Reply-To: <cover.1592241105.git.dg@emlix.com>
References: <cover.1592241105.git.dg@emlix.com>
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
Subject: [PATCH v3 07/14] net: Call net_poll() in a poller
To: Barebox List <barebox@lists.infradead.org>

From: Sascha Hauer <s.hauer@pengutronix.de>

This patch moves the ethernet receive loop into a poller. With this
network protocols no longer have to call net_loop() explicitly but
can do it implicitly by calling is_timeout() when waiting for packets.

Having the network receive loop running in a poller has the advantage
that we have it running continuously and not only when we explicitly
expect packets to come in. With this we can reasonably well answer to
ping requests which is implemented in the next patch. This also helps
protocols that run in the background like fastboot over UDP.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/nfs.c         |  2 --
 fs/tftp.c        |  2 --
 include/net.h    |  3 ---
 net/dhcp.c       |  1 -
 net/dns.c        |  1 -
 net/eth.c        | 15 ++++++++++-----
 net/net.c        | 14 +++++++++++---
 net/netconsole.c |  4 +---
 net/nfs.c        |  1 -
 net/ping.c       |  2 --
 net/sntp.c       |  2 --
 11 files changed, 22 insertions(+), 25 deletions(-)

diff --git a/fs/nfs.c b/fs/nfs.c
index 15ddab791..ebf851f65 100644
--- a/fs/nfs.c
+++ b/fs/nfs.c
@@ -447,8 +447,6 @@ again:
 	nfs_timer_start = get_time_ns();
 
 	while (1) {
-		net_poll();
-
 		if (is_timeout(nfs_timer_start, NFS_TIMEOUT)) {
 			tries++;
 			if (tries == NFS_MAX_RESEND)
diff --git a/fs/tftp.c b/fs/tftp.c
index d186e7983..e5a58a4da 100644
--- a/fs/tftp.c
+++ b/fs/tftp.c
@@ -207,8 +207,6 @@ static int tftp_poll(struct file_priv *priv)
 		return -ETIMEDOUT;
 	}
 
-	net_poll();
-
 	return 0;
 }
 
diff --git a/include/net.h b/include/net.h
index 8d2b4923d..583dc14ed 100644
--- a/include/net.h
+++ b/include/net.h
@@ -244,9 +244,6 @@ IPaddr_t net_get_nameserver(void);
 const char *net_get_domainname(void);
 struct eth_device *net_route(IPaddr_t ip);
 
-/* Do the work */
-void net_poll(void);
-
 static inline struct iphdr *net_eth_to_iphdr(char *pkt)
 {
 	return (struct iphdr *)(pkt + ETHER_HDR_SIZE);
diff --git a/net/dhcp.c b/net/dhcp.c
index a27fa8999..ef22d2cef 100644
--- a/net/dhcp.c
+++ b/net/dhcp.c
@@ -513,7 +513,6 @@ int dhcp_request(struct eth_device *edev, const struct dhcp_req_param *param,
 			ret = -ETIMEDOUT;
 			goto out1;
 		}
-		net_poll();
 		if (is_timeout(dhcp_start, 3 * SECOND)) {
 			dhcp_start = get_time_ns();
 			printf("T ");
diff --git a/net/dns.c b/net/dns.c
index ffe98ef9e..851bf3722 100644
--- a/net/dns.c
+++ b/net/dns.c
@@ -231,7 +231,6 @@ int resolv(const char *host, IPaddr_t *ip)
 		if (ctrlc()) {
 			break;
 		}
-		net_poll();
 		if (is_timeout(dns_timer_start, SECOND)) {
 			dns_timer_start = get_time_ns();
 			printf("T ");
diff --git a/net/eth.c b/net/eth.c
index 2df0a74a5..6c8f31f6b 100644
--- a/net/eth.c
+++ b/net/eth.c
@@ -234,14 +234,19 @@ static int __eth_rx(struct eth_device *edev)
 {
 	int ret;
 
-	slice_acquire(eth_device_slice(edev));
+	if (!phy_acquired(edev->phydev)) {
+		ret = eth_carrier_check(edev, 0);
+		if (ret)
+			return ret;
+	}
 
-	ret = eth_carrier_check(edev, 0);
-	if (ret)
-		goto out;
+	if (slice_acquired(eth_device_slice(edev)))
+		return 0;
+
+	slice_acquire(eth_device_slice(edev));
 
 	ret = edev->recv(edev);
-out:
+
 	slice_release(eth_device_slice(edev));
 
 	return ret;
diff --git a/net/net.c b/net/net.c
index 5fd6246ab..197b551e7 100644
--- a/net/net.c
+++ b/net/net.c
@@ -239,8 +239,6 @@ static int arp_request(struct eth_device *edev, IPaddr_t dest, unsigned char *et
 
 		if (retries > PKT_NUM_RETRIES)
 			return -ETIMEDOUT;
-
-		net_poll();
 	}
 
 	pr_debug("Got ARP REPLY for %pI4: %02x:%02x:%02x:%02x:%02x:%02x\n",
@@ -249,11 +247,21 @@ static int arp_request(struct eth_device *edev, IPaddr_t dest, unsigned char *et
 	return 0;
 }
 
-void net_poll(void)
+static void net_poll(struct poller_struct *poller)
 {
 	eth_rx();
 }
 
+static struct poller_struct net_poller = {
+	.func = net_poll,
+};
+
+static int init_net_poll(void)
+{
+	return poller_register(&net_poller, "net");
+}
+device_initcall(init_net_poll);
+
 static uint16_t net_udp_new_localport(void)
 {
 	static uint16_t localport;
diff --git a/net/netconsole.c b/net/netconsole.c
index 0fece65a2..c692db942 100644
--- a/net/netconsole.c
+++ b/net/netconsole.c
@@ -59,7 +59,7 @@ static int nc_getc(struct console_device *cdev)
 		return 0;
 
 	while (!kfifo_len(priv->fifo))
-		net_poll();
+		udelay(1);
 
 	kfifo_getc(priv->fifo, &c);
 
@@ -77,8 +77,6 @@ static int nc_tstc(struct console_device *cdev)
 	if (priv->busy)
 		return kfifo_len(priv->fifo) ? 1 : 0;
 
-	net_poll();
-
 	return kfifo_len(priv->fifo) ? 1 : 0;
 }
 
diff --git a/net/nfs.c b/net/nfs.c
index 591417e0d..266351da0 100644
--- a/net/nfs.c
+++ b/net/nfs.c
@@ -710,7 +710,6 @@ static int do_nfs(int argc, char *argv[])
 			nfs_err = -EINTR;
 			break;
 		}
-		net_poll();
 		if (is_timeout(nfs_timer_start, NFS_TIMEOUT * SECOND)) {
 			show_progress(-1);
 			nfs_send();
diff --git a/net/ping.c b/net/ping.c
index a71f59a80..f3de0c27a 100644
--- a/net/ping.c
+++ b/net/ping.c
@@ -89,8 +89,6 @@ static int do_ping(int argc, char *argv[])
 			break;
 		}
 
-		net_poll();
-
 		if (is_timeout(ping_start, SECOND)) {
 			/* No answer, send another packet */
 			ping_start = get_time_ns();
diff --git a/net/sntp.c b/net/sntp.c
index b4e6d6439..f693a2e8a 100644
--- a/net/sntp.c
+++ b/net/sntp.c
@@ -145,8 +145,6 @@ s64 sntp(const char *server)
 			break;
 		}
 
-		net_poll();
-
 		if (is_timeout(sntp_start, 1 * SECOND)) {
 			sntp_start = get_time_ns();
 			ret = sntp_send();
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
