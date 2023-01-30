Delivery-date: Mon, 30 Jan 2023 18:28:42 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pMXxT-007qFu-T5
	for lore@lore.pengutronix.de; Mon, 30 Jan 2023 18:28:42 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pMXxQ-0004ri-Ht
	for lore@pengutronix.de; Mon, 30 Jan 2023 18:28:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6cUUC1y5DRwuVZWPpOrZxfCDlwbXFKEjGD1Jh3Tilec=; b=M6mXywZ+0Y5ZQ7QP0ZmhRaWEXx
	fjzP5z5wGPHLgH32EyHsQGuMJmIhMa3sXlB4GwP9D/ZoYGbzWqHJ9K6nEgEtT2su6TL/+u0Xpvkdd
	n45YnfoT8RrK4pvDgNjqGAvoPqj0PGzsZBD++ljR7ba8SA6YZmmWfJLCFHl0NTmXTYnlkBMcfDz+8
	qPG/UfFYFx/pQMgnuUzik4Wfk3MOX85N+KyOOP7Ja5w6YvQ+Gqk833yqPOq6TRUflBegE2eLpiHWO
	Z6KygycU4yVNxjYmF/OqUbR43LRSpFcclq8C4USFgVMWpX6QREsy6pDMZHQI5j1GaOVVIlRwND3Bg
	xWCtqksA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pMXvz-004XOm-AX; Mon, 30 Jan 2023 17:27:11 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pMXsb-004VjI-DK
	for barebox@lists.infradead.org; Mon, 30 Jan 2023 17:23:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pMXsW-0003IA-0b
	for barebox@lists.infradead.org; Mon, 30 Jan 2023 18:23:36 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pMOTM-001Pmx-QZ; Mon, 30 Jan 2023 08:20:59 +0100
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pMOTL-0008xK-0K; Mon, 30 Jan 2023 08:20:59 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 30 Jan 2023 08:20:56 +0100
Message-Id: <20230130072057.34349-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230130072057.34349-1-a.fatoum@pengutronix.de>
References: <20230130072057.34349-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230130_092341_523588_0A0B62CD 
X-CRM114-Status: GOOD (  20.48  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 2/3] net: ifup: have ifup -a1 stop at first DHCP-set global.net.server
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The normal use case for ifup -a is to get *some* interface working and
not really wait for all interfaces to come up and then timeout waiting
for those without link up to never get a DHCP lease.

When using automounts with a previously empty $global.net.server, we
know this to be the case, because the first DHCP interface will set the
variable and all remaining ones won't affect this. Therefore, let's add
a ifup -a1 option, which would stop after $global.net.server was set via
DHCP. This is a special case of a possible future ifup -ar, which would
check after each ifup if $global.net.server was either newly set or
became resolvable, but that would be a bigger change, so we skip that
for now.

Times after eth_open_all has brought up CPU Ethernet and 4 DSA ports:

  barebox$ time ifup -a
  time: 10002ms

  barebox$ time ifup -a1
  time: 1072ms

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
  - v1 -> v2:
    - add new option for this behavior instead of just -a
    - stop after global.net.server is set instead of just
      stopping after first upped interface
---
 include/net.h |  2 ++
 net/ifup.c    | 27 ++++++++++++++++++++++++---
 net/net.c     |  7 ++++++-
 3 files changed, 32 insertions(+), 4 deletions(-)

diff --git a/include/net.h b/include/net.h
index a7da282412fa..b7cbab7d720a 100644
--- a/include/net.h
+++ b/include/net.h
@@ -257,6 +257,7 @@ extern unsigned char *NetRxPackets[PKTBUFSRX];/* Receive packets		*/
 
 void net_set_ip(struct eth_device *edev, IPaddr_t ip);
 void net_set_serverip(IPaddr_t ip);
+const char *net_get_server(void);
 void net_set_serverip_empty(IPaddr_t ip);
 void net_set_netmask(struct eth_device *edev, IPaddr_t ip);
 void net_set_gateway(IPaddr_t ip);
@@ -514,6 +515,7 @@ void led_trigger_network(enum led_trigger trigger);
 #define IFUP_FLAG_FORCE		(1 << 0)
 #define IFUP_FLAG_PARALLEL	(1 << 1)
 #define IFUP_FLAG_SKIP_CONF	(1 << 2)
