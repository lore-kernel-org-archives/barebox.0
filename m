Delivery-date: Mon, 07 Nov 2022 12:18:46 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1os09O-000ND0-EP
	for lore@lore.pengutronix.de; Mon, 07 Nov 2022 12:18:46 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1os09M-00061Y-Lx
	for lore@pengutronix.de; Mon, 07 Nov 2022 12:18:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NPBCvA7Bz7Q3WQacPHh2S5ya6jX6tN4ytrqA5vi4M/k=; b=WER7US/6v2qavULRE1ISfUIckE
	dCNmOCfNY3IaT55f7I5wYlUUXZFMkRXfPjOIbIF1ApTZ69UUzGt+nvbkCrVVDihiP5t9wzaWQ98Qg
	lvPqP+2Gmk84zOSTegMZVF7oIRPjDMS0cl11cZWa3lLvuBMcJCd9JAvKi1DQn2p8k9yTYAciHnmXT
	irW4x+A4bNihmsYTJM8OVPKEuQrtGECL2aaO+ZMc5FbkfT6yA16eFcmJygOLeAktTncCmpwLxKYGV
	syh6gBocTZ70E3Sz0fzAD/9vVHnYfvUiqsA3oxpGkRTLcOG/dPKZWL6tBybeE0rWqcZUloVENM8NM
	l/iw4pmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1os081-00E53i-Sk; Mon, 07 Nov 2022 11:17:21 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1os07o-00E4xe-3o
	for barebox@lists.infradead.org; Mon, 07 Nov 2022 11:17:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1os07l-0005aS-6P; Mon, 07 Nov 2022 12:17:05 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1os07j-002qIC-Ik; Mon, 07 Nov 2022 12:17:04 +0100
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1os07i-00Amfb-Vs; Mon, 07 Nov 2022 12:17:02 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Mon,  7 Nov 2022 12:16:56 +0100
Message-Id: <20221107111701.2570303-3-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221107111701.2570303-1-o.rempel@pengutronix.de>
References: <20221107111701.2570303-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221107_031708_170664_3E386D5C 
X-CRM114-Status: GOOD (  13.75  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v3 3/8] ethlog: option to enable/disable promisc mode
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Add -p option to control promisc mode of the ethrnet device.
Example:
ethlog -p eth0 - will enable promisc mode and logging on the eth0
device
ethlog -rp eth0 - will disable promisc mode and logging on the eth0
device

All the same commands without "-p" option will not touch promisc
configuration.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 commands/ethlog.c | 21 +++++++++++++++++----
 1 file changed, 17 insertions(+), 4 deletions(-)

diff --git a/commands/ethlog.c b/commands/ethlog.c
index 0cc93ba808..7885d32c6b 100644
--- a/commands/ethlog.c
+++ b/commands/ethlog.c
@@ -29,11 +29,14 @@ static int do_ethlog(int argc, char *argv[])
 {
 	struct eth_device *edev;
 	const char *edevname;
-	bool remove = false;
-	int opt;
+	bool remove = false, promisc = false;
+	int opt, ret;
 
-	while ((opt = getopt(argc, argv, "r")) > 0) {
+	while ((opt = getopt(argc, argv, "pr")) > 0) {
 		switch (opt) {
+		case 'p':
+			promisc = true;
+			break;
 		case 'r':
 			remove = true;
 			break;
@@ -56,10 +59,19 @@ static int do_ethlog(int argc, char *argv[])
 	if (remove) {
 		edev->tx_monitor = NULL;
 		edev->rx_monitor = NULL;
+		if (promisc)
+			eth_set_promisc(edev, false);
 
 		return 0;
 	}
 
+	if (promisc) {
+		ret = eth_set_promisc(edev, true);
+		if (ret)
+			dev_warn(&edev->dev, "Failed to set promisc mode: %pe\n",
+				 ERR_PTR(ret));
+	}
+
 	edev->tx_monitor = ethlog_tx_monitor;
 	edev->rx_monitor = ethlog_rx_monitor;
 
@@ -69,12 +81,13 @@ static int do_ethlog(int argc, char *argv[])
 BAREBOX_CMD_HELP_START(ethlog)
 BAREBOX_CMD_HELP_TEXT("Options:")
 BAREBOX_CMD_HELP_OPT("-r", "remove log handler from Ethernet interface")
+BAREBOX_CMD_HELP_OPT("-p", "Enable promisc mode, or disable if -r is used")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(ethlog)
 	.cmd		= do_ethlog,
 	BAREBOX_CMD_DESC("ETHLOG - tool to get dump of Ethernet packets")
-	BAREBOX_CMD_OPTS("[-r] [device]")
+	BAREBOX_CMD_OPTS("[-rp] [device]")
 	BAREBOX_CMD_GROUP(CMD_GRP_NET)
 	BAREBOX_CMD_COMPLETE(eth_complete)
 BAREBOX_CMD_END
-- 
2.30.2



