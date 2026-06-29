Delivery-date: Mon, 29 Jun 2026 14:47:51 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1weBOx-00B7RU-1v
	for lore@lore.pengutronix.de;
	Mon, 29 Jun 2026 14:47:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1weBOw-0001vs-BK
	for lore@pengutronix.de; Mon, 29 Jun 2026 14:47:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YzcN3+o5IrFl6VP/oBExVHW7R1N5YdUD0wXoqaK8gEE=; b=q55nriMQzCjEb8XZTHBve11VOY
	uhnO4m78jcgSe6A4INjDiLxYyVPp4fdfGl3u71C0LjNaQ5w0VV/Y7vh5OqWgz6vsyQRBqCQOlYPv0
	Wjyyg67AYe0JBlVqJnv/1aOzKNA21Ae6r+fjRG20PlimfI0ZHYe9GOW54kb8dIoUm9vTvozXsDy5s
	JSA53XfU+kvK+7FoktPjdJ5LsAUdge9ebM/2Bth2mBuRNkmodp5lGwGzadZmwZ3aWh1au0HGLm1pH
	bNJYnDWTaBDqfdELjCbPJ37LFOK0LKrIN1IOleiKzNIOIKg6wXa4T1SlIbqrKuTxgvPXRIjNCZvYk
	WkDnKadw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weBNp-0000000EbXW-1vYk;
	Mon, 29 Jun 2026 12:46:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weBNk-0000000EbUS-1YT2
	for barebox@lists.infradead.org;
	Mon, 29 Jun 2026 12:46:38 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1weBNi-0000LG-Ok; Mon, 29 Jun 2026 14:46:34 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 29 Jun 2026 14:45:25 +0200
Message-ID: <20260629124631.689090-6-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260629124631.689090-1-a.fatoum@barebox.org>
References: <20260629124631.689090-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260629_054636_409644_5CA9CFDB 
X-CRM114-Status: GOOD (  13.97  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v3 06/10] mci: do not look up OF partitions for DT-less host controllers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

When mci_card_probe is called on a device that has been registered
without a device tree node, mci_get_partitions_node will end up with
a NULL pointer dereference inside of_get_child_by_name().

Other MCI code already handles this gracefully, so guard this code with
a NULL check as well.

While at it, rename the function to be more similar to existing
convention: Functions processing and manipulting the DT start with of_
instead of a trailing _node in their name.

Fixes: 6e9a87b39429 ("mci: Allow to partition eMMC boot partitions")
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
v2 -> v3:
  - split off NULL check into its own commit (Sascha)
  - renamed the function
---
 drivers/mci/mci-core.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 4413fd1655aa..874ee40cb3b4 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -2935,14 +2935,14 @@ static const char *mci_boot_names[] = {
 	"user",
 };
 
-static struct device_node *mci_get_partition_node(struct device_node *hwnode,
-						  unsigned int type,
-						  unsigned int index)
+static struct device_node *of_mci_get_partition(struct device_node *hwnode,
+						unsigned int type,
+						unsigned int index)
 {
 	struct device_node *np;
 	char partnodename[sizeof("bootx-partitions")];
 
-	if (index > 8)
+	if (!hwnode || index > 8)
 		return NULL;
 
 	switch (type) {
@@ -3004,7 +3004,7 @@ static int mci_register_partition(struct mci_part *part)
 	}
 	dev_info(&mci->dev, "registered %s\n", part->blk.cdev.name);
 
-	np = mci_get_partition_node(host->hw_dev->of_node, part->area_type, part->idx);
+	np = of_mci_get_partition(host->hw_dev->of_node, part->area_type, part->idx);
 	if (np) {
 		of_parse_partitions(&part->blk.cdev, np);
 
-- 
2.47.3



