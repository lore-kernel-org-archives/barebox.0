Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NZJR9-0005q4-TB
	for barebox@lists.infradead.org; Mon, 25 Jan 2010 07:32:41 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 25 Jan 2010 08:32:19 +0100
Message-Id: <1264404750-11596-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1264404750-11596-1-git-send-email-s.hauer@pengutronix.de>
References: <1264404750-11596-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 01/12] remove unused cdp code
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/net.c |   48 ------------------------------------------------
 include/net.h  |    8 --------
 2 files changed, 0 insertions(+), 56 deletions(-)

diff --git a/commands/net.c b/commands/net.c
index df06227..902c8bb 100644
--- a/commands/net.c
+++ b/commands/net.c
@@ -210,54 +210,6 @@ out:
 	return rcode;
 }
 
-#ifdef CONFIG_NET_CDP
-
-static void cdp_update_env(void)
-{
-	char tmp[16];
-
-	if (CDPApplianceVLAN != htons(-1)) {
-		printf("CDP offered appliance VLAN %d\n", ntohs(CDPApplianceVLAN));
-		VLAN_to_string(CDPApplianceVLAN, tmp);
-		setenv("vlan", tmp);
-		NetOurVLAN = CDPApplianceVLAN;
-	}
-
-	if (CDPNativeVLAN != htons(-1)) {
-		printf("CDP offered native VLAN %d\n", ntohs(CDPNativeVLAN));
-		VLAN_to_string(CDPNativeVLAN, tmp);
-		setenv("nvlan", tmp);
-		NetOurNativeVLAN = CDPNativeVLAN;
-	}
-
-}
-
-static int do_cdp (cmd_tbl_t *cmdtp, int argc, char *argv[])
-{
-	int r;
-
-	if (NetLoopInit(CDP) < 0)
-		return 1;
-
-	r = NetLoop();
-	if (r < 0) {
-		printf("cdp failed; perhaps not a CISCO switch?\n");
-		return 1;
-	}
-
-	cdp_update_env();
-
-	return 0;
-}
-
-BAREBOX_CMD_START(cdp)
-	.cmd		= do_cdp,
-	.usage		= "Perform CDP network configuration",
-	BAREBOX_CMD_HELP("[loadAddress] [host ip addr:bootfilename]\n")
-BAREBOX_CMD_END
-
-#endif	/* CONFIG_NET_CDP */
-
 static int do_ethact (cmd_tbl_t *cmdtp, int argc, char *argv[])
 {
 	struct eth_device *edev;
diff --git a/include/net.h b/include/net.h
index c689a43..7353c8f 100644
--- a/include/net.h
+++ b/include/net.h
@@ -279,10 +279,6 @@ extern uchar		NetEtherNullAddr[6];
 extern ushort		NetOurVLAN;		/* Our VLAN 			*/
 extern ushort		NetOurNativeVLAN;	/* Our Native VLAN 		*/
 
-extern uchar		NetCDPAddr[6]; 		/* Ethernet CDP address		*/
-extern ushort		CDPNativeVLAN;		/* CDP returned native VLAN	*/
-extern ushort		CDPApplianceVLAN;	/* CDP returned appliance VLAN	*/
-
 extern int		NetState;		/* Network loop state		*/
 
 /* ---------- Added by sha ------------ */
@@ -301,10 +297,6 @@ extern void ArpRequest (void);
 
 typedef enum { BOOTP, RARP, ARP, TFTP, DHCP, PING, DNS, NFS, CDP, NETCONS, SNTP } proto_t;
 
-/* when CDP completes these hold the return values */
-extern ushort CDPNativeVLAN;
-extern ushort CDPApplianceVLAN;
-
 /* Initialize the network adapter */
 int	NetLoopInit(proto_t);
 
-- 
1.6.6


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
