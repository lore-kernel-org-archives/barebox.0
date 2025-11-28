Delivery-date: Fri, 28 Nov 2025 13:50:25 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOxvd-005mpz-0v
	for lore@lore.pengutronix.de;
	Fri, 28 Nov 2025 13:50:25 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOxvb-0003a7-DE
	for lore@pengutronix.de; Fri, 28 Nov 2025 13:50:25 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=jF7Yt1P579QjLgy4HU1LJFR+tpnr0yaY6K8dmyWwh68=; b=hJgaKh0JD7dt4zlHC+VJt4P6K/
	dnfz6+SR15/rKvjE0zp+ugCMjY5mo+fb/Cs6XNcj/4dieSWRoLw55LJ6Xe8DE+DyU1Pj/1uYAN11S
	OlY+ucPj6q49/IO7mw850UvRYU93qpQFSTW8B8uZAnISVIPmUx7Uqzcr4VOhsmET+HvhLrDoyqhAR
	gB4BooYzuchEv2+7e168bMBzeGoch89/4wAYfaQBQvsUJXL+UnBrEuq85ryF/FtNEkAR+Xj7a+taH
	aXV/44YB4X0KSAvtpADUDnTe80FV11YrxSlVJpP4jib3GY9ldBh5cy+JMlktil3v+ZC1M+MNm2IBt
	b2/qqr7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOxv1-00000000RLz-0TD5;
	Fri, 28 Nov 2025 12:49:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOxuy-00000000RLe-0Ary
	for barebox@lists.infradead.org;
	Fri, 28 Nov 2025 12:49:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vOxuv-0003RS-KU; Fri, 28 Nov 2025 13:49:41 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vOxuv-002xKn-0P;
	Fri, 28 Nov 2025 13:49:41 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vOxuv-00000000UY1-03RH;
	Fri, 28 Nov 2025 13:49:41 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Sohaib Mohamed <sohaib.amhmd@gmail.com>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 28 Nov 2025 13:49:33 +0100
Message-ID: <20251128124939.108159-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251128_044944_103994_6299DF5C 
X-CRM114-Status: GOOD (  16.85  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 1/2] net: arp: collect context into new struct pending_arp
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The ARP code employs two global variables to communicate between the
code sending off the ARP request and the response that runs in the
poller:

- arp_wait_ip, which is the IP to be resolved
- arp_ether, which on success will point to the resulting MAC address

To make the relation between these two clearer and to prepare for the
follow-up fix, collect them into a common struct.

No functional change expected.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - use pending_arp.ip as correct loop condition
---
 net/net.c | 25 +++++++++++++++++--------
 1 file changed, 17 insertions(+), 8 deletions(-)

diff --git a/net/net.c b/net/net.c
index 4703842f4377..795afed159aa 100644
--- a/net/net.c
+++ b/net/net.c
@@ -110,26 +110,33 @@ int setenv_ip(const char *name, IPaddr_t ip)
 	return 0;
 }
 
-static unsigned char *arp_ether;
-static IPaddr_t arp_wait_ip;
+/**
+ * struct pending_arp - Pending ARP state
+ * @ip: input IPv4 address whose resolution is being requested 
+ * @ether: output MAC addess buffer after receing a response
+ */
+static struct pending_arp {
+	IPaddr_t ip;
+	unsigned char *ether;
+} pending_arp;
 
 static void arp_handler(struct arprequest *arp)
 {
 	IPaddr_t tmp;
 
 	/* are we waiting for a reply */
-	if (!arp_wait_ip)
+	if (!pending_arp.ip)
 		return;
 
 	tmp = net_read_ip(&arp->ar_data[6]);
 
 	/* matched waiting packet's address */
-	if (tmp == arp_wait_ip) {
+	if (tmp == pending_arp.ip) {
 		/* save address for later use */
-		memcpy(arp_ether, &arp->ar_data[0], 6);
+		memcpy(pending_arp.ether, &arp->ar_data[0], 6);
 
 		/* no arp request pending now */
-		arp_wait_ip = 0;
+		pending_arp.ip = 0;
 	}
 }
 
@@ -162,6 +169,7 @@ static int arp_request(struct eth_device *edev, IPaddr_t dest, unsigned char *et
 	static char *arp_packet;
 	struct ethernet *et;
 	unsigned retries = 0;
+	IPaddr_t arp_wait_ip;
 	int ret;
 
 	if (!edev)
@@ -207,14 +215,15 @@ static int arp_request(struct eth_device *edev, IPaddr_t dest, unsigned char *et
 
 	net_write_ip(arp->ar_data + 16, arp_wait_ip);
 
-	arp_ether = ether;
+	pending_arp.ether = ether;
+	pending_arp.ip = arp_wait_ip;
 
 	ret = eth_send(edev, arp_packet, ETHER_HDR_SIZE + ARP_HDR_SIZE);
 	if (ret)
 		return ret;
 	arp_start = get_time_ns();
 
-	while (arp_wait_ip) {
+	while (pending_arp.ip) {
 		if (ctrlc())
 			return -EINTR;
 
-- 
2.47.3



