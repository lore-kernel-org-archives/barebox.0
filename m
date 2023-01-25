Delivery-date: Wed, 25 Jan 2023 10:58:24 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKcXx-001LzO-Nh
	for lore@lore.pengutronix.de; Wed, 25 Jan 2023 10:58:24 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKcXu-00049B-Kv
	for lore@pengutronix.de; Wed, 25 Jan 2023 10:58:23 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XuJIdVRZzvdR3A+sLeNY9DjQXnWGy+cewa6FF+Ksd+g=; b=EYbTcSzfi44ZRs59ZvWYKaoe04
	pgfS7uzmQYcC8UC0AkKwBlyGInCPKzV4RoSrv0F4OwfByB1NijpR7BNiktvsV3CjmEneX2U6icobB
	oD4zmRL+n/63z/JUX6rvfuZnrV/hpkpjsYB5RfqCiHYtdvuvpFdsGztKn9j7cHQ8z5vcnl0H/PFeT
	tOQIhO3KH83QofRqDXtkbBaa2y1wBr8W4i6qSvBXO0X7h/md8QZaLfM2B8H6c39QmHJF5/R9W8cA7
	Pu8tvLGE4dcJhzWyD4bcLm4uV/ZO+sqawAfFzb5kFR7ChJNijCFdHuVA6FZ5R7z4CPr9V2zuj7F7L
	m7musJYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKcWW-006lCm-6S; Wed, 25 Jan 2023 09:56:56 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKcSU-006jdC-LG
	for barebox@lists.infradead.org; Wed, 25 Jan 2023 09:52:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pKcST-0002xs-Dj; Wed, 25 Jan 2023 10:52:45 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pKcSS-000Ix7-WE; Wed, 25 Jan 2023 10:52:44 +0100
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pKcSR-00B5Ch-AJ; Wed, 25 Jan 2023 10:52:43 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 25 Jan 2023 10:52:36 +0100
Message-Id: <20230125095236.2626065-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230125095236.2626065-1-a.fatoum@pengutronix.de>
References: <20230125095236.2626065-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230125_015246_732837_A630787F 
X-CRM114-Status: GOOD (  15.56  )
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
Subject: [RFC PATCH 2/2] net: ifup: have ifup -a stop at the first interface
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The normal use case for ifup -a is to get *some* interface working and
not really wait for all interfaces to come up and then timeout waiting
for those without link up to get their DHCP lease. Thus repurpose ifup
-a to mean bring up all interfaces until first success with the new
ifup -A restoring the old behavior.

The optimal action would be to make dhcp() non-blocking, but that would
be somewhat more involved.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/net.h |  1 +
 net/ifup.c    | 21 ++++++++++++++++-----
 2 files changed, 17 insertions(+), 5 deletions(-)

diff --git a/include/net.h b/include/net.h
index fdd21481dbf5..1046d1bf3681 100644
--- a/include/net.h
+++ b/include/net.h
@@ -512,6 +512,7 @@ int net_icmp_send(struct net_connection *con, int len);
 void led_trigger_network(enum led_trigger trigger);
 
 #define IFUP_FLAG_FORCE		(1 << 0)
+#define IFUP_FLAG_UNTIL_FIRST	(1 << 1)
 
 int ifup_edev(struct eth_device *edev, unsigned flags);
 int ifup(const char *name, unsigned flags);
diff --git a/net/ifup.c b/net/ifup.c
index a0167eeb8a82..1ae7dad76b87 100644
--- a/net/ifup.c
+++ b/net/ifup.c
@@ -291,11 +291,17 @@ int ifup_all(unsigned flags)
 			continue;
 
 		ifup_edev(edev, flags);
+		if ((flags & IFUP_FLAG_UNTIL_FIRST) && edev->ifup)
+			return 0;
 	}
 
-	for_each_netdev(edev)
+	for_each_netdev(edev) {
 		ifup_edev(edev, flags);
 
+		if ((flags & IFUP_FLAG_UNTIL_FIRST) && edev->ifup)
+			return 0;
+	}
+
 	return 0;
 }
 
@@ -326,12 +332,15 @@ static int do_ifup(int argc, char *argv[])
 	unsigned flags = 0;
 	int all = 0;
 
-	while ((opt = getopt(argc, argv, "af")) > 0) {
+	while ((opt = getopt(argc, argv, "aAf")) > 0) {
 		switch (opt) {
 		case 'f':
 			flags |= IFUP_FLAG_FORCE;
 			break;
 		case 'a':
+			flags |= IFUP_FLAG_UNTIL_FIRST;
+			fallthrough;
+		case 'A':
 			all = 1;
 			break;
 		}
@@ -353,14 +362,15 @@ BAREBOX_CMD_HELP_TEXT("Network interfaces are configured with a NV variables or
 BAREBOX_CMD_HELP_TEXT("/env/network/<intf> file. See Documentation/user/networking.rst")
 BAREBOX_CMD_HELP_TEXT("")
 BAREBOX_CMD_HELP_TEXT("Options:")
-BAREBOX_CMD_HELP_OPT ("-a",  "bring up all interfaces")
+BAREBOX_CMD_HELP_OPT ("-A",  "bring up all interfaces")
+BAREBOX_CMD_HELP_OPT ("-a",  "bring up all interfaces until first successful one")
 BAREBOX_CMD_HELP_OPT ("-f",  "Force. Configure even if ip already set")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(ifup)
 	.cmd		= do_ifup,
 	BAREBOX_CMD_DESC("bring a network interface up")
-	BAREBOX_CMD_OPTS("[-af] [INTF]")
+	BAREBOX_CMD_OPTS("[-aAf] [INTF]")
 	BAREBOX_CMD_GROUP(CMD_GRP_NET)
 	BAREBOX_CMD_COMPLETE(eth_complete)
 	BAREBOX_CMD_HELP(cmd_ifup_help)
@@ -371,8 +381,9 @@ static int do_ifdown(int argc, char *argv[])
 	int opt;
 	int all = 0;
 
-	while ((opt = getopt(argc, argv, "a")) > 0) {
+	while ((opt = getopt(argc, argv, "aA")) > 0) {
 		switch (opt) {
+		case 'A':
 		case 'a':
 			all = 1;
 			break;
-- 
2.30.2



