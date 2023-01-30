Delivery-date: Mon, 30 Jan 2023 18:30:22 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pMXz6-007qMs-01
	for lore@lore.pengutronix.de; Mon, 30 Jan 2023 18:30:22 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pMXz3-0005Fz-0V
	for lore@pengutronix.de; Mon, 30 Jan 2023 18:30:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zk4YV7t0bm0eglpjWb0S1WiR3RZLZtPKe5eY5RgwgQc=; b=S5/Rhi4Yn2UuRvMPUPC1c1Lqhe
	9Jt6MozlmcrD0xswY/ETZsbCxbm70vnGD28VJ989CCJWJQuL+9s0dg1DXSWD6yavWvw99W5ZgkRbs
	Gt1uZfDvqDSXpPTKoc2Uh+oFwqkNnkKwixuT6DOiGip1F1Lws1jh/nwQuLDI2S+lvkC+iiz8KWSb1
	Om22SEciiiKLTHva9m9NcrY8dVr8OOegUYzs7RT2HJJqj5rWIEH/pbR5rvb8RtUG80Zoc/UxuOKWU
	1hGaQ+ZR6L3/c8TfSsN91uy8Wclh2Mz80/QhE/tHOhKkjmxAa5FiOfjgntEbqNupDbr40YZHwt1I0
	PlNmDDHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pMXxW-004YFo-7X; Mon, 30 Jan 2023 17:28:47 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pMXsb-004Vkh-Bk
	for barebox@lists.infradead.org; Mon, 30 Jan 2023 17:23:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pMXsY-0003Iv-1q
	for barebox@lists.infradead.org; Mon, 30 Jan 2023 18:23:38 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pMOTM-001Pmu-Mp; Mon, 30 Jan 2023 08:20:59 +0100
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pMOTK-0008xH-WB; Mon, 30 Jan 2023 08:20:59 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 30 Jan 2023 08:20:55 +0100
Message-Id: <20230130072057.34349-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230130072057.34349-1-a.fatoum@pengutronix.de>
References: <20230130072057.34349-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230130_092341_686586_C6402A08 
X-CRM114-Status: GOOD (  19.94  )
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
Subject: [PATCH v2 1/3] net: ifup: have ifup -a poll for link up in parallel
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

DHCP is usually fairly quick, but link up check timeout is 10 seconds,
which adds up, especially on systems with bigger DSA switches.

The workaround is to set ethX.mode=disabled for other ports, but let's
improve the default a bit and have barebox poll link ups in parallel, so
instead of (number_of_ports_wihout_link * 10s), we just wait 10s at
most.

For setups where this is a problem, users may revert to ifup in sequence
by doing ifup -a -s.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - new patch
---
 include/net.h |   3 ++
 net/eth.c     |  28 ++++++++++----
 net/ifup.c    | 103 ++++++++++++++++++++++++++++++++++++++++----------
 3 files changed, 105 insertions(+), 29 deletions(-)

diff --git a/include/net.h b/include/net.h
index 0555b0bd6bed..a7da282412fa 100644
--- a/include/net.h
+++ b/include/net.h
@@ -109,6 +109,7 @@ static inline int eth_send_raw(struct eth_device *edev, void *packet,
 int eth_register(struct eth_device* dev);    /* Register network device		*/
 void eth_unregister(struct eth_device* dev); /* Unregister network device	*/
 int eth_set_ethaddr(struct eth_device *edev, const char *ethaddr);
+int eth_carrier_poll_once(struct eth_device *edev);
 int eth_open(struct eth_device *edev);
 void eth_close(struct eth_device *edev);
 int eth_send(struct eth_device *edev, void *packet, int length);	   /* Send a packet		*/
@@ -511,6 +512,8 @@ int net_icmp_send(struct net_connection *con, int len);
 void led_trigger_network(enum led_trigger trigger);
 
 #define IFUP_FLAG_FORCE		(1 << 0)
+#define IFUP_FLAG_PARALLEL	(1 << 1)
+#define IFUP_FLAG_SKIP_CONF	(1 << 2)
 
 int ifup_edev(struct eth_device *edev, unsigned flags);
 int ifup(const char *name, unsigned flags);
diff --git a/net/eth.c b/net/eth.c
index 6fb64afea024..ccac5e2a6488 100644
--- a/net/eth.c
+++ b/net/eth.c
@@ -176,13 +176,29 @@ int eth_complete(struct string_list *sl, char *instr)
 }
 #endif
 
+int eth_carrier_poll_once(struct eth_device *edev)
+{
+	int ret;
+
+	if (!IS_ENABLED(CONFIG_PHYLIB))
+		return 0;
+
+	if (!edev->phydev)
+		return 0;
+
+	ret = phy_update_status(edev->phydev);
+	if (ret)
+		return ret;
+
+	edev->last_link_check = get_time_ns();
+	return edev->phydev->link ? 0 : -ENETDOWN;
+}
+
 /*
  * Check for link if we haven't done so for longer.
  */
 static int eth_carrier_check(struct eth_device *edev, bool may_wait)
 {
-	int ret;
-
 	if (!IS_ENABLED(CONFIG_PHYLIB))
 		return 0;
 
@@ -190,12 +206,8 @@ static int eth_carrier_check(struct eth_device *edev, bool may_wait)
 		return 0;
 
 	if (!edev->last_link_check ||
-	    is_timeout(edev->last_link_check, 5 * SECOND)) {
-		ret = phy_update_status(edev->phydev);
-		if (ret)
-			return ret;
-		edev->last_link_check = get_time_ns();
-	}
+	    is_timeout(edev->last_link_check, 5 * SECOND))
+		eth_carrier_poll_once(edev);
 
 	if (may_wait && !edev->phydev->link) {
 		phy_wait_aneg_done(edev->phydev);
diff --git a/net/ifup.c b/net/ifup.c
index e4d5374db3ae..c491ea03c1c8 100644
--- a/net/ifup.c
+++ b/net/ifup.c
@@ -179,6 +179,28 @@ static void set_linux_bootarg(struct eth_device *edev)
 	}
 }
 
