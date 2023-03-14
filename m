Delivery-date: Tue, 14 Mar 2023 14:14:32 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pc4U3-00EMpr-BX
	for lore@lore.pengutronix.de; Tue, 14 Mar 2023 14:14:32 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pc4U2-00072q-Rz
	for lore@pengutronix.de; Tue, 14 Mar 2023 14:14:31 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Resent-Message-ID:Resent-Date
	:Resent-To:Resent-From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Sender:Resent-Cc:In-Reply-To:References:List-Owner;
	bh=+IMYpbRFMozIC61acQIS1xApfkrZqH4vI+Dyk7ewSHo=; b=bv+mU97yXY79ZN/Aq/tE04WIij
	4xZi+fQl87OJ8rRGKk0D/1tyPie2sADwpv2BpSwoAvrMMjfwxPxMjzAYtW5XbAYzHbszxeyNfbK6M
	YX27mwgG0xuTf37hHPYrDS9rFn3+Y6rOBj4YvwqALiga4bmO+SmNPJKwXeU6nSs7oFocEoLnODxhx
	facWvabbI44/9urtwx3kxN0sKVczxIniXvbKIrrdJBaudBwVoP5rI1MSI5NLwID6tXnMvU5infXZI
	YKEZ4JzmHqJLgp7DpeucBShf4BDqeJEiCt6VFj4qnKzx2qGRiIzCc95etWfP2vvmO2Ri6FoAHl+DR
	ItD/mjxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pc4SX-00AG3y-2j;
	Tue, 14 Mar 2023 13:12:57 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pc4ST-00AG2w-1E
	for barebox@lists.infradead.org;
	Tue, 14 Mar 2023 13:12:55 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1pc4SM-0006uB-8A
	for barebox@lists.infradead.org; Tue, 14 Mar 2023 14:12:46 +0100
Resent-From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Resent-To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Resent-Date: Tue, 14 Mar 2023 14:12:46 +0100
Resent-Message-ID: <af8f6cd1-6a2b-0168-d0d4-e6a2047fcfba@pengutronix.de>
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pc0Tv-0000k4-Dc; Tue, 14 Mar 2023 09:58:07 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pc0Tu-0042QC-PQ; Tue, 14 Mar 2023 09:58:06 +0100
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pc0Tt-007o8k-VZ; Tue, 14 Mar 2023 09:58:05 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: sha@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 14 Mar 2023 09:58:04 +0100
Message-Id: <20230314085805.1860986-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230314_061253_416780_9EC392D0 
X-CRM114-Status: GOOD (  11.12  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 1/2] of: partition: skip NVMEM partition setup partition parsing fails
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

nvmem_partition_register should not be called with a NULL pointer
argument, yet this is what happened when a partition with a nvmem-cells
compatible conflicts with a partition parsed from an on-disk partition
table. Fix this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/of/partition.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/of/partition.c b/drivers/of/partition.c
index ed1114193062..40c47f554ad2 100644
--- a/drivers/of/partition.c
+++ b/drivers/of/partition.c
@@ -70,10 +70,10 @@ struct cdev *of_parse_partition(struct cdev *cdev, struct device_node *node)
 	if (IS_ERR(new)) {
 		pr_err("Adding partition %s failed: %pe\n", filename, new);
 		new = NULL;
+		goto out;
 	}
 
-	if (new)
-		new->device_node = node;
+	new->device_node = node;
 
 	if (IS_ENABLED(CONFIG_NVMEM) && of_device_is_compatible(node, "nvmem-cells")) {
 		struct nvmem_device *nvmem = nvmem_partition_register(new);
@@ -81,6 +81,7 @@ struct cdev *of_parse_partition(struct cdev *cdev, struct device_node *node)
 			dev_warn(cdev->dev, "nvmem registeration failed: %pe\n", nvmem);
 	}
 
+out:
 	free(filename);
 
 	return new;
-- 
2.30.2




