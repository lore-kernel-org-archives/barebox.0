Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bkUHY-0003Vv-N4
 for barebox@lists.infradead.org; Thu, 15 Sep 2016 10:52:46 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 15 Sep 2016 12:52:17 +0200
Message-Id: <1473936737-4919-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1473936737-4919-1-git-send-email-s.hauer@pengutronix.de>
References: <1473936737-4919-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] convert users to %pI4
To: Barebox List <barebox@lists.infradead.org>

Convert users of ip_to_string() and print_IPaddr() to %pI4 and
remove the now unused functions.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-omap/xload.c |  9 ++++++---
 commands/tftp.c            |  4 +++-
 common/blspec.c            |  2 +-
 fs/nfs.c                   |  4 +---
 include/net.h              |  6 ------
 lib/parameter.c            |  2 +-
 net/dhcp.c                 |  6 +++---
 net/dns.c                  |  6 ++----
 net/lib.c                  | 19 -------------------
 net/net.c                  |  4 ++--
 net/netconsole.c           |  2 +-
 11 files changed, 20 insertions(+), 44 deletions(-)

diff --git a/arch/arm/mach-omap/xload.c b/arch/arm/mach-omap/xload.c
index 14a631e..822389c 100644
--- a/arch/arm/mach-omap/xload.c
+++ b/arch/arm/mach-omap/xload.c
@@ -231,8 +231,10 @@ static void *am33xx_net_boot(void)
 	int err;
 	int len;
 	struct dhcp_req_param dhcp_param;
-	const char *bootfile, *ip;
+	const char *bootfile;
+	IPaddr_t ip;
 	char *file;
+	char ip4_str[sizeof("255.255.255.255")];
 
 	am33xx_register_ethaddr(0, 0);
 
@@ -258,8 +260,9 @@ static void *am33xx_net_boot(void)
 	if (err)
 		return NULL;
 