+static int ifup_edev_conf(struct eth_device *edev, unsigned flags)
+{
+	int ret;
+
+	if (edev->global_mode == ETH_MODE_DHCP) {
+		if (IS_ENABLED(CONFIG_NET_DHCP)) {
+			ret = dhcp(edev, NULL);
+		} else {
+			dev_err(&edev->dev, "DHCP support not available\n");
+			ret = -ENOSYS;
+		}
+		if (ret)
+			return ret;
+	}
+
+	set_linux_bootarg(edev);
+
+	edev->ifup = true;
+
+	return 0;
+}
+
 int ifup_edev(struct eth_device *edev, unsigned flags)
 {
 	int ret;
@@ -205,22 +227,10 @@ int ifup_edev(struct eth_device *edev, unsigned flags)
 	if (ret)
 		return ret;
 
-	if (edev->global_mode == ETH_MODE_DHCP) {
-		if (IS_ENABLED(CONFIG_NET_DHCP)) {
-			ret = dhcp(edev, NULL);
-		} else {
-			dev_err(&edev->dev, "DHCP support not available\n");
-			ret = -ENOSYS;
-		}
-		if (ret)
-			return ret;
-	}
-
-	set_linux_bootarg(edev);
-
-	edev->ifup = true;
+	if (flags & IFUP_FLAG_SKIP_CONF)
+		return 1;
 
-	return 0;
+	return ifup_edev_conf(edev, flags);
 }
 
 void ifdown_edev(struct eth_device *edev)
@@ -260,9 +270,54 @@ int ifdown(const char *ethname)
 
 static int net_ifup_force_detect;
 
-int ifup_all(unsigned flags)
+static bool ifup_edev_need_conf(struct eth_device *edev)
+{
+	return edev->active && !edev->ifup &&
+		edev->global_mode != ETH_MODE_DISABLED;
+}
+
+static void __ifup_all_parallel(unsigned flags)
 {
 	struct eth_device *edev;
+	unsigned netdev_count = 0;
+	u64 start;
+	int ret;
+
+	for_each_netdev(edev) {
+		ret = ifup_edev(edev, flags | IFUP_FLAG_SKIP_CONF);
+		if (ret == 1)
+			netdev_count++;
+	}
+
+	start = get_time_ns();
+	while (netdev_count && !is_timeout(start, PHY_AN_TIMEOUT * SECOND)) {
+		for_each_netdev(edev) {
+			if (!ifup_edev_need_conf(edev))
+				continue;
+
+			ret = eth_carrier_poll_once(edev);
+			if (ret)
+				continue;
+
+			ifup_edev_conf(edev, flags);
+			if (!edev->ifup)
+				continue;
+
+			netdev_count--;
+		}
+	}
+}
+
+static void __ifup_all_sequence(unsigned flags)
+{
+	struct eth_device *edev;
+
+	for_each_netdev(edev)
+		ifup_edev(edev, flags);
+}
+
+int ifup_all(unsigned flags)
+{
 	DIR *dir;
 	struct dirent *d;
 
@@ -285,8 +340,10 @@ int ifup_all(unsigned flags)
 	    list_empty(&netdev_list))
 		device_detect_all();
 
-	for_each_netdev(edev)
-		ifup_edev(edev, flags);
+	if (flags & IFUP_FLAG_PARALLEL)
+		__ifup_all_parallel(flags);
+	else
+		__ifup_all_sequence(flags);
 
 	return 0;
 }
@@ -315,14 +372,17 @@ BAREBOX_MAGICVAR(global.net.ifup_force_detect,
 static int do_ifup(int argc, char *argv[])
 {
 	int opt;
-	unsigned flags = 0;
+	unsigned flags = IFUP_FLAG_PARALLEL;
 	int all = 0;
 
-	while ((opt = getopt(argc, argv, "af")) > 0) {
+	while ((opt = getopt(argc, argv, "asf")) > 0) {
 		switch (opt) {
 		case 'f':
 			flags |= IFUP_FLAG_FORCE;
 			break;
+		case 's':
+			flags &= ~IFUP_FLAG_PARALLEL;
+			break;
 		case 'a':
 			all = 1;
 			break;
@@ -346,13 +406,14 @@ BAREBOX_CMD_HELP_TEXT("/env/network/<intf> file. See Documentation/user/networki
 BAREBOX_CMD_HELP_TEXT("")
 BAREBOX_CMD_HELP_TEXT("Options:")
 BAREBOX_CMD_HELP_OPT ("-a",  "bring up all interfaces")
+BAREBOX_CMD_HELP_OPT ("-s",  "bring up interfaces in sequence, not in parallel")
 BAREBOX_CMD_HELP_OPT ("-f",  "Force. Configure even if ip already set")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(ifup)
 	.cmd		= do_ifup,
 	BAREBOX_CMD_DESC("bring a network interface up")
-	BAREBOX_CMD_OPTS("[-af] [INTF]")
+	BAREBOX_CMD_OPTS("[-asf] [INTF]")
 	BAREBOX_CMD_GROUP(CMD_GRP_NET)
 	BAREBOX_CMD_COMPLETE(eth_complete)
 	BAREBOX_CMD_HELP(cmd_ifup_help)
-- 
2.30.2



