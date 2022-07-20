Delivery-date: Wed, 20 Jul 2022 06:17:38 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oE19X-00FCFv-7T
	for lore@lore.pengutronix.de; Wed, 20 Jul 2022 06:17:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oE19V-00086X-8x
	for lore@pengutronix.de; Wed, 20 Jul 2022 06:17:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Mwy6FUHsYo42oimev0tCUd+I44ySY1Lsev6z7EutKTY=; b=gSHmvZBe8M8DVkazSJKjA5S58n
	T4Wr0au1K9Odm+RKC8BgV4r1kEB6CmNF/1xerDk4VLnRT6703DnsfjVDQ2031dmUdfDLJRnL0uw0m
	NnzBmMhUgWnlxEwND71RLNuwLtRXudFNckSFF2NXcAh00pAZnH4n0F+TwdgnPo9/h2cnSNU8whL7q
	X/IA1x/1mDg4kUQSGgXjiISXHQek+3qsnaHWfOrECO7zCce95mGtW1G8XMrYbT0igj79UU1qujObW
	9fnli3Hb1T1/a34jYAjNBZ2gy5p6yy0JF+WMcJ5SmjQjuzIVdKJr1EhHktZu/dgyoqgqbAr0Ca5pc
	Ge506eJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oE17b-0003zq-HZ; Wed, 20 Jul 2022 04:15:39 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oE17W-0003w7-OM
	for barebox@lists.infradead.org; Wed, 20 Jul 2022 04:15:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oE17Q-0007qt-46; Wed, 20 Jul 2022 06:15:28 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oE17P-0022uJ-D0; Wed, 20 Jul 2022 06:15:27 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oE17O-00EUYt-MF; Wed, 20 Jul 2022 06:15:26 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 20 Jul 2022 06:15:25 +0200
Message-Id: <20220720041525.3454022-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220719_211534_833808_87B8F087 
X-CRM114-Status: GOOD (  14.73  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] mci: add new MCI_BROKEN_CD option for testing
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

In remote labs co-located with other hardware, we've observed card
detect levers of different boards to sporadically fail to detect
the card, e.g. because the cable on the usbsdmux was yanked around
by accident. When this happens, barebox usually boots up normally as
the card detect is ignored and then Linux waits indefinitely for
the card-detect to turn active. Add a new config option that can be
enabled to avoid these issues altogether.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mci/Kconfig    | 15 +++++++++++++++
 drivers/mci/mci-core.c | 35 +++++++++++++++++++++++++++++++----
 2 files changed, 46 insertions(+), 4 deletions(-)

diff --git a/drivers/mci/Kconfig b/drivers/mci/Kconfig
index 21d53c0c3f0b..651e59259790 100644
--- a/drivers/mci/Kconfig
+++ b/drivers/mci/Kconfig
@@ -56,6 +56,21 @@ config MCI_MMC_GPP_PARTITIONS
 	  Note: by default, 'MMC' devices have no 'general purpose partitions',
 	  it requires a special one-time configuration step to enable them.
 
+config MCI_BROKEN_CD
+	bool "ignore card-detect pin on boot and in OS"
+	help
+	  Say 'y' here to have barebox unconditionally ignore the
+	  card-detect pin for its own operation and manipulate the
+	  kernel DT, so all detected MCI cards are polled instead
+	  of expecting the card detect lever to behave correctly.
+	  If you need more fine grained control use of_property
+	  in an init script:
+
+	    of_property -fd mmc0 cd-gpios
+	    of_property -fs mmc0 broken-cd
+
+	  If unsure, say 'n' here.
+
 comment "--- MCI host drivers ---"
 
 config MCI_DW
diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index b8f71e15986e..6018391e1abb 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -1739,6 +1739,27 @@ static int mci_register_partition(struct mci_part *part)
 	return 0;
 }
 
+static int of_broken_cd_fixup(struct device_node *root, void *ctx)
+{
+	struct device_d *hw_dev = ctx;
+	struct device_node *np;
+	char *name;
+
+	name = of_get_reproducible_name(hw_dev->device_node);
+	np = of_find_node_by_reproducible_name(root, name);
+	free(name);
+	if (!np) {
+		dev_warn(hw_dev, "Cannot find nodepath %s, cannot fixup\n",
+			 hw_dev->device_node->full_name);
+		return -EINVAL;
+	}
+
+	of_property_write_bool(np, "cd-gpios", false);
+	of_property_write_bool(np, "broken-cd", true);
+
+	return 0;
+}
+
 /**
  * Probe an MCI card at the given host interface
  * @param mci MCI device instance
@@ -1750,10 +1771,13 @@ static int mci_card_probe(struct mci *mci)
 	int i, rc, disknum, ret;
 	bool has_bootpart = false;
 
-	if (host->card_present && !host->card_present(host) &&
-	    !host->non_removable) {
-		dev_err(&mci->dev, "no card inserted\n");
-		return -ENODEV;
+	if (host->card_present && !host->card_present(host) && !host->non_removable) {
+		if (IS_ENABLED(CONFIG_MCI_BROKEN_CD)) {
+			dev_info(&mci->dev, "no card inserted (ignoring)\n");
+		} else {
+			dev_err(&mci->dev, "no card inserted\n");
+			return -ENODEV;
+		}
 	}
 
 	ret = regulator_enable(host->supply);
@@ -1839,6 +1863,9 @@ static int mci_card_probe(struct mci *mci)
 					   &mci->boot_ack_enable, mci);
 	}
 
+	if (IS_ENABLED(CONFIG_MCI_BROKEN_CD) && !host->no_sd && dev_of_node(host->hw_dev))
+		return of_register_fixup(of_broken_cd_fixup, host->hw_dev);
+
 	dev_dbg(&mci->dev, "SD Card successfully added\n");
 
 on_error:
-- 
2.30.2