-	ip = ip_to_string(net_get_serverip());
-	err = mount(ip, "tftp", TFTP_MOUNT, NULL);
+	ip = net_get_serverip();
+	sprintf(ip4_str, "%pI4", &ip);
+	err = mount(ip4_str, "tftp", TFTP_MOUNT, NULL);
 	if (err < 0) {
 		printf("Unable to mount.\n");
 		return NULL;
diff --git a/commands/tftp.c b/commands/tftp.c
index 6a3121a..08366b4 100644
--- a/commands/tftp.c
+++ b/commands/tftp.c
@@ -36,6 +36,7 @@ static int do_tftpb(int argc, char *argv[])
 	int tftp_push = 0;
 	int ret;
 	IPaddr_t ip;
+	char ip4_str[sizeof("255.255.255.255")];
 
 	while ((opt = getopt(argc, argv, "p")) > 0) {
 		switch(opt) {
@@ -73,7 +74,8 @@ static int do_tftpb(int argc, char *argv[])
 		goto err_free;
 
 	ip = net_get_serverip();
-	ret = mount(ip_to_string(ip), "tftp", TFTP_MOUNT_PATH, NULL);
+	sprintf(ip4_str, "%pI4", &ip);
+	ret = mount(ip4_str, "tftp", TFTP_MOUNT_PATH, NULL);
 	if (ret)
 		goto err_rmdir;
 
diff --git a/common/blspec.c b/common/blspec.c
index f02f5e9..b45bd29 100644
--- a/common/blspec.c
+++ b/common/blspec.c
@@ -306,7 +306,7 @@ static char *parse_nfs_url(const char *url)
 	if (ip == 0)
 		goto out;
 
-	hostpath = basprintf("%s:%s", ip_to_string(ip), path);
+	hostpath = basprintf("%pI4:%s", &ip, path);
 
 	prevpath = nfs_find_mountpath(hostpath);
 
diff --git a/fs/nfs.c b/fs/nfs.c
index 1e874d5..a0a9dfc 100644
--- a/fs/nfs.c
+++ b/fs/nfs.c
@@ -1314,10 +1314,8 @@ static char *rootnfsopts;
 static void nfs_set_rootarg(struct nfs_priv *npriv, struct fs_device_d *fsdev)
 {
 	char *str, *tmp;
-	const char *ip;
 
-	ip = ip_to_string(npriv->server);
-	str = basprintf("root=/dev/nfs nfsroot=%s:%s%s%s", ip, npriv->path,
+	str = basprintf("root=/dev/nfs nfsroot=%pI4:%s%s%s", &npriv->server, npriv->path,
 			  rootnfsopts[0] ? "," : "", rootnfsopts);
 
 	/* forward specific mount options on demand */
diff --git a/include/net.h b/include/net.h
index 8f857c8..fd1c412 100644
--- a/include/net.h
+++ b/include/net.h
@@ -257,9 +257,6 @@ static inline int net_eth_to_udplen(char *pkt)
 int net_checksum_ok(unsigned char *, int);	/* Return true if cksum OK	*/
 uint16_t net_checksum(unsigned char *, int);	/* Calculate the checksum	*/
 
-/* Print an IP address on the console */
-void print_IPaddr (IPaddr_t);
-
 /*
  * The following functions are a bit ugly, but necessary to deal with
  * alignment restrictions on ARM.
@@ -308,9 +305,6 @@ static inline void net_copy_uint32(uint32_t *to, uint32_t *from)
 	memcpy(to, from, sizeof(uint32_t));
 }
 
-/* Convert an IP address to a string */
-char *ip_to_string (IPaddr_t x);
-
 /* Convert a string to ip address */
 int string_to_ip(const char *s, IPaddr_t *ip);
 
diff --git a/lib/parameter.c b/lib/parameter.c
index 656a603..a754fb8 100644
--- a/lib/parameter.c
+++ b/lib/parameter.c
@@ -642,7 +642,7 @@ static const char *param_ip_get(struct device_d *dev, struct param_d *p)
 	}
 
 	free(p->value);
-	p->value = xstrdup(ip_to_string(*pi->ip));
+	p->value = xasprintf("%pI4", pi->ip);
 
 	return p->value;
 }
diff --git a/net/dhcp.c b/net/dhcp.c
index 792ece4..c5386fe 100644
--- a/net/dhcp.c
+++ b/net/dhcp.c
@@ -613,13 +613,13 @@ static void dhcp_handler(void *ctx, char *packet, unsigned int len)
 		debug ("%s: State REQUESTING\n", __func__);
 
 		if (dhcp_message_type((u8 *)bp->bp_vend) == DHCP_ACK ) {
+			IPaddr_t ip;
 			if (net_read_uint32((uint32_t *)&bp->bp_vend[0]) == htonl(BOOTP_VENDOR_MAGIC))
 				dhcp_options_process((u8 *)&bp->bp_vend[4], bp);
 			bootp_copy_net_params(bp); /* Store net params from reply */
 			dhcp_state = BOUND;
-			puts ("DHCP client bound to address ");
-			print_IPaddr(net_get_ip());
-			putchar('\n');
+			ip = net_get_ip();
+			printf("DHCP client bound to address %pI4\n", &ip);
 			return;
 		}
 		break;
diff --git a/net/dns.c b/net/dns.c
index 2acdb93..700c6b0 100644
--- a/net/dns.c
+++ b/net/dns.c
@@ -221,7 +221,7 @@ IPaddr_t resolv(const char *host)
 	if (string_to_ip(ns, &ip))
 		return 0;
 
-	debug("resolving host %s via nameserver %s\n", host, ip_to_string(ip));
+	debug("resolving host %s via nameserver %pI4\n", host, &ip);
 
 	dns_con = net_udp_new(ip, DNS_PORT, dns_handler, NULL);
 	if (IS_ERR(dns_con))
@@ -258,9 +258,7 @@ static int do_host(int argc, char *argv[])
 	if (!ip)
 		printf("unknown host %s\n", argv[1]);
 	else {
-		printf("%s is at ", argv[1]);
-		print_IPaddr(ip);
-		printf("\n");
+		printf("%s is at %pI4\n", argv[1], &ip);
 	}
 
 	return 0;
diff --git a/net/lib.c b/net/lib.c
index f1c60c9..d4343bc 100644
--- a/net/lib.c
+++ b/net/lib.c
@@ -57,25 +57,6 @@ void ethaddr_to_string(const u8 enetaddr[6], char *str)
 		 enetaddr[4], enetaddr[5]);
 }
 
-void print_IPaddr(IPaddr_t x)
-{
-	puts(ip_to_string(x));
-}
-
-char *ip_to_string(IPaddr_t x)
-{
-	static char s[sizeof("xxx.xxx.xxx.xxx")];
-
-	x = ntohl(x);
-	sprintf(s, "%d.%d.%d.%d",
-		 (int) ((x >> 24) & 0xff),
-		 (int) ((x >> 16) & 0xff),
-		 (int) ((x >> 8) & 0xff), (int) ((x >> 0) & 0xff)
-	);
-
-	return s;
-}
-
 int string_to_ip(const char *s, IPaddr_t *ip)
 {
 	IPaddr_t addr = 0;
diff --git a/net/net.c b/net/net.c
index df1d677..3c0e715 100644
--- a/net/net.c
+++ b/net/net.c
@@ -78,9 +78,9 @@ IPaddr_t getenv_ip(const char *name)
 
 int setenv_ip(const char *name, IPaddr_t ip)
 {
-	const char *str;
+	char str[sizeof("255.255.255.255")];
 
-	str = ip_to_string(ip);
+	sprintf(str, "%pI4", &ip);
 
 	setenv(name, str);
 
diff --git a/net/netconsole.c b/net/netconsole.c
index 0ee6a76..ce3c418 100644
--- a/net/netconsole.c
+++ b/net/netconsole.c
@@ -137,7 +137,7 @@ static int nc_set_active(struct console_device *cdev, unsigned flags)
 
 	net_udp_bind(priv->con, priv->port);
 
-	pr_info("netconsole initialized with %s:%d\n", ip_to_string(priv->ip), priv->port);
+	pr_info("netconsole initialized with %pI4:%d\n", &priv->ip, priv->port);
 
 	return 0;
 }
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