+#define IFUP_FLAG_UNTIL_NET_SERVER	(1 << 3)
 
 int ifup_edev(struct eth_device *edev, unsigned flags);
 int ifup(const char *name, unsigned flags);
diff --git a/net/ifup.c b/net/ifup.c
index c491ea03c1c8..64298b44ebf3 100644
--- a/net/ifup.c
+++ b/net/ifup.c
@@ -304,6 +304,9 @@ static void __ifup_all_parallel(unsigned flags)
 				continue;
 
 			netdev_count--;
+
+			if ((flags & IFUP_FLAG_UNTIL_NET_SERVER) && net_get_server())
+				return;
 		}
 	}
 }
@@ -312,8 +315,12 @@ static void __ifup_all_sequence(unsigned flags)
 {
 	struct eth_device *edev;
 
-	for_each_netdev(edev)
+	for_each_netdev(edev) {
 		ifup_edev(edev, flags);
+
+		if ((flags & IFUP_FLAG_UNTIL_NET_SERVER) && net_get_server())
+			return;
+	}
 }
 
 int ifup_all(unsigned flags)
@@ -340,6 +347,16 @@ int ifup_all(unsigned flags)
 	    list_empty(&netdev_list))
 		device_detect_all();
 
+	/*
+	 * In the future, we may add an iproute -r option that tries to
+	 * resolve $global.net.server using each interface. For now,
+	 * we only support the special case of $global.net.server being
+	 * empty, i.e. the first DHCP lease setting $global.net.server
+	 * will be what we're going with.
+	 */
+	if (net_get_server())
+		flags &= ~IFUP_FLAG_UNTIL_NET_SERVER;
+
 	if (flags & IFUP_FLAG_PARALLEL)
 		__ifup_all_parallel(flags);
 	else
@@ -375,11 +392,14 @@ static int do_ifup(int argc, char *argv[])
 	unsigned flags = IFUP_FLAG_PARALLEL;
 	int all = 0;
 
-	while ((opt = getopt(argc, argv, "asf")) > 0) {
+	while ((opt = getopt(argc, argv, "asf1")) > 0) {
 		switch (opt) {
 		case 'f':
 			flags |= IFUP_FLAG_FORCE;
 			break;
+		case '1':
+			flags |= IFUP_FLAG_UNTIL_NET_SERVER;
+			break;
 		case 's':
 			flags &= ~IFUP_FLAG_PARALLEL;
 			break;
@@ -408,12 +428,13 @@ BAREBOX_CMD_HELP_TEXT("Options:")
 BAREBOX_CMD_HELP_OPT ("-a",  "bring up all interfaces")
 BAREBOX_CMD_HELP_OPT ("-s",  "bring up interfaces in sequence, not in parallel")
 BAREBOX_CMD_HELP_OPT ("-f",  "Force. Configure even if ip already set")
+BAREBOX_CMD_HELP_OPT ("-1",  "Early exit if DHCP sets $global.net.server")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(ifup)
 	.cmd		= do_ifup,
 	BAREBOX_CMD_DESC("bring a network interface up")
-	BAREBOX_CMD_OPTS("[-asf] [INTF]")
+	BAREBOX_CMD_OPTS("[-asf1] [INTF]")
 	BAREBOX_CMD_GROUP(CMD_GRP_NET)
 	BAREBOX_CMD_COMPLETE(eth_complete)
 	BAREBOX_CMD_HELP(cmd_ifup_help)
diff --git a/net/net.c b/net/net.c
index 22931509d0d9..19161d2e828e 100644
--- a/net/net.c
+++ b/net/net.c
@@ -325,9 +325,14 @@ void net_set_serverip(IPaddr_t ip)
 	net_server = xasprintf("%pI4", &ip);
 }
 
+const char *net_get_server(void)
+{
+	return net_server && *net_server ? net_server : NULL;
+}
+
 void net_set_serverip_empty(IPaddr_t ip)
 {
-	if (net_server && *net_server)
+	if (net_get_server())
 		return;
 
 	net_set_serverip(ip);
-- 
2.30.2



